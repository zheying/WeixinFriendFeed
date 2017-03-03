.class Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private final maxIndex:I

.field final synthetic this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;)V
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;, "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    .line 134
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    iget-object v0, v0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    invoke-virtual {v0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->maxIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;, "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;, "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1.1;"
    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    :goto_0
    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    iget v2, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->maxIndex:I

    if-ge v1, v2, :cond_1

    .line 139
    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    iget-object v1, v1, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    iget v2, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    iget-object v1, v1, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    iget v2, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 144
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v1

    .line 138
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    goto :goto_0

    .line 144
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1
.end method
