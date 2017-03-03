package com.zeeying.pojiedemo;

import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.zeeying.pojiedemo.utils.Utils;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/**
 * Created by zeeying on 16/11/17.
 */

public class BookShelfActivity extends AppCompatActivity {

	TextView startButton;

	protected void dialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setMessage("请在电脑上访问 www.weixinshu.com 进行编辑预览或购买");
		builder.setTitle("提示");
		builder.setNegativeButton("确认", new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int which) {
				dialog.dismiss();
			}
		});
		builder.create().show();
	}

	protected void dialog_new() {
		LayoutInflater inflater = getLayoutInflater();
		View layout = inflater.inflate(R.layout.dialog, (ViewGroup) findViewById(R.id.dialog));
		TextView button = (TextView) layout.findViewById(R.id.positive);
		final AlertDialog dialog = new AlertDialog.Builder(this).setTitle("提示").setView(layout).show();
		button.setOnClickListener(new View.OnClickListener() {
			public void onClick(View paramAnonymousView) {
				dialog.dismiss();
			}
		});
	}

	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_book_shelf);
		if (!getFileStreamPath(Utils.RANDOM_ID_FILE_NAME).exists()) {
			Intent mainIntent = new Intent(this, MainActivity.class);
			startActivity(mainIntent);
			finish();
			return;
		}
		this.startButton = (TextView) findViewById(R.id.button_start);
		this.startButton.setOnClickListener(new View.OnClickListener() {
			public void onClick(View view) {
				Intent mmIntent = new Intent(Intent.ACTION_MAIN);
				mmIntent.addFlags(Intent.FLAG_RECEIVER_FOREGROUND);
				mmIntent.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.LauncherUI"));
				startActivity(mmIntent);
			}
		});
	}

	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.book_shelf, menu);
		return true;
	}

	public boolean onOptionsItemSelected(MenuItem item) {
		if (item.getItemId() == R.id.action_exit) {
			getFileStreamPath(Utils.RANDOM_ID_FILE_NAME).delete();
			try {
				Process process = Runtime.getRuntime().exec("su");
				DataOutputStream dos = new DataOutputStream(process.getOutputStream());
				dos.writeBytes("am kill com.tencent.mm\n");
				dos.writeBytes("cd /data/data/com.tencent.mm\n");
				dos.writeBytes("rm -rf !(lib)\n");
				dos.writeBytes("exit\n");
				dos.flush();
				process.waitFor();
			} catch (Exception e) {
				e.printStackTrace();
			}
			Intent mainIntent = new Intent(this, MainActivity.class);
			startActivity(mainIntent);
			finish();
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	public void onResume() {
		super.onResume();
		File randomIdFile = getFileStreamPath(Utils.RANDOM_ID_FILE_NAME);
		if (!randomIdFile.exists()) {
			startActivity(new Intent(this, MainActivity.class));
			finish();
			return;
		}
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(randomIdFile)));
			reader.readLine();
			String openId = reader.readLine();
			reader.close();
			LinearLayout bookShelfLayout = (LinearLayout) findViewById(R.id.book_shelf_layout);
			bookShelfLayout.removeAllViews();
			File listFile = getFileStreamPath(openId + ".list");
			if (listFile.exists()) {
				reader = new BufferedReader(new InputStreamReader(new FileInputStream(listFile), "utf-8"));
				int counter = 0;
				LayoutInflater layoutInflater = LayoutInflater.from(this);
				LinearLayout booksLayout = (LinearLayout) layoutInflater.inflate(R.layout.bookshelf_book_line, bookShelfLayout, false);
				bookShelfLayout.setOnClickListener(new View.OnClickListener() {
					@Override
					public void onClick(View v) {
						dialog_new();
					}
				});
				String nickName;
				while ((nickName = reader.readLine()) != null) {
					counter++;
					if (counter % 2 == 1) {
						if (counter != 1) {
							booksLayout = (LinearLayout) layoutInflater.inflate(R.layout.bookshelf_book_line, bookShelfLayout, false);
						}
					}
					TextView bookView = (TextView) layoutInflater.inflate(R.layout.bookshelf_book, booksLayout, false);
					String bookName = nickName;
					if (nickName.length() >= 8) {
						bookName = nickName.substring(0, 8) + "...";
					}
					bookView.setText(bookName + "的微信书");
					booksLayout.addView(bookView);
					if (counter % 2 == 0)  {
						bookShelfLayout.addView(booksLayout);
						bookShelfLayout.addView(layoutInflater.inflate(R.layout.bookshelf_bar, bookShelfLayout, false));
					}
				}
				if (counter % 2 != 0) {
					bookShelfLayout.addView(layoutInflater.inflate(R.layout.bookshelf_bar, bookShelfLayout, false));
				}
				reader.close();
				return;
			}
			new File("/data/data/com.zeeying.pojiedemo/files/" + openId + ".list");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
