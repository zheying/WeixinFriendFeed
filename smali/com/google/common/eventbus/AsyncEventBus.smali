.class public Lcom/google/common/eventbus/AsyncEventBus;
.super Lcom/google/common/eventbus/EventBus;
.source "AsyncEventBus.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final eventsToDispatch:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/google/common/eventbus/EventBus$EventWithSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus;->eventsToDispatch:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus;->executor:Ljava/util/concurrent/Executor;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 80
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus;->eventsToDispatch:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 81
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus;->executor:Ljava/util/concurrent/Executor;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscriberExceptionHandler"    # Lcom/google/common/eventbus/SubscriberExceptionHandler;

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/google/common/eventbus/EventBus;-><init>(Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus;->eventsToDispatch:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 68
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus;->executor:Ljava/util/concurrent/Executor;

    .line 69
    return-void
.end method

.method static synthetic access$001(Lcom/google/common/eventbus/AsyncEventBus;Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/eventbus/AsyncEventBus;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcom/google/common/eventbus/EventSubscriber;

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/common/eventbus/EventBus;->dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V

    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "subscriber"    # Lcom/google/common/eventbus/EventSubscriber;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/eventbus/AsyncEventBus$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/eventbus/AsyncEventBus$1;-><init>(Lcom/google/common/eventbus/AsyncEventBus;Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method protected dispatchQueuedEvents()V
    .locals 3

    .prologue
    .line 97
    :goto_0
    iget-object v1, p0, Lcom/google/common/eventbus/AsyncEventBus;->eventsToDispatch:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;

    .line 98
    .local v0, "eventWithSubscriber":Lcom/google/common/eventbus/EventBus$EventWithSubscriber;
    if-nez v0, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    iget-object v1, v0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->event:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->subscriber:Lcom/google/common/eventbus/EventSubscriber;

    invoke-virtual {p0, v1, v2}, Lcom/google/common/eventbus/AsyncEventBus;->dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V

    goto :goto_0
.end method

.method enqueueEvent(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "subscriber"    # Lcom/google/common/eventbus/EventSubscriber;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus;->eventsToDispatch:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;

    invoke-direct {v1, p1, p2}, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;-><init>(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method
