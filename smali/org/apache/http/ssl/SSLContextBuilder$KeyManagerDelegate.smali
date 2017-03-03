.class Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SSLContextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/ssl/SSLContextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyManagerDelegate"
.end annotation


# instance fields
.field private final aliasStrategy:Lorg/apache/http/ssl/PrivateKeyStrategy;

.field private final keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509ExtendedKeyManager;Lorg/apache/http/ssl/PrivateKeyStrategy;)V
    .locals 0
    .param p1, "keyManager"    # Ljavax/net/ssl/X509ExtendedKeyManager;
    .param p2, "aliasStrategy"    # Lorg/apache/http/ssl/PrivateKeyStrategy;

    .prologue
    .line 315
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 316
    iput-object p1, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 317
    iput-object p2, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/http/ssl/PrivateKeyStrategy;

    .line 318
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object v0

    .line 358
    .local v0, "validAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/ssl/PrivateKeyDetails;>;"
    iget-object v1, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/http/ssl/PrivateKeyStrategy;

    invoke-interface {v1, v0, p3}, Lorg/apache/http/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "sslEngine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object v0

    .line 388
    .local v0, "validAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/ssl/PrivateKeyDetails;>;"
    iget-object v1, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/http/ssl/PrivateKeyStrategy;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/http/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "sslEngine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object v0

    .line 395
    .local v0, "validAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/ssl/PrivateKeyDetails;>;"
    iget-object v1, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/http/ssl/PrivateKeyStrategy;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/http/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object v0

    .line 371
    .local v0, "validAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/ssl/PrivateKeyDetails;>;"
    iget-object v1, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/http/ssl/PrivateKeyStrategy;

    invoke-interface {v1, v0, p3}, Lorg/apache/http/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;
    .locals 12
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/ssl/PrivateKeyDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v9, "validAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/ssl/PrivateKeyDetails;>;"
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v6, v2, v5

    .line 330
    .local v6, "keyType":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v10, v6, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "aliases":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 332
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v0, v3, v4

    .line 333
    .local v0, "alias":Ljava/lang/String;
    new-instance v10, Lorg/apache/http/ssl/PrivateKeyDetails;

    iget-object v11, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v11, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v11

    invoke-direct {v10, v6, v11}, Lorg/apache/http/ssl/PrivateKeyDetails;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 329
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 338
    .end local v1    # "aliases":[Ljava/lang/String;
    .end local v6    # "keyType":Ljava/lang/String;
    :cond_1
    return-object v9
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v0, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;
    .locals 8
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/ssl/PrivateKeyDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v5, "validAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/ssl/PrivateKeyDetails;>;"
    iget-object v6, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v6, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "aliases":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 346
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 347
    .local v0, "alias":Ljava/lang/String;
    new-instance v6, Lorg/apache/http/ssl/PrivateKeyDetails;

    iget-object v7, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v7, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lorg/apache/http/ssl/PrivateKeyDetails;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
