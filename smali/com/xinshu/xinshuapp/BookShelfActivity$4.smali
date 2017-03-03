.class Lcom/xinshu/xinshuapp/BookShelfActivity$4;
.super Ljava/lang/Object;
.source "BookShelfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/BookShelfActivity;->dialog_new()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/BookShelfActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/xinshu/xinshuapp/BookShelfActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xinshu/xinshuapp/BookShelfActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xinshu/xinshuapp/BookShelfActivity$4;->this$0:Lcom/xinshu/xinshuapp/BookShelfActivity;

    iput-object p2, p0, Lcom/xinshu/xinshuapp/BookShelfActivity$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/xinshu/xinshuapp/BookShelfActivity$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 190
    return-void
.end method
