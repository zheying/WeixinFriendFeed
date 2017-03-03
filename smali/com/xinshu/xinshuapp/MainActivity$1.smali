.class Lcom/xinshu/xinshuapp/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


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
    .line 83
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/16 v9, 0x8

    .line 85
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "data":Landroid/os/Bundle;
    const-string v7, "Type"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "type":Ljava/lang/String;
    const-string v7, "View"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "view":Ljava/lang/String;
    iget-object v7, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v7, v7, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v8, v8, Lcom/xinshu/xinshuapp/MainActivity;->tem:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    move v7, v4

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 152
    :goto_1
    return-void

    .line 89
    :sswitch_0
    const-string v7, "Visibility"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v3

    goto :goto_0

    :sswitch_1
    const-string v7, "Enable"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_0

    :sswitch_2
    const-string v7, "Toast"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_1
    :goto_2
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 93
    :pswitch_1
    const-string v4, "Visibility"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 94
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 91
    :sswitch_3
    const-string v5, "qrcodeImage"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    goto :goto_2

    :sswitch_4
    const-string v6, "qrcodeImageLayout"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    goto :goto_2

    :sswitch_5
    const-string v5, "qrcodeLoadingAnimation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    goto :goto_2

    :sswitch_6
    const-string v5, "qrcodeLayout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_7
    const-string v5, "stepOneLayout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    goto :goto_2

    .line 96
    :cond_2
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v4, v4, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 100
    :pswitch_2
    const-string v4, "Visibility"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 101
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 103
    :cond_3
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v4, v4, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 107
    :pswitch_3
    const-string v4, "Visibility"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_4

    .line 108
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLoadingAnimation:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 110
    :cond_4
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v4, v4, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLoadingAnimation:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 114
    :pswitch_4
    const-string v4, "Visibility"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 115
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 117
    :cond_5
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v4, v4, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 121
    :pswitch_5
    const-string v4, "Visibility"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_6

    .line 122
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->stepOneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 124
    :cond_6
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v4, v4, Lcom/xinshu/xinshuapp/MainActivity;->stepOneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 130
    :pswitch_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    :cond_7
    move v3, v4

    :goto_3
    packed-switch v3, :pswitch_data_2

    goto/16 :goto_1

    .line 132
    :pswitch_7
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImage:Landroid/widget/ImageView;

    const-string v4, "Enable"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 130
    :sswitch_8
    const-string v5, "qrcodeImage"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :sswitch_9
    const-string v3, "qrcodeImageLayout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_3

    :sswitch_a
    const-string v3, "qrcodeLoadingAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v6

    goto :goto_3

    :sswitch_b
    const-string v3, "qrcodeLayout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x3

    goto :goto_3

    :sswitch_c
    const-string v3, "stepOneLayout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    goto :goto_3

    .line 135
    :pswitch_8
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeImageLayout:Landroid/widget/LinearLayout;

    const-string v4, "Enable"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_1

    .line 138
    :pswitch_9
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLoadingAnimation:Landroid/widget/ProgressBar;

    const-string v4, "Enable"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    goto/16 :goto_1

    .line 141
    :pswitch_a
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->qrcodeLayout:Landroid/widget/RelativeLayout;

    const-string v4, "Enable"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto/16 :goto_1

    .line 144
    :pswitch_b
    iget-object v3, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    iget-object v3, v3, Lcom/xinshu/xinshuapp/MainActivity;->stepOneLayout:Landroid/widget/LinearLayout;

    const-string v4, "Enable"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_1

    .line 149
    :pswitch_c
    iget-object v4, p0, Lcom/xinshu/xinshuapp/MainActivity$1;->this$0:Lcom/xinshu/xinshuapp/MainActivity;

    const-string v5, "TextId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x1577c0ce -> :sswitch_0
        0x4d3a607 -> :sswitch_2
        0x7bfa11a3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_c
    .end packed-switch

    .line 91
    :sswitch_data_1
    .sparse-switch
        -0x36ae6009 -> :sswitch_4
        0x9abafc4 -> :sswitch_7
        0x2d102956 -> :sswitch_5
        0x3d40fe6d -> :sswitch_3
        0x6f5f4858 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 130
    :sswitch_data_2
    .sparse-switch
        -0x36ae6009 -> :sswitch_9
        0x9abafc4 -> :sswitch_c
        0x2d102956 -> :sswitch_a
        0x3d40fe6d -> :sswitch_8
        0x6f5f4858 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
