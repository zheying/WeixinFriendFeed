.class public Lorg/apache/http/impl/io/SessionInputBufferImpl;
.super Ljava/lang/Object;
.source "SessionInputBufferImpl.java"

# interfaces
.implements Lorg/apache/http/io/SessionInputBuffer;
.implements Lorg/apache/http/io/BufferInfo;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private cbuf:Ljava/nio/CharBuffer;

.field private final constraints:Lorg/apache/http/config/MessageConstraints;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private instream:Ljava/io/InputStream;

.field private final linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

.field private final metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

.field private final minChunkLimit:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;I)V
    .locals 6
    .param p1, "metrics"    # Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .param p2, "buffersize"    # I

    .prologue
    const/4 v4, 0x0

    .line 111
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/io/SessionInputBufferImpl;-><init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;IILorg/apache/http/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;IILorg/apache/http/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V
    .locals 2
    .param p1, "metrics"    # Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .param p2, "buffersize"    # I
    .param p3, "minChunkLimit"    # I
    .param p4, "constraints"    # Lorg/apache/http/config/MessageConstraints;
    .param p5, "chardecoder"    # Ljava/nio/charset/CharsetDecoder;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "HTTP transport metrcis"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    .line 98
    iput-object p1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 99
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    .line 100
    iput v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 101
    iput v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    .line 102
    if-ltz p3, :cond_0

    .end local p3    # "minChunkLimit":I
    :goto_0
    iput p3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    .line 103
    if-eqz p4, :cond_1

    .end local p4    # "constraints":Lorg/apache/http/config/MessageConstraints;
    :goto_1
    iput-object p4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->constraints:Lorg/apache/http/config/MessageConstraints;

    .line 104
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    .line 105
    iput-object p5, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 106
    return-void

    .line 102
    .restart local p3    # "minChunkLimit":I
    .restart local p4    # "constraints":Lorg/apache/http/config/MessageConstraints;
    :cond_0
    const/16 p3, 0x200

    goto :goto_0

    .line 103
    .end local p3    # "minChunkLimit":I
    :cond_1
    sget-object p4, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    goto :goto_1
.end method

.method private appendDecoded(Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "bbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    .line 360
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    if-nez v2, :cond_1

    .line 361
    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    .line 363
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "len":I
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, p2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 367
    .local v1, "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 368
    goto :goto_1

    .line 369
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 370
    .restart local v1    # "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 371
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "result"    # Ljava/nio/charset/CoderResult;
    .param p2, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p3, "bbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 382
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 383
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 384
    .local v0, "len":I
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 388
    return v0
.end method

.method private lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 5
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 313
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v1

    .line 314
    .local v1, "len":I
    if-lez v1, :cond_1

    .line 315
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 316
    add-int/lit8 v1, v1, -0x1

    .line 319
    :cond_0
    if-lez v1, :cond_1

    .line 320
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 321
    add-int/lit8 v1, v1, -0x1

    .line 325
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v2, :cond_2

    .line 326
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1, v2, v4, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/ByteArrayBuffer;II)V

    .line 331
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    .line 332
    return v1

    .line 328
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    invoke-static {v2, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 329
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->appendDecoded(Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_0
.end method

.method private lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I
    .locals 6
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    move v3, p2

    .line 338
    .local v3, "pos":I
    iget v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 340
    .local v2, "off":I
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 341
    if-le v3, v2, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    add-int/lit8 v5, v3, -0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 343
    add-int/lit8 v3, v3, -0x1

    .line 345
    :cond_0
    sub-int v1, v3, v2

    .line 346
    .local v1, "len":I
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v4, :cond_1

    .line 347
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {p1, v4, v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 352
    :goto_0
    return v1

    .line 349
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v4, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 350
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->appendDecoded(Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_0
.end method

.method private streamRead([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->instream:Ljava/io/InputStream;

    const-string v1, "Input stream"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->instream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bind(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->instream:Ljava/io/InputStream;

    .line 116
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 171
    iput v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    .line 172
    return-void
.end method

.method public fillBuffer()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 144
    iget v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    if-lez v4, :cond_1

    .line 145
    iget v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v5, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int v1, v4, v5

    .line 146
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 147
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v5, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    iget-object v6, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v4, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    :cond_0
    iput v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 150
    iput v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    .line 153
    .end local v1    # "len":I
    :cond_1
    iget v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    .line 154
    .local v2, "off":I
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v4, v4

    sub-int v1, v4, v2

    .line 155
    .restart local v1    # "len":I
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-direct {p0, v4, v2, v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->streamRead([BII)I

    move-result v0

    .line 156
    .local v0, "l":I
    if-ne v0, v3, :cond_2

    move v0, v3

    .line 161
    .end local v0    # "l":I
    :goto_0
    return v0

    .line 159
    .restart local v0    # "l":I
    :cond_2
    add-int v3, v2, v0

    iput v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    .line 160
    iget-object v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_0
.end method

.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    iget v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->instream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataAvailable(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v0

    .line 179
    .local v0, "noRead":I
    if-ne v0, v1, :cond_0

    .line 183
    .end local v0    # "noRead":I
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v2, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 222
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 193
    .local v0, "chunk":I
    iget-object v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iget v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    goto :goto_0

    .line 199
    .end local v0    # "chunk":I
    :cond_1
    iget v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    if-le p3, v3, :cond_3

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->streamRead([BII)I

    move-result v2

    .line 201
    .local v2, "read":I
    if-lez v2, :cond_2

    .line 202
    iget-object v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_2
    move v0, v2

    .line 204
    goto :goto_0

    .line 207
    .end local v2    # "read":I
    :cond_3
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v3

    if-nez v3, :cond_4

    .line 208
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v1

    .line 209
    .local v1, "noRead":I
    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 213
    .end local v1    # "noRead":I
    :cond_4
    iget v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    .restart local v0    # "chunk":I
    iget-object v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v4, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    goto :goto_0
.end method

.method public readLine(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 11
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 245
    const-string v7, "Char array buffer"

    invoke-static {p1, v7}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    iget-object v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->constraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v7}, Lorg/apache/http/config/MessageConstraints;->getMaxLineLength()I

    move-result v3

    .line 247
    .local v3, "maxLineLen":I
    const/4 v4, 0x0

    .line 248
    .local v4, "noRead":I
    const/4 v6, 0x1

    .line 249
    .local v6, "retry":Z
    :cond_0
    :goto_0
    if-eqz v6, :cond_8

    .line 251
    const/4 v5, -0x1

    .line 252
    .local v5, "pos":I
    iget v1, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    .local v1, "i":I
    :goto_1
    iget v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    if-ge v1, v7, :cond_1

    .line 253
    iget-object v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    aget-byte v7, v7, v1

    const/16 v9, 0xa

    if-ne v7, v9, :cond_2

    .line 254
    move v5, v1

    .line 259
    :cond_1
    if-lez v3, :cond_4

    .line 260
    iget-object v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v9

    if-lez v5, :cond_3

    move v7, v5

    :goto_2
    add-int/2addr v7, v9

    iget v9, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int v0, v7, v9

    .line 262
    .local v0, "currentLen":I
    if-lt v0, v3, :cond_4

    .line 263
    new-instance v7, Lorg/apache/http/MessageConstraintException;

    const-string v8, "Maximum line length limit exceeded"

    invoke-direct {v7, v8}, Lorg/apache/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 252
    .end local v0    # "currentLen":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    :cond_3
    iget v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    goto :goto_2

    .line 267
    :cond_4
    if-eq v5, v8, :cond_6

    .line 269
    iget-object v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 271
    invoke-direct {p0, p1, v5}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v7

    .line 294
    .end local v1    # "i":I
    .end local v5    # "pos":I
    :goto_3
    return v7

    .line 273
    .restart local v1    # "i":I
    .restart local v5    # "pos":I
    :cond_5
    const/4 v6, 0x0

    .line 274
    add-int/lit8 v7, v5, 0x1

    iget v9, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int v2, v7, v9

    .line 275
    .local v2, "len":I
    iget-object v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v9, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v10, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    invoke-virtual {v7, v9, v10, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 276
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    goto :goto_0

    .line 279
    .end local v2    # "len":I
    :cond_6
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 280
    iget v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v9, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int v2, v7, v9

    .line 281
    .restart local v2    # "len":I
    iget-object v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v9, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v10, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    invoke-virtual {v7, v9, v10, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 282
    iget v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferlen:I

    iput v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 284
    .end local v2    # "len":I
    :cond_7
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v4

    .line 285
    if-ne v4, v8, :cond_0

    .line 286
    const/4 v6, 0x0

    goto :goto_0

    .line 290
    .end local v1    # "i":I
    .end local v5    # "pos":I
    :cond_8
    if-ne v4, v8, :cond_9

    iget-object v7, p0, Lorg/apache/http/impl/io/SessionInputBufferImpl;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    .line 292
    goto :goto_3

    .line 294
    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v7

    goto :goto_3
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 394
    .local v0, "charbuffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 395
    .local v1, "l":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 396
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
