package com.zeeying.pojiedemo;

import android.accessibilityservice.AccessibilityService;
import android.annotation.SuppressLint;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.zeeying.pojiedemo.utils.HttpHelper;
import com.zeeying.pojiedemo.utils.Utils;
import com.zeeying.pojiedemo.utils.sns.SnsHelper;
import com.zeeying.pojiedemo.utils.sns.SnsRecord;
import com.zeeying.pojiedemo.view.GifMovieView;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zeeying on 16/11/17.
 */

public class MyAccessibilityService extends AccessibilityService {

	AccessibilityNodeInfo androidRootNode;
	private Button btn_back;
	Handler fetchSnsDoneHandler;
	LinearLayout fetchSnsMask;
	WindowManager.LayoutParams fetchSnsMaskParams;
	LinearLayout floatWindowLayout;
	WindowManager.LayoutParams floatWindowParams;
	LinearLayout floating_window_toplayout;
	TextView instructionConfirmButton;
	LinearLayout instructionLayoutMakeBook;
	View instructionMargin;
	TextView instructionOkButton;
	TextView instructionTextViewFriends;
	TextView instructionTextViewLogin;
	LinearLayout instruction_to_home;
	LinearLayout instruction_waiting;
	WindowManager mWindowManager;
	AccessibilityNodeInfo mmSnsNodeInfo;
	PackageManager packageManager;
	int position = 0;
	ScrollSnsThread scrollSnsThread = null;
	AccessibilityNodeInfo snsBackButtonNodeInfo;
	Rect snsNodeBoundsInScreen = new Rect();
	AccessibilityNodeInfo snsRootNode;
	CharSequence targetNickName = "";

	public MyAccessibilityService() {
		Log.i("MyAccessibilityService", "Hello World!");
	}

	private void changefour() {
		this.instructionTextViewLogin.setVisibility(View.GONE);
		this.instructionTextViewFriends.setVisibility(View.GONE);
		this.instructionMargin.setVisibility(View.GONE);
		this.floating_window_toplayout.setVisibility(View.GONE);
		this.instruction_waiting.setVisibility(View.VISIBLE);
		this.instructionLayoutMakeBook.setVisibility(View.GONE);
	}

	private void changeone() {
		this.instructionTextViewLogin.setVisibility(View.VISIBLE);
		this.instructionTextViewFriends.setVisibility(View.VISIBLE);
		this.instructionMargin.setVisibility(View.VISIBLE);
		this.floating_window_toplayout.setVisibility(View.VISIBLE);
		this.instructionLayoutMakeBook.setVisibility(View.GONE);
		this.instruction_waiting.setVisibility(View.GONE);
		this.instructionTextViewLogin.setTextColor(getResources().getColor(R.color.floating_window_font_color));
		this.instructionTextViewFriends.setTextColor(getResources().getColor(R.color.step_item_border_color));
	}

	private void changethree() {
		this.instructionTextViewLogin.setVisibility(View.GONE);
		this.instructionTextViewFriends.setVisibility(View.GONE);
		this.instructionMargin.setVisibility(View.GONE);
		this.floating_window_toplayout.setVisibility(View.GONE);
		this.instructionLayoutMakeBook.setVisibility(View.VISIBLE);
		this.instruction_waiting.setVisibility(View.GONE);
		this.floatWindowParams.x = 0;
		this.floatWindowParams.y = 100;
		this.mWindowManager.updateViewLayout(this.floatWindowLayout, this.floatWindowParams);
	}

	private void changetwo() {
		this.instructionTextViewLogin.setVisibility(View.VISIBLE);
		this.instructionTextViewFriends.setVisibility(View.VISIBLE);
		this.instructionMargin.setVisibility(View.VISIBLE);
		this.floating_window_toplayout.setVisibility(View.VISIBLE);
		this.instructionLayoutMakeBook.setVisibility(View.GONE);
		this.instruction_waiting.setVisibility(View.GONE);
		this.instructionTextViewLogin.setTextColor(getResources().getColor(R.color.step_item_border_color));
		this.instructionTextViewFriends.setTextColor(getResources().getColor(R.color.floating_window_font_color));
	}

	@SuppressLint({"InflateParams", "HandlerLeak"})
	private void createFloatWindow() {
		/*
		const/4 v9, 0x0
        const/16 v8, 0x7d2
        const/16 v7, 0x64
        const/16 v6, 0x8
        const/4 v5, 0x1
		 */
		LayoutInflater inflater = LayoutInflater.from(getApplication());
		this.floatWindowLayout = (LinearLayout) inflater.inflate(R.layout.floating_window_instruction, null);
		this.floatWindowParams = new WindowManager.LayoutParams();
		this.floatWindowParams.type = WindowManager.LayoutParams.TYPE_PHONE;
		this.floatWindowParams.format = PixelFormat.RGBA_8888;
		this.floatWindowParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
		this.floatWindowParams.gravity = Gravity.TOP | Gravity.CENTER_HORIZONTAL;
		this.floatWindowParams.x = 0;
		this.floatWindowParams.y = 100;
		this.position = 100;
		this.floatWindowParams.width = ViewGroup.LayoutParams.MATCH_PARENT;
		this.floatWindowParams.height = ViewGroup.LayoutParams.WRAP_CONTENT;
		this.fetchSnsMask = (LinearLayout) inflater.inflate(R.layout.fetch_sns_mask, null);
		this.fetchSnsMaskParams = new WindowManager.LayoutParams();
		this.fetchSnsMaskParams.type = WindowManager.LayoutParams.TYPE_PHONE;
		this.fetchSnsMaskParams.format = PixelFormat.RGBA_8888;
		this.fetchSnsMaskParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
		this.fetchSnsMaskParams.gravity = Gravity.TOP;
		this.mWindowManager = (WindowManager) getApplication().getSystemService(WINDOW_SERVICE);
		this.mWindowManager.addView(this.floatWindowLayout, this.floatWindowParams);
		Point size = new Point();
		mWindowManager.getDefaultDisplay().getSize(size);
		final int windowHeight = size.y;
		this.floatWindowLayout.setOnTouchListener(new View.OnTouchListener() {

			private float lastX;
			private float lastY;
			private float nowX;
			private float nowY;
			private float tranX;
			private float tranY;

			@Override
			@SuppressLint("ClickableViewAccessibility")
			public boolean onTouch(View v, MotionEvent event) {
				boolean ret = false; //v0
				switch (event.getAction()) {
					case MotionEvent.ACTION_DOWN:
						//pswitch_1
						lastX = event.getRawX();
						lastY = event.getRawY();
						ret = true;
						break;
					case MotionEvent.ACTION_UP:
						//pswitch_0
						break;
					case MotionEvent.ACTION_MOVE:
						//pswitch_2
						nowX = event.getRawX();
						nowY = event.getRawY();
						tranX = nowX - lastX;
						tranY = nowY - lastY;
						floatWindowParams.x = (int) (floatWindowParams.x + tranX);
						floatWindowParams.y = (int) (floatWindowParams.y + tranY);
						mWindowManager.updateViewLayout(floatWindowLayout, floatWindowParams);
						lastX = nowX;
						lastY = nowY;
						break;
				}
				return ret;
			}
		});
		this.instructionTextViewLogin = (TextView) this.floatWindowLayout.findViewById(R.id.instructionTextViewLogin);
		this.instructionTextViewFriends = (TextView) this.floatWindowLayout.findViewById(R.id
				.instructionTextViewFriends);
		this.instructionLayoutMakeBook = (LinearLayout) this.floatWindowLayout.findViewById(R.id
				.instructionLayoutMakeBook);
		this.instruction_waiting = (LinearLayout) this.floatWindowLayout.findViewById(R.id.instruction_waiting);
		this.floating_window_toplayout = (LinearLayout) this.floatWindowLayout.findViewById(R.id
				.floating_window_toplayout);
		this.instructionMargin = this.floatWindowLayout.findViewById(R.id.instructionMargin);
		this.instructionOkButton = (TextView) this.floatWindowLayout.findViewById(R.id.instructionOkButton);
		this.instructionConfirmButton = (TextView) this.floatWindowLayout.findViewById(R.id.instructionConfirmButton);
		this.instructionOkButton.setVisibility(View.GONE);
		this.instructionOkButton.setOnClickListener(new View.OnClickListener() {

			public void displayMask() {
				try {
					Process p = Runtime.getRuntime().exec("su");
					DataOutputStream dos = new DataOutputStream(p.getOutputStream());
					dos.writeBytes("service call activity 42 s16 com.android.systemui\n");
					dos.writeBytes("exit\n");
					dos.flush();
					p.waitFor();
				} catch (Exception e) {
					e.printStackTrace();
				}
				mWindowManager.addView(fetchSnsMask, fetchSnsMaskParams);
				GifMovieView sys_gif = (GifMovieView) fetchSnsMask.findViewById(R.id.sys_gif);
				sys_gif.setMovieResource(R.mipmap.mask_wait_anim);
			}

			@Override
			public void onClick(View v) {
//				displayMask();
				scrollSnsThread = new ScrollSnsThread(mmSnsNodeInfo);
				scrollSnsThread.start();
			}
		});
		this.instructionConfirmButton.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
			}
		});
		fetchSnsDoneHandler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				/*
				const/16 v29, 0x0
				 */
				scrollSnsThread = null;
				Context context = getApplicationContext();
				String userFolder = SnsHelper.findUserFolder() + "/";
				String editorWxId = SnsHelper.findEditorWxId(context, userFolder);
				ArrayList<String> userNameList = new ArrayList<>();
				String editorSelf = "no";
				if (targetNickName.equals("") || targetNickName.toString().contains("图片")) {
					userNameList.add(editorWxId);
					SnsHelper.findNickName(context, editorWxId, userFolder);
				} else {
					userNameList = SnsHelper.findUserName(context, targetNickName, userFolder); //v25
				}
				for (String userName : userNameList) {
					if (userName.equals(editorWxId)) {
						editorSelf = "yes";
						break;
					}
				}
				ArrayList<SnsRecord> records = SnsHelper.getSnsRecords(userFolder, editorWxId, userNameList,
						targetNickName);
				if (records.isEmpty()) {
					Log.i("GetSNSRecord", "No records found!");
				} else {
					Log.i("TEMP", "not empty");
					for (SnsRecord record : records) {
						if (record.count() != 0) {
							try {
								File randomIdFile = getFileStreamPath(Utils.RANDOM_ID_FILE_NAME);
								BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream
										(randomIdFile)));
								String openId = reader.readLine();
								openId = reader.readLine();
								reader.close();
								File listFile = getFileStreamPath(openId + ".list");
								boolean hadTarget = false;
								if (listFile.exists()) {
									reader = new BufferedReader(new InputStreamReader(new FileInputStream(listFile),
											"utf-8"));
									String nickName;
									while ((nickName = reader.readLine()) != null) {
										if (nickName.equals(targetNickName.toString())) {
											hadTarget = true;
											break;
										}
									}
									reader.close();
								}
								if (!hadTarget) {
									OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(listFile,
											true), "utf-8");
									writer.write(targetNickName.toString());
									writer.write(10);
									writer.flush();
									writer.close();
								}
							} catch (Exception e) {
								e.printStackTrace();
							}
							String jsonFileName = record.getJsonFileName();
							try {
								BufferedReader randomIdReader = new BufferedReader(new InputStreamReader(new
										FileInputStream(getApplication().getFileStreamPath("ran_id.txt"))));
								String qrcodeTicket = randomIdReader.readLine();
								String openId = randomIdReader.readLine();
								randomIdReader.close();
								OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(getApplication
										().getFileStreamPath(jsonFileName)));
								String scroll = "end";
								if (msg.what == 1) {
									scroll = "middle";
								}
								writer.write("{\"openid\": \"" + openId + "\", \"ticket\": \"" + qrcodeTicket + "\"," +
										" " +
										"\"scroll\": \"" + scroll + "\", \"editorSelf\": \"" + editorSelf + "\", " +
										"\"snsrecord\": ");
								record.toJson(writer);
								writer.close();
								HttpHelper.getInstance().uploadFile(Utils.XINSHU_JSON_UPLOAD_URL, getApplication()
										.getFileStreamPath(jsonFileName), Utils.XINSHU_JSON_UPLOAD_NAME);
							} catch (Exception e) {
								e.printStackTrace();
							}
						}
					}
				}
				try {
					Process p = Runtime.getRuntime().exec("su");
					DataOutputStream dos = new DataOutputStream(p.getOutputStream());
					dos.writeBytes("am startservice -n com.android.systemui/.SystemUIService\n");
					dos.writeBytes("exit\n");
					dos.flush();
					p.waitFor();
					refreshWallpaper();
					Toast.makeText(MyAccessibilityService.this.getApplicationContext(), R.string
							.proceeding_done_toast, Toast.LENGTH_LONG).show();
					p = Runtime.getRuntime().exec("su");
					dos = new DataOutputStream(p.getOutputStream());
					dos.writeBytes("am start com.zeeying.pojiedemo/.BookShelfActivity\n");
					dos.writeBytes("exit\n");
					dos.flush();
					p.waitFor();
					MyAccessibilityService.this.mWindowManager.removeView(MyAccessibilityService.this.fetchSnsMask);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		};
	}

	public boolean onLoginPage(AccessibilityEvent event) {
		if (event.getClassName().equals("com.tencent.mm.ui.account.mobile.MobileInputUI")
				|| event.getClassName().equals("com.tencent.mm.ui.account.LoginUI")
				|| event.getClassName().equals("com.tencent.mm.plugin.webview.ui.tools.WebViewUI")
				|| event.getClassName().equals("com.tencent.mm.ui.account.RegByMobileRegAIOUI")
				|| event.getClassName().equals("com.tencent.mm.ui.base.bx")
				|| event.getClassName().equals("com.tencent.mm.ui.base.w")
				|| event.getClassName().equals("com.tencent.mm.ui.base.aq")
				|| event.getClassName().equals("com.tencent.mm.ui.a.a.i")
				|| event.getClassName().equals("com.tencent.mm.ui.tools.CountryCodeUI")
				|| event.getClassName().equals("com.tencent.mm.ui.account.LoginIndepPass")
				|| event.getClassName().equals("com.tencent.mm.ui.account.MobileVerifyUI")
				|| event.getClassName().equals("com.tencent.mm.ui.account.MobileVerifyUI")) {
			return true;
		}
		return false;
	}

	public static void deep(int level, AccessibilityNodeInfo m) {
		if (level >= 0) {
			for (int i = 0; i < m.getChildCount(); i++) {
				AccessibilityNodeInfo a = m.getChild(i);
				if (a != null) {
					deep(level - 1, a);
				}
			}
		}
	}

	public static Bitmap drawableToBitmap(Drawable drawable) {
		if (drawable instanceof BitmapDrawable) {
			return ((BitmapDrawable) drawable).getBitmap();
		}
		Bitmap bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config
				.ARGB_8888);
		Canvas canvas = new Canvas(bitmap);
		drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
		drawable.draw(canvas);
		return bitmap;
	}

	private void refreshWallpaper() {
		try {
			WallpaperManager wallpaperManager = WallpaperManager.getInstance(getApplication());
			if (wallpaperManager.getWallpaperInfo() == null) {
				Drawable wallpaper = wallpaperManager.peekDrawable();
				if (wallpaper == null) {
					wallpaper = wallpaperManager.getDrawable();
				}
				wallpaperManager.setBitmap(drawableToBitmap(wallpaper));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void dismissAndroidPopUpWindow(AccessibilityEvent event) {
		List<AccessibilityNodeInfo> auth_alert_msgs = event.getSource().findAccessibilityNodeInfosByViewId
				("android:id/title");
		if (!auth_alert_msgs.isEmpty() && auth_alert_msgs.get(0).getText().toString().contains("超级用户请求")) {
			event.getSource().findAccessibilityNodeInfosByViewId("com.android.settings:id/remember_forever").get(0)
					.performAction(AccessibilityNodeInfo.ACTION_CLICK);
			event.getSource().findAccessibilityNodeInfosByViewId("com.android.settings:id/allow").get(0).performAction
					(AccessibilityNodeInfo.ACTION_CLICK);
		}
	}

	public void dismissPopUpWindow(AccessibilityEvent event) {
		List<AccessibilityNodeInfo> alert_msgs = event.getSource().findAccessibilityNodeInfosByViewId("com.tencent" +
				".mm:id/aoo");
		if (!alert_msgs.isEmpty()) {
			String mesg = alert_msgs.get(0).getText().toString();
			if (mesg.contains("更新") || mesg.contains("update")) {
				event.getSource().findAccessibilityNodeInfosByViewId("com.tencent.mm:id/aow").get(0).performAction
						(AccessibilityNodeInfo.ACTION_CLICK);
			}
		}
	}

	@Override
	public void onAccessibilityEvent(AccessibilityEvent event) {
		if (event.getEventType() != AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED) {
			return;
		}
		if (event.getClassName().toString().startsWith("com.tencent.mm")) {
			if (this.mWindowManager == null) {
				createFloatWindow();
			}
			if (this.packageManager == null) {
				this.packageManager = getPackageManager();
			}
			if (this.floatWindowLayout.getVisibility() != View.VISIBLE) {
				this.floatWindowLayout.setVisibility(View.VISIBLE);
				this.mWindowManager.updateViewLayout(this.floatWindowLayout, this.floatWindowParams);
			}
			if (onLoginPage(event)) {
				changeone();
			} else {
				changetwo();
			}
			if (event.getClassName().equals("com.tencent.mm.ui.base.g")) {
				dismissPopUpWindow(event);
			} else if (event.getClassName().equals("com.tencent.mm.plugin.sns.ui.SnsUserUI")) {
				CharSequence currentNickName;
				changethree();
				this.snsRootNode = event.getSource();
				if (!this.snsRootNode.findAccessibilityNodeInfosByViewId("com.tencent.mm:id/bao").isEmpty()) {
					this.mmSnsNodeInfo = this.snsRootNode.findAccessibilityNodeInfosByViewId("com.tencent.mm:id/bao")
							.get(0);
					this.mmSnsNodeInfo.getBoundsInScreen(this.snsNodeBoundsInScreen);
				} else {
					if (!this.snsRootNode.findAccessibilityNodeInfosByViewId("com.tencent.mm:id/ci2").isEmpty()) {
						mmSnsNodeInfo = snsRootNode.findAccessibilityNodeInfosByViewId("com.tencent.mm:id/ci2").get(0);
						this.mmSnsNodeInfo.getBoundsInScreen(this.snsNodeBoundsInScreen);
					}
				}
				List<AccessibilityNodeInfo> targetNickNames = event.getSource().findAccessibilityNodeInfosByViewId("com.tencent.mm:id/zb");
				if (targetNickNames.isEmpty()) {
					targetNickNames = event.getSource().findAccessibilityNodeInfosByViewId("com.tencent.mm:id/aed");
				}
				if (targetNickNames.isEmpty()) {
					targetNickNames = event.getSource().findAccessibilityNodeInfosByViewId("com.tencent.mm:id/b9l");
					if (targetNickNames.isEmpty()) {
						currentNickName = "";
					} else {
						currentNickName = targetNickNames.get(0).getText();
					}
				} else {
					currentNickName = targetNickNames.get(0).getText();
				}
				if (this.targetNickName.equals("") || this.targetNickName.toString().contains("图片")) {
					this.targetNickName = currentNickName;
				} else if (!(currentNickName.toString().contains("图片") || currentNickName.equals(this.targetNickName)
				)) {
					this.targetNickName = currentNickName;
				}
				if (this.instructionOkButton.getVisibility() != View.VISIBLE) {
					this.instructionOkButton.setVisibility(View.VISIBLE);
					this.mWindowManager.updateViewLayout(this.floatWindowLayout, this.floatWindowParams);
				}
			} else if (this.instructionOkButton.getVisibility() == View.VISIBLE) {
				this.instructionOkButton.setVisibility(View.GONE);
				this.mWindowManager.updateViewLayout(this.floatWindowLayout, this.floatWindowParams);
			}
		} else if (this.floatWindowLayout != null && this.floatWindowLayout.getVisibility() == View.VISIBLE) {
			this.floatWindowLayout.setVisibility(View.GONE);
			this.mWindowManager.updateViewLayout(this.floatWindowLayout, this.floatWindowParams);
		}
	}

	@Override
	public void onInterrupt() {

	}

	private class ScrollSnsThread extends Thread {
		ScrollSnsThread(AccessibilityNodeInfo nodeInfo) {
		}

		@Override
		public void run() {
			int scrollCount = 0;
			int maxScrollCount = 1500;
			boolean theEnd = false;
			while (scrollCount <= maxScrollCount) {
				Log.d("XinshuInit", "scrollCount " + scrollCount);
				try {
					sleep(500L);
					Process process = Runtime.getRuntime().exec("su");
					DataOutputStream dos = new DataOutputStream(process.getOutputStream());
					int dragX = 2;
					int dragStartY = snsNodeBoundsInScreen.bottom - 5;
					dos.writeBytes("input swipe " + dragX + " " + dragStartY + " " + dragX + " " + -dragStartY + "\n");
					dos.writeBytes("exit\n");
					dos.flush();
					process.waitFor();
				} catch (Exception e) {
					e.printStackTrace();
				}
				if (scrollCount % 10 == 5) {
					if (!snsRootNode.findAccessibilityNodeInfosByViewId("com.tencent.mm:id/agm").isEmpty()
							|| !snsRootNode.findAccessibilityNodeInfosByViewId("com.tencent.mm:id/z6").isEmpty()) {
						theEnd = true;
						break;
					}
				}
				scrollCount++;
			}
			if (theEnd) {
				fetchSnsDoneHandler.sendEmptyMessage(0);
			} else {
				fetchSnsDoneHandler.sendEmptyMessage(1);
			}
		}
	}
}
