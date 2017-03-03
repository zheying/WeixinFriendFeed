.class Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinshu/xinshuapp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForFollwingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/MainActivity;


# direct methods
.method private constructor <init>(Lcom/xinshu/xinshuapp/MainActivity;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xinshu/xinshuapp/MainActivity;Lcom/xinshu/xinshuapp/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xinshu/xinshuapp/MainActivity;
    .param p2, "x1"    # Lcom/xinshu/xinshuapp/MainActivity$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;-><init>(Lcom/xinshu/xinshuapp/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 249
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://wx.xinshu.me/api/check_qrcode/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeTicket:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 250
    .local v6, "followedStatusGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 251
    .local v5, "followedStatusClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v3, 0x0

    .line 252
    .local v3, "checkCount":I
    const/4 v11, 0x0

    .line 253
    .local v11, "scan":Z
    :goto_0
    const/16 v15, 0x64

    if-gt v3, v15, :cond_1

    .line 254
    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 255
    .local v8, "followedStatusResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 256
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "Get followed status failed."

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v3    # "checkCount":I
    .end local v5    # "followedStatusClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "followedStatusGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "followedStatusResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "scan":Z
    :catch_0
    move-exception v4

    .line 308
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 311
    .local v13, "toastMsg":Landroid/os/Message;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v12, "toastData":Landroid/os/Bundle;
    const-string v15, "Type"

    const-string v16, "Toast"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v15, "TextId"

    const v16, 0x7f090012

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    invoke-virtual {v13, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v15, v15, Lcom/xinshu/xinshuapp/MainActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v15, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 257
    .end local v12    # "toastData":Landroid/os/Bundle;
    .end local v13    # "toastMsg":Landroid/os/Message;
    .restart local v3    # "checkCount":I
    .restart local v5    # "followedStatusClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "followedStatusGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "followedStatusResponse":Lorg/apache/http/HttpResponse;
    .restart local v11    # "scan":Z
    :cond_0
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    .local v7, "followedStatusJson":Lorg/json/JSONObject;
    const-string v15, "scan"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    const-string v16, "openid"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/xinshu/xinshuapp/MainActivity;->openId:Ljava/lang/String;

    .line 260
    const/4 v11, 0x1

    .line 267
    .end local v7    # "followedStatusJson":Lorg/json/JSONObject;
    .end local v8    # "followedStatusResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    if-eqz v11, :cond_3

    .line 269
    new-instance v14, Ljava/io/OutputStreamWriter;

    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    move-object/from16 v16, v0

    const-string v17, "ran_id.txt"

    .line 271
    invoke-virtual/range {v16 .. v17}, Lcom/xinshu/xinshuapp/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 273
    .local v14, "writer":Ljava/io/OutputStreamWriter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v15, v15, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeTicket:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 274
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v15, v15, Lcom/xinshu/xinshuapp/MainActivity;->openId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 276
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 277
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->close()V

    .line 279
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 280
    .local v10, "hideStepOneLayoutMsg":Landroid/os/Message;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v9, "hideStepOneLayoutData":Landroid/os/Bundle;
    const-string v15, "Type"

    const-string v16, "Visibility"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v15, "View"

    const-string v16, "qrcodeLayout"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v15, "Visibility"

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    invoke-virtual {v10, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v15, v15, Lcom/xinshu/xinshuapp/MainActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 288
    .restart local v13    # "toastMsg":Landroid/os/Message;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 289
    .restart local v12    # "toastData":Landroid/os/Bundle;
    const-string v15, "Type"

    const-string v16, "Toast"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v15, "TextId"

    const v16, 0x7f090004

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    invoke-virtual {v13, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v15, v15, Lcom/xinshu/xinshuapp/MainActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v15, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    const-class v16, Lcom/xinshu/xinshuapp/BookShelfActivity;

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v2, "bookshelfIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-virtual {v15, v2}, Lcom/xinshu/xinshuapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-virtual {v15}, Lcom/xinshu/xinshuapp/MainActivity;->finish()V

    goto/16 :goto_1

    .line 263
    .end local v2    # "bookshelfIntent":Landroid/content/Intent;
    .end local v9    # "hideStepOneLayoutData":Landroid/os/Bundle;
    .end local v10    # "hideStepOneLayoutMsg":Landroid/os/Message;
    .end local v12    # "toastData":Landroid/os/Bundle;
    .end local v13    # "toastMsg":Landroid/os/Message;
    .end local v14    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v7    # "followedStatusJson":Lorg/json/JSONObject;
    .restart local v8    # "followedStatusResponse":Lorg/apache/http/HttpResponse;
    :cond_2
    const-wide/16 v16, 0xbb8

    invoke-static/range {v16 .. v17}, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->sleep(J)V

    .line 264
    add-int/lit8 v3, v3, 0x1

    .line 265
    goto/16 :goto_0

    .line 298
    .end local v7    # "followedStatusJson":Lorg/json/JSONObject;
    .end local v8    # "followedStatusResponse":Lorg/apache/http/HttpResponse;
    :cond_3
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 299
    .restart local v13    # "toastMsg":Landroid/os/Message;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 300
    .restart local v12    # "toastData":Landroid/os/Bundle;
    const-string v15, "Type"

    const-string v16, "Toast"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v15, "TextId"

    const v16, 0x7f090016

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    invoke-virtual {v13, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v15, v15, Lcom/xinshu/xinshuapp/MainActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v15, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    const-wide/16 v16, 0x1770

    invoke-static/range {v16 .. v17}, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;->sleep(J)V

    .line 305
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
