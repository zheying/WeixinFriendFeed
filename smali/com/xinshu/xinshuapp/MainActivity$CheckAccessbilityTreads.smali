.class Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinshu/xinshuapp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAccessbilityTreads"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/MainActivity;


# direct methods
.method public constructor <init>(Lcom/xinshu/xinshuapp/MainActivity;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 377
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 379
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, "enabled_accessibility_flag":Z
    :goto_0
    if-nez v1, :cond_1

    .line 383
    :try_start_0
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-virtual {v3}, Lcom/xinshu/xinshuapp/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xinshu.xinshuapp/com.xinshu.xinshuapp.MyAccessibilityService"

    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 386
    if-ne v1, v6, :cond_0

    .line 387
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-virtual {v3}, Lcom/xinshu/xinshuapp/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u5df2\u7ecf\u5f00\u542f\u6210\u529f\uff0c\u73b0\u5728\u8fd4\u56de\u5fc3\u4e66\u5f00\u59cb\u767b\u5f55"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 390
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    const-class v4, Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-virtual {v3, v2}, Lcom/xinshu/xinshuapp/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 401
    :cond_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 402
    return-void
.end method
