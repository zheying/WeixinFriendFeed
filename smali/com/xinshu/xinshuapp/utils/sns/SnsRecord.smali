.class public Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;
.super Ljava/lang/Object;
.source "SnsRecord.java"


# instance fields
.field private editorWxId:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private posts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xinshu/xinshuapp/utils/sns/SnsPost;",
            ">;"
        }
    .end annotation
.end field

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;
    .param p3, "editorWxId"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->userName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->nickName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->editorWxId:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->posts:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public addPost(Lcom/xinshu/xinshuapp/utils/sns/SnsPost;)V
    .locals 1
    .param p1, "post"    # Lcom/xinshu/xinshuapp/utils/sns/SnsPost;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getJsonFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yy-MM-dd-HHmmss-"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/io/OutputStreamWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/OutputStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 36
    iget-object v1, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->posts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 37
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xinshu/xinshuapp/utils/sns/SnsPost;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinshu/xinshuapp/utils/sns/SnsPost;

    iget-object v2, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->nickName:Ljava/lang/String;

    iget-object v4, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->editorWxId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/xinshu/xinshuapp/utils/sns/SnsPost;->toJson(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinshu/xinshuapp/utils/sns/SnsPost;

    iget-object v2, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->nickName:Ljava/lang/String;

    iget-object v4, p0, Lcom/xinshu/xinshuapp/utils/sns/SnsRecord;->editorWxId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/xinshu/xinshuapp/utils/sns/SnsPost;->toJson(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 43
    return-void
.end method
