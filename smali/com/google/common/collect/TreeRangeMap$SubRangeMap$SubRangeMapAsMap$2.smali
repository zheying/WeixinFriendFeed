.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;)V
    .locals 0

    .prologue
    .line 521
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;, "Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap.2;"
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 567
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;, "Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;, "Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap.2;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    .line 536
    :goto_0
    return-object v2

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap;->access$100(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iget-object v3, v3, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v3}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v3

    iget-object v3, v3, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iget-object v3, v3, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v3}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v3

    iget-object v3, v3, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Cut;

    .line 534
    .local v1, "cutToStart":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap;->access$100(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 536
    .local v0, "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    new-instance v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2$1;

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2$1;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;, "Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap.2;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;, "Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap.2;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    # invokes: Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->removeEntryIf(Lcom/google/common/base/Predicate;)Z
    invoke-static {v0, v1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->access$400(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 562
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;, "Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
