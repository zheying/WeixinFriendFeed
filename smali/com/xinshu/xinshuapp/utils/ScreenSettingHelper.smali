.class public Lcom/xinshu/xinshuapp/utils/ScreenSettingHelper;
.super Ljava/lang/Object;
.source "ScreenSettingHelper.java"


# static fields
.field private static wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setScreenOn(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 16
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "MyKeepScreenOnPM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/xinshu/xinshuapp/utils/ScreenSettingHelper;->wl:Landroid/os/PowerManager$WakeLock;

    .line 18
    sget-object v1, Lcom/xinshu/xinshuapp/utils/ScreenSettingHelper;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 25
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 22
    :cond_0
    sget-object v1, Lcom/xinshu/xinshuapp/utils/ScreenSettingHelper;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 23
    const/4 v1, 0x0

    sput-object v1, Lcom/xinshu/xinshuapp/utils/ScreenSettingHelper;->wl:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method
