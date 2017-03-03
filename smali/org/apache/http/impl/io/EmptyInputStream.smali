.class public final Lorg/apache/http/impl/io/EmptyInputStream;
.super Ljava/io/InputStream;
.source "EmptyInputStream.java"


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/io/EmptyInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/http/impl/io/EmptyInputStream;

    invoke-direct {v0}, Lorg/apache/http/impl/io/EmptyInputStream;-><init>()V

    sput-object v0, Lorg/apache/http/impl/io/EmptyInputStream;->INSTANCE:Lorg/apache/http/impl/io/EmptyInputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readLimit"    # I

    .prologue
    .line 53
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 67
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method
