.class Lcom/google/common/collect/RegularImmutableTable$CellSet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$CellSet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$CellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$CellSet;)V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet$1;, "Lcom/google/common/collect/RegularImmutableTable$CellSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$CellSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet$1;, "Lcom/google/common/collect/RegularImmutableTable$CellSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$CellSet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Table$Cell;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet$1;, "Lcom/google/common/collect/RegularImmutableTable$CellSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$CellSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableTable;->getCell(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$CellSet$1;, "Lcom/google/common/collect/RegularImmutableTable$CellSet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$CellSet$1;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
