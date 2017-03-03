.class public Lnet/sqlcipher/database/SQLiteDiskIOException;
.super Lnet/sqlcipher/database/SQLiteException;
.source "SQLiteDiskIOException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
