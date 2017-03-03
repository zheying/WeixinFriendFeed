.class public Lorg/apache/http/message/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Lorg/apache/http/message/LineParser;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicLineParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/http/message/BasicLineParser;


# instance fields
.field protected final protocol:Lorg/apache/http/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 73
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/message/BasicLineParser;-><init>(Lorg/apache/http/ProtocolVersion;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/ProtocolVersion;)V
    .locals 0
    .param p1, "proto"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_0

    .end local p1    # "proto":Lorg/apache/http/ProtocolVersion;
    :goto_0
    iput-object p1, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    .line 91
    return-void

    .line 90
    .restart local p1    # "proto":Lorg/apache/http/ProtocolVersion;
    :cond_0
    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    goto :goto_0
.end method

.method public static parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 429
    const-string v1, "Value"

    invoke-static {p0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 432
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 433
    if-eqz p1, :cond_0

    .end local p1    # "parser":Lorg/apache/http/message/LineParser;
    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v1

    return-object v1

    .restart local p1    # "parser":Lorg/apache/http/message/LineParser;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseProtocolVersion(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/ProtocolVersion;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v2, "Value"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 108
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 109
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 110
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    if-eqz p1, :cond_0

    .end local p1    # "parser":Lorg/apache/http/message/LineParser;
    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    return-object v2

    .restart local p1    # "parser":Lorg/apache/http/message/LineParser;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseRequestLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/RequestLine;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v2, "Value"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 259
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 260
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 261
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    if-eqz p1, :cond_0

    .end local p1    # "parser":Lorg/apache/http/message/LineParser;
    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;

    move-result-object v2

    return-object v2

    .restart local p1    # "parser":Lorg/apache/http/message/LineParser;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 344
    const-string v2, "Value"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 347
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 348
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 349
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    if-eqz p1, :cond_0

    .end local p1    # "parser":Lorg/apache/http/message/LineParser;
    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v2

    return-object v2

    .restart local p1    # "parser":Lorg/apache/http/message/LineParser;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method


# virtual methods
.method protected createProtocolVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/ProtocolVersion;->forVersion(II)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected createRequestLine(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/RequestLine;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 336
    new-instance v0, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v0
.end method

.method protected createStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "status"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    return-object v0
.end method

.method public hasProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Z
    .locals 9
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 209
    const-string v7, "Char array buffer"

    invoke-static {p1, v7}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    const-string v7, "Parser cursor"

    invoke-static {p2, v7}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    .line 213
    .local v0, "index":I
    iget-object v7, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v7}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "protoname":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 216
    .local v3, "protolength":I
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x4

    if-ge v7, v8, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v6

    .line 221
    :cond_1
    if-gez v0, :cond_3

    .line 224
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    sub-int v0, v7, v3

    .line 234
    :cond_2
    add-int v7, v0, v3

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 240
    const/4 v2, 0x1

    .line 241
    .local v2, "ok":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-eqz v2, :cond_5

    if-ge v1, v3, :cond_5

    .line 242
    add-int v7, v0, v1

    invoke-virtual {p1, v7}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    move v2, v5

    .line 241
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "j":I
    .end local v2    # "ok":Z
    :cond_3
    if-nez v0, :cond_2

    .line 227
    :goto_3
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .restart local v1    # "j":I
    .restart local v2    # "ok":Z
    :cond_4
    move v2, v6

    .line 242
    goto :goto_2

    .line 244
    :cond_5
    if-eqz v2, :cond_6

    .line 245
    add-int v7, v0, v3

    invoke-virtual {p1, v7}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_7

    move v2, v5

    :cond_6
    :goto_4
    move v6, v2

    .line 248
    goto :goto_0

    :cond_7
    move v2, v6

    .line 245
    goto :goto_4
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v0
.end method

.method public parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;
    .locals 16
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v13, "Char array buffer"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v13, "Parser cursor"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v13}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v12

    .line 122
    .local v12, "protoname":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 124
    .local v11, "protolength":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    .line 125
    .local v4, "indexFrom":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v5

    .line 127
    .local v5, "indexTo":I
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 132
    .local v3, "i":I
    add-int v13, v3, v11

    add-int/lit8 v13, v13, 0x4

    if-le v13, v5, :cond_0

    .line 133
    new-instance v13, Lorg/apache/http/ParseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not a valid protocol version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 139
    :cond_0
    const/4 v9, 0x1

    .line 140
    .local v9, "ok":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-eqz v9, :cond_2

    if-ge v6, v11, :cond_2

    .line 141
    add-int v13, v3, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v13, v14, :cond_1

    const/4 v9, 0x1

    .line 140
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 143
    :cond_2
    if-eqz v9, :cond_3

    .line 144
    add-int v13, v3, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x2f

    if-ne v13, v14, :cond_4

    const/4 v9, 0x1

    .line 146
    :cond_3
    :goto_2
    if-nez v9, :cond_5

    .line 147
    new-instance v13, Lorg/apache/http/ParseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not a valid protocol version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 144
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 152
    :cond_5
    add-int/lit8 v13, v11, 0x1

    add-int/2addr v3, v13

    .line 154
    const/16 v13, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v10

    .line 155
    .local v10, "period":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_6

    .line 156
    new-instance v13, Lorg/apache/http/ParseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid protocol version number: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 162
    :cond_6
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 168
    .local v7, "major":I
    add-int/lit8 v3, v10, 0x1

    .line 170
    const/16 v13, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v1

    .line 171
    .local v1, "blank":I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_7

    .line 172
    move v1, v5

    .line 176
    :cond_7
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 183
    .local v8, "minor":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lorg/apache/http/message/BasicLineParser;->createProtocolVersion(II)Lorg/apache/http/ProtocolVersion;

    move-result-object v13

    return-object v13

    .line 163
    .end local v1    # "blank":I
    .end local v7    # "major":I
    .end local v8    # "minor":I
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v13, Lorg/apache/http/ParseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid protocol major version number: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 177
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "blank":I
    .restart local v7    # "major":I
    :catch_1
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v13, Lorg/apache/http/ParseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid protocol minor version number: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;
    .locals 11
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 279
    const-string v8, "Char array buffer"

    invoke-static {p1, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const-string v8, "Parser cursor"

    invoke-static {p2, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 282
    .local v3, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v4

    .line 285
    .local v4, "indexTo":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 286
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 288
    .local v2, "i":I
    const/16 v8, 0x20

    invoke-virtual {p1, v8, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    .line 289
    .local v0, "blank":I
    if-gez v0, :cond_0

    .line 290
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid request line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "blank":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid request line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 293
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "blank":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {p1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "method":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 296
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 297
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 299
    const/16 v8, 0x20

    invoke-virtual {p1, v8, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    .line 300
    if-gez v0, :cond_1

    .line 301
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid request line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 304
    :cond_1
    invoke-virtual {p1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "uri":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 307
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    .line 309
    .local v7, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 310
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v8

    if-nez v8, :cond_2

    .line 311
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid request line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 315
    :cond_2
    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/http/message/BasicLineParser;->createRequestLine(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/RequestLine;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    return-object v8
.end method

.method public parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;
    .locals 13
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 358
    const-string v10, "Char array buffer"

    invoke-static {p1, v10}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    const-string v10, "Parser cursor"

    invoke-static {p2, v10}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 361
    .local v3, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v4

    .line 365
    .local v4, "indexTo":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v9

    .line 368
    .local v9, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 369
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 371
    .local v2, "i":I
    const/16 v10, 0x20

    invoke-virtual {p1, v10, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    .line 372
    .local v0, "blank":I
    if-gez v0, :cond_0

    .line 373
    move v0, v4

    .line 376
    :cond_0
    invoke-virtual {p1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "s":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 378
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_1

    .line 379
    new-instance v10, Lorg/apache/http/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Status line contains invalid status code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v0    # "blank":I
    .end local v2    # "i":I
    .end local v5    # "j":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v9    # "ver":Lorg/apache/http/ProtocolVersion;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v10, Lorg/apache/http/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid status line: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 377
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "blank":I
    .restart local v2    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "s":Ljava/lang/String;
    .restart local v9    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 385
    :cond_2
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 392
    .local v8, "statusCode":I
    move v2, v0

    .line 394
    if-ge v2, v4, :cond_3

    .line 395
    :try_start_2
    invoke-virtual {p1, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, "reasonPhrase":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v9, v8, v6}, Lorg/apache/http/message/BasicLineParser;->createStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v10

    return-object v10

    .line 386
    .end local v6    # "reasonPhrase":Ljava/lang/String;
    .end local v8    # "statusCode":I
    :catch_1
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Lorg/apache/http/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Status line contains invalid status code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 397
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "statusCode":I
    :cond_3
    const-string v6, ""
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v6    # "reasonPhrase":Ljava/lang/String;
    goto :goto_1
.end method

.method protected skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 452
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    .line 453
    .local v1, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v0

    .line 454
    .local v0, "indexTo":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 459
    return-void
.end method
