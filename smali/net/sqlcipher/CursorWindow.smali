.class public Lnet/sqlcipher/CursorWindow;
.super Landroid/database/CursorWindow;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/sqlcipher/CursorWindow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStartPos:I

.field private nWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 581
    new-instance v0, Lnet/sqlcipher/CursorWindow$1;

    invoke-direct {v0}, Lnet/sqlcipher/CursorWindow$1;-><init>()V

    sput-object v0, Lnet/sqlcipher/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "foo"    # I

    .prologue
    .line 607
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 610
    .local v0, "nativeBinder":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 612
    invoke-direct {p0, v0}, Lnet/sqlcipher/CursorWindow;->native_init(Landroid/os/IBinder;)V

    .line 613
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "localWindow"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 53
    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorWindow;->native_init(Z)V

    .line 54
    return-void
.end method

.method private native allocRow_native()Z
.end method

.method private native close_native()V
.end method

.method private native copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C
.end method

.method private native freeLastRow_native()V
.end method

.method private native getBlob_native(II)[B
.end method

.method private native getDouble_native(II)D
.end method

.method private native getLong_native(II)J
.end method

.method private native getNumRows_native()I
.end method

.method private native getString_native(II)Ljava/lang/String;
.end method

.method private native getType_native(II)I
.end method

.method private native isBlob_native(II)Z
.end method

.method private native isFloat_native(II)Z
.end method

.method private native isInteger_native(II)Z
.end method

.method private native isNull_native(II)Z
.end method

.method private native isString_native(II)Z
.end method

.method private native native_clear()V
.end method

.method private native native_getBinder()Landroid/os/IBinder;
.end method

.method private native native_init(Landroid/os/IBinder;)V
.end method

.method private native native_init(Z)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lnet/sqlcipher/CursorWindow;
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 593
    sget-object v0, Lnet/sqlcipher/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/CursorWindow;

    return-object v0
.end method

.method private native putBlob_native([BII)Z
.end method

.method private native putDouble_native(DII)Z
.end method

.method private native putLong_native(JII)Z
.end method

.method private native putNull_native(II)Z
.end method

.method private native putString_native(Ljava/lang/String;II)Z
.end method

.method private native setNumColumns_native(I)Z
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 113
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->allocRow_native()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 115
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 553
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 554
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->native_clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 558
    return-void

    .line 556
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 567
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 568
    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 414
    if-nez p3, :cond_0

    .line 415
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CharArrayBuffer should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_0
    iget-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v1, :cond_1

    .line 418
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    .line 420
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 422
    :try_start_0
    iget v1, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    iget-object v2, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length v2, v2

    invoke-direct {p0, v1, p2, v2, p3}, Lnet/sqlcipher/CursorWindow;->copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C

    move-result-object v0

    .line 424
    .local v0, "newbuf":[C
    if-eqz v0, :cond_2

    .line 425
    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 430
    return-void

    .line 428
    .end local v0    # "newbuf":[C
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->nWindow:I

    if-nez v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->close_native()V

    goto :goto_0
.end method

.method public freeLastRow()V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 127
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->freeLastRow_native()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 254
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getBlob_native(II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 474
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 476
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 478
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 537
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 539
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-float v0, v0

    .line 541
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 520
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 522
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    .line 524
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getLong(II)J
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 444
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 446
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 448
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 83
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->getNumRows_native()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 85
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 504
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 506
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 508
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 380
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 382
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getString_native(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 289
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 291
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getType_native(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 293
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 306
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 308
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isBlob_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 310
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isFloat(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 340
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 342
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isFloat_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 344
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isLong(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 325
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isInteger_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 327
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isNull(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 236
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 238
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isString(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 357
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 359
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isString_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 361
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->close_native()V

    .line 628
    invoke-super {p0}, Landroid/database/CursorWindow;->onAllReferencesReleased()V

    .line 629
    return-void
.end method

.method public putBlob([BII)Z
    .locals 1
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 145
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lnet/sqlcipher/CursorWindow;->putBlob_native([BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 147
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 1
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "col"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 200
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Lnet/sqlcipher/CursorWindow;->putDouble_native(DII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 202
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 1
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "col"    # I

    .prologue
    .line 179
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 181
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Lnet/sqlcipher/CursorWindow;->putLong_native(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 183
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 217
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->putNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 219
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 163
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lnet/sqlcipher/CursorWindow;->putString_native(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 165
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1
    .param p1, "columnNum"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorWindow;->setNumColumns_native(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 100
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 72
    iput p1, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 601
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->native_getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 602
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    return-void
.end method
