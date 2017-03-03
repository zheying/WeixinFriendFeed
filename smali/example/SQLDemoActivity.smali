.class public Lexample/SQLDemoActivity;
.super Landroid/app/Activity;
.source "SQLDemoActivity.java"


# instance fields
.field eventsData:Lexample/EventDataSQLHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addEvent(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "events"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 54
    return-void
.end method

.method private getEvents(Lnet/sqlcipher/database/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 9
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v1, "events"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v8

    .line 61
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lexample/SQLDemoActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 62
    return-object v8
.end method

.method private showEvents(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Saved Events:\n\n"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "ret":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 69
    .local v0, "id":J
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 70
    .local v4, "time":J
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "title":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    .end local v0    # "id":J
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_0
    const-string v6, "sqldemo"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 22
    const-string v3, "foo123"

    .line 24
    .local v3, "password":Ljava/lang/String;
    new-instance v4, Lexample/EventDataSQLHelper;

    invoke-direct {v4, p0}, Lexample/EventDataSQLHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lexample/SQLDemoActivity;->eventsData:Lexample/EventDataSQLHelper;

    .line 27
    iget-object v4, p0, Lexample/SQLDemoActivity;->eventsData:Lexample/EventDataSQLHelper;

    invoke-virtual {v4, v3}, Lexample/EventDataSQLHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 29
    .local v1, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_0

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hello Android Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lexample/SQLDemoActivity;->addEvent(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 34
    iget-object v4, p0, Lexample/SQLDemoActivity;->eventsData:Lexample/EventDataSQLHelper;

    invoke-virtual {v4, v3}, Lexample/EventDataSQLHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 36
    invoke-direct {p0, v1}, Lexample/SQLDemoActivity;->getEvents(Lnet/sqlcipher/database/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 37
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lexample/SQLDemoActivity;->showEvents(Landroid/database/Cursor;)V

    .line 39
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lexample/SQLDemoActivity;->eventsData:Lexample/EventDataSQLHelper;

    invoke-virtual {v0}, Lexample/EventDataSQLHelper;->close()V

    .line 46
    return-void
.end method
