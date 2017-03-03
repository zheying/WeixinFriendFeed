.class public Lorg/apache/http/impl/io/SessionOutputBufferImpl;
.super Ljava/lang/Object;
.source "SessionOutputBufferImpl.java"

# interfaces
.implements Lorg/apache/http/io/SessionOutputBuffer;
.implements Lorg/apache/http/io/BufferInfo;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final CRLF:[B


# instance fields
.field private bbuf:Ljava/nio/ByteBuffer;

.field private final buffer:Lorg/apache/http/util/ByteArrayBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final fragementSizeHint:I

.field private final metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

.field private outstream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;I)V
    .locals 1
    .param p1, "metrics"    # Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .param p2, "buffersize"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p2, v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;-><init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V
    .locals 1
    .param p1, "metrics"    # Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .param p2, "buffersize"    # I
    .param p3, "fragementSizeHint"    # I
    .param p4, "charencoder"    # Ljava/nio/charset/CharsetEncoder;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    .line 88
    const-string v0, "HTTP transport metrcis"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 90
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    .line 91
    if-ltz p3, :cond_0

    .end local p3    # "fragementSizeHint":I
    :goto_0
    iput p3, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    .line 92
    iput-object p4, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 93
    return-void

    .line 91
    .restart local p3    # "fragementSizeHint":I
    :cond_0
    const/4 p3, 0x0

    goto :goto_0
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 137
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 138
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->streamWrite([BII)V

    .line 139
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    .line 140
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    .line 142
    :cond_0
    return-void
.end method

.method private flushStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 133
    :cond_0
    return-void
.end method

.method private handleEncodingResult(Ljava/nio/charset/CoderResult;)V
    .locals 1
    .param p1, "result"    # Ljava/nio/charset/CoderResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 282
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->write(I)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 286
    return-void
.end method

.method private streamWrite([BII)V
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
    .line 125
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    const-string v1, "Output stream"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 127
    return-void
.end method

.method private writeEncoded(Ljava/nio/CharBuffer;)V
    .locals 4
    .param p1, "cbuf"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    .line 265
    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    .line 267
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 268
    :goto_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 270
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0, v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->handleEncodingResult(Ljava/nio/charset/CoderResult;)V

    goto :goto_1

    .line 272
    .end local v0    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 273
    .restart local v0    # "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0, v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->handleEncodingResult(Ljava/nio/charset/CoderResult;)V

    .line 274
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bind(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outstream"    # Ljava/io/OutputStream;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    .line 103
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 147
    invoke-direct {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flushStream()V

    .line 148
    return-void
.end method

.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    if-lez v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->write([BII)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 158
    :cond_0
    iget v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    if-gt p3, v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le p3, v1, :cond_2

    .line 160
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->streamWrite([BII)V

    .line 163
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 167
    .local v0, "freecapacity":I
    if-le p3, v0, :cond_3

    .line 169
    invoke-direct {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 172
    :cond_3
    iget-object v1, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 212
    iget-object v2, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v2, :cond_1

    .line 213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->write(I)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 218
    .local v0, "cbuf":Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->writeEncoded(Ljava/nio/CharBuffer;)V

    .line 221
    .end local v0    # "cbuf":Ljava/nio/CharBuffer;
    :cond_2
    sget-object v2, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->CRLF:[B

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->write([B)V

    goto :goto_0
.end method

.method public writeLine(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 7
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v4, :cond_3

    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, "off":I
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    .line 241
    .local v3, "remaining":I
    :goto_1
    if-lez v3, :cond_4

    .line 242
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    sub-int v1, v4, v5

    .line 243
    .local v1, "chunk":I
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 244
    if-lez v1, :cond_1

    .line 245
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4, p1, v2, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 247
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->isFull()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    invoke-direct {p0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 250
    :cond_2
    add-int/2addr v2, v1

    .line 251
    sub-int/2addr v3, v1

    .line 252
    goto :goto_1

    .line 254
    .end local v1    # "chunk":I
    .end local v2    # "off":I
    .end local v3    # "remaining":I
    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 255
    .local v0, "cbuf":Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->writeEncoded(Ljava/nio/CharBuffer;)V

    .line 257
    .end local v0    # "cbuf":Ljava/nio/CharBuffer;
    :cond_4
    sget-object v4, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->CRLF:[B

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->write([B)V

    goto :goto_0
.end method
