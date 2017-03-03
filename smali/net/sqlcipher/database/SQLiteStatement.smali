.class public Lnet/sqlcipher/database/SQLiteStatement;
.super Lnet/sqlcipher/database/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()V
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 50
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 54
    .local v0, "timeStart":J
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 56
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 58
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V

    .line 59
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 62
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 64
    return-void

    .line 61
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 62
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v2
.end method

.method public executeInsert()J
    .locals 5

    .prologue
    .line 76
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, "timeStart":J
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 82
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 84
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V

    .line 85
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 86
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lastInsertRow()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 88
    :goto_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 89
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 86
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 89
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v2
.end method

.method public executeUpdateDelete()J
    .locals 5

    .prologue
    .line 94
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 98
    .local v0, "timeStart":J
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 100
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 102
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V

    .line 103
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 104
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v2, v2

    .line 106
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 107
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 106
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 107
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v2
.end method

.method public simpleQueryForLong()J
    .locals 7

    .prologue
    .line 120
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v6}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already closed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 124
    .local v2, "timeStart":J
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 126
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 128
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_1x1_long()J

    move-result-wide v0

    .line 129
    .local v0, "retValue":J
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 133
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v0

    .line 132
    .end local v0    # "retValue":J
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 133
    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v5}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v4
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 146
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v5}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 150
    .local v2, "timeStart":J
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 152
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 154
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "retValue":Ljava/lang/String;
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 159
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-object v0

    .line 158
    .end local v0    # "retValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 159
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v1
.end method
