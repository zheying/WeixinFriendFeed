.class public Lexample/EventDataSQLHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "EventDataSQLHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "events.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE:Ljava/lang/String; = "events"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v0, "events.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 27
    const-string v0, "create table events( _id integer primary key autoincrement, time integer, title text not null);"

    .line 30
    .local v0, "sql":Ljava/lang/String;
    const-string v1, "EventsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 36
    if-lt p2, p3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 41
    const-string v0, "alter table events add note text;"

    .line 42
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 43
    const-string v0, ""

    .line 45
    :cond_3
    const-string v1, "EventsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade\t: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
