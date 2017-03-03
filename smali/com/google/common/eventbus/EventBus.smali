.class public Lcom/google/common/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/EventBus$EventWithSubscriber;,
        Lcom/google/common/eventbus/EventBus$LoggingSubscriberExceptionHandler;
    }
.end annotation


# static fields
.field private static final flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final eventsToDispatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/eventbus/EventBus$EventWithSubscriber;",
            ">;>;"
        }
    .end annotation
.end field

.field private final finder:Lcom/google/common/eventbus/SubscriberFindingStrategy;

.field private final isDispatching:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private subscriberExceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

.field private final subscribersByType:Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SetMultimap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/common/eventbus/EventSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/EventBus$1;

    invoke-direct {v1}, Lcom/google/common/eventbus/EventBus$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/EventBus;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 1
    .param p1, "subscriberExceptionHandler"    # Lcom/google/common/eventbus/SubscriberExceptionHandler;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->subscribersByType:Lcom/google/common/collect/SetMultimap;

    .line 140
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 147
    new-instance v0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;

    invoke-direct {v0}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;-><init>()V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->finder:Lcom/google/common/eventbus/SubscriberFindingStrategy;

    .line 150
    new-instance v0, Lcom/google/common/eventbus/EventBus$2;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/EventBus$2;-><init>(Lcom/google/common/eventbus/EventBus;)V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    .line 158
    new-instance v0, Lcom/google/common/eventbus/EventBus$3;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/EventBus$3;-><init>(Lcom/google/common/eventbus/EventBus;)V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    .line 191
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/SubscriberExceptionHandler;

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->subscriberExceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Lcom/google/common/eventbus/EventBus$LoggingSubscriberExceptionHandler;

    invoke-direct {v0, p1}, Lcom/google/common/eventbus/EventBus$LoggingSubscriberExceptionHandler;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/common/eventbus/EventBus;-><init>(Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 182
    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .locals 8
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "wrapper"    # Lcom/google/common/eventbus/EventSubscriber;

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/eventbus/EventSubscriber;->handleEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    iget-object v2, p0, Lcom/google/common/eventbus/EventBus;->subscriberExceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    new-instance v4, Lcom/google/common/eventbus/SubscriberExceptionContext;

    invoke-virtual {p2}, Lcom/google/common/eventbus/EventSubscriber;->getSubscriber()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/common/eventbus/EventSubscriber;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-direct {v4, p0, p1, v5, v6}, Lcom/google/common/eventbus/SubscriberExceptionContext;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-interface {v2, v3, v4}, Lcom/google/common/eventbus/SubscriberExceptionHandler;->handleException(Ljava/lang/Throwable;Lcom/google/common/eventbus/SubscriberExceptionContext;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 332
    :catch_1
    move-exception v1

    .line 334
    .local v1, "t":Ljava/lang/Throwable;
    const-class v2, Lcom/google/common/eventbus/EventBus;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Exception %s thrown while handling exception: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method dispatchQueuedEvents()V
    .locals 4

    .prologue
    .line 295
    iget-object v2, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 303
    .local v1, "events":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/common/eventbus/EventBus$EventWithSubscriber;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;

    .local v0, "eventWithSubscriber":Lcom/google/common/eventbus/EventBus$EventWithSubscriber;
    if-eqz v0, :cond_1

    .line 304
    iget-object v2, v0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->event:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->subscriber:Lcom/google/common/eventbus/EventSubscriber;

    invoke-virtual {p0, v2, v3}, Lcom/google/common/eventbus/EventBus;->dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 307
    .end local v0    # "eventWithSubscriber":Lcom/google/common/eventbus/EventBus$EventWithSubscriber;
    .end local v1    # "events":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/common/eventbus/EventBus$EventWithSubscriber;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 308
    iget-object v3, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2

    .line 307
    .restart local v0    # "eventWithSubscriber":Lcom/google/common/eventbus/EventBus$EventWithSubscriber;
    .restart local v1    # "events":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/common/eventbus/EventBus$EventWithSubscriber;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 308
    iget-object v2, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0
.end method

.method enqueueEvent(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "subscriber"    # Lcom/google/common/eventbus/EventSubscriber;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    new-instance v1, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;

    invoke-direct {v1, p1, p2}, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;-><init>(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method flattenHierarchy(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v1, Lcom/google/common/eventbus/EventBus;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v1, p1}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/common/util/concurrent/UncheckedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Lcom/google/common/util/concurrent/UncheckedExecutionException;
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public post(Ljava/lang/Object;)V
    .locals 9
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/common/eventbus/EventBus;->flattenHierarchy(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 254
    .local v0, "dispatchTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v1, 0x0

    .line 255
    .local v1, "dispatched":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 256
    .local v2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 258
    :try_start_0
    iget-object v7, p0, Lcom/google/common/eventbus/EventBus;->subscribersByType:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v7, v2}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 260
    .local v6, "wrappers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/eventbus/EventSubscriber;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 261
    const/4 v1, 0x1

    .line 262
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/eventbus/EventSubscriber;

    .line 263
    .local v5, "wrapper":Lcom/google/common/eventbus/EventSubscriber;
    invoke-virtual {p0, p1, v5}, Lcom/google/common/eventbus/EventBus;->enqueueEvent(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 267
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "wrapper":Lcom/google/common/eventbus/EventSubscriber;
    .end local v6    # "wrappers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/eventbus/EventSubscriber;>;"
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .restart local v6    # "wrappers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/eventbus/EventSubscriber;>;"
    :cond_0
    iget-object v7, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 271
    .end local v2    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "wrappers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/eventbus/EventSubscriber;>;"
    :cond_1
    if-nez v1, :cond_2

    instance-of v7, p1, Lcom/google/common/eventbus/DeadEvent;

    if-nez v7, :cond_2

    .line 272
    new-instance v7, Lcom/google/common/eventbus/DeadEvent;

    invoke-direct {v7, p0, p1}, Lcom/google/common/eventbus/DeadEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/google/common/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/eventbus/EventBus;->dispatchQueuedEvents()V

    .line 276
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->finder:Lcom/google/common/eventbus/SubscriberFindingStrategy;

    invoke-interface {v1, p1}, Lcom/google/common/eventbus/SubscriberFindingStrategy;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 205
    .local v0, "methodsInListener":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/EventSubscriber;>;"
    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->subscribersByType:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v1, v0}, Lcom/google/common/collect/SetMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 220
    iget-object v6, p0, Lcom/google/common/eventbus/EventBus;->finder:Lcom/google/common/eventbus/SubscriberFindingStrategy;

    invoke-interface {v6, p1}, Lcom/google/common/eventbus/SubscriberFindingStrategy;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v5

    .line 222
    .local v5, "methodsInListener":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/EventSubscriber;>;"
    invoke-interface {v5}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/EventSubscriber;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 224
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 226
    .local v2, "eventMethodsInListener":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/EventSubscriber;>;"
    iget-object v6, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 228
    :try_start_0
    iget-object v6, p0, Lcom/google/common/eventbus/EventBus;->subscribersByType:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v6, v3}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 229
    .local v0, "currentSubscribers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/eventbus/EventSubscriber;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 230
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x41

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "missing event subscriber for an annotated method. Is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " registered?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v0    # "currentSubscribers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/eventbus/EventSubscriber;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 233
    .restart local v0    # "currentSubscribers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/eventbus/EventSubscriber;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    iget-object v6, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 238
    .end local v0    # "currentSubscribers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/eventbus/EventSubscriber;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/EventSubscriber;>;>;"
    .end local v2    # "eventMethodsInListener":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/EventSubscriber;>;"
    .end local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method
