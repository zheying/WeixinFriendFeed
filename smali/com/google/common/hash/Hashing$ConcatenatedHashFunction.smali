.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 6
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "bitSum":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 421
    .local v2, "function":Lcom/google/common/hash/HashFunction;
    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    add-int/2addr v1, v5

    .line 420
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "function":Lcom/google/common/hash/HashFunction;
    :cond_0
    iput v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 424
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 444
    instance-of v3, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 445
    check-cast v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 446
    .local v1, "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    iget v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v4, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    iget-object v4, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v4, v4

    if-eq v3, v4, :cond_1

    .line 456
    .end local v1    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :cond_0
    :goto_0
    return v2

    .line 449
    .restart local v1    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v0

    iget-object v4, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 461
    iget v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 462
    .local v2, "hash":I
    iget-object v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .local v0, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 463
    .local v1, "function":Lcom/google/common/hash/HashFunction;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "function":Lcom/google/common/hash/HashFunction;
    :cond_0
    return v2
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 8
    .param p1, "hashers"    # [Lcom/google/common/hash/Hasher;

    .prologue
    .line 428
    iget v7, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    .line 429
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .line 430
    .local v3, "i":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 431
    .local v2, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v2}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v6

    .line 432
    .local v6, "newHash":Lcom/google/common/hash/HashCode;
    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v1, v3, v7}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v7

    add-int/2addr v3, v7

    .line 430
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "hasher":Lcom/google/common/hash/Hasher;
    .end local v6    # "newHash":Lcom/google/common/hash/HashCode;
    :cond_0
    invoke-static {v1}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v7

    return-object v7
.end method
