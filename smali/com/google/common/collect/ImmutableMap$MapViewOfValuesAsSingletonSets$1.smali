.class Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapEntrySet",
        "<TK;",
        "Lcom/google/common/collect/ImmutableSet",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)V
    .locals 0

    .prologue
    .line 475
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.1;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    # getter for: Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->access$000(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 483
    .local v0, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;-><init>(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 475
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    return-object v0
.end method
