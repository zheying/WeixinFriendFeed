.class final Lcom/google/common/util/concurrent/Futures$CombinerFuture;
.super Lcom/google/common/util/concurrent/ListenableFutureTask;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CombinerFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ListenableFutureTask",
        "<TV;>;"
    }
.end annotation


# instance fields
.field futures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinerFuture;, "Lcom/google/common/util/concurrent/Futures$CombinerFuture<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p2, "futures":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/ListenableFuture<*>;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1057
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1058
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 1061
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinerFuture;, "Lcom/google/common/util/concurrent/Futures$CombinerFuture<TV;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1062
    .local v1, "futures":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/ListenableFuture<*>;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->cancel(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1063
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1064
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_0

    .line 1066
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :cond_0
    const/4 v3, 0x1

    .line 1068
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected done()V
    .locals 1

    .prologue
    .line 1072
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinerFuture;, "Lcom/google/common/util/concurrent/Futures$CombinerFuture<TV;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/ListenableFutureTask;->done()V

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1074
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1077
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinerFuture;, "Lcom/google/common/util/concurrent/Futures$CombinerFuture<TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->setException(Ljava/lang/Throwable;)V

    .line 1078
    return-void
.end method
