.class public abstract Lnet/sqlcipher/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;
.implements Lnet/sqlcipher/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 43
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mClosed:Z

    .line 619
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 164
    iput v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    .line 165
    iput v1, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 168
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 2

    .prologue
    .line 405
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 407
    monitor-exit v1

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected checkPosition()V
    .locals 3

    .prologue
    .line 555
    const/4 v0, -0x1

    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    .line 556
    :cond_0
    new-instance v0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 558
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mClosed:Z

    .line 110
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 111
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->deactivateInternal()V

    .line 112
    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->commitUpdates(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 149
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 150
    .local v0, "data":[C
    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 151
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 155
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 159
    .end local v0    # "data":[C
    :goto_1
    return-void

    .line 153
    .restart local v0    # "data":[C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 157
    .end local v0    # "data":[C
    :cond_2
    iput v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->deactivateInternal()V

    .line 81
    return-void
.end method

.method public deactivateInternal()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    .line 91
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 92
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 212
    invoke-static {p0, p1, p2}, Lnet/sqlcipher/DatabaseUtils;->cursorFillWindow(Lnet/sqlcipher/Cursor;ILandroid/database/CursorWindow;)V

    .line 213
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 563
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 565
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 260
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 261
    .local v4, "periodIndex":I
    if-eq v4, v5, :cond_0

    .line 262
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "columnNames":[Ljava/lang/String;
    array-length v3, v0

    .line 269
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 270
    aget-object v6, v0, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 280
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 269
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 280
    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method protected getDataSetObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 506
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract getType(I)I
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 542
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 543
    .local v0, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getWindow()Lnet/sqlcipher/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Lnet/sqlcipher/CursorWindow;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUpdates()Z
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 524
    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 525
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 526
    .local v0, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    const/4 v1, 0x1

    .line 530
    .end local v0    # "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    .line 241
    .local v0, "cnt":I
    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 216
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 176
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    .line 177
    .local v0, "count":I
    if-lt p1, v0, :cond_1

    .line 178
    iput v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    if-gez p1, :cond_2

    .line 184
    iput v3, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    goto :goto_0

    .line 189
    :cond_2
    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    if-ne p1, v2, :cond_3

    .line 190
    const/4 v1, 0x1

    goto :goto_0

    .line 193
    :cond_3
    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p0, v2, p1}, Lnet/sqlcipher/AbstractCursor;->onMove(II)Z

    move-result v1

    .line 194
    .local v1, "result":Z
    if-nez v1, :cond_4

    .line 195
    iput v3, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    goto :goto_0

    .line 197
    :cond_4
    iput p1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    .line 198
    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v2, v3, :cond_0

    .line 199
    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Lnet/sqlcipher/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected notifyDataSetChange()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 443
    return-void
.end method

.method protected onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 469
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 471
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 472
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 474
    :cond_0
    monitor-exit v1

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 427
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 428
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 454
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 456
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    iput-boolean v3, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 101
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 510
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    .prologue
    .line 485
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 486
    :try_start_0
    iput-object p2, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 487
    iput-object p1, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 488
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 491
    :cond_0
    new-instance v0, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;-><init>(Lnet/sqlcipher/AbstractCursor;)V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 492
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    .line 494
    monitor-exit v1

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 2

    .prologue
    .line 423
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 432
    iget-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 435
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 459
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method public update(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 364
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->supportsUpdates()Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    const/4 v2, 0x0

    .line 384
    :goto_0
    return v2

    .line 370
    :cond_0
    new-instance v1, Ljava/lang/Long;

    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Lnet/sqlcipher/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 371
    .local v1, "rowid":Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 372
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null rowid. mRowIdColumnIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_1
    iget-object v3, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v3

    .line 376
    :try_start_0
    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 377
    .local v0, "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 378
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 379
    .restart local v0    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    monitor-exit v3

    .line 384
    const/4 v2, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # [B

    .prologue
    .line 300
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "value"    # D

    .prologue
    .line 348
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # F

    .prologue
    .line 340
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # I

    .prologue
    .line 324
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "value"    # J

    .prologue
    .line 332
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # S

    .prologue
    .line 316
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
