.class public final Lcom/google/common/util/concurrent/AtomicLongMap;
.super Ljava/lang/Object;
.source "AtomicLongMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    return-void
.end method

.method public static create()Lcom/google/common/util/concurrent/AtomicLongMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/AtomicLongMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/google/common/util/concurrent/AtomicLongMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/util/concurrent/AtomicLongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/util/concurrent/AtomicLongMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/AtomicLongMap;->create()Lcom/google/common/util/concurrent/AtomicLongMap;

    move-result-object v0

    .line 73
    .local v0, "result":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AtomicLongMap;->putAll(Ljava/util/Map;)V

    .line 74
    return-object v0
.end method

.method private createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/google/common/util/concurrent/AtomicLongMap$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AtomicLongMap$1;-><init>(Lcom/google/common/util/concurrent/AtomicLongMap;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;J)J
    .locals 8
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 109
    .restart local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    .line 128
    .end local p2    # "delta":J
    :goto_0
    return-wide p2

    .line 116
    .restart local p2    # "delta":J
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 117
    .local v4, "oldValue":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 126
    :cond_2
    add-long v2, v4, p2

    .line 127
    .local v2, "newValue":J
    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide p2, v2

    .line 128
    goto :goto_0
.end method

.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->asMap:Ljava/util/Map;

    .line 286
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AtomicLongMap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Long;>;"
    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->asMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 328
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 329
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 303
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public decrementAndGet(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 83
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getAndAdd(Ljava/lang/Object;J)J
    .locals 10
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v6, 0x0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 156
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v8, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 158
    .restart local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    move-wide v4, v6

    .line 177
    :goto_0
    return-wide v4

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 166
    .local v4, "oldValue":J
    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v8, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v4, v6

    .line 169
    goto :goto_0

    .line 175
    :cond_2
    add-long v2, v4, p2

    .line 176
    .local v2, "newValue":J
    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public getAndDecrement(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAndIncrement(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndGet(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 318
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;J)J
    .locals 8
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v4, 0x0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 191
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    .line 192
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 193
    .restart local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    move-wide v2, v4

    .line 211
    :goto_0
    return-wide v2

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 201
    .local v2, "oldValue":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v2, v4

    .line 204
    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {v0, v2, v3, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/common/util/concurrent/AtomicLongMap;->put(Ljava/lang/Object;J)J

    goto :goto_0

    .line 228
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method putIfAbsent(Ljava/lang/Object;J)J
    .locals 8
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v4, 0x0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 367
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_2

    .line 368
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 369
    .restart local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_2

    move-wide v2, v4

    .line 385
    :cond_1
    :goto_0
    return-wide v2

    .line 375
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 376
    .local v2, "oldValue":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v2, v4

    .line 379
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v4, 0x0

    .line 235
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 236
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_0

    move-wide v2, v4

    .line 246
    :goto_0
    return-wide v2

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 242
    .local v2, "oldValue":J
    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method remove(Ljava/lang/Object;J)Z
    .locals 8
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 411
    iget-object v4, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 412
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v1

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 417
    .local v2, "oldValue":J
    cmp-long v4, v2, p2

    if-nez v4, :cond_0

    .line 421
    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    :cond_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeAllZeros()V
    .locals 8

    .prologue
    .line 258
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 259
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 260
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method replace(Ljava/lang/Object;JJ)Z
    .locals 6
    .param p2, "expectedOldValue"    # J
    .param p4, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JJ)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 398
    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    .line 399
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/common/util/concurrent/AtomicLongMap;->putIfAbsent(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 402
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 311
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public sum()J
    .locals 6

    .prologue
    .line 272
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    const-wide/16 v2, 0x0

    .line 273
    .local v2, "sum":J
    iget-object v4, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 274
    .local v1, "value":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 275
    goto :goto_0

    .line 276
    .end local v1    # "value":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_0
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
