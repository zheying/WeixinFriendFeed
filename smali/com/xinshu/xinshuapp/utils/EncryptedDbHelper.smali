.class public Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;
.super Ljava/lang/Object;
.source "EncryptedDbHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation


# static fields
.field private static instance:Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;


# instance fields
.field private database:Lnet/sqlcipher/database/SQLiteDatabase;

.field private dbKey:Ljava/lang/String;

.field private openHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->instance:Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 19
    iput-object v0, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->openHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    .line 20
    iput-object v0, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->dbKey:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->openHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper$1;

    invoke-direct {v0, p0}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper$1;-><init>(Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;)V

    iput-object v0, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->openHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    .line 41
    :cond_0
    return-void
.end method

.method private static getDBKey()Ljava/lang/String;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 64
    .local v5, "process":Ljava/lang/Process;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v1, "dos":Ljava/io/DataOutputStream;
    const-string v8, "chmod 771 /data/data/com.tencent.mm\n"

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 66
    const-string v8, "chmod 777 /data/data/com.tencent.mm/MicroMsg/\n"

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 67
    const-string v8, "chmod 777 /data/data/com.tencent.mm/MicroMsg/systemInfo.cfg\n"

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 68
    const-string v8, "chmod 777 /data/data/com.tencent.mm/MicroMsg/CompatibleInfo.cfg\n"

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 69
    const-string v8, "exit\n"

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 71
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :goto_0
    const-string v8, "/data/data/com.tencent.mm/MicroMsg/systemInfo.cfg"

    invoke-static {v8}, Lcom/xinshu/xinshuapp/utils/Utils;->loadHashMapFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 77
    .local v6, "sysInfoMap":Ljava/util/HashMap;
    if-nez v6, :cond_0

    .line 78
    const-string v8, "ERROR"

    const-string v9, "An ERROR occured while reading systemInfo.cfg"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v4, "ERROR"

    .line 98
    :goto_1
    return-object v4

    .line 72
    .end local v6    # "sysInfoMap":Ljava/util/HashMap;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "sysInfoMap":Ljava/util/HashMap;
    :cond_0
    const-string v8, "/data/data/com.tencent.mm/MicroMsg/CompatibleInfo.cfg"

    invoke-static {v8}, Lcom/xinshu/xinshuapp/utils/Utils;->loadHashMapFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 83
    .local v0, "compatibleInfoMap":Ljava/util/HashMap;
    if-nez v0, :cond_1

    .line 84
    const-string v8, "ERROR"

    const-string v9, "An ERROR occured while reading CompatibleInfo.cfg"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v4, "ERROR"

    goto :goto_1

    .line 88
    :cond_1
    invoke-static {v6}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->getUIN(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "uin":Ljava/lang/String;
    const-string v8, "EnMicroMsg UIN"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v6, v0}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->getIMEI(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "imei":Ljava/lang/String;
    const-string v8, "EnMicroMsg IMEI"

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v8, ""

    if-eq v8, v7, :cond_2

    const-string v8, ""

    if-ne v8, v3, :cond_3

    .line 93
    :cond_2
    const-string v8, "ERROR"

    const-string v9, "An ERROR occured while generating key."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v4, "ERROR"

    goto :goto_1

    .line 97
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xinshu/xinshuapp/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x7

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "key":Ljava/lang/String;
    goto :goto_1
.end method

.method private static getIMEI(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .param p0, "sysInfoMap"    # Ljava/util/HashMap;
    .param p1, "compatibleInfoMap"    # Ljava/util/HashMap;

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "imei":Ljava/lang/String;
    const/16 v3, 0x102

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x102

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/16 v3, 0x102

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 121
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ERROR"

    const-string v4, "An ERROR occured while getting IMEI code."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    const-string v2, ""

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "imei":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->instance:Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->instance:Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    .line 26
    :cond_0
    sget-object v0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->instance:Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    return-object v0
.end method

.method private static getUIN(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .param p0, "sysInfoMap"    # Ljava/util/HashMap;

    .prologue
    .line 103
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "uin":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "uin":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ERROR"

    const-string v3, "An ERROR occured while getting UIN code."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const-string v1, ""

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public OpenDB(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 4
    .param p1, "dbPath"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->getDBKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->dbKey:Ljava/lang/String;

    .line 46
    const-string v1, "EnMicroMsg DBKey"

    iget-object v2, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->dbKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "databaseFile":Ljava/io/File;
    const-string v1, "OpenEnDb PATH"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v1, "OpenEnDb CANREAD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "OpenEnDb CANWRITE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v1, "OpenEnDb EXISTS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->dbKey:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->openHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    invoke-static {v0, v1, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 56
    iget-object v1, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v1
.end method
