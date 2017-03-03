.class final Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardCapturer"
.end annotation


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/reflect/TypeResolver$1;

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>()V

    return-void
.end method

.method private capture([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 429
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/reflect/Type;

    .line 430
    .local v1, "result":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 431
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    return-object v1
.end method

.method private captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 386
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    instance-of v6, p1, Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 415
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p1

    .line 390
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v6, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v6, :cond_0

    .line 393
    instance-of v6, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 394
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 395
    .local v0, "arrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    .line 397
    .end local v0    # "arrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_2
    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    move-object v3, p1

    .line 398
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 399
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_0

    .line 404
    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_3
    instance-of v6, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_4

    move-object v5, p1

    .line 405
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 406
    .local v5, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 407
    .local v1, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v6, v1

    if-nez v6, :cond_0

    .line 408
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 409
    .local v4, "upperBounds":[Ljava/lang/reflect/Type;
    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    const/16 v7, 0x26

    invoke-static {v7}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x21

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "capture#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "-of ? extends "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "name":Ljava/lang/String;
    const-class v6, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto/16 :goto_0

    .line 418
    .end local v1    # "lowerBounds":[Ljava/lang/reflect/Type;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_4
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "must have been one of the known types"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method
