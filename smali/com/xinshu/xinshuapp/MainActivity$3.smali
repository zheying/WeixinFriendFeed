.class Lcom/xinshu/xinshuapp/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/MainActivity;->onResume()V
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
    .line 355
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MainActivity$3;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 359
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MainActivity$3;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-virtual {v2, v1}, Lcom/xinshu/xinshuapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "checkAccessbilityTreads":Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;
    new-instance v0, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;

    .end local v0    # "checkAccessbilityTreads":Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;
    iget-object v2, p0, Lcom/xinshu/xinshuapp/MainActivity$3;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {v0, v2}, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;-><init>(Lcom/xinshu/xinshuapp/MainActivity;)V

    .line 363
    .restart local v0    # "checkAccessbilityTreads":Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;
    invoke-virtual {v0}, Lcom/xinshu/xinshuapp/MainActivity$CheckAccessbilityTreads;->start()V

    .line 364
    return-void
.end method
