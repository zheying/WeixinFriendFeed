.class public abstract Lnet/sqlcipher/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Lnet/sqlcipher/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Lnet/sqlcipher/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/sqlcipher/IBulkCursor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 47
    if-nez p0, :cond_1

    .line 48
    const/4 v0, 0x0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    const-string v1, "android.content.IBulkCursor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/IBulkCursor;

    .line 51
    .local v0, "in":Lnet/sqlcipher/IBulkCursor;
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lnet/sqlcipher/BulkCursorProxy;

    .end local v0    # "in":Lnet/sqlcipher/IBulkCursor;
    invoke-direct {v0, p0}, Lnet/sqlcipher/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 186
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 181
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    :goto_0
    return v14

    .line 64
    :pswitch_0
    :try_start_0
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 66
    .local v11, "startPos":I
    invoke-virtual {p0, v11}, Lnet/sqlcipher/BulkCursorNative;->getWindow(I)Lnet/sqlcipher/CursorWindow;

    move-result-object v13

    .line 67
    .local v13, "window":Lnet/sqlcipher/CursorWindow;
    if-nez v13, :cond_0

    .line 68
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v14, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14}, Lnet/sqlcipher/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    const/4 v14, 0x1

    goto :goto_0

    .line 78
    .end local v11    # "startPos":I
    .end local v13    # "window":Lnet/sqlcipher/CursorWindow;
    :pswitch_1
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->count()I

    move-result v2

    .line 80
    .local v2, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v14, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "count":I
    :pswitch_2
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "columnNames":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    array-length v14, v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    array-length v6, v1

    .line 91
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 92
    aget-object v14, v1, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 94
    :cond_1
    const/4 v14, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "columnNames":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "length":I
    :pswitch_3
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->deactivate()V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v14, 0x1

    goto :goto_0

    .line 105
    :pswitch_4
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->close()V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 112
    :pswitch_5
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lnet/sqlcipher/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Lnet/sqlcipher/IContentObserver;

    move-result-object v7

    .line 115
    .local v7, "observer":Lnet/sqlcipher/IContentObserver;
    sget-object v14, Lnet/sqlcipher/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sqlcipher/CursorWindow;

    .line 116
    .restart local v13    # "window":Lnet/sqlcipher/CursorWindow;
    invoke-virtual {p0, v7, v13}, Lnet/sqlcipher/BulkCursorNative;->requery(Lnet/sqlcipher/IContentObserver;Lnet/sqlcipher/CursorWindow;)I

    move-result v2

    .line 117
    .restart local v2    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 120
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 124
    .end local v2    # "count":I
    .end local v7    # "observer":Lnet/sqlcipher/IContentObserver;
    .end local v13    # "window":Lnet/sqlcipher/CursorWindow;
    :pswitch_6
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v12

    .line 128
    .local v12, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0, v12}, Lnet/sqlcipher/BulkCursorNative;->updateRows(Ljava/util/Map;)Z

    move-result v9

    .line 129
    .local v9, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v14, 0x1

    if-ne v9, v14, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 130
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 135
    .end local v9    # "result":Z
    .end local v12    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :pswitch_7
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 137
    .local v8, "position":I
    invoke-virtual {p0, v8}, Lnet/sqlcipher/BulkCursorNative;->deleteRow(I)Z

    move-result v9

    .line 138
    .restart local v9    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v14, 0x1

    if-ne v9, v14, :cond_3

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 139
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .line 144
    .end local v8    # "position":I
    .end local v9    # "result":Z
    :pswitch_8
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 146
    .restart local v8    # "position":I
    invoke-virtual {p0, v8}, Lnet/sqlcipher/BulkCursorNative;->onMove(I)V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 152
    .end local v8    # "position":I
    :pswitch_9
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->getWantsAllOnMoveCalls()Z

    move-result v9

    .line 154
    .restart local v9    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v9, :cond_4

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 155
    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    .line 160
    .end local v9    # "result":Z
    :pswitch_a
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 162
    .local v4, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 164
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 168
    .end local v4    # "extras":Landroid/os/Bundle;
    :pswitch_b
    const-string v14, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 170
    .restart local v4    # "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v4}, Lnet/sqlcipher/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 171
    .local v10, "returnExtras":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 176
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v10    # "returnExtras":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/Exception;
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lnet/sqlcipher/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 178
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method
