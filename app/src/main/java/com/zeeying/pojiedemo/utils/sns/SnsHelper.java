package com.zeeying.pojiedemo.utils.sns;

/**
 * Created by zeeying on 16/11/14.
 */

import android.content.Context;
import android.database.Cursor;
import android.util.Log;

import com.zeeying.pojiedemo.utils.EncryptedDbHelper;
import com.zeeying.pojiedemo.utils.Utils;

import net.sqlcipher.database.SQLiteDatabase;

import org.apache.commons.codec.binary.Base64;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

public class SnsHelper
{
	public static String encodeBase64(byte[] bstr) {
		byte[] encodedBytes = Base64.encodeBase64(bstr);
		return new String(encodedBytes);
	}

	public static String findEditorWxId(Context context, String userFolder) {
		Object dbPath = Utils.MM_DATA_FOLDER + userFolder + Utils.ENCRYPTED_DB_NAME;
		String editorWxId = null;
		String result = null;
		try
		{
			Process process = Runtime.getRuntime().exec("su");
			DataOutputStream dos = new DataOutputStream(process.getOutputStream());
			dos.writeBytes("chmod 777 /data/data/com.tencent.mm\n");
			dos.writeBytes("chmod -R 777 /data/data/com.tencent.mm/MicroMsg/\n");
			dos.writeBytes("chmod -R 777 /data/data/com.tencent.mm/MicroMsg/" + userFolder + "\n");
			dos.writeBytes("chmod 666 " + dbPath + "\n");
			dos.writeBytes("exit\n");
			dos.flush();
			process.waitFor();
			SQLiteDatabase mainDatabase = EncryptedDbHelper.getInstance(context).OpenDB((String)dbPath);
			Cursor cursor = mainDatabase.rawQuery("select value from userinfo where id = 2;", null);
			while (cursor.moveToNext()) {
				result = cursor.getString(0);
			}
			cursor.close();
			mainDatabase.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			result = "";
		}
		return result;
	}

	public static String findNickName(Context context, String userName, String userFolder)
	{
		String dbPath = Utils.MM_DATA_FOLDER + userFolder + Utils.ENCRYPTED_DB_NAME;
		String nickName = "";
		try
		{
			Process process = Runtime.getRuntime().exec("su");
			DataOutputStream dos = new DataOutputStream(process.getOutputStream());
			dos.writeBytes("chmod -R 777 /data/data/com.tencent.mm\n");
			dos.writeBytes("chmod -R 777 /data/data/com.tencent.mm/MicroMsg/\n");
			dos.writeBytes("chmod -R 777 /data/data/com.tencent.mm/MicroMsg/" + userFolder + "\n");
			dos.writeBytes("chmod 666 " + dbPath + "\n");
			dos.writeBytes("exit\n");
			dos.flush();
			process.waitFor();
			SQLiteDatabase mainDatabase = EncryptedDbHelper.getInstance(context).OpenDB(dbPath);
			Cursor cursor = mainDatabase.rawQuery(
					"select nickname from rcontact where username = '" + userName + "';", null
			);
			if (cursor.moveToNext())
			{
				nickName = cursor.getString(0);
				Log.i("NickNameInDB", nickName);
			}
			cursor.close();
			mainDatabase.close();
		}
		catch (Exception paramString2)
		{
			paramString2.printStackTrace();
		}
		return nickName;
	}

	public static String findUserFolder()
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault());
		String latestUserFolder = null;
		try {
			Process process = Runtime.getRuntime().exec("su");
			BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
			DataOutputStream dos = new DataOutputStream(process.getOutputStream());
			dos.writeBytes("ls -l /data/data/com.tencent.mm/MicroMsg/ | grep ^d\n");
			dos.writeBytes("exit\n");
			dos.flush();
			Date latestModifiedDate = null;
			String line;
			while ((line = reader.readLine()) != null) {
				String[] info = line.split(" +");
				if (info.length == 6) {
					if (info[5].length() == 32) {
						Date modifiedDate = dateFormat.parse(info[3] + " " + info[4]);
						if (latestUserFolder == null || modifiedDate.after(latestModifiedDate)) {
							latestUserFolder = info[5];
							latestModifiedDate = modifiedDate;
							Log.i("TEMP", "latestUserFolder:" + latestUserFolder);
						}
					}
				}
			}
			process.waitFor();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return latestUserFolder;
	}

	public static ArrayList<String> findUserName(Context context, CharSequence targetNickName, String userFolder)
	{
		String dbPath = Utils.MM_DATA_FOLDER + userFolder + Utils.ENCRYPTED_DB_NAME;
		ArrayList<String> userNameList = new ArrayList<>();
		try
		{
			Process process = Runtime.getRuntime().exec("su");
			DataOutputStream dos = new DataOutputStream(process.getOutputStream());
			dos.writeBytes("chmod -R 777 /data/data/com.tencent.mm\n");
			dos.writeBytes("chmod -R 777 /data/data/com.tencent.mm/MicroMsg/\n");
			dos.writeBytes("chmod -R 777 /data/data/com.tencent.mm/MicroMsg/" + userFolder + "\n");
			dos.writeBytes("chmod 666 " + dbPath + "\n");
			dos.writeBytes("exit\n");
			dos.flush();
			process.waitFor();
			Log.i("TEMP", "try to findUserName...");
			SQLiteDatabase mainDatabase = EncryptedDbHelper.getInstance(context).OpenDB(dbPath);
			Cursor cursor =
					mainDatabase.rawQuery("select username from rcontact where verifyFlag = 0 and (conRemark = '"
							+ targetNickName + "' or nickname = '" + targetNickName + "');", null);
			while (cursor.moveToNext())
			{
				userNameList.add(cursor.getString(0));
				Log.i("TEMP", "findUserName:" + cursor.getString(0));
			}
			cursor.close();
			mainDatabase.close();
		} catch (Exception paramString) {
			paramString.printStackTrace();
		}
		return userNameList;
	}

	public static ArrayList<SnsRecord> getSnsRecords(String userFolder,
	                                                 String editorWxId,
	                                                 ArrayList<String> userNameList,
	                                                 CharSequence targetNickName) {
		ArrayList<SnsRecord> snsRecords = new ArrayList<>();
		userFolder = Utils.MM_DATA_FOLDER + userFolder + Utils.SNS_DB_FILE_NAME;
		Log.i("TEMP", "in getSnsRecords");
		try {
			Process process = Runtime.getRuntime().exec("su");
			DataOutputStream dos = new DataOutputStream(process.getOutputStream());
			dos.writeBytes("chmod 666 " + userFolder + "\n");
			dos.writeBytes("chmod 666 " + userFolder + "-journal\n");
			dos.writeBytes("exit\n");
			dos.flush();
			process.waitFor();
			Log.i("TEMP", userFolder);
			File snsDatabaseFile = new File(userFolder);
			android.database.sqlite.SQLiteDatabase snsDatabase =
					android.database.sqlite.SQLiteDatabase.openOrCreateDatabase(snsDatabaseFile, null);
			String url = "https://weixinshu.com/manager/wxbook/cursors/";
			for (String userName: userNameList) {
				String query = "select userName, content, type, head, createTime, stringSeq, attrBuf from snsInfo where userName='" + userName + "'";
				query += " order by createTime desc;";
				Log.i("cursors", userName + ":" + query);
				Cursor cursor = snsDatabase.rawQuery(query, null);
				Log.i("TEMP", userName);
				Log.i("TEMP", Integer.toString(cursor.getCount()));
				SnsRecord snsRecord = new SnsRecord(userName, targetNickName.toString(), editorWxId);
				while (cursor.moveToNext()) {
					SnsPost snsPost = new SnsPost(
							cursor.getString(0),
							cursor.getBlob(1),
							cursor.getInt(2),
							cursor.getInt(3),
							cursor.getInt(4),
							cursor.getString(5),
							cursor.getBlob(6)
					);
					snsRecord.addPost(snsPost);
				}
				cursor.close();
				snsRecords.add(snsRecord);
			}
			snsDatabase.close();
			Log.i("TEMP", "friend circle size " + snsRecords.size());
		} catch (Exception e) {
			e.printStackTrace();
			Log.i("TEMP", e.toString());
		}
		return snsRecords;
	}
}
