.class public Lcom/xinshu/xinshuapp/MyAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "MyAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;
    }
.end annotation


# instance fields
.field androidRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private btn_back:Landroid/widget/Button;

.field fetchSnsDoneHandler:Landroid/os/Handler;

.field fetchSnsMask:Landroid/widget/LinearLayout;

.field fetchSnsMaskParams:Landroid/view/WindowManager$LayoutParams;

.field floatWindowLayout:Landroid/widget/LinearLayout;

.field floatWindowParams:Landroid/view/WindowManager$LayoutParams;

.field floating_window_toplayout:Landroid/widget/LinearLayout;

.field instructionConfirmButton:Landroid/widget/TextView;

.field instructionLayoutMakeBook:Landroid/widget/LinearLayout;

.field instructionMargin:Landroid/view/View;

.field instructionOkButton:Landroid/widget/TextView;

.field instructionTextViewFriends:Landroid/widget/TextView;

.field instructionTextViewLogin:Landroid/widget/TextView;

.field instruction_to_home:Landroid/widget/LinearLayout;

.field instruction_waiting:Landroid/widget/LinearLayout;

.field mWindowManager:Landroid/view/WindowManager;

.field mmSnsNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

.field packageManager:Landroid/content/pm/PackageManager;

.field position:I

.field scrollSnsThread:Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;

.field snsBackButtonNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

.field snsNodeBoundsInScreen:Landroid/graphics/Rect;

.field snsRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field targetNickName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->snsNodeBoundsInScreen:Landroid/graphics/Rect;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->scrollSnsThread:Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->position:I

    .line 78
    const-string v0, "MyAccessibilityService"

    const-string v1, "Hello World!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xinshu/xinshuapp/MyAccessibilityService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->refreshWallpaper()V

    return-void
.end method

.method private changefour()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 348
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewFriends:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionMargin:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floating_window_toplayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instruction_waiting:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionLayoutMakeBook:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    return-void
.end method

.method private changeone()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewFriends:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floating_window_toplayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionLayoutMakeBook:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instruction_waiting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewFriends:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    return-void
.end method

.method private changethree()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 332
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewFriends:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floating_window_toplayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionLayoutMakeBook:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instruction_waiting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 340
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 342
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    return-void
.end method

.method private changetwo()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewFriends:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floating_window_toplayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionLayoutMakeBook:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instruction_waiting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewFriends:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    return-void
.end method

.method private createFloatWindow()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x7d2

    const/16 v7, 0x64

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 444
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 446
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040007

    invoke-virtual {v0, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    .line 448
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 449
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 450
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 452
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 458
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x31

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 459
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 460
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 461
    iput v7, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->position:I

    .line 464
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 465
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 468
    const v3, 0x7f040006

    invoke-virtual {v0, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMask:Landroid/widget/LinearLayout;

    .line 471
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMaskParams:Landroid/view/WindowManager$LayoutParams;

    .line 472
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMaskParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 473
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMaskParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 475
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMaskParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x38

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 482
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMaskParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 484
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    .line 486
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 490
    .local v1, "size":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 492
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 494
    .local v2, "windowHeight":I
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;

    invoke-direct {v4, p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;-><init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 543
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b000e

    .line 544
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewLogin:Landroid/widget/TextView;

    .line 545
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0010

    .line 546
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionTextViewFriends:Landroid/widget/TextView;

    .line 547
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0011

    .line 548
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionLayoutMakeBook:Landroid/widget/LinearLayout;

    .line 549
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0015

    .line 550
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instruction_waiting:Landroid/widget/LinearLayout;

    .line 553
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b000d

    .line 554
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floating_window_toplayout:Landroid/widget/LinearLayout;

    .line 555
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b000f

    .line 556
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionMargin:Landroid/view/View;

    .line 557
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0012

    .line 558
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionOkButton:Landroid/widget/TextView;

    .line 559
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0016

    .line 560
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionConfirmButton:Landroid/widget/TextView;

    .line 562
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionOkButton:Landroid/widget/TextView;

    new-instance v4, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;

    invoke-direct {v4, p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;-><init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionConfirmButton:Landroid/widget/TextView;

    new-instance v4, Lcom/xinshu/xinshuapp/MyAccessibilityService$3;

    invoke-direct {v4, p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService$3;-><init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    new-instance v3, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;

    invoke-direct {v3, p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;-><init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V

    iput-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsDoneHandler:Landroid/os/Handler;

    .line 808
    return-void
.end method

.method public static deep(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p0, "level"    # I
    .param p1, "m"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 852
    if-gez p0, :cond_1

    .line 860
    :cond_0
    return-void

    .line 854
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 855
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 856
    .local v0, "a":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_2

    .line 857
    add-int/lit8 v2, p0, -0x1

    invoke-static {v2, v0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->deep(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 854
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 837
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 838
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 847
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 841
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 842
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 841
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 843
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 844
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 845
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private refreshWallpaper()V
    .locals 6

    .prologue
    .line 812
    .line 813
    :try_start_0
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 814
    .local v4, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 818
    .local v3, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-nez v3, :cond_1

    .line 820
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 821
    .local v1, "wallpaper":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 822
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 825
    :cond_0
    invoke-static {v1}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 828
    .local v2, "wallpaperBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v1    # "wallpaper":Landroid/graphics/drawable/Drawable;
    .end local v2    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .end local v4    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_1
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismissAndroidPopUpWindow(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-string v3, "android:id/title"

    .line 139
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "auth_alert_msgs":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "auth_mesg":Ljava/lang/String;
    const-string v2, "\u8d85\u7ea7\u7528\u6237\u8bf7\u6c42"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-string v3, "com.android.settings:id/remember_forever"

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 144
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 145
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-string v3, "com.android.settings:id/allow"

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 146
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 149
    .end local v1    # "auth_mesg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dismissPopUpWindow(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-string v3, "com.tencent.mm:id/aoo"

    .line 163
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "alert_msgs":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "mesg":Ljava/lang/String;
    const-string v2, "\u66f4\u65b0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-string v3, "com.tencent.mm:id/aow"

    .line 168
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 171
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v3, 0x10

    .line 172
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 177
    .end local v1    # "mesg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 193
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 194
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->createFloatWindow()V

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->packageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->packageManager:Landroid/content/pm/PackageManager;

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->onLoginPage(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    invoke-direct {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->changeone()V

    .line 212
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "com.tencent.mm.ui.base.g"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 213
    invoke-virtual {p0, p1}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->dismissPopUpWindow(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 296
    :cond_3
    :goto_1
    return-void

    .line 210
    :cond_4
    invoke-direct {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->changetwo()V

    goto :goto_0

    .line 215
    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "com.tencent.mm.plugin.sns.ui.SnsUserUI"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 224
    invoke-direct {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->changethree()V

    .line 225
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->snsRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 226
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->snsRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v3, "com.tencent.mm:id/bao"

    .line 227
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 228
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 230
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->snsRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v3, "com.tencent.mm:id/bao"

    .line 231
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 236
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mmSnsNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 238
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mmSnsNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->snsNodeBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 242
    :cond_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-string v3, "com.tencent.mm:id/zb"

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 250
    .local v1, "targetNickNames":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 251
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    .local v0, "currentNickName":Ljava/lang/CharSequence;
    :goto_2
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    .line 265
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u56fe\u7247"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 266
    :cond_7
    iput-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    .line 274
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionOkButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 253
    .end local v0    # "currentNickName":Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-string v3, "com.tencent.mm:id/b9l"

    .line 254
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 259
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 260
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "currentNickName":Ljava/lang/CharSequence;
    goto :goto_2

    .line 262
    .end local v0    # "currentNickName":Ljava/lang/CharSequence;
    :cond_a
    const-string v0, ""

    .restart local v0    # "currentNickName":Ljava/lang/CharSequence;
    goto :goto_2

    .line 267
    :cond_b
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u56fe\u7247"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 269
    iput-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    goto :goto_3

    .line 280
    .end local v0    # "currentNickName":Ljava/lang/CharSequence;
    .end local v1    # "targetNickNames":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_c
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionOkButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->instructionOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 289
    :cond_d
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    .line 290
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 291
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onLoginPage(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.account.mobile.MobileInputUI"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.account.LoginUI"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.account.RegByMobileRegAIOUI"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.base.bx"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.base.w"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.base.aq"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.a.a.i"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.tools.CountryCodeUI"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.account.LoginIndepPass"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.account.MobileVerifyUI"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.tencent.mm.ui.account.MobileVerifyUI"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
