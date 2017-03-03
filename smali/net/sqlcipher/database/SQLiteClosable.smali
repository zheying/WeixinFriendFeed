.class public abstract Lnet/sqlcipher/database/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private getObjInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    instance-of v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "database = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    check-cast p0, Lnet/sqlcipher/database/SQLiteDatabase;

    .end local p0    # "this":Lnet/sqlcipher/database/SQLiteClosable;
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    :goto_0
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    .restart local p0    # "this":Lnet/sqlcipher/database/SQLiteClosable;
    :cond_1
    instance-of v1, p0, Lnet/sqlcipher/database/SQLiteProgram;

    if-nez v1, :cond_2

    instance-of v1, p0, Lnet/sqlcipher/database/SQLiteStatement;

    if-nez v1, :cond_2

    instance-of v1, p0, Lnet/sqlcipher/database/SQLiteQuery;

    if-eqz v1, :cond_0

    .line 68
    :cond_2
    const-string v1, "mSql = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    check-cast p0, Lnet/sqlcipher/database/SQLiteProgram;

    .end local p0    # "this":Lnet/sqlcipher/database/SQLiteClosable;
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public acquireReference()V
    .locals 4

    .prologue
    .line 32
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    if-gtz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to re-open an already-closed object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteClosable;->getObjInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 37
    :cond_0
    :try_start_1
    iget v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    .line 38
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    return-void
.end method

.method protected abstract onAllReferencesReleased()V
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public releaseReference()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    .line 44
    iget v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteClosable;->onAllReferencesReleased()V

    .line 47
    :cond_0
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseReferenceFromContainer()V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    .line 53
    iget v0, p0, Lnet/sqlcipher/database/SQLiteClosable;->mReferenceCount:I

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    .line 56
    :cond_0
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
