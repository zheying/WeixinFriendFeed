.class Lcom/google/common/collect/Iterables$ConsumingQueueIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsumingQueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p0, "this":Lcom/google/common/collect/Iterables$ConsumingQueueIterator;, "Lcom/google/common/collect/Iterables$ConsumingQueueIterator<TT;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 974
    iput-object p1, p0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->queue:Ljava/util/Queue;

    .line 975
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Queue;Lcom/google/common/collect/Iterables$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Queue;
    .param p2, "x1"    # Lcom/google/common/collect/Iterables$1;

    .prologue
    .line 970
    .local p0, "this":Lcom/google/common/collect/Iterables$ConsumingQueueIterator;, "Lcom/google/common/collect/Iterables$ConsumingQueueIterator<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "this":Lcom/google/common/collect/Iterables$ConsumingQueueIterator;, "Lcom/google/common/collect/Iterables$ConsumingQueueIterator<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 981
    :goto_0
    return-object v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {p0}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->endOfData()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
