package com.zeeying.pojiedemo.utils;

/**
 * Created by zeeying on 16/11/15.
 */

import android.util.Log;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.DefaultHttpClient;

import java.io.File;

public class HttpHelper {

	private static HttpHelper instance = null;
	private boolean successFlag;

	public static HttpHelper getInstance() {
		if (instance == null) {
			instance = new HttpHelper();
		}
		return instance;
	}

	public void uploadFile(String url, File file, String uploadName) throws Exception {
		this.successFlag = false;
		Thread uploadFileThread = new UploadFileThread(url, file, uploadName);
		uploadFileThread.start();
		uploadFileThread.join(600000L);
		if (!this.successFlag)
		{
			Log.e("uploadError", "uploadFail");
			throw new Exception("Upload file failed.");
		}
	}

	private class UploadFileThread extends Thread {
		private File file;
		private String uploadName;
		private String url;

		UploadFileThread(String url, File file, String uploadName) {
			this.url = url;
			this.file = file;
			this.uploadName = uploadName;
		}

		public void run() {
			try {
				DefaultHttpClient httpClient = new DefaultHttpClient();
				httpClient.getParams().setParameter("http.protocol.version", HttpVersion.HTTP_1_1);
				HttpPost httpPost = new HttpPost(this.url);
				MultipartEntity mpEntity = new MultipartEntity();
				FileBody fileBody = new FileBody(this.file);
				mpEntity.addPart(this.uploadName, fileBody);
				httpPost.setEntity(mpEntity);
				Log.i("uploadFile", "post...");
				HttpResponse httpResponse = httpClient.execute(httpPost);
				Log.i("uploadFile", "post done");
				int code = httpResponse.getStatusLine().getStatusCode();
				Log.i("uploadFile", Integer.toString(code));
				if (code != 200) {
					throw new Exception("Upload file failed with return status code " + code);
				}
				HttpEntity resEntity = httpResponse.getEntity();
				if (resEntity != null) {
					resEntity.consumeContent();
				}
				httpClient.getConnectionManager().shutdown();
				successFlag = true;
			}
			catch (Exception e) {
				e.printStackTrace();
				Log.e("uploadError", e.toString());
			}
		}
	}
}
