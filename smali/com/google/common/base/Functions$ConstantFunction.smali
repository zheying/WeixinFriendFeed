.class Lcom/google/common/base/Functions$ConstantFunction;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstantFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    .line 295
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 303
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    instance-of v1, p1, Lcom/google/common/base/Functions$ConstantFunction;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 304
    check-cast v0, Lcom/google/common/base/Functions$ConstantFunction;

    .line 305
    .local v0, "that":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<*>;"
    iget-object v1, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 307
    .end local v0    # "that":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 311
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "constant("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
