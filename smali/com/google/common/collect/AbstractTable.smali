.class abstract Lcom/google/common/collect/AbstractTable;
.super Ljava/lang/Object;
.source "AbstractTable.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractTable$Values;,
        Lcom/google/common/collect/AbstractTable$CellSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private transient cellSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method


# virtual methods
.method abstract cellIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end method

.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable;->cellSet:Ljava/util/Set;

    .line 111
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->createCellSet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractTable;->cellSet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 86
    return-void
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->columnMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 69
    .local v0, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->columnMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 59
    .local v1, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 63
    .end local v1    # "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method createCellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/AbstractTable$CellSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractTable$CellSet;-><init>(Lcom/google/common/collect/AbstractTable;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/AbstractTable$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractTable$Values;-><init>(Lcom/google/common/collect/AbstractTable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Tables;->equalsImpl(Lcom/google/common/collect/Table;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 75
    .local v0, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 102
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/common/collect/AbstractTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 91
    .local v0, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable;->values:Ljava/util/Collection;

    .line 164
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->createValues()Ljava/util/Collection;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractTable;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method valuesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/google/common/collect/AbstractTable;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/AbstractTable$1;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractTable$1;-><init>(Lcom/google/common/collect/AbstractTable;Ljava/util/Iterator;)V

    return-object v0
.end method
