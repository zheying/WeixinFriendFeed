package com.zeeying.pojiedemo.utils.sns;

import android.util.Log;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/**
 * Created by zeeying on 16/11/14.
 */

public class NetClient {

	public static String sendGet(String url, String param) {
		String result = "";
		BufferedReader in = null;
		try {
			String urlNameString = new StringBuilder().append(url).append(param).toString();
			Log.i("url", urlNameString);
			URL realUrl = new URL(urlNameString);
			URLConnection connection = realUrl.openConnection();
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			connection.connect();
			in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line;
			while ((line = in.readLine()) != null) {
				result = new StringBuilder().append(result).append(line).toString();
			}
			in.close();
		} catch (Exception e) {
			Log.i("error", new StringBuilder().append("发送GET请求出现异常！").append(e).toString());
			e.printStackTrace();
			if (in != null) {
				try {
					in.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}

		return result;
	}

	public static String sendPost(String urlString, String param) {
		String result = "";
		Log.i("url", urlString);
		try {
			HttpURLConnection connection = (HttpURLConnection)new URL(urlString).openConnection();
			connection.setDoOutput(true);
			connection.setDoInput(true);
			connection.setRequestMethod("POST");
			connection.setUseCaches(false);
			connection.setInstanceFollowRedirects(true);
			connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
			byte[] bytes = param.getBytes("UTF-8");
			String len = Integer.toString(bytes.length);
			connection.setRequestProperty("Content-Length", len);
			connection.connect();
			DataOutputStream out = new DataOutputStream(connection.getOutputStream());
			out.write(bytes);
			out.flush();
			out.close();
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			StringBuilder sb = new StringBuilder("");
			String lines;
			while ((lines = reader.readLine()) != null) {
				lines = new String(lines.getBytes(), "utf-8");
				sb.append(lines);
			}
			Log.i("url", sb.toString());
			result = sb.toString();
			reader.close();
			connection.disconnect();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return result;
	}

	public static String sendPut(String urlString, String param) {
		String result = "";
		Log.i("url", urlString);
		HttpURLConnection connection;
		try
		{
			URL url =  new URL(urlString);
			connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setDoInput(true);
			connection.setRequestMethod("PUT");
			connection.setUseCaches(false);
			connection.setInstanceFollowRedirects(true);
			connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
			byte[] bytes = param.getBytes("UTF-8");
			connection.setRequestProperty("Content-Length", Integer.toString(bytes.length));
			connection.connect();
			DataOutputStream out = new DataOutputStream(connection.getOutputStream());
			out.write(bytes);
			out.close();
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			StringBuilder sb = new StringBuilder("");
			String lines;
			while ((lines = reader.readLine()) != null) {
				sb.append(new String(lines.getBytes(), "utf-8"));
			}
			Log.i("url", sb.toString());
			result = sb.toString();
			reader.close();
			connection.disconnect();
		} catch (IOException e)
		{
			e.printStackTrace();
		}
		return result;
	}


}
