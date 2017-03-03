package com.zeeying.pojiedemo.utils;

/**
 * Created by zeeying on 16/11/14.
 */

import android.annotation.SuppressLint;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.security.MessageDigest;
import java.util.HashMap;

@SuppressLint({"SdCardPath"})
public class Utils {
	public static final String COMPATIBLE_INFO_FILE_NAME = "CompatibleInfo.cfg";
	public static final String ENCRYPTED_DB_NAME = "EnMicroMsg.db";
	public static final String JSON_FILE_EXT = ".json64";
	public static final String MM_DATA_FOLDER = "/data/data/com.tencent.mm/MicroMsg/";
	public static final String RANDOM_ID_FILE_NAME = "ran_id.txt";
	public static final String SNS_DB_FILE_NAME = "SnsMicroMsg.db";
	public static final String SYSTEM_INFO_FILE_NAME = "systemInfo.cfg";
	public static final String XINSHU_FOLLOWED_OPENID_NAME = "openid";
	public static final String XINSHU_FOLLOWED_SCANNED_NAME = "scan";
	public static final String XINSHU_FOLLOWED_STATUS_URL = "http://wx.xinshu.me/api/check_qrcode/";
	public static final String XINSHU_JSON_UPLOAD_NAME = "docfile";
	public static final String XINSHU_JSON_UPLOAD_URL = "http://img.xinshu.me/upload/json";
	public static final String XINSHU_QRCODE_API = "http://wx.xinshu.me/api/qrcode";
	public static final String XINSHU_QRCODE_URL_NAME = "qrcode_url";

	public static HashMap loadHashMapFromFile(String path) {
		try {
			ObjectInputStream objReader = new ObjectInputStream(new FileInputStream(path));
			Object hashmapObj = objReader.readObject();
			objReader.close();
			return  (HashMap) hashmapObj;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String md5(String plainText) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			byte[] b = md.digest();
			StringBuffer buf = new StringBuffer("");
			int offset = 0;
			while (offset < b.length) {
				int i = b[offset];
				if (i < 0) {
					i += 256;
				}
				if (i < 16) {
					buf.append("0");
				}
				buf.append(Integer.toHexString(i));
				offset += 1;
			}
			return buf.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
}
