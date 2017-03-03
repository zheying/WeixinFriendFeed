.class final Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;
.super Lcom/google/common/collect/ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MapViewOfValuesAsSingletonSets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;",
        "Lcom/google/common/collect/ImmutableSet",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    .local p1, "delegate":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 454
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lcom/google/common/collect/ImmutableMap;

    .line 455
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 462
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;-><init>(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 449
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, "outerValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 449
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 471
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 449
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 458
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 449
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
