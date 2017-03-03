.class Lcom/xinshu/xinshuapp/BookShelfActivity$2;
.super Ljava/lang/Object;
.source "BookShelfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/BookShelfActivity;->onResume()V
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
    .line 83
    iput-object p1, p0, Lcom/xinshu/xinshuapp/BookShelfActivity$2;->this$0:Lcom/xinshu/xinshuapp/BookShelfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xinshu/xinshuapp/BookShelfActivity$2;->this$0:Lcom/xinshu/xinshuapp/BookShelfActivity;

    invoke-virtual {v0}, Lcom/xinshu/xinshuapp/BookShelfActivity;->dialog_new()V

    .line 87
    return-void
.end method
