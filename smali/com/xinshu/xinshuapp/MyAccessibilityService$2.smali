.class Lcom/xinshu/xinshuapp/MyAccessibilityService$2;
.super Ljava/lang/Object;
.source "MyAccessibilityService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/MyAccessibilityService;->createFloatWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;


# direct methods
.method constructor <init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xinshu/xinshuapp/MyAccessibilityService;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayMask()V
    .locals 7

    .prologue
    .line 578
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 579
    .local v2, "p":Ljava/lang/Process;
    new-instance v0, Ljava/io/DataOutputStream;

    .line 580
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 581
    .local v0, "dos":Ljava/io/DataOutputStream;
    const-string v4, "service call activity 42 s16 com.android.systemui\n"

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 582
    const-string v4, "exit\n"

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 584
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "p":Ljava/lang/Process;
    :goto_0
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v4, v4, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v5, v5, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMask:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v6, v6, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMaskParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v4, v4, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMask:Landroid/widget/LinearLayout;

    const v5, 0x7f0b000c

    .line 594
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xinshu/xinshuapp/view/GifMovieView;

    .line 595
    .local v3, "sys_gif":Lcom/xinshu/xinshuapp/view/GifMovieView;
    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Lcom/xinshu/xinshuapp/view/GifMovieView;->setMovieResource(I)V

    .line 596
    return-void

    .line 585
    .end local v3    # "sys_gif":Lcom/xinshu/xinshuapp/view/GifMovieView;
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->displayMask()V

    .line 572
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    new-instance v1, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;

    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mmSnsNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v1, v2, v3}, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;-><init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iput-object v1, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->scrollSnsThread:Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;

    .line 573
    iget-object v0, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$2;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->scrollSnsThread:Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;

    invoke-virtual {v0}, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;->start()V

    .line 574
    return-void
.end method
