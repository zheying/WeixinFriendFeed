.class public Lcom/xinshu/xinshuapp/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation


# static fields
.field public static final COMPATIBLE_INFO_FILE_NAME:Ljava/lang/String; = "CompatibleInfo.cfg"

.field public static final ENCRYPTED_DB_NAME:Ljava/lang/String; = "EnMicroMsg.db"

.field public static final JSON_FILE_EXT:Ljava/lang/String; = ".json64"

.field public static final MM_DATA_FOLDER:Ljava/lang/String; = "/data/data/com.tencent.mm/MicroMsg/"

.field public static final RANDOM_ID_FILE_NAME:Ljava/lang/String; = "ran_id.txt"

.field public static final SNS_DB_FILE_NAME:Ljava/lang/String; = "SnsMicroMsg.db"

.field public static final SYSTEM_INFO_FILE_NAME:Ljava/lang/String; = "systemInfo.cfg"

.field public static final XINSHU_FOLLOWED_OPENID_NAME:Ljava/lang/String; = "openid"

.field public static final XINSHU_FOLLOWED_SCANNED_NAME:Ljava/lang/String; = "scan"

.field public static final XINSHU_FOLLOWED_STATUS_URL:Ljava/lang/String; = "http://wx.xinshu.me/api/check_qrcode/"

.field public static final XINSHU_JSON_UPLOAD_NAME:Ljava/lang/String; = "docfile"

.field public static final XINSHU_JSON_UPLOAD_URL:Ljava/lang/String; = "http://img.xinshu.me/upload/json"

.field public static final XINSHU_QRCODE_API:Ljava/lang/String; = "http://wx.xinshu.me/api/qrcode"

.field public static final XINSHU_QRCODE_URL_NAME:Ljava/lang/String; = "qrcode_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadHashMapFromFile(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 32
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v2, "objReader":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, "hashmapObj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 36
    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "hashmapObj":Ljava/lang/Object;
    .end local v2    # "objReader":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "plainText"    # Ljava/lang/String;

    .prologue
    .line 46
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 47
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 51
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 53
    aget-byte v3, v0, v5

    .line 54
    .local v3, "i":I
    if-gez v3, :cond_0

    add-int/lit16 v3, v3, 0x100

    .line 55
    :cond_0
    const/16 v6, 0x10

    if-ge v3, v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 63
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "offset":I
    :goto_1
    return-object v6

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    const-string v6, ""

    goto :goto_1
.end method
