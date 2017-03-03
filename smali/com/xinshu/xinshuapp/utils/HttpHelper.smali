.class public Lcom/xinshu/xinshuapp/utils/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;
    }
.end annotation


# static fields
.field private static instance:Lcom/xinshu/xinshuapp/utils/HttpHelper;


# instance fields
.field private successFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/xinshu/xinshuapp/utils/HttpHelper;->instance:Lcom/xinshu/xinshuapp/utils/HttpHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xinshu/xinshuapp/utils/HttpHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xinshu/xinshuapp/utils/HttpHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper;->successFlag:Z

    return p1
.end method

.method public static getInstance()Lcom/xinshu/xinshuapp/utils/HttpHelper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/xinshu/xinshuapp/utils/HttpHelper;->instance:Lcom/xinshu/xinshuapp/utils/HttpHelper;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/xinshu/xinshuapp/utils/HttpHelper;

    invoke-direct {v0}, Lcom/xinshu/xinshuapp/utils/HttpHelper;-><init>()V

    sput-object v0, Lcom/xinshu/xinshuapp/utils/HttpHelper;->instance:Lcom/xinshu/xinshuapp/utils/HttpHelper;

    .line 24
    :cond_0
    sget-object v0, Lcom/xinshu/xinshuapp/utils/HttpHelper;->instance:Lcom/xinshu/xinshuapp/utils/HttpHelper;

    return-object v0
.end method


# virtual methods
.method public uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "uploadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper;->successFlag:Z

    .line 29
    new-instance v0, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xinshu/xinshuapp/utils/HttpHelper$UploadFileThread;-><init>(Lcom/xinshu/xinshuapp/utils/HttpHelper;Lcom/xinshu/xinshuapp/utils/HttpHelper;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v0, "uploadFileThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 33
    iget-boolean v1, p0, Lcom/xinshu/xinshuapp/utils/HttpHelper;->successFlag:Z

    if-nez v1, :cond_0

    .line 34
    const-string v1, "uploadError"

    const-string v2, "uploadFail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Upload file failed."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    return-void
.end method
