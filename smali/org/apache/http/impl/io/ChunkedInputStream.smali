.class public Lorg/apache/http/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CHUNK_CRLF:I = 0x3

.field private static final CHUNK_DATA:I = 0x2

.field private static final CHUNK_INVALID:I = 0x7fffffff

.field private static final CHUNK_LEN:I = 0x1


# instance fields
.field private final buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private final constraints:Lorg/apache/http/config/MessageConstraints;

.field private eof:Z

.field private footers:[Lorg/apache/http/Header;

.field private final in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:I

.field private state:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "constraints"    # Lorg/apache/http/config/MessageConstraints;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 85
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 88
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    .line 90
    new-array v0, v1, [Lorg/apache/http/Header;

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    .line 103
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/io/SessionInputBuffer;

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 104
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 105
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 106
    if-eqz p2, :cond_0

    .end local p2    # "constraints":Lorg/apache/http/config/MessageConstraints;
    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->constraints:Lorg/apache/http/config/MessageConstraints;

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    .line 108
    return-void

    .line 106
    .restart local p2    # "constraints":Lorg/apache/http/config/MessageConstraints;
    :cond_0
    sget-object p2, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    goto :goto_0
.end method

.method private getChunkSize()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 249
    iget v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    .line 250
    .local v4, "st":I
    packed-switch v4, :pswitch_data_0

    .line 281
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Inconsistent codec state"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 252
    :pswitch_1
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 253
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v5, v6}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 254
    .local v0, "bytesRead1":I
    if-ne v0, v7, :cond_0

    .line 255
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    const-string v6, "CRLF expected at end of chunk"

    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 258
    :cond_0
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 259
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    const-string v6, "Unexpected content at the end of chunk"

    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    :cond_1
    const/4 v5, 0x1

    iput v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    .line 265
    .end local v0    # "bytesRead1":I
    :pswitch_2
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 266
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v5, v6}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 267
    .local v1, "bytesRead2":I
    if-ne v1, v7, :cond_2

    .line 268
    new-instance v5, Lorg/apache/http/ConnectionClosedException;

    const-string v6, "Premature end of chunk coded message body: closing chunk expected"

    invoke-direct {v5, v6}, Lorg/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 271
    :cond_2
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v3

    .line 272
    .local v3, "separator":I
    if-gez v3, :cond_3

    .line 273
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    .line 276
    :cond_3
    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    const-string v6, "Bad chunk header"

    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextChunk()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0x7fffffff

    .line 223
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    if-ne v1, v3, :cond_0

    .line 224
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    const-string v2, "Corrupt data stream"

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->getChunkSize()I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    .line 228
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-gez v1, :cond_1

    .line 229
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    const-string v2, "Negative chunk size"

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/apache/http/MalformedChunkCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ex":Lorg/apache/http/MalformedChunkCodingException;
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    .line 239
    throw v0

    .line 231
    .end local v0    # "ex":Lorg/apache/http/MalformedChunkCodingException;
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    .line 232
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 233
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-nez v1, :cond_2

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 235
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->parseTrailerHeaders()V
    :try_end_1
    .catch Lorg/apache/http/MalformedChunkCodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :cond_2
    return-void
.end method

.method private parseTrailerHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->constraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v3}, Lorg/apache/http/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v3

    iget-object v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->constraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v4}, Lorg/apache/http/config/MessageConstraints;->getMaxLineLength()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Lorg/apache/http/HttpException;
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 299
    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    instance-of v1, v1, Lorg/apache/http/io/BufferInfo;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    check-cast v1, Lorg/apache/http/io/BufferInfo;

    invoke-interface {v1}, Lorg/apache/http/io/BufferInfo;->length()I

    move-result v0

    .line 123
    .local v0, "len":I
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 125
    .end local v0    # "len":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 311
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-nez v1, :cond_2

    .line 313
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 315
    const/16 v1, 0x800

    new-array v0, v1, [B

    .line 316
    .local v0, "buff":[B
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/ChunkedInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    .line 320
    .end local v0    # "buff":[B
    :cond_1
    iput-boolean v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 321
    iput-boolean v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    .line 324
    :cond_2
    return-void

    .line 320
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 321
    iput-boolean v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    throw v1
.end method

.method public getFooters()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    invoke-virtual {v0}, [Lorg/apache/http/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
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

    .line 143
    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v2, :cond_0

    .line 144
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 162
    :cond_1
    :goto_0
    return v0

    .line 149
    :cond_2
    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 150
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    .line 151
    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 152
    goto :goto_0

    .line 155
    :cond_3
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v2}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    .line 156
    .local v0, "b":I
    if-eq v0, v1, :cond_1

    .line 157
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 158
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_1

    .line 159
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

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
    .line 215
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 178
    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v2, :cond_0

    .line 179
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 197
    :cond_1
    :goto_0
    return v0

    .line 185
    :cond_2
    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 186
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    .line 187
    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 188
    goto :goto_0

    .line 191
    :cond_3
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    iget v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 192
    .local v0, "bytesRead":I
    if-eq v0, v1, :cond_4

    .line 193
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 194
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_1

    .line 195
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    goto :goto_0

    .line 199
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 200
    new-instance v1, Lorg/apache/http/TruncatedChunkException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated chunk ( expected size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
