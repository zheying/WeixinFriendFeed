package com.zeeying.pojiedemo;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.StrictMode;
import android.provider.Settings;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.zeeying.pojiedemo.utils.Utils;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;

public class MainActivity extends AppCompatActivity {

	LinearLayout firstHintLayout;
	Thread getQrcodeThread;
	String openId;
	ImageView qrcodeImage;
	LinearLayout qrcodeImageLayout;
	RelativeLayout qrcodeLayout;
	ProgressBar qrcodeLoadingAnimation;
	String qrcodeTicket;
	TextView setupButton;
	LinearLayout stepOneLayout;
	Bitmap tem;
	Handler uiHandler;
	Thread waitForFollwingThread;

	public static void sleep(long time) throws InterruptedException {
		Thread.sleep(time, 0);
	}

	@SuppressLint({"HandlerLeak"})
	protected void onCreate(Bundle saveInstanceState) {
		Log.i("console", "hello");
		super.onCreate(saveInstanceState);
		setContentView(R.layout.activity_main);
		if (Build.VERSION.SDK_INT > 9) {
			StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
		}

		File randomIdFile = getFileStreamPath(Utils.RANDOM_ID_FILE_NAME);
		if (!randomIdFile.exists()) {
			this.stepOneLayout = ((LinearLayout) findViewById(R.id.step_one_component));
			this.qrcodeLayout = ((RelativeLayout) findViewById(R.id.qrcode_layout));
			this.qrcodeLoadingAnimation = ((ProgressBar) findViewById(R.id.follow_qrcode_loading_animation));
			this.qrcodeImage = ((ImageView) findViewById(R.id.follow_qrcode));
			this.qrcodeImageLayout = ((LinearLayout) findViewById(R.id.follow_qrcode_layout));
			this.firstHintLayout = ((LinearLayout) findViewById(R.id.first_hint));

			this.uiHandler = new Handler() {
				public void handleMessage(Message msg) {
					Bundle data = msg.getData();
					String type = data.getString("Type");
					String view = data.getString("View");
					MainActivity.this.qrcodeImage.setImageBitmap(MainActivity.this.tem);
					if ("Visibility".equals(type)) {
						int visibility = data.getInt("Visibility") == View.GONE ? View.GONE : View.VISIBLE;
						if ("stepOneLayout".equals(view)) {
							MainActivity.this.stepOneLayout.setVisibility(visibility);
						} else if ("qrcodeLayout".equals(view)) {
							MainActivity.this.qrcodeLayout.setVisibility(visibility);
						} else if ("qrcodeLoadingAnimation".equals(view)) {
							MainActivity.this.qrcodeLoadingAnimation.setVisibility(visibility);
						} else if ("qrcodeImage".equals(view)) {
							MainActivity.this.qrcodeImage.setVisibility(visibility);
						} else if ("qrcodeImageLayout".equals(view)) {
							MainActivity.this.qrcodeImageLayout.setVisibility(visibility);
						}
					} else if ("Enable".equals(type)) {
						boolean enable = data.getBoolean("Enable");
						if ("stepOneLayout".equals(view)) {
							MainActivity.this.stepOneLayout.setEnabled(enable);
						} else if ("qrcodeLayout".equals(view)) {
							MainActivity.this.qrcodeLayout.setEnabled(enable);
						} else if ("qrcodeLoadingAnimation".equals(view)) {
							MainActivity.this.qrcodeLoadingAnimation.setEnabled(enable);
						} else if ("qrcodeImage".equals(view)) {
							MainActivity.this.qrcodeImage.setEnabled(enable);
						} else if ("qrcodeImageLayout".equals(view)) {
							MainActivity.this.qrcodeImageLayout.setEnabled(enable);
						}
					} else if ("Toast".equals(type)) {
						Toast.makeText(MainActivity.this, data.getInt("TextId"), Toast.LENGTH_SHORT).show();
					}
				}
			};
			this.getQrcodeThread = new QrcodeThread();
			this.waitForFollwingThread = new WaitForFollwingThread();
			TextView followButton = (TextView) findViewById(R.id.button_follow);
			followButton.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					boolean enabled_accessibility_flag = false;
					try {
						enabled_accessibility_flag = Settings.Secure.getInt(getContentResolver(),
								Settings.Secure.ACCESSIBILITY_ENABLED) == 1;
						if (enabled_accessibility_flag) {
							enabled_accessibility_flag = Settings.Secure.getString(
									getContentResolver(),
									Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES
							).contains("com.zeeying.pojiedemo/com.zeeying.pojiedemo.MyAccessibilityService");
						}
						Log.i("Xinshu Init", "enabled_accessibility_flag: " + enabled_accessibility_flag);
						if (!enabled_accessibility_flag) {
							firstHintLayout.setVisibility(View.VISIBLE);
							Toast.makeText(MainActivity.this.getApplicationContext(), R.string.setup_hint, Toast.LENGTH_LONG).show();
						} else {
							firstHintLayout.setVisibility(View.GONE);
							qrcodeLayout.setVisibility(View.VISIBLE);
							getQrcodeThread.start();
						}
					} catch (Exception e) {
						Log.e("getQrcodeThreadError", e.toString());
					}
				}
			});
			stepOneLayout.setVisibility(View.VISIBLE);
			return;
		}
		startActivity(new Intent(this, BookShelfActivity.class));
		finish();
	}


	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	public boolean onOptionsItemSelected(MenuItem item) {
		if (item.getItemId() == R.string.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	public void onResume() {
		super.onResume();
		boolean enabled_accessibility_services = false;
		try {
			enabled_accessibility_services = Settings.Secure.getString(
					getContentResolver(),
					Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES)
					.contains("com.zeeying.pojiedemo/com.zeeying.pojiedemo.MyAccessibilityService");
			Log.i("Xinshu Init", "enabled_accessibility_flag: " + enabled_accessibility_services);
			if (!enabled_accessibility_services) {
				firstHintLayout = (LinearLayout) findViewById(R.id.first_hint);
				firstHintLayout.setVisibility(View.VISIBLE);
				setupButton = (TextView) findViewById(R.id.button_setup);
				setupButton.setOnClickListener(new View.OnClickListener() {
					@Override
					public void onClick(View v) {
						Intent intent = new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS);
						startActivity(intent);
						new CheckAccessbilityTreads().start();
					}
				});
			} else {
				if (getFileStreamPath("ran_id.txt").exists()) {
					startActivity(new Intent(this, BookShelfActivity.class));
					finish();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private class CheckAccessbilityTreads extends Thread {

		public CheckAccessbilityTreads() {}

		public void run() {
			Looper.prepare();
			boolean enabled_accessibility_flag = false;
			while (!enabled_accessibility_flag) {
				try {
					enabled_accessibility_flag = Settings.Secure.getString(
							MainActivity.this.getContentResolver(),
							"enabled_accessibility_services"
					).contains("com.zeeying.pojiedemo/com.zeeying.pojiedemo.MyAccessibilityService");
					if (enabled_accessibility_flag) {
						Toast.makeText(MainActivity.this.getApplicationContext(), "已经开启成功，现在返回心书开始登录", Toast.LENGTH_LONG).show();
						Intent intent = new Intent(MainActivity.this, MainActivity.class);
						intent.setFlags(Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT);
						MainActivity.this.startActivity(intent);
					}
					sleep(1000L);
				} catch (Exception e) {
					e.printStackTrace();
				}

			}
			Looper.loop();
		}
	}

	private class QrcodeThread extends Thread {
		private QrcodeThread() {}

		public void run() {
			try {
				HttpGet qrcodeUrlGet = new HttpGet("http://wx.xinshu.me/api/qrcode");
				HttpResponse qrcodeUrlResponse = new DefaultHttpClient().execute((HttpUriRequest)qrcodeUrlGet);
				if (qrcodeUrlResponse.getStatusLine().getStatusCode() != 200) {
					throw new Exception("Get Xinshu QR Code URL failed.");
				}
				String qrcodeUrl = new JSONObject(EntityUtils.toString(qrcodeUrlResponse.getEntity())).getString("qrcode_url");
				MainActivity.this.qrcodeTicket = qrcodeUrl.substring(qrcodeUrl.indexOf("ticket=") + 7);
				HttpGet qrcodeGet = new HttpGet(qrcodeUrl);
				HttpResponse qrcodeResponse = new DefaultHttpClient().execute(qrcodeGet);
				if (qrcodeResponse.getStatusLine().getStatusCode() != 200) {
					throw new Exception("Get QR Code failed.");
				}
				MainActivity.this.tem = BitmapFactory.decodeStream(qrcodeResponse.getEntity().getContent());
				Message showQrcodeImageMsg = new Message();
				Bundle showQrcodeImageData = new Bundle();
				showQrcodeImageData.putString("Type", "Visibility");
				showQrcodeImageData.putString("View", "qrcodeImageLayout");
				showQrcodeImageData.putInt("Visibility", View.VISIBLE);
				showQrcodeImageMsg.setData(showQrcodeImageData);
				MainActivity.this.uiHandler.sendMessage(showQrcodeImageMsg);
				MainActivity.this.waitForFollwingThread.start();
			} catch (Exception e) {
				e.printStackTrace();
				Log.e("QrcodeThreadError", e.toString());
				Message toastMsg = new Message();
				Bundle toastData = new Bundle();
				toastData.putString("Type", "Toast");
				toastData.putInt("TextId", R.string.network_failed_toast);
				toastMsg.setData(toastData);
				MainActivity.this.uiHandler.sendMessage(toastMsg);
			}
		}
	}

	private class WaitForFollwingThread extends Thread {

		private WaitForFollwingThread() {}

		public void run() {
			try {
				HttpGet followedStatusGet = new HttpGet("http://wx.xinshu.me/api/check_qrcode/" + MainActivity.this.qrcodeTicket);
				DefaultHttpClient followedStatusClient = new DefaultHttpClient();
				int checkCount = 0;
				boolean scan = false;
				while (checkCount <= 100) {
					HttpResponse followedStatusResponse = followedStatusClient.execute(followedStatusGet);
					if (followedStatusResponse.getStatusLine().getStatusCode() != 200) {
						throw new Exception("Get followed status failed.");
					}
					JSONObject followedStatusJson = new JSONObject(EntityUtils.toString(followedStatusResponse.getEntity()));
					if (followedStatusJson.getInt("scan") == 1) {
						MainActivity.this.openId = followedStatusJson.getString("openid");
						OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(getFileStreamPath("ran_id.txt")));
						writer.write(MainActivity.this.qrcodeTicket);
						writer.write(10);
						writer.write(MainActivity.this.openId);
						writer.write(10);
						writer.close();
						Message hideStepOneLayoutMsg = new Message();
						Bundle hideStepOneLayoutData = new Bundle();
						hideStepOneLayoutData.putString("Type", "Visibility");
						hideStepOneLayoutData.putString("View", "qrcodeLayout");
						hideStepOneLayoutData.putInt("Visibility", View.GONE);
						hideStepOneLayoutMsg.setData(hideStepOneLayoutData);
						MainActivity.this.uiHandler.sendMessage(hideStepOneLayoutMsg);
						Message toastMsg = new Message();
						Bundle toastData = new Bundle();
						toastData.putString("Type", "Toast");
						toastData.putInt("TextId", R.string.follow_success_toast);
						toastMsg.setData(toastData);
						MainActivity.this.uiHandler.sendMessage(toastMsg);
						Intent bookselfIntent = new Intent(MainActivity.this, BookShelfActivity.class);
						MainActivity.this.startActivity(bookselfIntent);
						MainActivity.this.finish();
						return;
					}
					sleep(3000L);
					checkCount++;
				}
				Message toastMsg = new Message();
				Bundle toastData = new Bundle();
				toastData.putString("Type", "Toast");
				toastData.putInt("TextId", R.string.qrcode_expire_toast);
				toastMsg.setData(toastData);
				MainActivity.this.uiHandler.sendMessage(toastMsg);
				sleep(6000L);
				System.exit(0);
			} catch (Exception e) {
				e.printStackTrace();
				Message toastMsg = new Message();
				Bundle toastData = new Bundle();
				toastData.putString("Type", "Toast");
				toastData.putInt("TextId", R.string.network_failed_toast);
				toastMsg.setData(toastData);
				MainActivity.this.uiHandler.sendMessage(toastMsg);
			}
		}
	}
}

