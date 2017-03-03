.class Lcom/google/common/collect/Maps$UnmodifiableEntries;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableEntries;, "Lcom/google/common/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 1252
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries;->entries:Ljava/util/Collection;

    .line 1253
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1247
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableEntries;, "Lcom/google/common/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1256
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableEntries;, "Lcom/google/common/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries;->entries:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1260
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableEntries;, "Lcom/google/common/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1261
    .local v0, "delegate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;-><init>(Lcom/google/common/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1276
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableEntries;, "Lcom/google/common/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1280
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableEntries;, "Lcom/google/common/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$UnmodifiableEntries;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
