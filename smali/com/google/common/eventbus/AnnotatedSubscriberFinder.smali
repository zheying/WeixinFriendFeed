.class Lcom/google/common/eventbus/AnnotatedSubscriberFinder;
.super Ljava/lang/Object;
.source "AnnotatedSubscriberFinder.java"

# interfaces
.implements Lcom/google/common/eventbus/SubscriberFindingStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;
    }
.end annotation


# static fields
.field private static final subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$1;

    invoke-direct {v1}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;->subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;->getAnnotatedMethodsInternal(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static getAnnotatedMethods(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v1, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;->subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v1, p0}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catch Lcom/google/common/util/concurrent/UncheckedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lcom/google/common/util/concurrent/UncheckedExecutionException;
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAnnotatedMethodsInternal(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/common/reflect/TypeToken$TypeSet;->rawTypes()Ljava/util/Set;

    move-result-object v9

    .line 115
    .local v9, "supers":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Class<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 116
    .local v4, "identifiers":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;Ljava/lang/reflect/Method;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 117
    .local v7, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v8, v0, v2

    .line 118
    .local v8, "superClazzMethod":Ljava/lang/reflect/Method;
    const-class v10, Lcom/google/common/eventbus/Subscribe;

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v10

    if-nez v10, :cond_2

    .line 120
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 121
    .local v6, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v6

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 122
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    array-length v12, v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit16 v14, v14, 0x80

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Method "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " has @Subscribe annotation, but requires "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " arguments.  Event subscriber methods must require a single argument."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 127
    :cond_1
    new-instance v3, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;

    invoke-direct {v3, v8}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;-><init>(Ljava/lang/reflect/Method;)V

    .line 128
    .local v3, "ident":Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 129
    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v3    # "ident":Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;
    .end local v6    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "superClazzMethod":Ljava/lang/reflect/Method;
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    return-object v10
.end method

.method private static makeSubscriber(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/google/common/eventbus/EventSubscriber;
    .locals 2
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 150
    invoke-static {p1}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;->methodIsDeclaredThreadSafe(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Lcom/google/common/eventbus/EventSubscriber;

    invoke-direct {v0, p0, p1}, Lcom/google/common/eventbus/EventSubscriber;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 155
    .local v0, "wrapper":Lcom/google/common/eventbus/EventSubscriber;
    :goto_0
    return-object v0

    .line 153
    .end local v0    # "wrapper":Lcom/google/common/eventbus/EventSubscriber;
    :cond_0
    new-instance v0, Lcom/google/common/eventbus/SynchronizedEventSubscriber;

    invoke-direct {v0, p0, p1}, Lcom/google/common/eventbus/SynchronizedEventSubscriber;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .restart local v0    # "wrapper":Lcom/google/common/eventbus/EventSubscriber;
    goto :goto_0
.end method

.method private static methodIsDeclaredThreadSafe(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 167
    const-class v0, Lcom/google/common/eventbus/AllowConcurrentEvents;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;
    .locals 8
    .param p1, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/common/eventbus/EventSubscriber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v4

    .line 71
    .local v4, "methodsInListener":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/EventSubscriber;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;->getAnnotatedMethods(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 73
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 74
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    aget-object v1, v5, v7

    .line 75
    .local v1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, v3}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;->makeSubscriber(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/google/common/eventbus/EventSubscriber;

    move-result-object v6

    .line 76
    .local v6, "subscriber":Lcom/google/common/eventbus/EventSubscriber;
    invoke-interface {v4, v1, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v1    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "subscriber":Lcom/google/common/eventbus/EventSubscriber;
    :cond_0
    return-object v4
.end method
