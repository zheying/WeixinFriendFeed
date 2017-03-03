package com.zeeying.pojiedemo.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;

/**
 * Created by zeeying on 16/11/15.
 */

public class ScreenSettingHelper {

	private static PowerManager.WakeLock wl;

	@SuppressLint("Wakelock")
	public static void setScreenOn(Context context, boolean on) {
		if (on) {
			wl = ((PowerManager)context.getSystemService(Context.POWER_SERVICE))
					.newWakeLock(PowerManager.ON_AFTER_RELEASE | PowerManager.SCREEN_BRIGHT_WAKE_LOCK, "MyKeepScreenOnPM");
			wl.acquire();
			return;
		}
		wl.release();
		wl = null;
	}

}
