.class final Lcom/google/common/io/BaseEncoding$Alphabet;
.super Lcom/google/common/base/CharMatcher;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Alphabet"
.end annotation


# instance fields
.field final bitsPerChar:I

.field final bytesPerChunk:I

.field private final chars:[C

.field final charsPerChunk:I

.field private final decodabet:[B

.field final mask:I

.field private final name:Ljava/lang/String;

.field private final validPadding:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "chars"    # [C

    .prologue
    const/16 v10, 0x8

    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 457
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 458
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 459
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 461
    :try_start_0
    array-length v6, p2

    sget-object v9, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v6, v9}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v6

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    invoke-static {v6}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 471
    .local v3, "gcd":I
    div-int v6, v10, v3

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 472
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    div-int/2addr v6, v3

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 474
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    .line 476
    const/16 v6, 0x80

    new-array v1, v6, [B

    .line 477
    .local v1, "decodabet":[B
    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 478
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_1

    .line 479
    aget-char v0, p2, v4

    .line 480
    .local v0, "c":C
    sget-object v6, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v6, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    const-string v9, "Non-ASCII character: %s"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v6, v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 481
    aget-byte v6, v1, v0

    if-ne v6, v12, :cond_0

    move v6, v7

    :goto_1
    const-string v9, "Duplicate character: %s"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v6, v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 482
    int-to-byte v6, v4

    aput-byte v6, v1, v0

    .line 478
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "c":C
    .end local v1    # "decodabet":[B
    .end local v3    # "gcd":I
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/ArithmeticException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    array-length v7, p2

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x23

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Illegal alphabet length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .end local v2    # "e":Ljava/lang/ArithmeticException;
    .restart local v0    # "c":C
    .restart local v1    # "decodabet":[B
    .restart local v3    # "gcd":I
    .restart local v4    # "i":I
    :cond_0
    move v6, v8

    .line 481
    goto :goto_1

    .line 484
    .end local v0    # "c":C
    :cond_1
    iput-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 486
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    new-array v5, v6, [Z

    .line 487
    .local v5, "validPadding":[Z
    const/4 v4, 0x0

    :goto_2
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    if-ge v4, v6, :cond_2

    .line 488
    mul-int/lit8 v6, v4, 0x8

    iget v8, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v6, v8, v9}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v6

    aput-boolean v7, v5, v6

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 490
    :cond_2
    iput-object v5, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    .line 491
    return-void
.end method

.method private hasLowerCase()Z
    .locals 5

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 510
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
    const/4 v4, 0x1

    .line 514
    .end local v1    # "c":C
    :goto_1
    return v4

    .line 509
    .restart local v1    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .end local v1    # "c":C
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private hasUpperCase()Z
    .locals 5

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 519
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    const/4 v4, 0x1

    .line 523
    .end local v1    # "c":C
    :goto_1
    return v4

    .line 518
    .restart local v1    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "c":C
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method decode(C)I
    .locals 3
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 503
    :cond_0
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method encode(I)C
    .locals 1
    .param p1, "bits"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method isValidPaddingStartPosition(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    iget v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    rem-int v1, p1, v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 5

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :goto_0
    return-object p0

    .line 543
    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 544
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 545
    .local v1, "lowerCased":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 546
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 543
    .end local v0    # "i":I
    .end local v1    # "lowerCased":[C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 548
    .restart local v0    # "i":I
    .restart local v1    # "lowerCased":[C
    :cond_2
    new-instance v2, Lcom/google/common/io/BaseEncoding$Alphabet;

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".lowerCase()"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    move-object p0, v2

    goto :goto_0
.end method

.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 554
    sget-object v0, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    return-object v0
.end method

.method upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 5

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :goto_0
    return-object p0

    .line 530
    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Cannot call upperCase() on a mixed-case alphabet"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 531
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 532
    .local v1, "upperCased":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 533
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 530
    .end local v0    # "i":I
    .end local v1    # "upperCased":[C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 535
    .restart local v0    # "i":I
    .restart local v1    # "upperCased":[C
    :cond_2
    new-instance v2, Lcom/google/common/io/BaseEncoding$Alphabet;

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".upperCase()"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    move-object p0, v2

    goto :goto_0
.end method
