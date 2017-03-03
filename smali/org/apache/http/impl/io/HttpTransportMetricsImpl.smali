.class public Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
.super Ljava/lang/Object;
.source "HttpTransportMetricsImpl.java"

# interfaces
.implements Lorg/apache/http/io/HttpTransportMetrics;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private bytesTransferred:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 45
    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    return-wide v0
.end method

.method public incrementBytesTransferred(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 58
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 63
    return-void
.end method

.method public setBytesTransferred(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 54
    return-void
.end method
