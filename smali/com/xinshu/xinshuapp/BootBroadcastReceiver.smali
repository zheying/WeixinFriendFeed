.class public Lcom/xinshu/xinshuapp/BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 29
    const-string v13, "XinshuInit"

    const-string v14, "BOOT_COMPLETED received"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "accelerometer_rotation_flag":Z
    const/4 v11, 0x0

    .line 32
    .local v11, "user_rotation_flag":Z
    const/4 v1, 0x0

    .line 33
    .local v1, "accessibility_enabled_flag":Z
    const/4 v4, 0x0

    .line 38
    .local v4, "enabled_accessibility_flag":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accelerometer_rotation"

    .line 37
    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_2

    const/4 v0, 0x1

    .line 42
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "user_rotation"

    .line 41
    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v11, 0x1

    .line 46
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_enabled"

    .line 45
    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v1, 0x1

    .line 50
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "enabled_accessibility_services"

    .line 49
    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.xinshu.xinshuapp/com.xinshu.xinshuapp.MyAccessibilityService"

    .line 52
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 58
    :goto_3
    const-string v13, "Xinshu Init"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "accelerometer_rotation_flag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v13, "Xinshu Init"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "user_rotation_flag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v13, "Xinshu Init"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "accessibility_enabled_flag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v13, "Xinshu Init"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enabled_accessibility_flag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v8, 0x0

    .local v8, "retryCounter":I
    :goto_4
    const/4 v13, 0x5

    if-ge v8, v13, :cond_1

    .line 65
    if-eqz v0, :cond_0

    if-eqz v11, :cond_0

    if-eqz v1, :cond_0

    if-nez v4, :cond_1

    .line 71
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    const-string v14, "su"

    invoke-virtual {v13, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 72
    .local v7, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    .local v2, "dos":Ljava/io/DataOutputStream;
    const-string v13, "chmod 771 /data/data/com.android.providers.settings\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 74
    const-string v13, "chmod 777 /data/data/com.android.providers.settings/databases\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 75
    const-string v13, "chmod 666 /data/data/com.android.providers.settings/databases/*\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 77
    const-string v13, "chmod 771 /data/data/nl.ndsc.kitkatlauncher\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 78
    const-string v13, "chmod 777 /data/data/nl.ndsc.kitkatlauncher/databases\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 79
    const-string v13, "chmod 666 /data/data/nl.ndsc.kitkatlauncher/databases/*\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 88
    const-string v13, "wm size 1008x630\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 89
    const-string v13, "exit\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 91
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 94
    new-instance v10, Ljava/io/File;

    const-string v13, "/data/data/com.android.providers.settings/databases/settings.db"

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v10, "settingsDatabaseFile":Ljava/io/File;
    const/4 v13, 0x0

    invoke-static {v10, v13}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 96
    .local v9, "settingsDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v13, "INSERT INTO system(name, value) values(\'accelerometer_rotation\', 0);"

    invoke-virtual {v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v13, "INSERT INTO system(name, value) values(\'user_rotation\', 1);"

    invoke-virtual {v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v13, "INSERT INTO secure(name, value) values(\'accessibility_enabled\', 1);"

    invoke-virtual {v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v13, "INSERT INTO secure(name, value) values(\'enabled_accessibility_services\', \'com.xinshu.xinshuapp/com.xinshu.xinshuapp.MyAccessibilityService\');"

    invoke-virtual {v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 103
    new-instance v6, Ljava/io/File;

    const-string v13, "/data/data/nl.ndsc.kitkatlauncher/databases/launcher.db"

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, "launcherDatabaseFile":Ljava/io/File;
    const/4 v13, 0x0

    invoke-static {v6, v13}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 105
    .local v5, "launcherDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v13, "UPDATE favorites SET intent = \'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.xinshu.xinshuapp/.MainActivity;end\';"

    invoke-virtual {v5, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v12

    .line 114
    .local v12, "wpManager":Landroid/app/WallpaperManager;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    const-string v14, "su"

    invoke-virtual {v13, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 115
    new-instance v2, Ljava/io/DataOutputStream;

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 116
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    const-string v13, "am broadcast -a android.intent.action.BOOT_COMPLETED\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 117
    const-string v13, "exit\n"

    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .end local v0    # "accelerometer_rotation_flag":Z
    .end local v1    # "accessibility_enabled_flag":Z
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "enabled_accessibility_flag":Z
    .end local v5    # "launcherDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "launcherDatabaseFile":Ljava/io/File;
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "retryCounter":I
    .end local v9    # "settingsDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "settingsDatabaseFile":Ljava/io/File;
    .end local v11    # "user_rotation_flag":Z
    .end local v12    # "wpManager":Landroid/app/WallpaperManager;
    :cond_1
    return-void

    .line 37
    .restart local v0    # "accelerometer_rotation_flag":Z
    .restart local v1    # "accessibility_enabled_flag":Z
    .restart local v4    # "enabled_accessibility_flag":Z
    .restart local v11    # "user_rotation_flag":Z
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 41
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 45
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 53
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "Xinshu Init"

    const-string v14, "Read settings failed"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 121
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "retryCounter":I
    :catch_1
    move-exception v3

    .line 122
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const-string v13, "XinshuApp Init"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Init failed_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4
.end method
