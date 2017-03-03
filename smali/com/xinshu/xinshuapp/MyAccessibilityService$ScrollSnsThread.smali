.class Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;
.super Ljava/lang/Thread;
.source "MyAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinshu/xinshuapp/MyAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollSnsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p2, "NodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 370
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 373
    const/4 v6, 0x0

    .line 374
    .local v6, "scrollCount":I
    const/16 v4, 0x5dc

    .line 377
    .local v4, "maxScrollCount":I
    const/4 v7, 0x0

    .line 382
    .local v7, "theEnd":Z
    :goto_0
    if-gt v6, v4, :cond_0

    .line 387
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;->sleep(J)V

    .line 388
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 389
    .local v5, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/DataOutputStream;

    .line 390
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 391
    .local v0, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    .line 392
    .local v2, "dragX":I
    iget-object v8, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v8, v8, Lcom/xinshu/xinshuapp/MyAccessibilityService;->snsNodeBoundsInScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v8, -0x5

    .line 393
    .local v1, "dragStartY":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input swipe "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-int v9, v1

    mul-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 396
    const-string v8, "exit\n"

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 398
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v1    # "dragStartY":I
    .end local v2    # "dragX":I
    .end local v5    # "process":Ljava/lang/Process;
    :goto_1
    rem-int/lit8 v8, v6, 0xa

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    .line 414
    :try_start_1
    iget-object v8, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v8, v8, Lcom/xinshu/xinshuapp/MyAccessibilityService;->snsRootNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v9, "com.tencent.mm:id/agm"

    invoke-virtual {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 419
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_1

    .line 422
    const/4 v7, 0x1

    .line 432
    :cond_0
    if-eqz v7, :cond_2

    .line 434
    iget-object v8, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v8, v8, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsDoneHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    :goto_2
    return-void

    .line 399
    :catch_0
    move-exception v3

    .line 400
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 427
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 437
    :cond_2
    iget-object v8, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    iget-object v8, v8, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsDoneHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
