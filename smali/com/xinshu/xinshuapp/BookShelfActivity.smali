.class public Lcom/xinshu/xinshuapp/BookShelfActivity;
.super Landroid/app/Activity;
.source "BookShelfActivity.java"


# instance fields
.field startButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected dialog()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u8bf7\u5728\u7535\u8111\u4e0a\u8bbf\u95ee www.weixinshu.com \u8fdb\u884c\u7f16\u8f91\u9884\u89c8\u6216\u8d2d\u4e70"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/xinshu/xinshuapp/BookShelfActivity$3;

    invoke-direct {v2, p0}, Lcom/xinshu/xinshuapp/BookShelfActivity$3;-><init>(Lcom/xinshu/xinshuapp/BookShelfActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 179
    return-void
.end method

.method protected dialog_new()V
    .locals 6

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/BookShelfActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 183
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040005

    const v4, 0x7f0b000a

    invoke-virtual {p0, v4}, Lcom/xinshu/xinshuapp/BookShelfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "layout":Landroid/view/View;
    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    .local v0, "button":Landroid/widget/TextView;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u63d0\u793a"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 186
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/xinshu/xinshuapp/BookShelfActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/xinshu/xinshuapp/BookShelfActivity$4;-><init>(Lcom/xinshu/xinshuapp/BookShelfActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v2}, Lcom/xinshu/xinshuapp/BookShelfActivity;->setContentView(I)V

    .line 37
    const-string v2, "ran_id.txt"

    invoke-virtual {p0, v2}, Lcom/xinshu/xinshuapp/BookShelfActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 38
    .local v1, "randomIdFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/xinshu/xinshuapp/BookShelfActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/BookShelfActivity;->finish()V

    .line 57
    .end local v0    # "mainIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 43
    :cond_0
    const/high16 v2, 0x7f0b0000

    invoke-virtual {p0, v2}, Lcom/xinshu/xinshuapp/BookShelfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xinshu/xinshuapp/BookShelfActivity;->startButton:Landroid/widget/TextView;

    .line 44
    iget-object v2, p0, Lcom/xinshu/xinshuapp/BookShelfActivity;->startButton:Landroid/widget/TextView;

    new-instance v3, Lcom/xinshu/xinshuapp/BookShelfActivity$1;

    invoke-direct {v3, p0}, Lcom/xinshu/xinshuapp/BookShelfActivity$1;-><init>(Lcom/xinshu/xinshuapp/BookShelfActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/BookShelfActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 142
    .local v2, "id":I
    const v5, 0x7f0b0017

    if-ne v2, v5, :cond_0

    .line 144
    const-string v5, "ran_id.txt"

    invoke-virtual {p0, v5}, Lcom/xinshu/xinshuapp/BookShelfActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 147
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 148
    .local v4, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v0, "dos":Ljava/io/DataOutputStream;
    const-string v5, "am kill com.tencent.mm\n"

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 150
    const-string v5, "cd /data/data/com.tencent.mm\n"

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 151
    const-string v5, "rm -rf !(lib)\n"

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 152
    const-string v5, "exit\n"

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 154
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "process":Ljava/lang/Process;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/xinshu/xinshuapp/MainActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v3, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/xinshu/xinshuapp/BookShelfActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lcom/xinshu/xinshuapp/BookShelfActivity;->finish()V

    .line 162
    const/4 v5, 0x1

    .line 164
    .end local v3    # "mainIntent":Landroid/content/Intent;
    :goto_1
    return v5

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_1
.end method

.method public onResume()V
    .locals 17

    .prologue
    .line 61
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 63
    const-string v14, "ran_id.txt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/xinshu/xinshuapp/BookShelfActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 64
    .local v12, "randomIdFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 65
    new-instance v9, Landroid/content/Intent;

    const-class v14, Lcom/xinshu/xinshuapp/MainActivity;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v9, "mainIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/xinshu/xinshuapp/BookShelfActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/xinshu/xinshuapp/BookShelfActivity;->finish()V

    .line 127
    .end local v9    # "mainIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 71
    .local v13, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "openId":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 73
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 74
    const v14, 0x7f0b0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/xinshu/xinshuapp/BookShelfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 75
    .local v1, "bookShelfLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".list"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/xinshu/xinshuapp/BookShelfActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 77
    .local v8, "listFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 78
    new-instance v13, Ljava/io/BufferedReader;

    .end local v13    # "reader":Ljava/io/BufferedReader;
    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v16, "utf-8"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 81
    .local v5, "counter":I
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 82
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const v14, 0x7f040004

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 83
    .local v4, "booksLayout":Landroid/widget/LinearLayout;
    new-instance v14, Lcom/xinshu/xinshuapp/BookShelfActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/xinshu/xinshuapp/BookShelfActivity$2;-><init>(Lcom/xinshu/xinshuapp/BookShelfActivity;)V

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_1
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "nickName":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 92
    rem-int/lit8 v14, v5, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    if-eq v5, v14, :cond_2

    .line 93
    const v14, 0x7f040004

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .end local v4    # "booksLayout":Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 96
    .restart local v4    # "booksLayout":Landroid/widget/LinearLayout;
    :cond_2
    const v14, 0x7f040003

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v4, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, "bookView":Landroid/widget/TextView;
    move-object v3, v10

    .line 98
    .local v3, "bookname":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-le v14, v15, :cond_3

    .line 99
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u7684\u5fae\u4fe1\u4e66"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    rem-int/lit8 v14, v5, 0x2

    if-nez v14, :cond_1

    .line 107
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    const v14, 0x7f040002

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    .end local v1    # "bookShelfLayout":Landroid/widget/LinearLayout;
    .end local v2    # "bookView":Landroid/widget/TextView;
    .end local v3    # "bookname":Ljava/lang/String;
    .end local v4    # "booksLayout":Landroid/widget/LinearLayout;
    .end local v5    # "counter":I
    .end local v7    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v8    # "listFile":Ljava/io/File;
    .end local v10    # "nickName":Ljava/lang/String;
    .end local v11    # "openId":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    .line 124
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "bookShelfLayout":Landroid/widget/LinearLayout;
    .restart local v4    # "booksLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "counter":I
    .restart local v7    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v8    # "listFile":Ljava/io/File;
    .restart local v10    # "nickName":Ljava/lang/String;
    .restart local v11    # "openId":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_1
    rem-int/lit8 v14, v5, 0x2

    if-eqz v14, :cond_5

    .line 115
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    const v14, 0x7f040002

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    :cond_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_0

    .line 121
    .end local v4    # "booksLayout":Landroid/widget/LinearLayout;
    .end local v5    # "counter":I
    .end local v7    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v10    # "nickName":Ljava/lang/String;
    :cond_6
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/data/data/com.xinshu.xinshuapp/files/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".list"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
