.class public Lorg/apache/http/impl/BHttpConnectionBase;
.super Ljava/lang/Object;
.source "BHttpConnectionBase.java"

# interfaces
.implements Lorg/apache/http/HttpConnection;
.implements Lorg/apache/http/HttpInetConnection;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private final inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

.field private final incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

.field private final messageConstraints:Lorg/apache/http/config/MessageConstraints;

.field private final outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

.field private final outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

.field private final socketHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;)V
    .locals 7
    .param p1, "buffersize"    # I
    .param p2, "fragmentSizeHint"    # I
    .param p3, "chardecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "charencoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p5, "messageConstraints"    # Lorg/apache/http/config/MessageConstraints;
    .param p6, "incomingContentStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;
    .param p7, "outgoingContentStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "Buffer size"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    .line 115
    new-instance v1, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v1}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 116
    .local v1, "inTransportMetrics":Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    new-instance v6, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v6}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 117
    .local v6, "outTransportMetrics":Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    new-instance v0, Lorg/apache/http/impl/io/SessionInputBufferImpl;

    const/4 v3, -0x1

    if-eqz p5, :cond_0

    move-object v4, p5

    :goto_0
    move v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/io/SessionInputBufferImpl;-><init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;IILorg/apache/http/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V

    iput-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    .line 119
    new-instance v0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-direct {v0, v6, p1, p2, p4}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;-><init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V

    iput-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    .line 121
    iput-object p5, p0, Lorg/apache/http/impl/BHttpConnectionBase;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    .line 122
    new-instance v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-direct {v0, v1, v6}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    iput-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 123
    if-eqz p6, :cond_1

    .end local p6    # "incomingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    :goto_1
    iput-object p6, p0, Lorg/apache/http/impl/BHttpConnectionBase;->incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 125
    if-eqz p7, :cond_2

    .end local p7    # "outgoingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    :goto_2
    iput-object p7, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    return-void

    .line 117
    .restart local p6    # "incomingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    .restart local p7    # "outgoingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    :cond_0
    sget-object v4, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    goto :goto_0

    .line 123
    :cond_1
    sget-object p6, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    goto :goto_1

    .line 125
    .end local p6    # "incomingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    :cond_2
    sget-object p7, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    goto :goto_2
.end method

.method private fillInputBuffer(I)I
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    .line 341
    .local v1, "socket":Ljava/net/Socket;
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 343
    .local v0, "oldtimeout":I
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 344
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v2}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->fillBuffer()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 346
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
.end method


# virtual methods
.method protected awaitInput(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    .line 354
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/BHttpConnectionBase;->fillInputBuffer(I)I

    .line 355
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    goto :goto_0
.end method

.method protected bind(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bind(Ljava/io/InputStream;)V

    .line 163
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bind(Ljava/io/OutputStream;)V

    .line 164
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 317
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->clear()V

    .line 320
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    :goto_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 337
    :cond_0
    return-void

    .line 334
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1

    .line 324
    :catch_0
    move-exception v1

    goto :goto_0

    .line 328
    :catch_1
    move-exception v1

    goto :goto_1

    .line 330
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method protected createInputStream(JLorg/apache/http/io/SessionInputBuffer;)Ljava/io/InputStream;
    .locals 3
    .param p1, "len"    # J
    .param p3, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;

    .prologue
    .line 207
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lorg/apache/http/impl/io/ChunkedInputStream;

    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    invoke-direct {v0, p3, v1}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)V

    .line 214
    :goto_0
    return-object v0

    .line 209
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Lorg/apache/http/impl/io/IdentityInputStream;

    invoke-direct {v0, p3}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    goto :goto_0

    .line 211
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 212
    sget-object v0, Lorg/apache/http/impl/io/EmptyInputStream;->INSTANCE:Lorg/apache/http/impl/io/EmptyInputStream;

    goto :goto_0

    .line 214
    :cond_2
    new-instance v0, Lorg/apache/http/impl/io/ContentLengthInputStream;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    goto :goto_0
.end method

.method protected createOutputStream(JLorg/apache/http/io/SessionOutputBuffer;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "len"    # J
    .param p3, "outbuffer"    # Lorg/apache/http/io/SessionOutputBuffer;

    .prologue
    .line 190
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lorg/apache/http/impl/io/ChunkedOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1, p3}, Lorg/apache/http/impl/io/ChunkedOutputStream;-><init>(ILorg/apache/http/io/SessionOutputBuffer;)V

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lorg/apache/http/impl/io/IdentityOutputStream;

    invoke-direct {v0, p3}, Lorg/apache/http/impl/io/IdentityOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;)V

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Lorg/apache/http/impl/io/ContentLengthOutputStream;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/http/impl/io/ContentLengthOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;J)V

    goto :goto_0
.end method

.method protected doFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flush()V

    .line 176
    return-void
.end method

.method protected ensureOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 132
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Connection is not open"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 133
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/BHttpConnectionBase;->getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bind(Ljava/io/InputStream;)V

    .line 136
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/BHttpConnectionBase;->getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bind(Ljava/io/OutputStream;)V

    .line 139
    :cond_1
    return-void

    .line 132
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 251
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 257
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 262
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 263
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 269
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getSessionInputBuffer()Lorg/apache/http/io/SessionInputBuffer;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    return-object v0
.end method

.method protected getSessionOutputBuffer()Lorg/apache/http/io/SessionOutputBuffer;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    return-object v0
.end method

.method protected getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 288
    iget-object v3, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    .line 289
    .local v1, "socket":Ljava/net/Socket;
    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 296
    :cond_0
    :goto_0
    return v2

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "ignore":Ljava/net/SocketException;
    goto :goto_0
.end method

.method protected incrementRequestCount()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 375
    return-void
.end method

.method protected incrementResponseCount()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 379
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStale()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 360
    invoke-virtual {p0}, Lorg/apache/http/impl/BHttpConnectionBase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v2

    .line 364
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Lorg/apache/http/impl/BHttpConnectionBase;->fillInputBuffer(I)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 365
    .local v0, "bytesRead":I
    if-ltz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 366
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/net/SocketTimeoutException;
    move v2, v3

    .line 367
    goto :goto_0

    .line 368
    .end local v1    # "ex":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 369
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected prepareInput(Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;
    .locals 11
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    .line 219
    new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 221
    .local v2, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    iget-object v6, p0, Lorg/apache/http/impl/BHttpConnectionBase;->incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v6, p1}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v4

    .line 222
    .local v4, "len":J
    iget-object v6, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {p0, v4, v5, v6}, Lorg/apache/http/impl/BHttpConnectionBase;->createInputStream(JLorg/apache/http/io/SessionInputBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 223
    .local v3, "instream":Ljava/io/InputStream;
    const-wide/16 v6, -0x2

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 224
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 225
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 226
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 237
    :goto_0
    const-string v6, "Content-Type"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 238
    .local v1, "contentTypeHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 241
    :cond_0
    const-string v6, "Content-Encoding"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 242
    .local v0, "contentEncodingHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 245
    :cond_1
    return-object v2

    .line 227
    .end local v0    # "contentEncodingHeader":Lorg/apache/http/Header;
    .end local v1    # "contentTypeHeader":Lorg/apache/http/Header;
    :cond_2
    cmp-long v6, v4, v8

    if-nez v6, :cond_3

    .line 228
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 229
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 230
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 233
    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 234
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected prepareOutput(Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v2, p1}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v0

    .line 201
    .local v0, "len":J
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/impl/BHttpConnectionBase;->createOutputStream(JLorg/apache/http/io/SessionOutputBuffer;)Ljava/io/OutputStream;

    move-result-object v2

    return-object v2
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 275
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 277
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 303
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 306
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v1

    .line 309
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 388
    iget-object v4, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Socket;

    .line 389
    .local v3, "socket":Ljava/net/Socket;
    if-eqz v3, :cond_1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 392
    .local v2, "remoteAddress":Ljava/net/SocketAddress;
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 393
    .local v1, "localAddress":Ljava/net/SocketAddress;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 394
    invoke-static {v0, v1}, Lorg/apache/http/util/NetUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 395
    const-string v4, "<->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {v0, v2}, Lorg/apache/http/util/NetUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 398
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 400
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "localAddress":Ljava/net/SocketAddress;
    .end local v2    # "remoteAddress":Ljava/net/SocketAddress;
    :goto_0
    return-object v4

    :cond_1
    const-string v4, "[Not bound]"

    goto :goto_0
.end method
