package com.zeeying.pojiedemo.utils.sns;

import com.zeeying.pojiedemo.utils.Utils;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/**
 * Created by zeeying on 16/11/15.
 */

public class SnsRecord
{
	private String editorWxId;
	private String nickName;
	private ArrayList<SnsPost> posts;
	private String userName;

	public SnsRecord(String userName, String nickName, String editorWxId)
	{
		this.userName = userName;
		this.nickName = nickName;
		this.editorWxId = editorWxId;
		this.posts = new ArrayList<>();
	}

	public void addPost(SnsPost post)
	{
		this.posts.add(post);
	}

	public int count()
	{
		return this.posts.size();
	}

	public String getJsonFileName()
	{
		return new SimpleDateFormat("yy-MM-dd-HHmmss-", Locale.US)
				.format(new Date(System.currentTimeMillis())) + this.userName + Utils.JSON_FILE_EXT;
	}

	public void toJson(OutputStreamWriter writer)
			throws IOException
	{
		writer.write(91);
		Iterator iterator = this.posts.iterator();
		if (iterator.hasNext()) {
			((SnsPost)iterator.next()).toJson(writer, this.userName, this.nickName, this.editorWxId);
		}
		while (iterator.hasNext())
		{
			writer.write(", ");
			((SnsPost)iterator.next()).toJson(writer, this.userName, this.nickName, this.editorWxId);
		}
		writer.write(93);
	}
}

