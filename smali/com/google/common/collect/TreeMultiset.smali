.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/AbstractSortedMultiset;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$4;,
        Lcom/google/common/collect/TreeMultiset$AvlNode;,
        Lcom/google/common/collect/TreeMultiset$Reference;,
        Lcom/google/common/collect/TreeMultiset$Aggregate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private final transient header:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient range:Lcom/google/common/collect/GeneralRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient rootReference:Lcom/google/common/collect/TreeMultiset$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$Reference",
            "<",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Reference",
            "<",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;>;",
            "Lcom/google/common/collect/GeneralRange",
            "<TE;>;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "rootReference":Lcom/google/common/collect/TreeMultiset$Reference;, "Lcom/google/common/collect/TreeMultiset$Reference<Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;>;"
    .local p2, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TE;>;"
    .local p3, "endLink":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-virtual {p2}, Lcom/google/common/collect/GeneralRange;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 117
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 118
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 119
    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 124
    invoke-static {p1}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 125
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 126
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 127
    new-instance v0, Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v0, v2}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 128
    return-void
.end method

.method static synthetic access$1200(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->firstNode()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeMultiset;->wrapEntry(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->lastNode()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p2, "x2"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-void
.end method

.method private aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 6
    .param p1, "aggr"    # Lcom/google/common/collect/TreeMultiset$Aggregate;
    .param p2    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Aggregate;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;)J"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p2, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez p2, :cond_0

    .line 197
    const-wide/16 v2, 0x0

    .line 212
    :goto_0
    return-wide v2

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v2

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$500(Lcom/google/common/collect/TreeMultiset$AvlNode;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 200
    .local v0, "cmp":I
    if-lez v0, :cond_1

    .line 201
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    goto :goto_0

    .line 202
    :cond_1
    if-nez v0, :cond_2

    .line 203
    sget-object v1, Lcom/google/common/collect/TreeMultiset$4;->$SwitchMap$com$google$common$collect$BoundType:[I

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 209
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 205
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    int-to-long v2, v1

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 207
    :pswitch_1
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    goto :goto_0

    .line 212
    :cond_2
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 6
    .param p1, "aggr"    # Lcom/google/common/collect/TreeMultiset$Aggregate;
    .param p2    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Aggregate;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;)J"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p2, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez p2, :cond_0

    .line 175
    const-wide/16 v2, 0x0

    .line 190
    :goto_0
    return-wide v2

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v2

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$500(Lcom/google/common/collect/TreeMultiset$AvlNode;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, "cmp":I
    if-gez v0, :cond_1

    .line 179
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    goto :goto_0

    .line 180
    :cond_1
    if-nez v0, :cond_2

    .line 181
    sget-object v1, Lcom/google/common/collect/TreeMultiset$4;->$SwitchMap$com$google$common$collect$BoundType:[I

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 187
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 183
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    int-to-long v2, v1

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 185
    :pswitch_1
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    goto :goto_0

    .line 190
    :cond_2
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J
    .locals 6
    .param p1, "aggr"    # Lcom/google/common/collect/TreeMultiset$Aggregate;

    .prologue
    .line 162
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 163
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    .line 164
    .local v2, "total":J
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 170
    :cond_1
    return-wide v2
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 107
    .local v0, "multiset":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 108
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez p0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static distinctElements(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .locals 1
    .param p0    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$400(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    goto :goto_0
.end method

.method private firstNode()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v4, 0x0

    .line 357
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 358
    .local v2, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-object v4

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 363
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, "endpoint":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v5

    # invokes: Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v3, v5, v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$800(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .line 365
    .local v1, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-eqz v1, :cond_0

    .line 368
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v5, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_2

    .line 370
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .line 375
    .end local v0    # "endpoint":Ljava/lang/Object;, "TE;"
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object v1, v4

    .end local v1    # "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_4
    move-object v4, v1

    goto :goto_0

    .line 373
    :cond_5
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .restart local v1    # "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    goto :goto_1
.end method

.method private lastNode()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v4, 0x0

    .line 379
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 380
    .local v2, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-object v4

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 385
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "endpoint":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v5

    # invokes: Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v3, v5, v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$1000(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .line 387
    .local v1, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-eqz v1, :cond_0

    .line 390
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v5, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_2

    .line 392
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$1100(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .line 397
    .end local v0    # "endpoint":Ljava/lang/Object;, "TE;"
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object v1, v4

    .end local v1    # "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_4
    move-object v4, v1

    goto :goto_0

    .line 395
    :cond_5
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$1100(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .restart local v1    # "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v4, 0x0

    .line 966
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 969
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 970
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const-class v2, Lcom/google/common/collect/AbstractSortedMultiset;

    const-string v3, "comparator"

    invoke-static {v2, v3}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 971
    const-class v2, Lcom/google/common/collect/TreeMultiset;

    const-string v3, "range"

    invoke-static {v2, v3}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v2

    invoke-static {v0}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 974
    const-class v2, Lcom/google/common/collect/TreeMultiset;

    const-string v3, "rootReference"

    invoke-static {v2, v3}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v2

    new-instance v3, Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v3, v4}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    invoke-virtual {v2, p0, v3}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 977
    new-instance v1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    .line 978
    .local v1, "header":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    const-class v2, Lcom/google/common/collect/TreeMultiset;

    const-string v3, "header"

    invoke-static {v2, v3}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 979
    invoke-static {v1, v1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 980
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 981
    return-void
.end method

.method private static successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TT;>;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, "a":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    .local p1, "b":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    # setter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$902(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 939
    # setter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {p1, p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$1102(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 940
    return-void
.end method

.method private static successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TT;>;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TT;>;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, "a":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    .local p1, "b":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    .local p2, "c":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 944
    invoke-static {p1, p2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 945
    return-void
.end method

.method private wrapEntry(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "baseEntry":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeMultiset$1;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 959
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 960
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 961
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 962
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    .line 246
    const-string v4, "occurrences"

    invoke-static {p2, v4}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 247
    if-nez p2, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 262
    :goto_0
    return v3

    .line 250
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v4, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 251
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v4}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 252
    .local v2, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 254
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    .line 255
    .local v0, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget-object v5, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v4, v0, v5}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 256
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v4, v2, v0}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    .end local v0    # "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    const/4 v4, 0x1

    new-array v1, v4, [I

    .line 260
    .local v1, "result":[I
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v2, v4, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    .line 261
    .restart local v0    # "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v4, v2, v0}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    aget v3, v1, v3

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v3, 0x0

    .line 231
    move-object v1, p1

    .line 232
    .local v1, "e":Ljava/lang/Object;, "TE;"
    :try_start_0
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v4}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 233
    .local v2, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 240
    .end local v2    # "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    :goto_0
    return v3

    .line 236
    .restart local v2    # "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->count(Ljava/util/Comparator;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 237
    .end local v2    # "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$3;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method distinctElements()I
    .locals 2

    .prologue
    .line 224
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->DISTINCT:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/GeneralRange;->upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 7
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v5, 0x0

    .line 267
    const-string v6, "occurrences"

    invoke-static {p2, v6}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 268
    if-nez p2, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    .line 287
    :cond_0
    :goto_0
    return v5

    .line 271
    :cond_1
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v6}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 272
    .local v4, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    const/4 v6, 0x1

    new-array v3, v6, [I

    .line 276
    .local v3, "result":[I
    move-object v1, p1

    .line 277
    .local v1, "e":Ljava/lang/Object;, "TE;"
    :try_start_0
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v6, v1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-virtual {v4, v6, v1, p2, v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 286
    .local v2, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v6, v4, v2}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    aget v5, v3, v5

    goto :goto_0

    .line 281
    .end local v2    # "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 292
    const-string v5, "count"

    invoke-static {p2, v5}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 293
    iget-object v5, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v5, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 294
    if-nez p2, :cond_1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 308
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v4

    .line 294
    goto :goto_0

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v5}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 299
    .local v2, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_3

    .line 300
    if-lez p2, :cond_0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 305
    :cond_3
    new-array v1, v3, [I

    .line 306
    .local v1, "result":[I
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    .line 307
    .local v0, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3, v2, v0}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    aget v4, v1, v4

    goto :goto_1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 313
    const-string v1, "newCount"

    invoke-static {p3, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 314
    const-string v1, "oldCount"

    invoke-static {p2, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 317
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 318
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v0, :cond_2

    .line 319
    if-nez p2, :cond_1

    .line 320
    if-lez p3, :cond_0

    .line 321
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    .line 331
    :cond_0
    :goto_0
    return v7

    :cond_1
    move v7, v8

    .line 325
    goto :goto_0

    .line 328
    :cond_2
    new-array v5, v7, [I

    .line 329
    .local v5, "result":[I
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v6

    .line 330
    .local v6, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v1, v0, v6}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    aget v1, v5, v8

    if-ne v1, p2, :cond_3

    move v1, v7

    :goto_1
    move v7, v1

    goto :goto_0

    :cond_3
    move v1, v8

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 219
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->SIZE:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/common/collect/BoundType;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/google/common/collect/BoundType;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractSortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/GeneralRange;->downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
