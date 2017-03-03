.class Lcom/xinshu/xinshuapp/MyAccessibilityService$1;
.super Ljava/lang/Object;
.source "MyAccessibilityService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/MyAccessibilityService;->createFloatWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastX:F

.field private lastY:F

.field private nowX:F

.field private nowY:F

.field final synthetic this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

.field private tranX:F

.field private tranY:F


# direct methods
.method constructor <init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xinshu/xinshuapp/MyAccessibilityService;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "ret":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 539
    :goto_0
    :pswitch_0
    return v0

    .line 516
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->lastX:F

    .line 517
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->lastY:F

    .line 518
    const/4 v0, 0x1

    .line 519
    goto :goto_0

    .line 522
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->nowX:F

    .line 523
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->nowY:F

    .line 525
    iget v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->nowX:F

    iget v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->lastX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->tranX:F

    .line 526
    iget v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->nowY:F

    iget v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->lastY:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->tranY:F

    .line 528
    iget-object v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v1, v1, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->tranX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 529
    iget-object v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v1, v1, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->tranY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 531
    iget-object v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v1, v1, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v2, v2, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MyAccessibilityService;->floatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->nowX:F

    iput v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->lastX:F

    .line 534
    iget v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->nowY:F

    iput v1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$1;->lastY:F

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
