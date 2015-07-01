.class public Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;
.super Ljava/lang/Object;
.source "TcmIdleTimerMonitor.java"

# interfaces
.implements Lcom/quicinc/tcmiface/DpmTcmIface;


# static fields
.field private static lockObj:Ljava/lang/Object;

.field private static mTcmRegisterMethod:Ljava/lang/reflect/Method;

.field private static tcmClient:Ljava/lang/Object;


# instance fields
.field private connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private final log:Lorg/apache/commons/logging/Log;

.field result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->tcmClient:Ljava/lang/Object;

    .line 48
    sput-object v0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->mTcmRegisterMethod:Ljava/lang/reflect/Method;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 9
    .param p1, "connManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->log:Lorg/apache/commons/logging/Log;

    .line 50
    iput-object v5, p0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->result:Ljava/lang/Object;

    .line 54
    sget-object v5, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 55
    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    sget-object v4, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->mTcmRegisterMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    sget-object v4, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->tcmClient:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 60
    :cond_0
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/tcmclient.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 63
    .local v3, "tcmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.qti.tcmclient.DpmTcmClient"

    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 64
    .local v2, "tcmClass":Ljava/lang/Class;
    const-string v4, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    .local v1, "mGetTcmMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->tcmClient:Ljava/lang/Object;

    .line 66
    const-string v4, "registerTcmMonitor"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/quicinc/tcmiface/DpmTcmIface;

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->mTcmRegisterMethod:Ljava/lang/reflect/Method;

    .line 68
    .end local v1    # "mGetTcmMethod":Ljava/lang/reflect/Method;
    .end local v2    # "tcmClass":Ljava/lang/Class;
    .end local v3    # "tcmClassLoader":Ldalvik/system/PathClassLoader;
    :cond_1
    sget-object v4, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->mTcmRegisterMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    sget-object v4, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->tcmClient:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 69
    sget-object v4, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->mTcmRegisterMethod:Ljava/lang/reflect/Method;

    sget-object v6, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->tcmClient:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load tcmclient "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 71
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized OnCloseIdleConn()V
    .locals 4

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/TcmIdleTimerMonitor;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
