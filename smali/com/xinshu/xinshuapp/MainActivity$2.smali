.class Lcom/xinshu/xinshuapp/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/xinshu/xinshuapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xinshu/xinshuapp/MainActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MainActivity$2;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "enabled_accessibility_flag":Z
    :try_start_0
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MainActivity$2;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-virtual {v2}, Lcom/xinshu/xinshuapp/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.xinshu.xinshuapp/com.xinshu.xinshuapp.MyAccessibilityService"

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    const-string v2, "Xinshu Init"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled_accessibility_flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-nez v1, :cond_0

    .line 174
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MainActivity$2;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v2, v2, Lcom/xinshu/xinshuapp/MainActivity;->firstHintLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MainActivity$2;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-virtual {v2}, Lcom/xinshu/xinshuapp/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090017

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 188
    :goto_1
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MainActivity$2;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v2, v2, Lcom/xinshu/xinshuapp/MainActivity;->firstHintLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MainActivity$2;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v2, v2, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    :try_start_1
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MainActivity$2;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v2, v2, Lcom/xinshu/xinshuapp/MainActivity;->getQrcodeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "getQrcodeThreadError"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
