.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;,
        Lcom/google/common/primitives/Ints$LexicographicalComparator;,
        Lcom/google/common/primitives/Ints$IntConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_POWER_OF_TWO:I = 0x40000000

.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 639
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    .line 642
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 644
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x30

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 647
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 648
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIII)I
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    array-length v0, p0

    if-nez v0, :cond_0

    .line 511
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([I)V

    goto :goto_0
.end method

.method public static checkedCast(J)I
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 88
    long-to-int v0, p0

    .line 89
    .local v0, "result":I
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 127
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[I)[I
    .locals 9
    .param p0, "arrays"    # [[I

    .prologue
    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 276
    .local v1, "array":[I
    array-length v7, v1

    add-int/2addr v4, v7

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "array":[I
    :cond_0
    new-array v6, v4, [I

    .line 279
    .local v6, "result":[I
    const/4 v5, 0x0

    .line 280
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 281
    .restart local v1    # "array":[I
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v7, v1

    add-int/2addr v5, v7

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    .end local v1    # "array":[I
    :cond_1
    return-object v6
.end method

.method public static contains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 141
    .local v3, "value":I
    if-ne v3, p1, :cond_0

    .line 142
    const/4 v4, 0x1

    .line 145
    .end local v3    # "value":I
    :goto_1
    return v4

    .line 140
    .restart local v3    # "value":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v3    # "value":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static copyOf([II)[I
    .locals 3
    .param p0, "original"    # [I
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 401
    new-array v0, p1, [I

    .line 402
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    return-object v0
.end method

.method private static digit(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 653
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static ensureCapacity([III)[I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->copyOf([II)[I

    move-result-object p0

    .end local p0    # "array":[I
    :cond_0
    return-object p0

    .restart local p0    # "array":[I
    :cond_1
    move v0, v2

    .line 392
    goto :goto_0

    :cond_2
    move v0, v2

    .line 393
    goto :goto_1
.end method

.method public static fromByteArray([B)I
    .locals 8
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    array-length v0, p0

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    aget-byte v2, p0, v6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 321
    goto :goto_0
.end method

.method public static fromBytes(BBBB)I
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 335
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static hashCode(I)I
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 76
    return p0
.end method

.method public static indexOf([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static indexOf([IIII)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 164
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 165
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 169
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 164
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([I[I)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "target"    # [I

    .prologue
    .line 184
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    array-length v2, p1

    if-nez v2, :cond_1

    .line 187
    const/4 v0, 0x0

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 192
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 193
    add-int v2, v0, v1

    aget v2, p0, v2

    aget v3, p1, v1

    if-eq v2, v3, :cond_2

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [I

    .prologue
    .line 416
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    array-length v2, p1

    if-nez v2, :cond_0

    .line 418
    const-string v2, ""

    .line 427
    :goto_0
    return-object v2

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 423
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 425
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([IIII)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 218
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 219
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 223
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 218
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    const/4 v3, 0x0

    .line 254
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 255
    aget v1, p0, v3

    .line 256
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 257
    aget v2, p0, v0

    if-le v2, v1, :cond_0

    .line 258
    aget v1, p0, v0

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_1
    move v2, v3

    .line 254
    goto :goto_0

    .line 261
    .restart local v0    # "i":I
    .restart local v1    # "max":I
    :cond_2
    return v1
.end method

.method public static varargs min([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    const/4 v3, 0x0

    .line 235
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 236
    aget v1, p0, v3

    .line 237
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 238
    aget v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 239
    aget v1, p0, v0

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "min":I
    :cond_1
    move v2, v3

    .line 235
    goto :goto_0

    .line 242
    .restart local v0    # "i":I
    .restart local v1    # "min":I
    :cond_2
    return v1
.end method

.method public static saturatedCast(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 105
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 106
    const v0, 0x7fffffff

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 109
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 111
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/google/common/primitives/Ints$IntConverter;->INSTANCE:Lcom/google/common/primitives/Ints$IntConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v4, :cond_1

    .line 482
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    .line 492
    .local v0, "array":[I
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    return-object v0

    .line 485
    .end local v0    # "array":[I
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 486
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 487
    .restart local v3    # "len":I
    new-array v0, v3, [I

    .line 488
    .restart local v0    # "array":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 490
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    .line 679
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/high16 v10, -0x80000000

    const/4 v8, 0x0

    .line 706
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v8

    .line 743
    :goto_0
    return-object v6

    .line 709
    :cond_0
    const/4 v6, 0x2

    if-lt p1, v6, :cond_1

    const/16 v6, 0x24

    if-le p1, v6, :cond_2

    .line 710
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x41

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 713
    :cond_2
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2d

    if-ne v6, v9, :cond_3

    move v5, v3

    .line 714
    .local v5, "negative":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 715
    .local v3, "index":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_5

    move-object v6, v8

    .line 716
    goto :goto_0

    .end local v3    # "index":I
    .end local v5    # "negative":Z
    :cond_3
    move v5, v7

    .line 713
    goto :goto_1

    .restart local v5    # "negative":Z
    :cond_4
    move v3, v7

    .line 714
    goto :goto_2

    .line 718
    .restart local v3    # "index":I
    :cond_5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/primitives/Ints;->digit(C)I

    move-result v2

    .line 719
    .local v2, "digit":I
    if-ltz v2, :cond_6

    if-lt v2, p1, :cond_7

    :cond_6
    move-object v6, v8

    .line 720
    goto :goto_0

    .line 722
    :cond_7
    neg-int v0, v2

    .line 724
    .local v0, "accum":I
    div-int v1, v10, p1

    .local v1, "cap":I
    move v3, v4

    .line 726
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_b

    .line 727
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/primitives/Ints;->digit(C)I

    move-result v2

    .line 728
    if-ltz v2, :cond_8

    if-ge v2, p1, :cond_8

    if-ge v0, v1, :cond_9

    :cond_8
    move-object v6, v8

    .line 729
    goto :goto_0

    .line 731
    :cond_9
    mul-int/2addr v0, p1

    .line 732
    add-int v6, v10, v2

    if-ge v0, v6, :cond_a

    move-object v6, v8

    .line 733
    goto :goto_0

    .line 735
    :cond_a
    sub-int/2addr v0, v2

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3

    .line 738
    :cond_b
    if-eqz v5, :cond_c

    .line 739
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 740
    :cond_c
    if-ne v0, v10, :cond_d

    move-object v6, v8

    .line 741
    goto :goto_0

    .line 743
    :cond_d
    neg-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0
.end method
