.class public final Lcom/google/common/util/concurrent/Callables;
.super Ljava/lang/Object;
.source "Callables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Thread;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public static returning(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/util/concurrent/Callables$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Callables$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static threadRenaming(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "nameSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/google/common/util/concurrent/Callables$3;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/Callables$3;-><init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static threadRenaming(Ljava/util/concurrent/Callable;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p1, "nameSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/google/common/util/concurrent/Callables$2;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/Callables$2;-><init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private static trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z
    .locals 2
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "currentThread"    # Ljava/lang/Thread;

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method
