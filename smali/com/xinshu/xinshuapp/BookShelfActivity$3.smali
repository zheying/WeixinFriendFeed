.class Lcom/xinshu/xinshuapp/BookShelfActivity$3;
.super Ljava/lang/Object;
.source "BookShelfActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/BookShelfActivity;->dialog()V
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
    .line 171
    iput-object p1, p0, Lcom/xinshu/xinshuapp/BookShelfActivity$3;->this$0:Lcom/xinshu/xinshuapp/BookShelfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 176
    return-void
.end method
