.class final Lcom/google/common/util/concurrent/Futures$6;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/common/util/concurrent/FutureCallback;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$6;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1308
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 1319
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1320
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1312
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1315
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
