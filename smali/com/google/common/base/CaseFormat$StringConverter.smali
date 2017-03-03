.class final Lcom/google/common/base/CaseFormat$StringConverter;
.super Lcom/google/common/base/Converter;
.source "CaseFormat.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CaseFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Converter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final sourceFormat:Lcom/google/common/base/CaseFormat;

.field private final targetFormat:Lcom/google/common/base/CaseFormat;


# direct methods
.method constructor <init>(Lcom/google/common/base/CaseFormat;Lcom/google/common/base/CaseFormat;)V
    .locals 1
    .param p1, "sourceFormat"    # Lcom/google/common/base/CaseFormat;
    .param p2, "targetFormat"    # Lcom/google/common/base/CaseFormat;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 169
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CaseFormat;

    iput-object v0, p0, Lcom/google/common/base/CaseFormat$StringConverter;->sourceFormat:Lcom/google/common/base/CaseFormat;

    .line 170
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CaseFormat;

    iput-object v0, p0, Lcom/google/common/base/CaseFormat$StringConverter;->targetFormat:Lcom/google/common/base/CaseFormat;

    .line 171
    return-void
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 162
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/base/CaseFormat$StringConverter;->doBackward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doBackward(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 180
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/CaseFormat$StringConverter;->targetFormat:Lcom/google/common/base/CaseFormat;

    iget-object v1, p0, Lcom/google/common/base/CaseFormat$StringConverter;->sourceFormat:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 162
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/base/CaseFormat$StringConverter;->doForward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 175
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/CaseFormat$StringConverter;->sourceFormat:Lcom/google/common/base/CaseFormat;

    iget-object v1, p0, Lcom/google/common/base/CaseFormat$StringConverter;->targetFormat:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 184
    instance-of v2, p1, Lcom/google/common/base/CaseFormat$StringConverter;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Lcom/google/common/base/CaseFormat$StringConverter;

    .line 186
    .local v0, "that":Lcom/google/common/base/CaseFormat$StringConverter;
    iget-object v2, p0, Lcom/google/common/base/CaseFormat$StringConverter;->sourceFormat:Lcom/google/common/base/CaseFormat;

    iget-object v3, v0, Lcom/google/common/base/CaseFormat$StringConverter;->sourceFormat:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v2, v3}, Lcom/google/common/base/CaseFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/base/CaseFormat$StringConverter;->targetFormat:Lcom/google/common/base/CaseFormat;

    iget-object v3, v0, Lcom/google/common/base/CaseFormat$StringConverter;->targetFormat:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v2, v3}, Lcom/google/common/base/CaseFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 189
    .end local v0    # "that":Lcom/google/common/base/CaseFormat$StringConverter;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/base/CaseFormat$StringConverter;->sourceFormat:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0}, Lcom/google/common/base/CaseFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/CaseFormat$StringConverter;->targetFormat:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v1}, Lcom/google/common/base/CaseFormat;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/common/base/CaseFormat$StringConverter;->sourceFormat:Lcom/google/common/base/CaseFormat;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/CaseFormat$StringConverter;->targetFormat:Lcom/google/common/base/CaseFormat;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".converterTo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
