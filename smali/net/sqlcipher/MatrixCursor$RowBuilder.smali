.class public Lnet/sqlcipher/MatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sqlcipher/MatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field final synthetic this$0:Lnet/sqlcipher/MatrixCursor;


# direct methods
.method constructor <init>(Lnet/sqlcipher/MatrixCursor;II)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 195
    iput-object p1, p0, Lnet/sqlcipher/MatrixCursor$RowBuilder;->this$0:Lnet/sqlcipher/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p2, p0, Lnet/sqlcipher/MatrixCursor$RowBuilder;->index:I

    .line 197
    iput p3, p0, Lnet/sqlcipher/MatrixCursor$RowBuilder;->endIndex:I

    .line 198
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lnet/sqlcipher/MatrixCursor$RowBuilder;
    .locals 3
    .param p1, "columnValue"    # Ljava/lang/Object;

    .prologue
    .line 208
    iget v0, p0, Lnet/sqlcipher/MatrixCursor$RowBuilder;->index:I

    iget v1, p0, Lnet/sqlcipher/MatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 209
    new-instance v0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    const-string v1, "No more columns left."

    invoke-direct {v0, v1}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/MatrixCursor$RowBuilder;->this$0:Lnet/sqlcipher/MatrixCursor;

    # getter for: Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;
    invoke-static {v0}, Lnet/sqlcipher/MatrixCursor;->access$000(Lnet/sqlcipher/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lnet/sqlcipher/MatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sqlcipher/MatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 214
    return-object p0
.end method
