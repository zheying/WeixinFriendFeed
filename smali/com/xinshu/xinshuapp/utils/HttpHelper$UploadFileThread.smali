.class Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;
.super Ljava/lang/Thread;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinshu/xinshuapp/utils/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadFileThread"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private httpHelper:Lcom/xinshu/xinshuapp/utils/HttpHelper;

.field final synthetic this$0:Lcom/xinshu/xinshuapp/utils/HttpHelper;

.field private uploadName:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xinshu/xinshuapp/utils/HttpHelper;Lcom/xinshu/xinshuapp/utils/HttpHelper;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p2, "httpHelper"    # Lcom/xinshu/xinshuapp/utils/HttpHelper;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/io/File;
    .param p5, "uploadName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->this$0:Lcom/xinshu/xinshuapp/utils/HttpHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->httpHelper:Lcom/xinshu/xinshuapp/utils/HttpHelper;

    .line 47
    iput-object p3, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->url:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->file:Ljava/io/File;

    .line 49
    iput-object p5, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->uploadName:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 55
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 57
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.protocol.version"

    sget-object v10, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 59
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v8, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->url:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v6}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 62
    .local v6, "mpEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v2, Lorg/apache/http/entity/mime/content/FileBody;

    iget-object v8, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->file:Ljava/io/File;

    invoke-direct {v2, v8}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 63
    .local v2, "fileBody":Lorg/apache/http/entity/mime/content/ContentBody;
    iget-object v8, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->uploadName:Ljava/lang/String;

    invoke-virtual {v6, v8, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 64
    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 66
    const-string v8, "uploadFile"

    const-string v9, "post..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 68
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string v8, "uploadFile"

    const-string v9, "post done"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 70
    .local v0, "code":I
    const-string v8, "uploadFile"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/16 v8, 0xc8

    if-eq v0, v8, :cond_0

    .line 72
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upload file failed with return status code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "code":I
    .end local v2    # "fileBody":Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "mpEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const-string v8, "uploadError"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 74
    .restart local v0    # "code":I
    .restart local v2    # "fileBody":Lorg/apache/http/entity/mime/content/ContentBody;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v6    # "mpEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 75
    .local v7, "resEntity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 76
    :cond_1
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 78
    iget-object v8, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;->httpHelper:Lcom/xinshu/xinshuapp/utils/HttpHelper;

    const/4 v9, 0x1

    # setter for: Lcom/xinshu/xinshuapp/utils/HttpHelper;->successFlag:Z
    invoke-static {v8, v9}, Lcom/xinshu/xinshuapp/utils/HttpHelper;->access$002(Lcom/xinshu/xinshuapp/utils/HttpHelper;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
