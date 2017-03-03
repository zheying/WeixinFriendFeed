.class final Lcom/google/common/util/concurrent/Futures$WrappedCombiner;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WrappedCombiner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field

.field outputFuture:Lcom/google/common/util/concurrent/Futures$CombinerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$CombinerFuture",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$WrappedCombiner;, "Lcom/google/common/util/concurrent/Futures$WrappedCombiner<TT;>;"
    .local p1, "delegate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$WrappedCombiner;->delegate:Ljava/util/concurrent/Callable;

    .line 1036
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1040
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$WrappedCombiner;, "Lcom/google/common/util/concurrent/Futures$WrappedCombiner<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$WrappedCombiner;->delegate:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1048
    :goto_0
    return-object v1

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$WrappedCombiner;->outputFuture:Lcom/google/common/util/concurrent/Futures$CombinerFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->setException(Ljava/lang/Throwable;)V

    .line 1048
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1043
    :catch_1
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$WrappedCombiner;->outputFuture:Lcom/google/common/util/concurrent/Futures$CombinerFuture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->cancel(Z)Z

    goto :goto_1
.end method
