package com.zeeying.pojiedemo;

import android.annotation.SuppressLint;
import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.provider.Settings;
import android.util.Log;

import java.io.DataOutputStream;
import java.io.File;

/**
 * Created by zeeying on 16/11/17.
 */

public class BootBroadcastReceiver extends BroadcastReceiver {

	@Override
	@SuppressLint("SdCardPath")
	public void onReceive(Context context, Intent intent) {
		if (intent.getAction().equals(Intent.ACTION_BOOT_COMPLETED)) {
			Log.i("XinshuInit", "BOOT_COMPLETED received");
			boolean accelerometer_rotation_flag = false; //v0
			boolean user_rotation_flag = false; //v11
			boolean accessibility_enabled_flag = false; //v1
			boolean enabled_accessibility_flag = false; //v4
			try {
				if (Settings.System.getInt(context.getContentResolver(), Settings.System.ACCELEROMETER_ROTATION) == 0) {
					accelerometer_rotation_flag = true;
				} else {
					accelerometer_rotation_flag = false;
				}
				if (Settings.System.getInt(context.getContentResolver(), Settings.System.USER_ROTATION) == 0) {
					user_rotation_flag = true;
				} else {
					user_rotation_flag = false;
				}
				if (Settings.Secure.getInt(context.getContentResolver(), Settings.Secure.ACCESSIBILITY_ENABLED) == 1) {
					accessibility_enabled_flag = true;
				} else {
					accessibility_enabled_flag = false;
				}
				enabled_accessibility_flag = Settings.Secure.getString(context.getContentResolver(), Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES)
						.contains("com.zeeying.pojiedemo/com.zeeying.pojiedemo.MyAccessibilityService");
				Log.i("XinshuInit", "accelerometer_rotation_flag: " + accelerometer_rotation_flag);
				Log.i("XinshuInit", "user_rotation_flag: " + user_rotation_flag);
				Log.i("XinshuInit", "accessibility_enabled_flag: " + accessibility_enabled_flag);
				Log.i("XinshuInit", "enabled_accessibility_flag: " + enabled_accessibility_flag);
				int retryCounter = 0;
				while (retryCounter <= 5) {
					if (accelerometer_rotation_flag
							&& user_rotation_flag
							&& accessibility_enabled_flag
							&& !enabled_accessibility_flag) {
						break;
					}
					try {
						Process process = Runtime.getRuntime().exec("su");
						DataOutputStream dos = new DataOutputStream(process.getOutputStream());
						dos.writeBytes("chmod 771 /data/data/com.android.providers.settings\n");
						dos.writeBytes("chmod 777 /data/data/com.android.providers.settings/databases\n");
						dos.writeBytes("chmod 666 /data/data/com.android.providers.settings/databases/*\n");
						dos.writeBytes("chmod 771 /data/data/nl.ndsc.kitkatlauncher\n");
						dos.writeBytes("chmod 777 /data/data/nl.ndsc.kitkatlauncher/databases\n");
						dos.writeBytes("chmod 666 /data/data/nl.ndsc.kitkatlauncher/databases/*\n");
						dos.writeBytes("wm size 1008x630\n"); //修改屏幕分辨率
						dos.writeBytes("exit\n");
						dos.flush();
						process.waitFor();
						File settingsDatabaseFile = new File("/data/data/com.android.providers.settings/databases/settings.db");

						SQLiteDatabase settingsDatabase = SQLiteDatabase.openOrCreateDatabase(settingsDatabaseFile, null);
						settingsDatabase.execSQL("INSERT INTO system(name, value) values(\'accelerometer_rotation\', 0);");
						settingsDatabase.execSQL("INSERT INTO system(name, value) values(\'user_rotation\', 0);");
						settingsDatabase.execSQL("INSERT INTO secure(name, value) values(\'accessibility_enabled\', 1)" +
								";");
						settingsDatabase.execSQL("INSERT INTO secure(name, value) values(\'enabled_accessibility_services\', " +
								"\'com.zeeying.pojiedemo/com.zeeying.pojiedemo.MyAccessibilityService\');");
						File launcherDatabaseFile = new File("/data/data/nl.ndsc.kitkatlauncher/databases/launcher.db");
						SQLiteDatabase launcherDatabase = SQLiteDatabase.openOrCreateDatabase(launcherDatabaseFile, null);
						launcherDatabase.execSQL("UPDATE favorites SET intent = \'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.xinshu.xinshuapp/.MainActivity;end\';");
						launcherDatabase.close();
						WallpaperManager wpManager = WallpaperManager.getInstance(context);
						process = Runtime.getRuntime().exec("su");
						dos = new DataOutputStream(process.getOutputStream());
						dos.writeBytes("am broadcast -a android.intent.action.BOOT_COMPLETED\n");
						dos.writeBytes("exit\n");
						dos.flush();
					} catch (Exception e) {
						e.printStackTrace();
						Log.e("XinshuInit", "Init failed_" + retryCounter);
					}
					retryCounter++;
				}
			} catch (Exception e) {
				Log.e("XinshuInit", "Read settings failed");
				e.printStackTrace();
			}
		}
	}
}
