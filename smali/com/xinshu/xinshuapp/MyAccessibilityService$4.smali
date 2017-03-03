.class Lcom/xinshu/xinshuapp/MyAccessibilityService$4;
.super Landroid/os/Handler;
.source "MyAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinshu/xinshuapp/MyAccessibilityService;->createFloatWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;


# direct methods
.method constructor <init>(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xinshu/xinshuapp/MyAccessibilityService;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/xinshu/xinshuapp/MyAccessibilityService;->scrollSnsThread:Lcom/xinshu/xinshuapp/MyAccessibilityService$ScrollSnsThread;

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 615
    .local v3, "context":Landroid/content/Context;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xinshu/xinshuapp/utils/sns/SnsHelper;->findUserFolder()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 617
    .local v23, "userFolder":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/xinshu/xinshuapp/utils/sns/SnsHelper;->findEditorWxId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 619
    .local v8, "editorWxId":Ljava/lang/String;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v25, "userNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "no"

    .line 626
    .local v7, "editorSelf":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    .line 627
    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "\u56fe\u7247"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 628
    :cond_0
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    invoke-static {v3, v8, v0}, Lcom/xinshu/xinshuapp/utils/sns/SnsHelper;->findNickName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    .line 635
    :goto_0
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 636
    .local v24, "userName":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 637
    const-string v7, "yes"

    .line 650
    .end local v24    # "userName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-static {v0, v8, v1, v2}, Lcom/xinshu/xinshuapp/utils/sns/SnsHelper;->getSnsRecords(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v21

    .line 656
    .local v21, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_b

    .line 657
    const-string v28, "TEMP"

    const-string v29, "not empty"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;

    .line 660
    .local v20, "record":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    invoke-virtual/range {v20 .. v20}, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->count()I

    move-result v29

    if-eqz v29, :cond_3

    .line 663
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    const-string v29, "ran_id.txt"

    .line 664
    invoke-virtual/range {v28 .. v29}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 665
    .local v17, "randomIdFile":Ljava/io/File;
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/InputStreamReader;

    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v28 .. v29}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 668
    .local v19, "reader":Ljava/io/BufferedReader;
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 669
    .local v13, "openId":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 670
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".list"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 673
    invoke-virtual/range {v28 .. v29}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 674
    .local v11, "listFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 675
    .local v9, "hadTarget":Z
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 676
    new-instance v19, Ljava/io/BufferedReader;

    .end local v19    # "reader":Ljava/io/BufferedReader;
    new-instance v28, Ljava/io/InputStreamReader;

    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v30, "utf-8"

    invoke-direct/range {v28 .. v30}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 681
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "nickName":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    .line 683
    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 682
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 684
    const/4 v9, 0x1

    .line 688
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 690
    .end local v12    # "nickName":Ljava/lang/String;
    :cond_6
    if-nez v9, :cond_7

    .line 691
    new-instance v26, Ljava/io/OutputStreamWriter;

    new-instance v28, Ljava/io/FileOutputStream;

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v11, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v29, "utf-8"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 694
    .local v26, "writer":Ljava/io/OutputStreamWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 695
    const/16 v28, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 696
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->flush()V

    .line 697
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v9    # "hadTarget":Z
    .end local v11    # "listFile":Ljava/io/File;
    .end local v13    # "openId":Ljava/lang/String;
    .end local v17    # "randomIdFile":Ljava/io/File;
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "writer":Ljava/io/OutputStreamWriter;
    :cond_7
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->getJsonFileName()Ljava/lang/String;

    move-result-object v10

    .line 706
    .local v10, "jsonFileName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 708
    .restart local v26    # "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/InputStreamReader;

    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v30, v0

    .line 710
    invoke-virtual/range {v30 .. v30}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getApplication()Landroid/app/Application;

    move-result-object v30

    const-string v31, "ran_id.txt"

    invoke-virtual/range {v30 .. v31}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v28 .. v29}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 712
    .local v18, "randomIdReader":Ljava/io/BufferedReader;
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 713
    .local v16, "qrcodeTicket":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 714
    .restart local v13    # "openId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V

    .line 715
    new-instance v27, Ljava/io/OutputStreamWriter;

    new-instance v28, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v29, v0

    .line 716
    invoke-virtual/range {v29 .. v29}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getApplication()Landroid/app/Application;

    move-result-object v29

    .line 717
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v27 .. v28}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 718
    .end local v26    # "writer":Ljava/io/OutputStreamWriter;
    .local v27, "writer":Ljava/io/OutputStreamWriter;
    :try_start_2
    const-string v22, "end"

    .line 719
    .local v22, "scroll":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 720
    const-string v22, "middle"

    .line 722
    :cond_8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "{\"openid\": \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\", \"ticket\": \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\", \"scroll\": \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\", \"editorSelf\": \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\", \"snsrecord\": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->toJson(Ljava/io/OutputStreamWriter;)V

    .line 728
    const/16 v28, 0x7d

    invoke-virtual/range {v27 .. v28}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 729
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStreamWriter;->close()V

    .line 733
    invoke-static {}, Lcom/xinshu/xinshuapp/utils/HttpHelper;->getInstance()Lcom/xinshu/xinshuapp/utils/HttpHelper;

    move-result-object v28

    const-string v29, "http://img.xinshu.me/upload/json"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v30, v0

    .line 735
    invoke-virtual/range {v30 .. v30}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getApplication()Landroid/app/Application;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v30

    const-string v31, "docfile"

    .line 733
    invoke-virtual/range {v28 .. v31}, Lcom/xinshu/xinshuapp/utils/HttpHelper;->uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 758
    .end local v10    # "jsonFileName":Ljava/lang/String;
    .end local v13    # "openId":Ljava/lang/String;
    .end local v16    # "qrcodeTicket":Ljava/lang/String;
    .end local v18    # "randomIdReader":Ljava/io/BufferedReader;
    .end local v20    # "record":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    .end local v22    # "scroll":Ljava/lang/String;
    .end local v27    # "writer":Ljava/io/OutputStreamWriter;
    :cond_9
    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v28

    const-string v29, "su"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v14

    .line 759
    .local v14, "p":Ljava/lang/Process;
    new-instance v4, Ljava/io/DataOutputStream;

    .line 760
    invoke-virtual {v14}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 761
    .local v4, "dos":Ljava/io/DataOutputStream;
    const-string v28, "am startservice -n com.android.systemui/.SystemUIService\n"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 762
    const-string v28, "exit\n"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 764
    invoke-virtual {v14}, Ljava/lang/Process;->waitFor()I

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    # invokes: Lcom/xinshu/xinshuapp/MyAccessibilityService;->refreshWallpaper()V
    invoke-static/range {v28 .. v28}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->access$000(Lcom/xinshu/xinshuapp/MyAccessibilityService;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 785
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v14    # "p":Ljava/lang/Process;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/xinshu/xinshuapp/MyAccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    const v29, 0x7f090013

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    .line 787
    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .line 790
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v28

    const-string v29, "su"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v15

    .line 791
    .local v15, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/DataOutputStream;

    .line 792
    invoke-virtual {v15}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 794
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    const-string v28, "am start com.xinshu.xinshuapp/.BookShelfActivity\n"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 795
    const-string v28, "exit\n"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 797
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 805
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v15    # "process":Ljava/lang/Process;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->fetchSnsMask:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 806
    return-void

    .line 632
    .end local v21    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService$4;->this$0:Lcom/xinshu/xinshuapp/MyAccessibilityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/xinshu/xinshuapp/MyAccessibilityService;->targetNickName:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-static {v3, v0, v1}, Lcom/xinshu/xinshuapp/utils/sns/SnsHelper;->findUserName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    goto/16 :goto_0

    .line 699
    .restart local v20    # "record":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    .restart local v21    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;>;"
    :catch_0
    move-exception v5

    .line 700
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 738
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "jsonFileName":Ljava/lang/String;
    .restart local v26    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v5

    .line 739
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 740
    const-string v28, "TEMP"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :try_start_5
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 744
    :catch_2
    move-exception v6

    .line 745
    .local v6, "e1":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 751
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e1":Ljava/lang/Exception;
    .end local v10    # "jsonFileName":Ljava/lang/String;
    .end local v20    # "record":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    .end local v26    # "writer":Ljava/io/OutputStreamWriter;
    :cond_b
    const-string v28, "GetSNSRecord"

    const-string v29, "No records found!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 766
    :catch_3
    move-exception v5

    .line 767
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 798
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 799
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 738
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "jsonFileName":Ljava/lang/String;
    .restart local v13    # "openId":Ljava/lang/String;
    .restart local v16    # "qrcodeTicket":Ljava/lang/String;
    .restart local v18    # "randomIdReader":Ljava/io/BufferedReader;
    .restart local v20    # "record":Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
    .restart local v27    # "writer":Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v5

    move-object/from16 v26, v27

    .end local v27    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v26    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_5
.end method
