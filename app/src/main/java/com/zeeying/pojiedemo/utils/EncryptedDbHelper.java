package com.zeeying.pojiedemo.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;

import net.sqlcipher.database.SQLiteDatabase;
import net.sqlcipher.database.SQLiteDatabaseHook;

import java.io.DataOutputStream;
import java.io.File;
import java.util.HashMap;

/**
 * Created by zeeying on 16/11/14.
 */

@SuppressLint("SdCardPath")
public class EncryptedDbHelper {

	private static EncryptedDbHelper instance;

	private SQLiteDatabase database;
	private String dbKey;
	private SQLiteDatabaseHook openHook;

	public EncryptedDbHelper(Context context) {
		SQLiteDatabase.loadLibs(context);
		if (this.openHook == null) {
			this.openHook = new SQLiteDatabaseHook() {
				@Override
				public void preKey(SQLiteDatabase database) {
				}

				@Override
				public void postKey(SQLiteDatabase database) {
					database.rawExecSQL("PRAGMA kdf_iter = 4000;");
					database.rawExecSQL("PRAGMA cipher_use_hmac = OFF;");
				}
			};
		}
	}

	@SuppressLint("DefaultLocale")
	private static String getDBKey() {
		String key;
		try {
			Process process = Runtime.getRuntime().exec("su");
			DataOutputStream dos = new DataOutputStream(process.getOutputStream());
			dos.writeBytes("chmod 771 /data/data/com.tencent.mm\n");
			dos.writeBytes("chmod 777 /data/data/com.tencent.mm/MicroMsg/\n");
			dos.writeBytes("chmod 777 /data/data/com.tencent.mm/MicroMsg/systemInfo.cfg\n");
			dos.writeBytes("chmod 777 /data/data/com.tencent.mm/MicroMsg/CompatibleInfo.cfg\n");
			dos.writeBytes("exit\n");
			dos.flush();
			process.waitFor();
			HashMap sysInfoMap = Utils.loadHashMapFromFile("/data/data/com.tencent.mm/MicroMsg/systemInfo.cfg");
			if (sysInfoMap == null) {
				Log.e("ERROR", "An ERROR occured while reading systemInfo.cfg");
				return  "ERROR";
			}
			HashMap compatibleInfoMap = Utils.loadHashMapFromFile("/data/data/com.tencent.mm/MicroMsg/CompatibleInfo.cfg");
			if (compatibleInfoMap == null) {
				Log.e("ERROR", "An ERROR occured while reading CompatibleInfo.cfg");
				return  "ERROR";
			}
			String uin = getUIN(sysInfoMap);
			Log.v("EnMicroMsg UIN", uin);
			String imei = getIMEI(sysInfoMap, compatibleInfoMap);
			Log.v("EnMicroMsg IMEI", imei);
			if (("".equals(uin)) || ("".equals(imei))) {
				Log.e("ERROR", "An ERROR occured while generating key.");
				key = "ERROR";
			} else {
				key = Utils.md5(imei + uin).toLowerCase().substring(0, 7);
			}
		} catch (Exception e) {
			key = "ERROR";
			e.printStackTrace();
		}
		return key;
	}

	private static String getIMEI(HashMap sysInfoMap, HashMap compatibleInfoMap) {
		String imei = "";
		try {
			if (sysInfoMap.containsKey(258)) {
				imei = sysInfoMap.get(258).toString();
			}
			if (imei == null || imei.length() == 0) {
				imei = (String)compatibleInfoMap.get(258);
			}
			if (imei == null || imei.length() == 0) {
				throw new Exception();
			}
		} catch (Exception e) {
			Log.e("ERROR", "An ERROR occured while getting IMEI code.");
			e.printStackTrace();
			imei = "";
		}
		return imei;
	}

	public static EncryptedDbHelper getInstance(Context context) {
		if (instance == null) {
			instance = new EncryptedDbHelper(context.getApplicationContext());
		}
		return instance;
	}

	private static String getUIN(HashMap sysInfoMap) {
		String uin = null;
		try {
			uin = sysInfoMap.get(1).toString();
			if (uin == null || uin.length() == 0) {
				throw new Exception();
			}
		}
		catch (Exception e) {
			Log.e("ERROR", "An ERROR occured while getting UIN code.");
			e.printStackTrace();
			uin = "";
		}
		return uin;
	}

	public SQLiteDatabase OpenDB(String dbPath) {
		this.dbKey = getDBKey();
		Log.v("EnMicroMsg DBKey", this.dbKey);
		File databaseFile = new File(dbPath);
		Log.v("OpenEnDb PATH", databaseFile.getAbsolutePath());
		Log.v("OpenEnDb CANREAD", databaseFile.canRead() + "");
		Log.v("OpenEnDb CANWRITE", databaseFile.canWrite() + "");
		Log.v("OpenEnDb EXISTS", databaseFile.exists() + "");
		this.database = SQLiteDatabase.openOrCreateDatabase(databaseFile, this.dbKey, null, this.openHook);
		return this.database;
	}

}