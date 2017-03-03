.class public Lcom/xinshu/xinshuapp/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;,
        Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;,
        Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;
    }
.end annotation


# instance fields
.field firstHintLayout:Landroid/widget/LinearLayout;

.field getQrcodeThread:Ljava/lang/Thread;

.field openId:Ljava/lang/String;

.field qrcodeImage:Landroid/widget/ImageView;

.field qrcodeImageLayout:Landroid/widget/LinearLayout;

.field qrcodeLayout:Landroid/widget/RelativeLayout;

.field qrcodeLoadingAnimation:Landroid/widget/ProgressBar;

.field qrcodeTicket:Ljava/lang/String;

.field setupButton:Landroid/widget/TextView;

.field stepOneLayout:Landroid/widget/LinearLayout;

.field tem:Landroid/graphics/Bitmap;

.field uiHandler:Landroid/os/Handler;

.field waitForFollwingThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 406
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 60
    const-string v4, "console"

    const-string v5, "hello"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v4, 0x7f040001

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->setContentView(I)V

    .line 66
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-le v4, v5, :cond_0

    .line 67
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 68
    .local v2, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 72
    .end local v2    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    const-string v4, "ran_id.txt"

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 73
    .local v3, "randomIdFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    const v4, 0x7f0b0002

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->stepOneLayout:Landroid/widget/LinearLayout;

    .line 76
    const v4, 0x7f0b0004

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLayout:Landroid/widget/RelativeLayout;

    .line 77
    const v4, 0x7f0b0005

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLoadingAnimation:Landroid/widget/ProgressBar;

    .line 78
    const v4, 0x7f0b0007

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImage:Landroid/widget/ImageView;

    .line 79
    const v4, 0x7f0b0006

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImageLayout:Landroid/widget/LinearLayout;

    .line 80
    const v4, 0x7f0b0008

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->firstHintLayout:Landroid/widget/LinearLayout;

    .line 83
    new-instance v4, Lcom/xinshu/xinshuapp/MainActivity$1;

    invoke-direct {v4, p0}, Lcom/xinshu/xinshuapp/MainActivity$1;-><init>(Lcom/xinshu/xinshuapp/MainActivity;)V

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->uiHandler:Landroid/os/Handler;

    .line 155
    new-instance v4, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;

    invoke-direct {v4, p0, v6}, Lcom/xinshu/xinshuapp/MainActivity$QrcodeThread;-><init>(Lcom/xinshu/xinshuapp/MainActivity;Lcom/xinshu/xinshuapp/MainActivity$1;)V

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->getQrcodeThread:Ljava/lang/Thread;

    .line 156
    new-instance v4, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;

    invoke-direct {v4, p0, v6}, Lcom/xinshu/xinshuapp/MainActivity$WaitForFollwingThread;-><init>(Lcom/xinshu/xinshuapp/MainActivity;Lcom/xinshu/xinshuapp/MainActivity$1;)V

    iput-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->waitForFollwingThread:Ljava/lang/Thread;

    .line 158
    const v4, 0x7f0b0003

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    .local v1, "followButton":Landroid/widget/TextView;
    new-instance v4, Lcom/xinshu/xinshuapp/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/xinshu/xinshuapp/MainActivity$2;-><init>(Lcom/xinshu/xinshuapp/MainActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity;->stepOneLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    .end local v1    # "followButton":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 193
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/xinshu/xinshuapp/BookShelfActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, "bookshelfIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/xinshu/xinshuapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 420
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 421
    .local v0, "id":I
    const v1, 0x7f0b0018

    if-ne v0, v1, :cond_0

    .line 464
    const/4 v1, 0x1

    .line 466
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 337
    const/4 v2, 0x0

    .line 340
    .local v2, "enabled_accessibility_flag":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.xinshu.xinshuapp/com.xinshu.xinshuapp.MyAccessibilityService"

    .line 342
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 346
    :goto_0
    const-string v6, "Xinshu Init"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabled_accessibility_flag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    if-nez v2, :cond_0

    .line 350
    const v6, 0x7f0b0008

    invoke-virtual {p0, v6}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 352
    .local v3, "firstHintLayout":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    const v6, 0x7f0b0009

    invoke-virtual {p0, v6}, Lcom/xinshu/xinshuapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 355
    .local v5, "setupButton":Landroid/widget/TextView;
    new-instance v6, Lcom/xinshu/xinshuapp/MainActivity$3;

    invoke-direct {v6, p0}, Lcom/xinshu/xinshuapp/MainActivity$3;-><init>(Lcom/xinshu/xinshuapp/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    .end local v3    # "firstHintLayout":Landroid/widget/LinearLayout;
    .end local v5    # "setupButton":Landroid/widget/TextView;
    :cond_0
    const-string v6, "ran_id.txt"

    invoke-virtual {p0, v6}, Lcom/xinshu/xinshuapp/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 369
    .local v4, "randomIdFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/xinshu/xinshuapp/BookShelfActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v0, "bookshelfIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/xinshu/xinshuapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 372
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MainActivity;->finish()V

    .line 374
    .end local v0    # "bookshelfIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 343
    .end local v4    # "randomIdFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
