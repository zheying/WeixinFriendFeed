.class final Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CycleDetectingLockFactory.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CycleDetectingReentrantLock"
.end annotation


# instance fields
.field private final lockGraphNode:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

.field final synthetic this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Z)V
    .locals 1
    .param p2, "lockGraphNode"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .param p3, "fair"    # Z

    .prologue
    .line 796
    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 797
    invoke-direct {p0, p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 798
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->lockGraphNode:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    .line 799
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;

    .prologue
    .line 790
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Z)V

    return-void
.end method


# virtual methods
.method public getLockGraphNode()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->lockGraphNode:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    return-object v0
.end method

.method public isAcquiredByCurrentThread()Z
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->aboutToAcquire(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 819
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 823
    return-void

    .line 821
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method

.method public lockInterruptibly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->aboutToAcquire(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 829
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 833
    return-void

    .line 831
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method

.method public tryLock()Z
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->aboutToAcquire(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 839
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 841
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->aboutToAcquire(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 850
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 852
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 859
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 863
    return-void

    .line 861
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    # invokes: Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method
