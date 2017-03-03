.class public Lorg/apache/http/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lorg/apache/http/TokenIterator;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field public static final HTTP_SEPARATORS:Ljava/lang/String; = " ,;=()<>@:\\\"/[]?{}\t"


# instance fields
.field protected currentHeader:Ljava/lang/String;

.field protected currentToken:Ljava/lang/String;

.field protected final headerIt:Lorg/apache/http/HeaderIterator;

.field protected searchPos:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HeaderIterator;)V
    .locals 1
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "Header iterator"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HeaderIterator;

    iput-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    .line 87
    return-void
.end method


# virtual methods
.method protected createToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 215
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findNext(I)I
    .locals 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 168
    move v1, p1

    .line 169
    .local v1, "from":I
    if-gez v1, :cond_1

    .line 171
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 175
    const/4 v1, 0x0

    .line 181
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenStart(I)I

    move-result v2

    .line 182
    .local v2, "start":I
    if-gez v2, :cond_2

    .line 183
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    goto :goto_0

    .line 178
    .end local v2    # "start":I
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenSeparator(I)I

    move-result v1

    goto :goto_1

    .line 187
    .restart local v2    # "start":I
    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->findTokenEnd(I)I

    move-result v0

    .line 188
    .local v0, "end":I
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v0}, Lorg/apache/http/message/BasicTokenIterator;->createToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    goto :goto_0
.end method

.method protected findTokenEnd(I)I
    .locals 3
    .param p1, "from"    # I

    .prologue
    .line 318
    const-string v2, "Search position"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    .line 319
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 320
    .local v1, "to":I
    add-int/lit8 v0, p1, 0x1

    .line 321
    .local v0, "end":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    return v0
.end method

.method protected findTokenSeparator(I)I
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 282
    const-string v4, "Search position"

    invoke-static {p1, v4}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v2

    .line 283
    .local v2, "from":I
    const/4 v1, 0x0

    .line 284
    .local v1, "found":Z
    iget-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 285
    .local v3, "to":I
    :goto_0
    if-nez v1, :cond_3

    if-ge v2, v3, :cond_3

    .line 286
    iget-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 287
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const/4 v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    new-instance v4, Lorg/apache/http/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tokens without separator (pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 296
    :cond_2
    new-instance v4, Lorg/apache/http/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid character after token (pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    .end local v0    # "ch":C
    :cond_3
    return v2
.end method

.method protected findTokenStart(I)I
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 230
    const-string v4, "Search position"

    invoke-static {p1, v4}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v2

    .line 231
    .local v2, "from":I
    const/4 v1, 0x0

    .line 232
    .local v1, "found":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_6

    iget-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 234
    iget-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 235
    .local v3, "to":I
    :goto_1
    if-nez v1, :cond_4

    if-ge v2, v3, :cond_4

    .line 237
    iget-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 238
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 241
    :cond_2
    iget-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 243
    const/4 v1, 0x1

    goto :goto_1

    .line 245
    :cond_3
    new-instance v4, Lorg/apache/http/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid character before token (pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 250
    .end local v0    # "ch":C
    :cond_4
    if-nez v1, :cond_0

    .line 251
    iget-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 252
    iget-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 253
    const/4 v2, 0x0

    goto :goto_0

    .line 255
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    goto :goto_0

    .line 260
    .end local v3    # "to":I
    :cond_6
    if-eqz v1, :cond_7

    .end local v2    # "from":I
    :goto_2
    return v2

    .restart local v2    # "from":I
    :cond_7
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHttpSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 414
    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTokenChar(C)Z
    .locals 3
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 379
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 385
    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->isHttpSeparator(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 390
    goto :goto_0
.end method

.method protected isTokenSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 341
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWhitespace(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 360
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/http/message/BasicTokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iteration already finished."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    .line 115
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    .line 117
    return-object v0
.end method

.method public final remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
