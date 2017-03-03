.class public abstract Lcom/google/common/escape/UnicodeEscaper;
.super Lcom/google/common/escape/Escaper;
.source "UnicodeEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method protected static codePointAt(Ljava/lang/CharSequence;II)I
    .locals 8
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .prologue
    .line 267
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    if-ge p1, p2, :cond_5

    .line 269
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 270
    .local v0, "c1":C
    const v3, 0xd800

    if-lt v0, v3, :cond_0

    const v3, 0xdfff

    if-le v0, v3, :cond_1

    .line 282
    .end local v0    # "c1":C
    :cond_0
    :goto_0
    return v0

    .line 274
    .restart local v0    # "c1":C
    :cond_1
    const v3, 0xdbff

    if-gt v0, v3, :cond_4

    .line 276
    if-ne v2, p2, :cond_2

    .line 277
    neg-int v0, v0

    goto :goto_0

    .line 280
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 281
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0

    .line 284
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x59

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected low surrogate but got char \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' with value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    .end local v1    # "c2":C
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v4, v2, -0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x58

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unexpected low surrogate character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 295
    .end local v0    # "c1":C
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_5
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "Index exceeds specified range"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 304
    new-array v0, p2, [C

    .line 305
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 306
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 155
    .local v0, "end":I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 156
    .local v1, "index":I
    if-ne v1, v0, :cond_0

    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 180
    .local v5, "end":I
    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 181
    .local v2, "dest":[C
    const/4 v3, 0x0

    .line 182
    .local v3, "destIndex":I
    const/4 v10, 0x0

    .line 184
    .local v10, "unescapedChunkStart":I
    :goto_0
    if-ge p2, v5, :cond_6

    .line 185
    invoke-static {p1, p2, v5}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 186
    .local v1, "cp":I
    if-gez v1, :cond_0

    .line 187
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Trailing high surrogate at end of input"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 193
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v7

    .line 194
    .local v7, "escaped":[C
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x2

    :goto_1
    add-int v8, p2, v11

    .line 195
    .local v8, "nextIndex":I
    if-eqz v7, :cond_4

    .line 196
    sub-int v0, p2, v10

    .line 200
    .local v0, "charsSkipped":I
    add-int v11, v3, v0

    array-length v12, v7

    add-int v9, v11, v12

    .line 201
    .local v9, "sizeNeeded":I
    array-length v11, v2

    if-ge v11, v9, :cond_1

    .line 202
    sub-int v11, v5, p2

    add-int/2addr v11, v9

    add-int/lit8 v4, v11, 0x20

    .line 203
    .local v4, "destLength":I
    invoke-static {v2, v3, v4}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 206
    .end local v4    # "destLength":I
    :cond_1
    if-lez v0, :cond_2

    .line 207
    invoke-virtual {p1, v10, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 208
    add-int/2addr v3, v0

    .line 210
    :cond_2
    array-length v11, v7

    if-lez v11, :cond_3

    .line 211
    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {v7, v11, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    array-length v11, v7

    add-int/2addr v3, v11

    .line 215
    :cond_3
    move v10, v8

    .line 217
    .end local v0    # "charsSkipped":I
    .end local v9    # "sizeNeeded":I
    :cond_4
    invoke-virtual {p0, p1, v8, v5}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 218
    goto :goto_0

    .line 194
    .end local v8    # "nextIndex":I
    :cond_5
    const/4 v11, 0x1

    goto :goto_1

    .line 222
    .end local v1    # "cp":I
    .end local v7    # "escaped":[C
    :cond_6
    sub-int v0, v5, v10

    .line 223
    .restart local v0    # "charsSkipped":I
    if-lez v0, :cond_8

    .line 224
    add-int v6, v3, v0

    .line 225
    .local v6, "endIndex":I
    array-length v11, v2

    if-ge v11, v6, :cond_7

    .line 226
    invoke-static {v2, v3, v6}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 228
    :cond_7
    invoke-virtual {p1, v10, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 229
    move v3, v6

    .line 231
    .end local v6    # "endIndex":I
    :cond_8
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v11
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 117
    move v1, p2

    .line 118
    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 119
    invoke-static {p1, v1, p3}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 120
    .local v0, "cp":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    .end local v0    # "cp":I
    :cond_0
    return v1

    .line 123
    .restart local v0    # "cp":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    add-int/2addr v1, v2

    .line 124
    goto :goto_0

    .line 123
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
