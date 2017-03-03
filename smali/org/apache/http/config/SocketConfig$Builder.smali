.class public Lorg/apache/http/config/SocketConfig$Builder;
.super Ljava/lang/Object;
.source "SocketConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/config/SocketConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backlogSize:I

.field private rcvBufSize:I

.field private sndBufSize:I

.field private soKeepAlive:Z

.field private soLinger:I

.field private soReuseAddress:Z

.field private soTimeout:I

.field private tcpNoDelay:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/config/SocketConfig$Builder;->soLinger:I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/config/SocketConfig$Builder;->tcpNoDelay:Z

    .line 235
    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/config/SocketConfig;
    .locals 9

    .prologue
    .line 287
    new-instance v0, Lorg/apache/http/config/SocketConfig;

    iget v1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soTimeout:I

    iget-boolean v2, p0, Lorg/apache/http/config/SocketConfig$Builder;->soReuseAddress:Z

    iget v3, p0, Lorg/apache/http/config/SocketConfig$Builder;->soLinger:I

    iget-boolean v4, p0, Lorg/apache/http/config/SocketConfig$Builder;->soKeepAlive:Z

    iget-boolean v5, p0, Lorg/apache/http/config/SocketConfig$Builder;->tcpNoDelay:Z

    iget v6, p0, Lorg/apache/http/config/SocketConfig$Builder;->sndBufSize:I

    iget v7, p0, Lorg/apache/http/config/SocketConfig$Builder;->rcvBufSize:I

    iget v8, p0, Lorg/apache/http/config/SocketConfig$Builder;->backlogSize:I

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/config/SocketConfig;-><init>(IZIZZIII)V

    return-object v0
.end method

.method public setBacklogSize(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0
    .param p1, "backlogSize"    # I

    .prologue
    .line 282
    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->backlogSize:I

    .line 283
    return-object p0
.end method

.method public setRcvBufSize(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0
    .param p1, "rcvBufSize"    # I

    .prologue
    .line 274
    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->rcvBufSize:I

    .line 275
    return-object p0
.end method

.method public setSndBufSize(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0
    .param p1, "sndBufSize"    # I

    .prologue
    .line 266
    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->sndBufSize:I

    .line 267
    return-object p0
.end method

.method public setSoKeepAlive(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0
    .param p1, "soKeepAlive"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soKeepAlive:Z

    .line 254
    return-object p0
.end method

.method public setSoLinger(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0
    .param p1, "soLinger"    # I

    .prologue
    .line 248
    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soLinger:I

    .line 249
    return-object p0
.end method

.method public setSoReuseAddress(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0
    .param p1, "soReuseAddress"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soReuseAddress:Z

    .line 244
    return-object p0
.end method

.method public setSoTimeout(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0
    .param p1, "soTimeout"    # I

    .prologue
    .line 238
    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soTimeout:I

    .line 239
    return-object p0
.end method

.method public setTcpNoDelay(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->tcpNoDelay:Z

    .line 259
    return-object p0
.end method
