.class Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinshu/xinshuapp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QrcodeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/MainActivity;


# direct methods
.method private constructor <init>(Lcom/xinshu/xinshuapp/MainActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xinshu/xinshuapp/MainActivity;Lcom/xinshu/xinshuapp/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xinshu/xinshuapp/MainActivity;
    .param p2, "x1"    # Lcom/xinshu/xinshuapp/MainActivity$1;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;-><init>(Lcom/xinshu/xinshuapp/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xc8

    .line 203
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v10, "http://wx.xinshu.me/api/qrcode"

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 204
    .local v4, "qrcodeUrlGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v10, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 205
    .local v5, "qrcodeUrlResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    if-eq v10, v12, :cond_0

    .line 206
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Get Xinshu QR Code URL failed."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v4    # "qrcodeUrlGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "qrcodeUrlResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    const-string v10, "QrcodeThreadError"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 234
    .local v9, "toastMsg":Landroid/os/Message;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v8, "toastData":Landroid/os/Bundle;
    const-string v10, "Type"

    const-string v11, "Toast"

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v10, "TextId"

    const v11, 0x7f090012

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {v9, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 238
    iget-object v10, p0, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v10, v10, Lcom/xinshu/xinshuapp/MainActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "toastData":Landroid/os/Bundle;
    .end local v9    # "toastMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 208
    .restart local v4    # "qrcodeUrlGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "qrcodeUrlResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    .line 209
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "qrcode_url"

    .line 210
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "qrcodeUrl":Ljava/lang/String;
    iget-object v10, p0, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    const-string v11, "ticket="

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeTicket:Ljava/lang/String;

    .line 214
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "qrcodeGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v10, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 216
    .local v2, "qrcodeResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    if-eq v10, v12, :cond_1

    .line 217
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Get QR Code failed."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 220
    :cond_1
    iget-object v10, p0, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, v10, Lcom/xinshu/xinshuapp/MainActivity;->tem:Landroid/graphics/Bitmap;

    .line 221
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 222
    .local v7, "showQrcodeImageMsg":Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v6, "showQrcodeImageData":Landroid/os/Bundle;
    const-string v10, "Type"

    const-string v11, "Visibility"

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v10, "View"

    const-string v11, "qrcodeImageLayout"

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v10, "Visibility"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    invoke-virtual {v7, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 227
    iget-object v10, p0, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v10, v10, Lcom/xinshu/xinshuapp/MainActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    iget-object v10, p0, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v10, v10, Lcom/xinshu/xinshuapp/MainActivity;->waitForFollwingThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
