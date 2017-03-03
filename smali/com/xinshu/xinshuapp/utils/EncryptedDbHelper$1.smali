.class Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper$1;
.super Ljava/lang/Object;
.source "EncryptedDbHelper.java"

# interfaces
.implements Lnet/sqlcipher/database/SQLiteDatabaseHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;


# direct methods
.method constructor <init>(Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper$1;->this$0:Lcom/xinshu/xinshuapp/utils/EncryptedDbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postKey(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 36
    const-string v0, "PRAGMA kdf_iter = 4000;"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "PRAGMA cipher_use_hmac = OFF;"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public preKey(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0
    .param p1, "database"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 34
    return-void
.end method
