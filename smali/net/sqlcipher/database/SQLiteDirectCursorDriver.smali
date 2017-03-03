.class public Lnet/sqlcipher/database/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Lnet/sqlcipher/database/SQLiteCursorDriver;


# instance fields
.field private mCursor:Lnet/sqlcipher/Cursor;

.field private mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mEditTable:Ljava/lang/String;

.field private mQuery:Lnet/sqlcipher/database/SQLiteQuery;

.field private mSql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "editTable"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 36
    iput-object p3, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mCursor:Lnet/sqlcipher/Cursor;

    .line 70
    return-void
.end method

.method public cursorDeactivated()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public cursorRequeried(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    return-void
.end method

.method public query(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 6
    .param p1, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v2, Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1, p2}, Lnet/sqlcipher/database/SQLiteQuery;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 46
    .local v2, "query":Lnet/sqlcipher/database/SQLiteQuery;
    if-nez p2, :cond_0

    .line 47
    .local v1, "numArgs":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 48
    add-int/lit8 v3, v0, 0x1

    :try_start_0
    aget-object v4, p2, v0

    invoke-virtual {v2, v3, v4}, Lnet/sqlcipher/database/SQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    .end local v0    # "i":I
    .end local v1    # "numArgs":I
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 52
    .restart local v0    # "i":I
    .restart local v1    # "numArgs":I
    :cond_1
    if-nez p1, :cond_3

    .line 53
    new-instance v3, Lnet/sqlcipher/database/SQLiteCursor;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v3, v4, p0, v5, v2}, Lnet/sqlcipher/database/SQLiteCursor;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)V

    iput-object v3, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mCursor:Lnet/sqlcipher/Cursor;

    .line 59
    :goto_2
    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    .line 60
    const/4 v2, 0x0

    .line 61
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mCursor:Lnet/sqlcipher/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteQuery;->close()V

    :cond_2
    return-object v3

    .line 56
    :cond_3
    :try_start_1
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v3, p0, v4, v2}, Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;->newCursor(Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)Lnet/sqlcipher/Cursor;

    move-result-object v3

    iput-object v3, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mCursor:Lnet/sqlcipher/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 64
    .end local v0    # "i":I
    .end local v1    # "numArgs":I
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteQuery;->close()V

    :cond_4
    throw v3
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .locals 5
    .param p1, "bindArgs"    # [Ljava/lang/String;

    .prologue
    .line 73
    array-length v1, p1

    .line 74
    .local v1, "numArgs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 75
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v0

    invoke-virtual {v2, v3, v4}, Lnet/sqlcipher/database/SQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDirectCursorDriver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
