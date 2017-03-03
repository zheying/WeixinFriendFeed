.class Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SerializingExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/SerializingExecutor$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 132
    const/4 v2, 0x1

    .line 135
    .local v2, "stillRunning":Z
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 137
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 139
    .local v1, "nextToRun":Ljava/lang/Runnable;
    if-nez v1, :cond_1

    .line 140
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v5, 0x0

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 141
    const/4 v2, 0x0

    .line 142
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    if-eqz v2, :cond_0

    .line 160
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 161
    :try_start_2
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v5, 0x0

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 162
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 165
    :cond_0
    return-void

    .line 144
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    :try_start_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5
    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$400()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "nextToRun":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 160
    iget-object v4, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 161
    :try_start_6
    iget-object v5, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v6, 0x0

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    invoke-static {v5, v6}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 162
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    throw v3

    .line 144
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 162
    .restart local v1    # "nextToRun":Ljava/lang/Runnable;
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .end local v1    # "nextToRun":Ljava/lang/Runnable;
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3
.end method
