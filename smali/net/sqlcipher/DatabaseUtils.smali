.class public Lnet/sqlcipher/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static final countProjection:[Ljava/lang/String;

.field private static mColl:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lnet/sqlcipher/DatabaseUtils;->countProjection:[Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    sput-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    return-void
.end method

.method public static appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sqlString"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x27

    .line 246
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 249
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 251
    .local v0, "c":C
    if-ne v0, v5, :cond_0

    .line 252
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    return-void
.end method

.method public static final appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "sql"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v1, "NULL"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :goto_0
    return-void

    .line 278
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 279
    check-cast v0, Ljava/lang/Boolean;

    .line 280
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    .end local v0    # "bool":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnet/sqlcipher/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V
    .locals 4
    .param p0, "prog"    # Lnet/sqlcipher/database/SQLiteProgram;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteProgram;->bindNull(I)V

    .line 193
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 177
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Ljava/lang/Double;

    if-nez v1, :cond_1

    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 178
    :cond_1
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lnet/sqlcipher/database/SQLiteProgram;->bindDouble(ID)V

    goto :goto_0

    .line 179
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 180
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lnet/sqlcipher/database/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 181
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    move-object v0, p2

    .line 182
    check-cast v0, Ljava/lang/Boolean;

    .line 183
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    const-wide/16 v2, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lnet/sqlcipher/database/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 186
    :cond_4
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lnet/sqlcipher/database/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 188
    .end local v0    # "bool":Ljava/lang/Boolean;
    :cond_5
    instance-of v1, p2, [B

    if-eqz v1, :cond_6

    .line 189
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_0

    .line 191
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lnet/sqlcipher/database/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    .end local p1    # "b":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 298
    .restart local p1    # "b":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 299
    goto :goto_0

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static cursorDoubleToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 602
    invoke-interface {p0, p1}, Lnet/sqlcipher/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 603
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0
.end method

.method public static cursorDoubleToContentValuesIfPresent(Lnet/sqlcipher/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 794
    invoke-interface {p0, p2}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 795
    .local v0, "index":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 798
    :cond_0
    return-void
.end method

.method public static cursorDoubleToCursorValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 589
    invoke-static {p0, p1, p2, p1}, Lnet/sqlcipher/DatabaseUtils;->cursorDoubleToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public static cursorFillWindow(Lnet/sqlcipher/Cursor;ILandroid/database/CursorWindow;)V
    .locals 8
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 1140
    if-ltz p1, :cond_0

    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getPosition()I

    move-result v2

    .line 1144
    .local v2, "oldPos":I
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getColumnCount()I

    move-result v1

    .line 1145
    .local v1, "numColumns":I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 1146
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 1147
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 1148
    invoke-interface {p0, p1}, Lnet/sqlcipher/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1150
    :cond_2
    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1192
    :cond_3
    :goto_1
    invoke-interface {p0, v2}, Lnet/sqlcipher/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 1153
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 1154
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getType(I)I

    move-result v4

    .line 1156
    .local v4, "type":I
    packed-switch v4, :pswitch_data_0

    .line 1178
    :pswitch_0
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1179
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {p2, v5, p1, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    .line 1184
    .end local v5    # "value":Ljava/lang/String;
    .local v3, "success":Z
    :goto_3
    if-nez v3, :cond_8

    .line 1185
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 1189
    .end local v3    # "success":Z
    .end local v4    # "type":I
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 1190
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 1158
    .restart local v4    # "type":I
    :pswitch_1
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    .line 1159
    .restart local v3    # "success":Z
    goto :goto_3

    .line 1162
    .end local v3    # "success":Z
    :pswitch_2
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v3

    .line 1163
    .restart local v3    # "success":Z
    goto :goto_3

    .line 1166
    .end local v3    # "success":Z
    :pswitch_3
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {p2, v6, v7, p1, v0}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v3

    .line 1167
    .restart local v3    # "success":Z
    goto :goto_3

    .line 1170
    .end local v3    # "success":Z
    :pswitch_4
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1171
    .local v5, "value":[B
    if-eqz v5, :cond_6

    invoke-virtual {p2, v5, p1, v0}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v3

    .line 1173
    .restart local v3    # "success":Z
    :goto_4
    goto :goto_3

    .line 1171
    .end local v3    # "success":Z
    :cond_6
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    goto :goto_4

    .line 1179
    .local v5, "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    goto :goto_3

    .line 1153
    .end local v5    # "value":Ljava/lang/String;
    .restart local v3    # "success":Z
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static cursorFloatToContentValuesIfPresent(Lnet/sqlcipher/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-interface {p0, p2}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 779
    .local v0, "index":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 782
    :cond_0
    return-void
.end method

.method public static cursorIntToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 528
    invoke-static {p0, p1, p2, p1}, Lnet/sqlcipher/DatabaseUtils;->cursorIntToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public static cursorIntToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-interface {p0, p1}, Lnet/sqlcipher/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 542
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static cursorIntToContentValuesIfPresent(Lnet/sqlcipher/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 762
    invoke-interface {p0, p2}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 763
    .local v0, "index":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    :cond_0
    return-void
.end method

.method public static cursorLongToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 558
    invoke-static {p0, p1, p2, p1}, Lnet/sqlcipher/DatabaseUtils;->cursorLongToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public static cursorLongToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-interface {p0, p1}, Lnet/sqlcipher/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 572
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 574
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    .end local v1    # "value":Ljava/lang/Long;
    :goto_0
    return-void

    .line 576
    :cond_0
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static cursorLongToContentValuesIfPresent(Lnet/sqlcipher/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-interface {p0, p2}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 731
    .local v0, "index":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 734
    :cond_0
    return-void
.end method

.method public static cursorRowToContentValues(Lnet/sqlcipher/Cursor;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 617
    instance-of v4, p0, Lnet/sqlcipher/AbstractWindowedCursor;

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Lnet/sqlcipher/AbstractWindowedCursor;

    move-object v0, v4

    .line 620
    .local v0, "awc":Lnet/sqlcipher/AbstractWindowedCursor;
    :goto_0
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "columns":[Ljava/lang/String;
    array-length v3, v1

    .line 622
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 623
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lnet/sqlcipher/AbstractWindowedCursor;->isBlob(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 624
    aget-object v4, v1, v2

    invoke-interface {p0, v2}, Lnet/sqlcipher/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 622
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    .end local v0    # "awc":Lnet/sqlcipher/AbstractWindowedCursor;
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 626
    .restart local v0    # "awc":Lnet/sqlcipher/AbstractWindowedCursor;
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_1
    aget-object v4, v1, v2

    invoke-interface {p0, v2}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 629
    :cond_2
    return-void
.end method

.method public static cursorShortToContentValuesIfPresent(Lnet/sqlcipher/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-interface {p0, p2}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 747
    .local v0, "index":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 750
    :cond_0
    return-void
.end method

.method public static cursorStringToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 491
    invoke-static {p0, p1, p2, p1}, Lnet/sqlcipher/DatabaseUtils;->cursorStringToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public static cursorStringToContentValues(Lnet/sqlcipher/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 517
    invoke-interface {p0, p1}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public static cursorStringToContentValuesIfPresent(Lnet/sqlcipher/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 714
    invoke-interface {p0, p2}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 715
    .local v0, "index":I
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_0
    return-void
.end method

.method public static cursorStringToInsertHelper(Lnet/sqlcipher/Cursor;Ljava/lang/String;Lnet/sqlcipher/DatabaseUtils$InsertHelper;I)V
    .locals 1
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "inserter"    # Lnet/sqlcipher/DatabaseUtils$InsertHelper;
    .param p3, "index"    # I

    .prologue
    .line 504
    invoke-interface {p0, p1}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 505
    return-void
.end method

.method public static dumpCurrentRow(Lnet/sqlcipher/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;

    .prologue
    .line 419
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lnet/sqlcipher/DatabaseUtils;->dumpCurrentRow(Lnet/sqlcipher/Cursor;Ljava/io/PrintStream;)V

    .line 420
    return-void
.end method

.method public static dumpCurrentRow(Lnet/sqlcipher/Cursor;Ljava/io/PrintStream;)V
    .locals 7
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 429
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "cols":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    array-length v3, v0

    .line 432
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 435
    :try_start_0
    invoke-interface {p0, v2}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 441
    .local v4, "value":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Lnet/sqlcipher/database/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 443
    .end local v1    # "e":Lnet/sqlcipher/database/SQLiteException;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const-string v5, "}"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public static dumpCurrentRow(Lnet/sqlcipher/Cursor;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 453
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "cols":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    array-length v3, v0

    .line 456
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 459
    :try_start_0
    invoke-interface {p0, v2}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 465
    .local v4, "value":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Lnet/sqlcipher/database/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 467
    .end local v1    # "e":Lnet/sqlcipher/database/SQLiteException;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const-string v5, "}\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    return-void
.end method

.method public static dumpCurrentRowToString(Lnet/sqlcipher/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lnet/sqlcipher/DatabaseUtils;->dumpCurrentRow(Lnet/sqlcipher/Cursor;Ljava/lang/StringBuilder;)V

    .line 479
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpCursor(Lnet/sqlcipher/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;

    .prologue
    .line 355
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lnet/sqlcipher/DatabaseUtils;->dumpCursor(Lnet/sqlcipher/Cursor;Ljava/io/PrintStream;)V

    .line 356
    return-void
.end method

.method public static dumpCursor(Lnet/sqlcipher/Cursor;Ljava/io/PrintStream;)V
    .locals 3
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    if-eqz p0, :cond_1

    .line 368
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getPosition()I

    move-result v0

    .line 370
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Lnet/sqlcipher/Cursor;->moveToPosition(I)Z

    .line 371
    :goto_0
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-static {p0, p1}, Lnet/sqlcipher/DatabaseUtils;->dumpCurrentRow(Lnet/sqlcipher/Cursor;Ljava/io/PrintStream;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->moveToPosition(I)Z

    .line 376
    .end local v0    # "startPos":I
    :cond_1
    const-string v1, "<<<<<"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public static dumpCursor(Lnet/sqlcipher/Cursor;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    if-eqz p0, :cond_1

    .line 389
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->getPosition()I

    move-result v0

    .line 391
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Lnet/sqlcipher/Cursor;->moveToPosition(I)Z

    .line 392
    :goto_0
    invoke-interface {p0}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-static {p0, p1}, Lnet/sqlcipher/DatabaseUtils;->dumpCurrentRow(Lnet/sqlcipher/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-interface {p0, v0}, Lnet/sqlcipher/Cursor;->moveToPosition(I)Z

    .line 397
    .end local v0    # "startPos":I
    :cond_1
    const-string v1, "<<<<<\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    return-void
.end method

.method public static dumpCursorToString(Lnet/sqlcipher/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Lnet/sqlcipher/Cursor;

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lnet/sqlcipher/DatabaseUtils;->dumpCursor(Lnet/sqlcipher/Cursor;Ljava/lang/StringBuilder;)V

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {p0}, Lnet/sqlcipher/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 313
    .local v0, "arr":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lnet/sqlcipher/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-object v2

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private static getCollationKeyInBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    sget-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 342
    sget-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 344
    :cond_0
    sget-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p0}, Lnet/sqlcipher/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 326
    .local v0, "arr":[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    .line 327
    .local v1, "keys":[C
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lnet/sqlcipher/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static getKeyLen([B)I
    .locals 1
    .param p0, "arr"    # [B

    .prologue
    .line 331
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 332
    array-length v0, p0

    .line 335
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getTypeOfObject(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 213
    if-nez p0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 215
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x4

    goto :goto_0

    .line 217
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 218
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 219
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 220
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static longForQuery(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v0

    .line 655
    .local v0, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Lnet/sqlcipher/DatabaseUtils;->longForQuery(Lnet/sqlcipher/database/SQLiteStatement;[Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 657
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    return-wide v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    throw v1
.end method

.method public static longForQuery(Lnet/sqlcipher/database/SQLiteStatement;[Ljava/lang/String;)J
    .locals 6
    .param p0, "prog"    # Lnet/sqlcipher/database/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 666
    if-eqz p1, :cond_0

    .line 667
    array-length v1, p1

    .line 668
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 669
    add-int/lit8 v4, v0, 0x1

    aget-object v5, p1, v0

    invoke-static {p0, v4, v5}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 673
    .local v2, "value":J
    return-wide v2
.end method

.method public static queryNumEntries(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 638
    sget-object v2, Lnet/sqlcipher/DatabaseUtils;->countProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v8

    .line 641
    .local v8, "cursor":Lnet/sqlcipher/Cursor;
    :try_start_0
    invoke-interface {v8}, Lnet/sqlcipher/Cursor;->moveToFirst()Z

    .line 642
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lnet/sqlcipher/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 644
    invoke-interface {v8}, Lnet/sqlcipher/Cursor;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Lnet/sqlcipher/Cursor;->close()V

    throw v0
.end method

.method public static final readExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p0, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lnet/sqlcipher/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static final readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .locals 1
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 142
    packed-switch p2, :pswitch_data_0

    .line 160
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 162
    return-void

    .line 144
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_2
    new-instance v0, Lnet/sqlcipher/database/SQLiteAbortException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_3
    new-instance v0, Lnet/sqlcipher/database/SQLiteConstraintException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_4
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_5
    new-instance v0, Lnet/sqlcipher/database/SQLiteFullException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_6
    new-instance v0, Lnet/sqlcipher/database/SQLiteDiskIOException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_7
    new-instance v0, Lnet/sqlcipher/database/SQLiteException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 123
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_1
    invoke-static {p0, v1, v0}, Lnet/sqlcipher/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "msg":Ljava/lang/String;
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 135
    new-instance v2, Landroid/content/OperationApplicationException;

    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_1
    invoke-static {p0, v1, v0}, Lnet/sqlcipher/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "escaper":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lnet/sqlcipher/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringForQuery(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 681
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v0

    .line 683
    .local v0, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Lnet/sqlcipher/DatabaseUtils;->stringForQuery(Lnet/sqlcipher/database/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 685
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    throw v1
.end method

.method public static stringForQuery(Lnet/sqlcipher/database/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "prog"    # Lnet/sqlcipher/database/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 694
    if-eqz p1, :cond_0

    .line 695
    array-length v1, p1

    .line 696
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 697
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v0

    invoke-static {p0, v3, v4}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "value":Ljava/lang/String;
    return-object v2
.end method

.method public static final writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "code":I
    const/4 v1, 0x1

    .line 67
    .local v1, "logException":Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1

    .line 68
    const/4 v0, 0x1

    .line 69
    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const-string v2, "DatabaseUtils"

    const-string v3, "Writing exception to parcel"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 70
    :cond_1
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_2

    .line 71
    const/4 v0, 0x2

    goto :goto_0

    .line 72
    :cond_2
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_3

    .line 73
    const/4 v0, 0x3

    goto :goto_0

    .line 74
    :cond_3
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteAbortException;

    if-eqz v2, :cond_4

    .line 75
    const/4 v0, 0x4

    goto :goto_0

    .line 76
    :cond_4
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteConstraintException;

    if-eqz v2, :cond_5

    .line 77
    const/4 v0, 0x5

    goto :goto_0

    .line 78
    :cond_5
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_6

    .line 79
    const/4 v0, 0x6

    goto :goto_0

    .line 80
    :cond_6
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteFullException;

    if-eqz v2, :cond_7

    .line 81
    const/4 v0, 0x7

    goto :goto_0

    .line 82
    :cond_7
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteDiskIOException;

    if-eqz v2, :cond_8

    .line 83
    const/16 v0, 0x8

    goto :goto_0

    .line 84
    :cond_8
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteException;

    if-eqz v2, :cond_9

    .line 85
    const/16 v0, 0x9

    goto :goto_0

    .line 86
    :cond_9
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    if-eqz v2, :cond_a

    .line 87
    const/16 v0, 0xa

    goto :goto_0

    .line 89
    :cond_a
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 90
    const-string v2, "DatabaseUtils"

    const-string v3, "Writing exception to parcel"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
