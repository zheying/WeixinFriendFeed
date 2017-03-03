.class Lcom/google/common/util/concurrent/Futures$FallbackFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallbackFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private volatile running:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Lcom/google/common/util/concurrent/FutureFallback",
            "<+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$FallbackFuture;, "Lcom/google/common/util/concurrent/Futures$FallbackFuture<TV;>;"
    .local p1, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/FutureFallback;, "Lcom/google/common/util/concurrent/FutureFallback<+TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 458
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 459
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;

    invoke-direct {v1, p0, p2}, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/FutureFallback;)V

    invoke-static {v0, v1, p3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 496
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$FallbackFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 500
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$FallbackFuture;, "Lcom/google/common/util/concurrent/Futures$FallbackFuture<TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 502
    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
