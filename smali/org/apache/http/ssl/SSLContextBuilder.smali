.class public Lorg/apache/http/ssl/SSLContextBuilder;
.super Ljava/lang/Object;
.source "SSLContextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;,
        Lorg/apache/http/ssl/SSLContextBuilder$TrustManagerDelegate;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private final keymanagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private protocol:Ljava/lang/String;

.field private secureRandom:Ljava/security/SecureRandom;

.field private final trustmanagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    .line 94
    return-void
.end method

.method public static create()Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lorg/apache/http/ssl/SSLContextBuilder;

    invoke-direct {v0}, Lorg/apache/http/ssl/SSLContextBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v1, p0, Lorg/apache/http/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 273
    .local v0, "sslcontext":Ljavax/net/ssl/SSLContext;
    iget-object v1, p0, Lorg/apache/http/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    iget-object v2, p0, Lorg/apache/http/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    iget-object v3, p0, Lorg/apache/http/ssl/SSLContextBuilder;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/http/ssl/SSLContextBuilder;->initSSLContext(Ljavax/net/ssl/SSLContext;Ljava/util/Collection;Ljava/util/Collection;Ljava/security/SecureRandom;)V

    .line 274
    return-object v0

    .line 271
    .end local v0    # "sslcontext":Ljavax/net/ssl/SSLContext;
    :cond_0
    const-string v1, "TLS"

    goto :goto_0
.end method

.method protected initSSLContext(Ljavax/net/ssl/SSLContext;Ljava/util/Collection;Ljava/util/Collection;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "sslcontext"    # Ljavax/net/ssl/SSLContext;
    .param p4, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/KeyManager;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/TrustManager;",
            ">;",
            "Ljava/security/SecureRandom;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .local p2, "keyManagers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/KeyManager;>;"
    .local p3, "trustManagers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/TrustManager;>;"
    const/4 v2, 0x0

    .line 264
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    move-object v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/TrustManager;

    :goto_1
    invoke-virtual {p1, v1, v0, p4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 268
    return-void

    :cond_0
    move-object v1, v2

    .line 264
    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public loadKeyMaterial(Ljava/io/File;[C[C)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "storePassword"    # [C
    .param p3, "keyPassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/io/File;[C[CLorg/apache/http/ssl/PrivateKeyStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyMaterial(Ljava/io/File;[C[CLorg/apache/http/ssl/PrivateKeyStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "storePassword"    # [C
    .param p3, "keyPassword"    # [C
    .param p4, "aliasStrategy"    # Lorg/apache/http/ssl/PrivateKeyStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    const-string v2, "Keystore file"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 220
    .local v0, "identityStore":Ljava/security/KeyStore;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 222
    .local v1, "instream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0, v1, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 226
    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/http/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[CLorg/apache/http/ssl/PrivateKeyStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v2

    return-object v2

    .line 224
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v2
.end method

.method public loadKeyMaterial(Ljava/net/URL;[C[C)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "storePassword"    # [C
    .param p3, "keyPassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/net/URL;[C[CLorg/apache/http/ssl/PrivateKeyStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyMaterial(Ljava/net/URL;[C[CLorg/apache/http/ssl/PrivateKeyStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "storePassword"    # [C
    .param p3, "keyPassword"    # [C
    .param p4, "aliasStrategy"    # Lorg/apache/http/ssl/PrivateKeyStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const-string v2, "Keystore URL"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 243
    .local v0, "identityStore":Ljava/security/KeyStore;
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 245
    .local v1, "instream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v1, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 249
    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/http/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[CLorg/apache/http/ssl/PrivateKeyStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v2

    return-object v2

    .line 247
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public loadKeyMaterial(Ljava/security/KeyStore;[C)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keyPassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[CLorg/apache/http/ssl/PrivateKeyStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyMaterial(Ljava/security/KeyStore;[CLorg/apache/http/ssl/PrivateKeyStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 8
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keyPassword"    # [C
    .param p3, "aliasStrategy"    # Lorg/apache/http/ssl/PrivateKeyStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 189
    .local v4, "kmfactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v4, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 190
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v5

    .line 191
    .local v5, "kms":[Ljavax/net/ssl/KeyManager;
    if-eqz v5, :cond_2

    .line 192
    if-eqz p3, :cond_1

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_1

    .line 194
    aget-object v3, v5, v1

    .line 195
    .local v3, "km":Ljavax/net/ssl/KeyManager;
    instance-of v7, v3, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v7, :cond_0

    .line 196
    new-instance v7, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;

    check-cast v3, Ljavax/net/ssl/X509ExtendedKeyManager;

    .end local v3    # "km":Ljavax/net/ssl/KeyManager;
    invoke-direct {v7, v3, p3}, Lorg/apache/http/ssl/SSLContextBuilder$KeyManagerDelegate;-><init>(Ljavax/net/ssl/X509ExtendedKeyManager;Lorg/apache/http/ssl/PrivateKeyStrategy;)V

    aput-object v7, v5, v1

    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    :cond_1
    move-object v0, v5

    .local v0, "arr$":[Ljavax/net/ssl/KeyManager;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v3, v0, v2

    .line 201
    .restart local v3    # "km":Ljavax/net/ssl/KeyManager;
    iget-object v7, p0, Lorg/apache/http/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "arr$":[Ljavax/net/ssl/KeyManager;
    .end local v2    # "i$":I
    .end local v3    # "km":Ljavax/net/ssl/KeyManager;
    .end local v6    # "len$":I
    :cond_2
    return-object p0
.end method

.method public loadTrustMaterial(Ljava/io/File;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/io/File;[C)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public loadTrustMaterial(Ljava/io/File;[C)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "storePassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/io/File;[CLorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public loadTrustMaterial(Ljava/io/File;[CLorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "storePassword"    # [C
    .param p3, "trustStrategy"    # Lorg/apache/http/ssl/TrustStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v2, "Truststore file"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 141
    .local v1, "trustStore":Ljava/security/KeyStore;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 143
    .local v0, "instream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v1, v0, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 147
    invoke-virtual {p0, v1, p3}, Lorg/apache/http/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v2

    return-object v2

    .line 145
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v2
.end method

.method public loadTrustMaterial(Ljava/net/URL;[C)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "storePassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/net/URL;[CLorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public loadTrustMaterial(Ljava/net/URL;[CLorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "storePassword"    # [C
    .param p3, "trustStrategy"    # Lorg/apache/http/ssl/TrustStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v2, "Truststore URL"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 167
    .local v1, "trustStore":Ljava/security/KeyStore;
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 169
    .local v0, "instream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1, v0, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 173
    invoke-virtual {p0, v1, p3}, Lorg/apache/http/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v2

    return-object v2

    .line 171
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public loadTrustMaterial(Ljava/security/KeyStore;Lorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 8
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .param p2, "trustStrategy"    # Lorg/apache/http/ssl/TrustStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 111
    .local v5, "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v5, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 112
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    .line 113
    .local v6, "tms":[Ljavax/net/ssl/TrustManager;
    if-eqz v6, :cond_2

    .line 114
    if-eqz p2, :cond_1

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_1

    .line 116
    aget-object v4, v6, v1

    .line 117
    .local v4, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v7, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_0

    .line 118
    new-instance v7, Lorg/apache/http/ssl/SSLContextBuilder$TrustManagerDelegate;

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    invoke-direct {v7, v4, p2}, Lorg/apache/http/ssl/SSLContextBuilder$TrustManagerDelegate;-><init>(Ljavax/net/ssl/X509TrustManager;Lorg/apache/http/ssl/TrustStrategy;)V

    aput-object v7, v6, v1

    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 124
    .restart local v4    # "tm":Ljavax/net/ssl/TrustManager;
    iget-object v7, p0, Lorg/apache/http/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_2
    return-object p0
.end method

.method public loadTrustMaterial(Lorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "trustStrategy"    # Lorg/apache/http/ssl/TrustStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/http/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/http/ssl/SSLContextBuilder;->secureRandom:Ljava/security/SecureRandom;

    .line 103
    return-object p0
.end method

.method public useProtocol(Ljava/lang/String;)Lorg/apache/http/ssl/SSLContextBuilder;
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/http/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    .line 98
    return-object p0
.end method
