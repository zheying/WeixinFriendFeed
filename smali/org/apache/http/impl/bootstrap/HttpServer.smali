.class public Lorg/apache/http/impl/bootstrap/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/bootstrap/HttpServer$Status;
    }
.end annotation


# instance fields
.field private final connectionFactory:Lorg/apache/http/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/HttpConnectionFactory",
            "<+",
            "Lorg/apache/http/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionLogger:Lorg/apache/http/ExceptionLogger;

.field private final httpService:Lorg/apache/http/protocol/HttpService;

.field private final ifAddress:Ljava/net/InetAddress;

.field private final listenerExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final port:I

.field private volatile requestListener:Lorg/apache/http/impl/bootstrap/RequestListener;

.field private volatile serverSocket:Ljava/net/ServerSocket;

.field private final serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private final socketConfig:Lorg/apache/http/config/SocketConfig;

.field private final sslSetupHandler:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

.field private final status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/bootstrap/HttpServer$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final workerExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final workerThreads:Ljava/lang/ThreadGroup;


# direct methods
.method constructor <init>(ILjava/net/InetAddress;Lorg/apache/http/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpConnectionFactory;Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;Lorg/apache/http/ExceptionLogger;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "ifAddress"    # Ljava/net/InetAddress;
    .param p3, "socketConfig"    # Lorg/apache/http/config/SocketConfig;
    .param p4, "serverSocketFactory"    # Ljavax/net/ServerSocketFactory;
    .param p5, "httpService"    # Lorg/apache/http/protocol/HttpService;
    .param p7, "sslSetupHandler"    # Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;
    .param p8, "exceptionLogger"    # Lorg/apache/http/ExceptionLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/InetAddress;",
            "Lorg/apache/http/config/SocketConfig;",
            "Ljavax/net/ServerSocketFactory;",
            "Lorg/apache/http/protocol/HttpService;",
            "Lorg/apache/http/HttpConnectionFactory",
            "<+",
            "Lorg/apache/http/impl/DefaultBHttpServerConnection;",
            ">;",
            "Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;",
            "Lorg/apache/http/ExceptionLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p6, "connectionFactory":Lorg/apache/http/HttpConnectionFactory;, "Lorg/apache/http/HttpConnectionFactory<+Lorg/apache/http/impl/DefaultBHttpServerConnection;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->port:I

    .line 81
    iput-object p2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    .line 82
    iput-object p3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    .line 83
    iput-object p4, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 84
    iput-object p5, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->httpService:Lorg/apache/http/protocol/HttpService;

    .line 85
    iput-object p6, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->connectionFactory:Lorg/apache/http/HttpConnectionFactory;

    .line 86
    iput-object p7, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    .line 87
    iput-object p8, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    .line 88
    new-instance v0, Lorg/apache/http/impl/bootstrap/ThreadFactoryImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP-listener-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/bootstrap/ThreadFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 90
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "HTTP-workers"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    .line 91
    new-instance v0, Lorg/apache/http/impl/bootstrap/ThreadFactoryImpl;

    const-string v1, "HTTP-worker"

    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/bootstrap/ThreadFactoryImpl;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->READY:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    .line 94
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 154
    return-void
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 98
    .local v0, "localSocket":Ljava/net/ServerSocket;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 107
    .local v0, "localSocket":Ljava/net/ServerSocket;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 110
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public shutdown(JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "gracePeriod"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/apache/http/impl/bootstrap/HttpServer;->stop()V

    .line 158
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/bootstrap/HttpServer;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v4

    .line 166
    .local v4, "runnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 167
    .local v3, "runnable":Ljava/lang/Runnable;
    instance-of v6, v3, Lorg/apache/http/impl/bootstrap/Worker;

    if-eqz v6, :cond_1

    move-object v5, v3

    .line 168
    check-cast v5, Lorg/apache/http/impl/bootstrap/Worker;

    .line 169
    .local v5, "worker":Lorg/apache/http/impl/bootstrap/Worker;
    invoke-virtual {v5}, Lorg/apache/http/impl/bootstrap/Worker;->getConnection()Lorg/apache/http/HttpServerConnection;

    move-result-object v0

    .line 171
    .local v0, "conn":Lorg/apache/http/HttpServerConnection;
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    invoke-interface {v6, v1}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    .line 161
    .end local v0    # "conn":Lorg/apache/http/HttpServerConnection;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "runnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v5    # "worker":Lorg/apache/http/impl/bootstrap/Worker;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 177
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "runnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_2
    return-void
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->READY:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->ACTIVE:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    iget v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->port:I

    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getBacklogSize()I

    move-result v2

    iget-object v3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/http/config/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    instance-of v0, v0, Ljavax/net/ssl/SSLServerSocket;

    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    invoke-interface {v1, v0}, Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;->initialize(Ljavax/net/ssl/SSLServerSocket;)V

    .line 125
    :cond_1
    new-instance v0, Lorg/apache/http/impl/bootstrap/RequestListener;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->connectionFactory:Lorg/apache/http/HttpConnectionFactory;

    iget-object v5, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    iget-object v6, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/impl/bootstrap/RequestListener;-><init>(Lorg/apache/http/config/SocketConfig;Ljava/net/ServerSocket;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpConnectionFactory;Lorg/apache/http/ExceptionLogger;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/http/impl/bootstrap/RequestListener;

    .line 132
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/http/impl/bootstrap/RequestListener;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 137
    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->ACTIVE:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    sget-object v4, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->STOPPING:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/http/impl/bootstrap/RequestListener;

    .line 139
    .local v1, "local":Lorg/apache/http/impl/bootstrap/RequestListener;
    if-eqz v1, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/http/impl/bootstrap/RequestListener;->terminate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->interrupt()V

    .line 147
    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 148
    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 150
    .end local v1    # "local":Lorg/apache/http/impl/bootstrap/RequestListener;
    :cond_1
    return-void

    .line 142
    .restart local v1    # "local":Lorg/apache/http/impl/bootstrap/RequestListener;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    invoke-interface {v2, v0}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
