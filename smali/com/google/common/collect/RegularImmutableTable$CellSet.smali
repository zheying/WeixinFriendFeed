.class final Lcom/google/common/collect/RegularImmutableTable$CellSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableTable;)V
    .locals 0

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/RegularImmutableTable;
    .param p2, "x1"    # Lcom/google/common/collect/RegularImmutableTable$1;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$CellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    const/4 v2, 0x0

    .line 72
    instance-of v3, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 74
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/collect/RegularImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 77
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return v2
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$CellSet;)V

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$CellSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$CellSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableTable;->size()I

    move-result v0

    return v0
.end method
