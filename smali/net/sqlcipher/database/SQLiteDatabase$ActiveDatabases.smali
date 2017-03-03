.class Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sqlcipher/database/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveDatabases"
.end annotation


# static fields
.field private static final activeDatabases:Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;


# instance fields
.field private mActiveDatabases:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2262
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    invoke-direct {v0}, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;-><init>()V

    sput-object v0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->activeDatabases:Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2263
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;

    .line 2265
    return-void
.end method

.method static synthetic access$000(Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    .prologue
    .line 2261
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;

    return-object v0
.end method

.method static getInstance()Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;
    .locals 1

    .prologue
    .line 2266
    sget-object v0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->activeDatabases:Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    return-object v0
.end method
