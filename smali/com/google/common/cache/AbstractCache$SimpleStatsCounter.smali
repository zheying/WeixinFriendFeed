.class public final Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation


# instance fields
.field private final evictionCount:Lcom/google/common/cache/LongAddable;

.field private final hitCount:Lcom/google/common/cache/LongAddable;

.field private final loadExceptionCount:Lcom/google/common/cache/LongAddable;

.field private final loadSuccessCount:Lcom/google/common/cache/LongAddable;

.field private final missCount:Lcom/google/common/cache/LongAddable;

.field private final totalLoadTime:Lcom/google/common/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAddable;

    .line 210
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAddable;

    .line 211
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAddable;

    .line 212
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAddable;

    .line 213
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    .line 214
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAddable;

    .line 219
    return-void
.end method


# virtual methods
.method public incrementBy(Lcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 4
    .param p1, "other"    # Lcom/google/common/cache/AbstractCache$StatsCounter;

    .prologue
    .line 269
    invoke-interface {p1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->snapshot()Lcom/google/common/cache/CacheStats;

    move-result-object v0

    .line 270
    .local v0, "otherStats":Lcom/google/common/cache/CacheStats;
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->hitCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 271
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->missCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 272
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->loadSuccessCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 273
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->loadExceptionCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 274
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->totalLoadTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 275
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->evictionCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 276
    return-void
.end method

.method public recordEviction()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    .line 252
    return-void
.end method

.method public recordHits(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAddable;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 227
    return-void
.end method

.method public recordLoadException(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    .line 246
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 247
    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    .line 240
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 241
    return-void
.end method

.method public recordMisses(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAddable;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 235
    return-void
.end method

.method public snapshot()Lcom/google/common/cache/CacheStats;
    .locals 14

    .prologue
    .line 256
    new-instance v1, Lcom/google/common/cache/CacheStats;

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v12

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v1
.end method
