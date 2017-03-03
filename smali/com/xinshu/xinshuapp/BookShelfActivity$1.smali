.class Lcom/xinshu/xinshuapp/BookShelfActivity$1;
.super Ljava/lang/Object;
.source "BookShelfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/BookShelfActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/BookShelfActivity;


# direct methods
.method constructor <init>(Lcom/xinshu/xinshuapp/BookShelfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xinshu/xinshuapp/BookShelfActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xinshu/xinshuapp/BookShelfActivity$1;->this$0:Lcom/xinshu/xinshuapp/BookShelfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "mmIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    iget-object v2, p0, Lcom/xinshu/xinshuapp/BookShelfActivity$1;->this$0:Lcom/xinshu/xinshuapp/BookShelfActivity;

    invoke-virtual {v2, v1}, Lcom/xinshu/xinshuapp/BookShelfActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
