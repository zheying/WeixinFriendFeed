.class Lcom/google/common/base/Predicates$OrPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/google/common/base/Predicates$OrPredicate;, "Lcom/google/common/base/Predicates$OrPredicate<TT;>;"
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<+Lcom/google/common/base/Predicate<-TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/common/base/Predicates$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/google/common/base/Predicates$1;

    .prologue
    .line 383
    .local p0, "this":Lcom/google/common/base/Predicates$OrPredicate;, "Lcom/google/common/base/Predicates$OrPredicate<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$OrPredicate;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lcom/google/common/base/Predicates$OrPredicate;, "Lcom/google/common/base/Predicates$OrPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Predicate;

    invoke-interface {v1, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const/4 v1, 0x1

    .line 397
    :goto_1
    return v1

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 404
    .local p0, "this":Lcom/google/common/base/Predicates$OrPredicate;, "Lcom/google/common/base/Predicates$OrPredicate<TT;>;"
    instance-of v1, p1, Lcom/google/common/base/Predicates$OrPredicate;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 405
    check-cast v0, Lcom/google/common/base/Predicates$OrPredicate;

    .line 406
    .local v0, "that":Lcom/google/common/base/Predicates$OrPredicate;, "Lcom/google/common/base/Predicates$OrPredicate<*>;"
    iget-object v1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    iget-object v2, v0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 408
    .end local v0    # "that":Lcom/google/common/base/Predicates$OrPredicate;, "Lcom/google/common/base/Predicates$OrPredicate<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 401
    .local p0, "this":Lcom/google/common/base/Predicates$OrPredicate;, "Lcom/google/common/base/Predicates$OrPredicate<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0x53c91cf

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    .local p0, "this":Lcom/google/common/base/Predicates$OrPredicate;, "Lcom/google/common/base/Predicates$OrPredicate<TT;>;"
    # getter for: Lcom/google/common/base/Predicates;->COMMA_JOINER:Lcom/google/common/base/Joiner;
    invoke-static {}, Lcom/google/common/base/Predicates;->access$800()Lcom/google/common/base/Joiner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Predicates.or("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
