.class final Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;
.super Ljava/util/AbstractMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsMapOfRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeRangeMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeRangeMap;)V
    .locals 0

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeRangeMap;Lcom/google/common/collect/TreeRangeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/TreeRangeMap;
    .param p2, "x1"    # Lcom/google/common/collect/TreeRangeMap$1;

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;-><init>(Lcom/google/common/collect/TreeRangeMap;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 215
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges$1;-><init>(Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    instance-of v2, p1, Lcom/google/common/collect/Range;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 221
    check-cast v0, Lcom/google/common/collect/Range;

    .line 222
    .local v0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<*>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap;->access$100(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 223
    .local v1, "rangeMapEntry":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 227
    .end local v0    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<*>;"
    .end local v1    # "rangeMapEntry":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
