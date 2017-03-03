.class public final Lorg/apache/http/entity/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final APPLICATION_ATOM_XML:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_FORM_URLENCODED:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_JSON:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_OCTET_STREAM:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_SVG_XML:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_XHTML_XML:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_XML:Lorg/apache/http/entity/ContentType;

.field public static final DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

.field public static final DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

.field public static final MULTIPART_FORM_DATA:Lorg/apache/http/entity/ContentType;

.field public static final TEXT_HTML:Lorg/apache/http/entity/ContentType;

.field public static final TEXT_PLAIN:Lorg/apache/http/entity/ContentType;

.field public static final TEXT_XML:Lorg/apache/http/entity/ContentType;

.field public static final WILDCARD:Lorg/apache/http/entity/ContentType;

.field private static final serialVersionUID:J = -0x6bcff2af98b1a2b8L


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final mimeType:Ljava/lang/String;

.field private final params:[Lorg/apache/http/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string v0, "application/atom+xml"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_ATOM_XML:Lorg/apache/http/entity/ContentType;

    .line 71
    const-string v0, "application/x-www-form-urlencoded"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/http/entity/ContentType;

    .line 73
    const-string v0, "application/json"

    sget-object v2, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_JSON:Lorg/apache/http/entity/ContentType;

    .line 75
    const-string v2, "application/octet-stream"

    move-object v0, v1

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {v2, v0}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/http/entity/ContentType;

    .line 77
    const-string v0, "application/svg+xml"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_SVG_XML:Lorg/apache/http/entity/ContentType;

    .line 79
    const-string v0, "application/xhtml+xml"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_XHTML_XML:Lorg/apache/http/entity/ContentType;

    .line 81
    const-string v0, "application/xml"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_XML:Lorg/apache/http/entity/ContentType;

    .line 83
    const-string v0, "multipart/form-data"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->MULTIPART_FORM_DATA:Lorg/apache/http/entity/ContentType;

    .line 85
    const-string v0, "text/html"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->TEXT_HTML:Lorg/apache/http/entity/ContentType;

    .line 87
    const-string v0, "text/plain"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->TEXT_PLAIN:Lorg/apache/http/entity/ContentType;

    .line 89
    const-string v0, "text/xml"

    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->TEXT_XML:Lorg/apache/http/entity/ContentType;

    .line 91
    const-string v0, "*/*"

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->WILDCARD:Lorg/apache/http/entity/ContentType;

    .line 95
    sget-object v0, Lorg/apache/http/entity/ContentType;->TEXT_PLAIN:Lorg/apache/http/entity/ContentType;

    sput-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

    .line 96
    sget-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/http/entity/ContentType;

    sput-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/http/entity/ContentType;->mimeType:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    .line 108
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/apache/http/NameValuePair;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "params"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/apache/http/entity/ContentType;->mimeType:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    .line 116
    iput-object p3, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    .line 117
    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v1, Lorg/apache/http/entity/ContentType;

    const/4 v0, 0x0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p1}, Lorg/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 180
    const-string v1, "MIME type"

    invoke-static {p0, v1}, Lorg/apache/http/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/entity/ContentType;->valid(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MIME type may not contain reserved characters"

    invoke-static {v1, v2}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 182
    new-instance v1, Lorg/apache/http/entity/ContentType;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static varargs create(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/entity/ContentType;
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "params"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    .line 248
    const-string v1, "MIME type"

    invoke-static {p0, v1}, Lorg/apache/http/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/entity/ContentType;->valid(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MIME type may not contain reserved characters"

    invoke-static {v1, v2}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 250
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/entity/ContentType;

    move-result-object v1

    return-object v1
.end method

.method private static create(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/entity/ContentType;
    .locals 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "params"    # [Lorg/apache/http/NameValuePair;
    .param p2, "strict"    # Z

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "charset":Ljava/nio/charset/Charset;
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 219
    .local v5, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 220
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 223
    :try_start_0
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    .end local v5    # "param":Lorg/apache/http/NameValuePair;
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    new-instance v7, Lorg/apache/http/entity/ContentType;

    if-eqz p1, :cond_2

    array-length v8, p1

    if-lez v8, :cond_2

    .end local p1    # "params":[Lorg/apache/http/NameValuePair;
    :goto_1
    invoke-direct {v7, p0, v1, p1}, Lorg/apache/http/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/apache/http/NameValuePair;)V

    return-object v7

    .line 224
    .restart local v5    # "param":Lorg/apache/http/NameValuePair;
    .restart local v6    # "s":Ljava/lang/String;
    .restart local p1    # "params":[Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v2

    .line 225
    .local v2, "ex":Ljava/nio/charset/UnsupportedCharsetException;
    if-eqz p2, :cond_0

    .line 226
    throw v2

    .line 218
    .end local v2    # "ex":Ljava/nio/charset/UnsupportedCharsetException;
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v5    # "param":Lorg/apache/http/NameValuePair;
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method private static create(Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/entity/ContentType;
    .locals 2
    .param p0, "helem"    # Lorg/apache/http/HeaderElement;
    .param p1, "strict"    # Z

    .prologue
    .line 213
    invoke-interface {p0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;
    .locals 4
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 291
    if-nez p0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v2

    .line 294
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 295
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 296
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 297
    .local v0, "elements":[Lorg/apache/http/HeaderElement;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 298
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/http/entity/ContentType;->create(Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLenient(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;
    .locals 6
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v3, 0x0

    .line 315
    if-nez p0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-object v3

    .line 318
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    .line 319
    .local v2, "header":Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    .line 321
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 322
    .local v0, "elements":[Lorg/apache/http/HeaderElement;
    array-length v4, v0

    if-lez v4, :cond_0

    .line 323
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/http/entity/ContentType;->create(Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/entity/ContentType;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 325
    .end local v0    # "elements":[Lorg/apache/http/HeaderElement;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "ex":Lorg/apache/http/ParseException;
    goto :goto_0
.end method

.method public static getLenientOrDefault(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    .line 361
    .local v0, "contentType":Lorg/apache/http/entity/ContentType;
    if-eqz v0, :cond_0

    .end local v0    # "contentType":Lorg/apache/http/entity/ContentType;
    :goto_0
    return-object v0

    .restart local v0    # "contentType":Lorg/apache/http/entity/ContentType;
    :cond_0
    sget-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

    goto :goto_0
.end method

.method public static getOrDefault(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    .line 346
    .local v0, "contentType":Lorg/apache/http/entity/ContentType;
    if-eqz v0, :cond_0

    .end local v0    # "contentType":Lorg/apache/http/entity/ContentType;
    :goto_0
    return-object v0

    .restart local v0    # "contentType":Lorg/apache/http/entity/ContentType;
    :cond_0
    sget-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 265
    const-string v3, "Content type"

    invoke-static {p0, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 267
    .local v0, "buf":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 268
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v4, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 269
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    sget-object v3, Lorg/apache/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 270
    .local v2, "elements":[Lorg/apache/http/HeaderElement;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 271
    aget-object v3, v2, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/http/entity/ContentType;->create(Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/entity/ContentType;

    move-result-object v3

    return-object v3

    .line 273
    :cond_0
    new-instance v3, Lorg/apache/http/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid content type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static valid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    .local v0, "ch":C
    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1

    .line 165
    :cond_0
    const/4 v2, 0x0

    .line 168
    .end local v0    # "ch":C
    :goto_1
    return v2

    .line 162
    .restart local v0    # "ch":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "ch":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 131
    const-string v5, "Parameter name"

    invoke-static {p1, v5}, Lorg/apache/http/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 132
    iget-object v5, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    if-nez v5, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v4

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    .local v0, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 136
    .local v3, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 150
    .local v0, "buf":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    if-eqz v1, :cond_1

    .line 152
    const-string v1, "; "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 153
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

    iget-object v2, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 158
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 154
    :cond_1
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public withCharset(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public varargs withParameters([Lorg/apache/http/NameValuePair;)Lorg/apache/http/entity/ContentType;
    .locals 10
    .param p1, "params"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    .line 397
    array-length v7, p1

    if-nez v7, :cond_0

    .line 416
    .end local p0    # "this":Lorg/apache/http/entity/ContentType;
    :goto_0
    return-object p0

    .line 400
    .restart local p0    # "this":Lorg/apache/http/entity/ContentType;
    :cond_0
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 401
    .local v6, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    if-eqz v7, :cond_1

    .line 402
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    .local v0, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 403
    .local v5, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 406
    .end local v0    # "arr$":[Lorg/apache/http/NameValuePair;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "param":Lorg/apache/http/NameValuePair;
    :cond_1
    move-object v0, p1

    .restart local v0    # "arr$":[Lorg/apache/http/NameValuePair;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 407
    .restart local v5    # "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 409
    .end local v5    # "param":Lorg/apache/http/NameValuePair;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    .local v4, "newParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v7, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    if-eqz v7, :cond_3

    const-string v7, "charset"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 411
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "charset"

    iget-object v9, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_3
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 414
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 416
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/apache/http/NameValuePair;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/http/NameValuePair;

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/entity/ContentType;

    move-result-object p0

    goto/16 :goto_0
.end method
