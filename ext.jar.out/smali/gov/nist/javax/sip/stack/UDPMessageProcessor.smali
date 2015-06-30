.class public Lgov/nist/javax/sip/stack/UDPMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "UDPMessageProcessor.java"


# static fields
.field private static final HIGHWAT:I = 0x1388

.field private static final LOWAT:I = 0x9c4


# instance fields
.field protected isRunning:Z

.field protected messageChannels:Ljava/util/LinkedList;

.field protected messageQueue:Ljava/util/LinkedList;

.field private port:I

.field protected sock:Ljava/net/DatagramSocket;

.field protected threadPoolSize:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v1, "udp"

    invoke-direct {p0, p1, p3, v1, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 101
    iput-object p2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 103
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 105
    iput p3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->port:I

    .line 107
    :try_start_0
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v1

    invoke-interface {v1, p3, p1}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .line 110
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getReceiveUdpBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 111
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getSendUdpBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    .line 117
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "::0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_2
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/net/SocketException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 4
    .param p1, "targetHostPort"    # Lgov/nist/core/HostPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v0, v1, v2, v3, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    return-object v0
.end method

.method public createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v0, p1, p2, v1, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    return-object v0
.end method

.method public getDefaultTargetPort()I
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0x13c4

    return v0
.end method

.method public getMaximumMessageSize()I
    .locals 1

    .prologue
    .line 338
    const/16 v0, 0x2000

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->port:I

    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const-string v0, "udp"

    return-object v0
.end method

.method public inUse()Z
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 166
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v11, v11, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 170
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v11, v11, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ge v6, v11, :cond_0

    .line 171
    new-instance v3, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object/from16 v0, p0

    invoke-direct {v3, v11, v0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    .line 173
    .local v3, "channel":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "channel":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .end local v6    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v11

    invoke-virtual {v11}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v9

    .line 182
    .local v9, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-eqz v11, :cond_8

    .line 186
    :try_start_0
    invoke-virtual {v9}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v11}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v2

    .line 189
    .local v2, "bufsize":I
    new-array v7, v2, [B

    .line 190
    .local v7, "message":[B
    new-instance v8, Ljava/net/DatagramPacket;

    invoke-direct {v8, v7, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 191
    .local v8, "packet":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v11, v11, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    if-eqz v11, :cond_5

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    const/16 v12, 0x1388

    if-lt v11, v12, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v11

    const-string v12, "Dropping message -- queue length exceeded"

    invoke-interface {v11, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    .end local v2    # "bufsize":I
    .end local v7    # "message":[B
    .end local v8    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v11

    goto :goto_1

    .line 211
    .restart local v2    # "bufsize":I
    .restart local v7    # "message":[B
    .restart local v8    # "packet":Ljava/net/DatagramPacket;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    const/16 v12, 0x9c4

    if-le v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    const/16 v12, 0x1388

    if-ge v11, v12, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    add-int/lit16 v11, v11, -0x9c4

    int-to-float v11, v11

    const v12, 0x451c4000    # 2500.0f

    div-float v10, v11, v12

    .line 214
    .local v10, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v10

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    cmpl-double v11, v12, v14

    if-lez v11, :cond_4

    const/4 v4, 0x1

    .line 215
    .local v4, "decision":Z
    :goto_2
    if-eqz v4, :cond_5

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dropping message with probability  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v10

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1

    .line 248
    .end local v2    # "bufsize":I
    .end local v4    # "decision":Z
    .end local v7    # "message":[B
    .end local v8    # "packet":Ljava/net/DatagramPacket;
    .end local v10    # "threshold":F
    :catch_1
    move-exception v5

    .line 249
    .local v5, "ex":Ljava/net/SocketException;
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 250
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v11

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v11

    const-string v12, "UDPMessageProcessor: Stopping"

    invoke-interface {v11, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v12

    .line 256
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit v12

    goto/16 :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 214
    .end local v5    # "ex":Ljava/net/SocketException;
    .restart local v2    # "bufsize":I
    .restart local v7    # "message":[B
    .restart local v8    # "packet":Ljava/net/DatagramPacket;
    .restart local v10    # "threshold":F
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 231
    .end local v10    # "threshold":F
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v11, v11, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v12
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 240
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 242
    monitor-exit v12

    goto/16 :goto_1

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 258
    .end local v2    # "bufsize":I
    .end local v7    # "message":[B
    .end local v8    # "packet":Ljava/net/DatagramPacket;
    :catch_2
    move-exception v5

    .line 259
    .local v5, "ex":Ljava/io/IOException;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 260
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 262
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v11

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v11

    const-string v12, "UDPMessageProcessor: Got an IO Exception"

    invoke-interface {v11, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 244
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v2    # "bufsize":I
    .restart local v7    # "message":[B
    .restart local v8    # "packet":Ljava/net/DatagramPacket;
    :cond_6
    :try_start_5
    new-instance v11, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object/from16 v0, p0

    invoke-direct {v11, v12, v0, v8}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 264
    .end local v2    # "bufsize":I
    .end local v7    # "message":[B
    .end local v8    # "packet":Ljava/net/DatagramPacket;
    :catch_3
    move-exception v5

    .line 265
    .local v5, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 266
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v11

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v11

    const-string v12, "UDPMessageProcessor: Unexpected Exception - quitting"

    invoke-interface {v11, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 268
    :cond_7
    invoke-static {v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 272
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_8
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 151
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 152
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 155
    const-string v1, "UDPMessageProcessorThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 157
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 280
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 281
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 282
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
