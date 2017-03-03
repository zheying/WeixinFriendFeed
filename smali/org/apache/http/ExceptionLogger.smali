.class public interface abstract Lorg/apache/http/ExceptionLogger;
.super Ljava/lang/Object;
.source "ExceptionLogger.java"


# static fields
.field public static final NO_OP:Lorg/apache/http/ExceptionLogger;

.field public static final STD_ERR:Lorg/apache/http/ExceptionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/http/ExceptionLogger$1;

    invoke-direct {v0}, Lorg/apache/http/ExceptionLogger$1;-><init>()V

    sput-object v0, Lorg/apache/http/ExceptionLogger;->NO_OP:Lorg/apache/http/ExceptionLogger;

    .line 42
    new-instance v0, Lorg/apache/http/ExceptionLogger$2;

    invoke-direct {v0}, Lorg/apache/http/ExceptionLogger$2;-><init>()V

    sput-object v0, Lorg/apache/http/ExceptionLogger;->STD_ERR:Lorg/apache/http/ExceptionLogger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/Exception;)V
.end method
