package com.zeeying.pojiedemo.utils.sns;

import android.util.Log;

import com.zeeying.pojiedemo.utils.Utils;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Created by zeeying on 16/11/15.
 */

public class SnsPost
{
	private String attrBuf;
	private String content;
	private int createTime;
	private int head;
	private String stringSeq;
	private int type;
	private String userName;

	public SnsPost(String userName, byte[] content, int type, int head, int createTime, String stringSeq, byte[] attrBuf) {
		Log.i("XinshuInit","Ccontent: " + new String(content));
		this.userName = userName;
		this.content = SnsHelper.encodeBase64(content);
		this.type = type;
		this.head = head;
		this.createTime = createTime;
		this.stringSeq = stringSeq;
		this.attrBuf = SnsHelper.encodeBase64(attrBuf);
	}

	public String getJsonFileName()
	{
		return new SimpleDateFormat("yy-MM-dd-HHmmss-", Locale.US)
				.format(new Date(System.currentTimeMillis())) + this.userName + Utils.JSON_FILE_EXT;
	}

	public void toJson(OutputStreamWriter writer)
			throws IOException
	{
		toJson(writer, "", "", "");
	}

	public void toJson(OutputStreamWriter writer, String userName, String nickName, String editorWxId)
			throws IOException
	{
		writer.write(123);
		nickName = nickName.replace("\\", "\\\\").replace("\"", "\\\"");
		writer.write("\"nickname\": \"" + nickName + "\", ");
		writer.write("\"wx_id\": \"" + userName + "\", ");
		writer.write("\"xiaobian\": \"" + editorWxId + "\", ");
		writer.write("\"content\": \"" + this.content + "\", ");
		writer.write("\"createTime\": \"" + this.createTime + "\", ");
		writer.write("\"type\": \"" + this.type + "\", ");
		writer.write("\"head\": \"" + this.head + "\", ");
		writer.write("\"sns_id\": \"" + this.stringSeq + "\", ");
		writer.write("\"attrBuf\": \"" + this.attrBuf + "\"");
		writer.write(125);
	}
}
