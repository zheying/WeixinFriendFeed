.class public Lcom/xinshu/xinshuapp/utils/sns/SnsHelper;
.super Ljava/lang/Object;
.source "SnsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 2
    .param p0, "bstr"    # [B

    .prologue
    .line 28
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 29
    .local v0, "encodedBytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static findEditorWxId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userFolder"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EnMicroMsg.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "dbPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 227
    .local v4, "editorWxId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 228
    .local v6, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    .line 229
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 230
    .local v2, "dos":Ljava/io/DataOutputStream;
    const-string v7, "chmod 777 /data/data/com.tencent.mm\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 231
    const-string v7, "chmod -R 777 /data/data/com.tencent.mm/MicroMsg/\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod -R 777 /data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 234
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 666 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 235
    const-string v7, "exit\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 237
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "process":Ljava/lang/Process;
    :goto_0
    invoke-static {p0}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->getInstance(Landroid/content/Context;)Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    move-result-object v7

    .line 243
    invoke-virtual {v7, v1}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->OpenDB(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v5

    .line 244
    .local v5, "mainDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v7, "select value from userinfo where id = 2;"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 246
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 247
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 238
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v5    # "mainDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "mainDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 250
    invoke-virtual {v5}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 252
    if-nez v4, :cond_1

    .line 253
    const-string v4, ""

    .line 254
    :cond_1
    return-object v4
.end method

.method public static findNickName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userFolder"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EnMicroMsg.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "dbPath":Ljava/lang/String;
    const-string v5, ""

    .line 190
    .local v5, "nickName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 191
    .local v6, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    .line 192
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 193
    .local v2, "dos":Ljava/io/DataOutputStream;
    const-string v7, "chmod -R 777 /data/data/com.tencent.mm\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 194
    const-string v7, "chmod -R 777 /data/data/com.tencent.mm/MicroMsg/\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod -R 777 /data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 666 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 198
    const-string v7, "exit\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 200
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "process":Ljava/lang/Process;
    :goto_0
    invoke-static {p0}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->getInstance(Landroid/content/Context;)Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    move-result-object v7

    .line 206
    invoke-virtual {v7, v1}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->OpenDB(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v4

    .line 207
    .local v4, "mainDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select nickname from rcontact where username = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\';"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 210
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 212
    const-string v7, "NickNameInDB"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 215
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 217
    return-object v5

    .line 201
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "mainDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static findUserFolder()Ljava/lang/String;
    .locals 13

    .prologue
    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm"

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 103
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const/4 v5, 0x0

    .line 106
    .local v5, "latestUserFolder":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "su"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 108
    .local v8, "process":Ljava/lang/Process;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 109
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 110
    .local v9, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/DataOutputStream;

    .line 111
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    .local v1, "dos":Ljava/io/DataOutputStream;
    const-string v10, "ls -l /data/data/com.tencent.mm/MicroMsg/ | grep ^d\n"

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 114
    const-string v10, "exit\n"

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 118
    const/4 v4, 0x0

    .line 119
    .local v4, "latestModifiedDate":Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 120
    const-string v10, " +"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "info":[Ljava/lang/String;
    array-length v10, v3

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    .line 122
    const/4 v10, 0x5

    aget-object v10, v3, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_0

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x3

    aget-object v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    aget-object v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 125
    .local v7, "modifiedDate":Ljava/util/Date;
    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {v7, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 127
    :cond_1
    const/4 v10, 0x5

    aget-object v5, v3, v10

    .line 128
    move-object v4, v7

    .line 129
    const-string v10, "TEMP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "latestUserFolder:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "info":[Ljava/lang/String;
    .end local v4    # "latestModifiedDate":Ljava/util/Date;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "modifiedDate":Ljava/util/Date;
    .end local v8    # "process":Ljava/lang/Process;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 134
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "latestModifiedDate":Ljava/util/Date;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "process":Ljava/lang/Process;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static findUserName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetNickName"    # Ljava/lang/CharSequence;
    .param p2, "userFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EnMicroMsg.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "dbPath":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v6, "userNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 151
    .local v5, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    .line 152
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v2, "dos":Ljava/io/DataOutputStream;
    const-string v7, "chmod -R 777 /data/data/com.tencent.mm\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 154
    const-string v7, "chmod -R 777 /data/data/com.tencent.mm/MicroMsg/\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod -R 777 /data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 666 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 158
    const-string v7, "exit\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 160
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "process":Ljava/lang/Process;
    :goto_0
    const-string v7, "TEMP"

    const-string v8, "try to findUserName..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {p0}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->getInstance(Landroid/content/Context;)Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    move-result-object v7

    .line 167
    invoke-virtual {v7, v1}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->OpenDB(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v4

    .line 168
    .local v4, "mainDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select username from rcontact where verifyFlag = 0 and (conRemark = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' or nickname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 172
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 173
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v7, "TEMP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findUserName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "mainDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "mainDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 179
    return-object v6
.end method

.method public static getSnsRecords(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "userFolder"    # Ljava/lang/String;
    .param p1, "editorWxId"    # Ljava/lang/String;
    .param p3, "targetNickName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "userNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v20, "snsRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SnsMicroMsg.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 40
    .local v18, "snsDbPath":Ljava/lang/String;
    const-string v4, "TEMP"

    const-string v5, "in getSnsRecords"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v14

    .line 43
    .local v14, "process":Ljava/lang/Process;
    new-instance v12, Ljava/io/DataOutputStream;

    .line 44
    invoke-virtual {v14}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    .local v12, "dos":Ljava/io/DataOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 666 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 666 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-journal\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 47
    const-string v4, "exit\n"

    invoke-virtual {v12, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 49
    invoke-virtual {v14}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .end local v14    # "process":Ljava/lang/Process;
    :goto_0
    const-string v4, "TEMP"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v17, "snsDatabaseFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 62
    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 65
    .local v16, "snsDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v21, "https://weixinshu.com/manager/wxbook/cursors/"

    .line 68
    .local v21, "url":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 69
    .local v22, "userName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select userName, content, type, head, createTime, stringSeq, attrBuf from snsInfo where userName=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 70
    .local v15, "query":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order by createTime desc;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 72
    const-string v4, "cursors"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v4, 0x0

    .line 74
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 78
    .local v11, "cursor":Landroid/database/Cursor;
    const-string v4, "TEMP"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v4, "TEMP"

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v19, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;

    .line 81
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v19, "snsRecord":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    new-instance v3, Lcom/xinshu/xinshuapp/utils/sns/SnsPost;

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 84
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x4

    .line 85
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    .line 86
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Lcom/xinshu/xinshuapp/utils/sns/SnsPost;-><init>(Ljava/lang/String;[BIIILjava/lang/String;[B)V

    .line 87
    .local v3, "snsPost":Lcom/xinshu/xinshuapp/utils/sns/SnsPost;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->addPost(Lcom/xinshu/xinshuapp/utils/sns/SnsPost;)V

    goto :goto_2

    .line 50
    .end local v3    # "snsPost":Lcom/xinshu/xinshuapp/utils/sns/SnsPost;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "query":Ljava/lang/String;
    .end local v16    # "snsDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "snsDatabaseFile":Ljava/io/File;
    .end local v19    # "snsRecord":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    .end local v21    # "url":Ljava/lang/String;
    .end local v22    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 51
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const-string v4, "TEMP"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "query":Ljava/lang/String;
    .restart local v16    # "snsDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "snsDatabaseFile":Ljava/io/File;
    .restart local v19    # "snsRecord":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    .restart local v21    # "url":Ljava/lang/String;
    .restart local v22    # "userName":Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 90
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 95
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "query":Ljava/lang/String;
    .end local v19    # "snsRecord":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    .end local v22    # "userName":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 96
    const-string v4, "TEMP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "friend circle size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v20
.end method
