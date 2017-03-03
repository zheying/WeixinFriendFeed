.class public final Lcom/google/common/collect/ImmutableTable$Builder;
.super Ljava/lang/Object;
.source "ImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field private columnComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation
.end field

.field private rowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/google/common/collect/ImmutableTable$Builder;, "Lcom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    .line 166
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableTable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/google/common/collect/ImmutableTable$Builder;, "Lcom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 237
    .local v0, "size":I
    packed-switch v0, :pswitch_data_0

    .line 244
    iget-object v1, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$Builder;->rowComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableTable$Builder;->columnComparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/RegularImmutableTable;->forCells(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableTable;

    move-result-object v1

    :goto_0
    return-object v1

    .line 239
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableTable;->of()Lcom/google/common/collect/ImmutableTable;

    move-result-object v1

    goto :goto_0

    .line 241
    :pswitch_1
    new-instance v2, Lcom/google/common/collect/SingletonImmutableTable;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Table$Cell;

    invoke-direct {v2, v1}, Lcom/google/common/collect/SingletonImmutableTable;-><init>(Lcom/google/common/collect/Table$Cell;)V

    move-object v1, v2

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public orderColumnsBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TC;>;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/google/common/collect/ImmutableTable$Builder;, "Lcom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "columnComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->columnComparator:Ljava/util/Comparator;

    .line 182
    return-object p0
.end method

.method public orderRowsBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TR;>;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/google/common/collect/ImmutableTable$Builder;, "Lcom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "rowComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TR;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->rowComparator:Ljava/util/Comparator;

    .line 173
    return-object p0
.end method

.method public put(Lcom/google/common/collect/Table$Cell;)Lcom/google/common/collect/ImmutableTable$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/google/common/collect/ImmutableTable$Builder;, "Lcom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    instance-of v1, p1, Lcom/google/common/collect/Tables$ImmutableCell;

    if-eqz v1, :cond_0

    .line 203
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-object v0, p1

    .line 208
    .local v0, "immutableCell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v0    # "immutableCell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    :goto_0
    return-object p0

    .line 210
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/common/collect/ImmutableTable$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$Builder;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/google/common/collect/ImmutableTable$Builder;, "Lcom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public putAll(Lcom/google/common/collect/Table;)Lcom/google/common/collect/ImmutableTable$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/google/common/collect/ImmutableTable$Builder;, "Lcom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
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

    .line 225
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableTable$Builder;->put(Lcom/google/common/collect/Table$Cell;)Lcom/google/common/collect/ImmutableTable$Builder;

    goto :goto_0

    .line 227
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    :cond_0
    return-object p0
.end method
