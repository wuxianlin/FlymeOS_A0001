.class Lgov/nist/javax/sip/DialogFilter;
.super Ljava/lang/Object;
.source "DialogFilter.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerRequestInterface;
.implements Lgov/nist/javax/sip/stack/ServerResponseInterface;


# instance fields
.field protected listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field protected transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 0
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 100
    return-void
.end method

.method private sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 141
    const/16 v3, 0x190

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 142
    .local v2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    if-eqz p3, :cond_0

    .line 143
    invoke-virtual {v2, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 145
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 149
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 152
    :cond_2
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 153
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 157
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method private sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 172
    const/16 v3, 0x1e1

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 175
    .local v2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 176
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 180
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 183
    :cond_1
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 184
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 187
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 188
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method private sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 202
    const/16 v3, 0x1e2

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 204
    .local v2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 205
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 209
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 210
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 211
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 214
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 215
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method private sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 110
    const/16 v4, 0x1eb

    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 111
    .local v3, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    .line 112
    .local v2, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 116
    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 117
    .local v1, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 118
    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 119
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 122
    :cond_1
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 123
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Problem sending error response"

    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 127
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method private sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .prologue
    .line 230
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Sending 500 response for out of sequence message"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 233
    :cond_0
    const/16 v4, 0x1f4

    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 234
    .local v3, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    const-string v4, "Request out of order"

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 236
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    .line 237
    .local v2, "serverHeader":Ljavax/sip/header/ServerHeader;
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 241
    .end local v2    # "serverHeader":Ljavax/sip/header/ServerHeader;
    :cond_1
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 242
    .local v1, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 243
    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 244
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 245
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 246
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Problem sending response"

    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 250
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method


# virtual methods
.method public getProcessingInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    const/4 v0, 0x0

    return-object v0
.end method

.method public processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 44
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "incomingMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "PROCESSING INCOMING REQUEST "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " transactionChannel = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " listening point = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ":"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 267
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Dropping message: No listening point registered!"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1109
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v34

    check-cast v34, Lgov/nist/javax/sip/SipStackImpl;

    .line 276
    .local v34, "sipStack":Lgov/nist/javax/sip/SipStackImpl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v32

    .line 277
    .local v32, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v32, :cond_3

    .line 278
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_1

    .line 279
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "No provider - dropping !!"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_3
    if-nez v34, :cond_4

    .line 284
    const-string v39, "Egads! no sip stack!"

    invoke-static/range {v39 .. v39}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    .line 288
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v37, v0

    check-cast v37, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 289
    .local v37, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v37, :cond_5

    .line 290
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_5

    .line 291
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "transaction state = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 294
    :cond_5
    const/16 v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v14

    .line 295
    .local v14, "dialogId":Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v11

    .line 301
    .local v11, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_b

    .line 302
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getMyContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v7

    .line 303
    .local v7, "contact":Lgov/nist/javax/sip/header/Contact;
    if-eqz v7, :cond_b

    .line 304
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v39

    check-cast v39, Lgov/nist/javax/sip/address/SipUri;

    move-object/from16 v10, v39

    check-cast v10, Lgov/nist/javax/sip/address/SipUri;

    .line 305
    .local v10, "contactUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v10}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v20

    .line 306
    .local v20, "ipAddress":Ljava/lang/String;
    invoke-virtual {v10}, Lgov/nist/javax/sip/address/SipUri;->getPort()I

    move-result v8

    .line 307
    .local v8, "contactPort":I
    invoke-virtual {v10}, Lgov/nist/javax/sip/address/SipUri;->getTransportParam()Ljava/lang/String;

    move-result-object v9

    .line 308
    .local v9, "contactTransport":Ljava/lang/String;
    if-nez v9, :cond_6

    .line 309
    const-string v9, "udp"

    .line 310
    :cond_6
    const/16 v39, -0x1

    move/from16 v0, v39

    if-ne v8, v0, :cond_8

    .line 311
    const-string v39, "udp"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    const-string v39, "tcp"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_c

    .line 312
    :cond_7
    const/16 v8, 0x13c4

    .line 319
    :cond_8
    :goto_1
    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v39

    move/from16 v0, v39

    if-eq v8, v0, :cond_b

    .line 322
    :cond_9
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_a

    .line 323
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "nulling dialog -- listening point mismatch!  "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "  lp port = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 328
    :cond_a
    const/4 v11, 0x0

    .line 343
    .end local v7    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v8    # "contactPort":I
    .end local v9    # "contactTransport":Ljava/lang/String;
    .end local v10    # "contactUri":Lgov/nist/javax/sip/address/SipUri;
    .end local v20    # "ipAddress":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v39

    if-eqz v39, :cond_d

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v39

    if-eqz v39, :cond_d

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v39

    if-nez v39, :cond_d

    .line 346
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v33

    .line 348
    .local v33, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v33, :cond_d

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    .line 314
    .end local v33    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v7    # "contact":Lgov/nist/javax/sip/header/Contact;
    .restart local v8    # "contactPort":I
    .restart local v9    # "contactTransport":Ljava/lang/String;
    .restart local v10    # "contactUri":Lgov/nist/javax/sip/address/SipUri;
    .restart local v20    # "ipAddress":Ljava/lang/String;
    :cond_c
    const/16 v8, 0x13c5

    goto/16 :goto_1

    .line 354
    .end local v7    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v8    # "contactPort":I
    .end local v9    # "contactTransport":Ljava/lang/String;
    .end local v10    # "contactUri":Lgov/nist/javax/sip/address/SipUri;
    .end local v20    # "ipAddress":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_e

    .line 355
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "dialogId = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "dialog = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 368
    :cond_e
    const-string v39, "Route"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v39

    if-eqz v39, :cond_10

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v39

    if-eqz v39, :cond_10

    .line 369
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v29

    .line 370
    .local v29, "routes":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual/range {v29 .. v29}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v28

    check-cast v28, Lgov/nist/javax/sip/header/Route;

    .line 371
    .local v28, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual/range {v28 .. v28}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v38

    check-cast v38, Lgov/nist/javax/sip/address/SipUri;

    .line 373
    .local v38, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lgov/nist/core/HostPort;->hasPort()Z

    move-result v39

    if-eqz v39, :cond_11

    .line 374
    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lgov/nist/core/HostPort;->getPort()I

    move-result v26

    .line 381
    .local v26, "port":I
    :goto_2
    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v19

    .line 382
    .local v19, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/ListeningPointImpl;->getSentBy()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v39

    move/from16 v0, v26

    move/from16 v1, v39

    if-ne v0, v1, :cond_10

    .line 385
    invoke-virtual/range {v29 .. v29}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_13

    .line 386
    const-string v39, "Route"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    .line 392
    .end local v19    # "host":Ljava/lang/String;
    .end local v26    # "port":I
    .end local v28    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v29    # "routes":Lgov/nist/javax/sip/header/RouteList;
    .end local v38    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_10
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "REFER"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_16

    if-eqz v11, :cond_16

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v39

    if-eqz v39, :cond_16

    .line 398
    const-string v39, "Refer-To"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v31

    check-cast v31, Ljavax/sip/header/ReferToHeader;

    .line 399
    .local v31, "sipHeader":Ljavax/sip/header/ReferToHeader;
    if-nez v31, :cond_14

    .line 400
    const-string v39, "Refer-To header is missing"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/DialogFilter;->sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    .end local v31    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    .restart local v28    # "route":Lgov/nist/javax/sip/header/Route;
    .restart local v29    # "routes":Lgov/nist/javax/sip/header/RouteList;
    .restart local v38    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v39

    const-string v40, "TLS"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_12

    .line 377
    const/16 v26, 0x13c5

    .restart local v26    # "port":I
    goto/16 :goto_2

    .line 379
    .end local v26    # "port":I
    :cond_12
    const/16 v26, 0x13c4

    .restart local v26    # "port":I
    goto/16 :goto_2

    .line 388
    .restart local v19    # "host":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v29 .. v29}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    goto :goto_3

    .line 410
    .end local v19    # "host":Ljava/lang/String;
    .end local v26    # "port":I
    .end local v28    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v29    # "routes":Lgov/nist/javax/sip/header/RouteList;
    .end local v38    # "uri":Lgov/nist/javax/sip/address/SipUri;
    .restart local v31    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    :cond_14
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v22

    .line 411
    .local v22, "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v22, :cond_18

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v39

    if-eqz v39, :cond_18

    .line 412
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v21

    check-cast v21, Lgov/nist/javax/sip/message/SIPRequest;

    .line 413
    .local v21, "lastRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, v22

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move/from16 v39, v0

    if-eqz v39, :cond_15

    .line 414
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v39

    if-nez v39, :cond_18

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "INVITE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_18

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    .line 419
    :cond_15
    move-object/from16 v0, v22

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move/from16 v39, v0

    if-eqz v39, :cond_18

    .line 420
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v12

    .line 421
    .local v12, "cseqno":J
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v23

    .line 422
    .local v23, "method":Ljava/lang/String;
    const-string v39, "INVITE"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_18

    invoke-virtual {v11, v12, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v39

    if-nez v39, :cond_18

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    .line 429
    .end local v12    # "cseqno":J
    .end local v21    # "lastRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v22    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v23    # "method":Ljava/lang/String;
    .end local v31    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "UPDATE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_17

    .line 435
    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v39

    if-eqz v39, :cond_18

    if-nez v11, :cond_18

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    .line 439
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "ACK"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_29

    .line 441
    if-eqz v37, :cond_1c

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v39

    if-eqz v39, :cond_1c

    .line 444
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_18

    .line 445
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Processing ACK for INVITE Tx "

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 858
    :cond_18
    :goto_4
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_19

    .line 859
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "CHECK FOR OUT OF SEQ MESSAGE "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " transaction "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 863
    :cond_19
    if-eqz v11, :cond_49

    if-eqz v37, :cond_49

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "BYE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_49

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "CANCEL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_49

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "ACK"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_49

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "PRACK"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_49

    .line 868
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v39

    if-nez v39, :cond_48

    .line 878
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 879
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dropping out of sequence message "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 887
    :cond_1a
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v40

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v42

    cmp-long v39, v40, v42

    if-ltz v39, :cond_1

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v39

    sget-object v40, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_1b

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v39

    sget-object v40, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_1

    .line 891
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    .line 448
    :cond_1c
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_1d

    .line 449
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Processing ACK for dialog "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 451
    :cond_1d
    if-nez v11, :cond_21

    .line 452
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_1e

    .line 453
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dialog does not exist "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " isServerTransaction = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 458
    :cond_1e
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v35

    .line 460
    .local v35, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v35, :cond_1f

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v39

    if-eqz v39, :cond_1f

    .line 461
    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    .line 469
    :cond_1f
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v6

    .line 475
    .local v6, "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v6, :cond_18

    .line 476
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_20

    .line 477
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Found Tx pending ACK"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 479
    :cond_20
    :try_start_0
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    .line 480
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 481
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 482
    :catch_0
    move-exception v18

    .line 483
    .local v18, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_1

    .line 484
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Problem terminating transaction"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 492
    .end local v6    # "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v35    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_21
    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v39

    if-nez v39, :cond_26

    .line 493
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v39

    if-nez v39, :cond_23

    .line 494
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_22

    .line 495
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dialog exists with loose dialog validation "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " isServerTransaction = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " dialog = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 502
    :cond_22
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v35

    .line 504
    .restart local v35    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v35, :cond_18

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v39

    if-eqz v39, :cond_18

    .line 505
    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    goto/16 :goto_4

    .line 509
    .end local v35    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_23
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_24

    .line 510
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Dropping ACK - cannot find a transaction or dialog"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 513
    :cond_24
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v6

    .line 515
    .restart local v6    # "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v6, :cond_1

    .line 516
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_25

    .line 517
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Found Tx pending ACK"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 519
    :cond_25
    :try_start_1
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    .line 520
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 521
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 522
    :catch_1
    move-exception v18

    .line 523
    .restart local v18    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_1

    .line 524
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Problem terminating transaction"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 532
    .end local v6    # "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v18    # "ex":Ljava/lang/Exception;
    :cond_26
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    .line 533
    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 535
    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "INVITE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_27

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v39

    if-eqz v39, :cond_27

    .line 538
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 545
    :cond_27
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    move/from16 v39, v0

    if-eqz v39, :cond_28

    .line 547
    :try_start_2
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 548
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->scheduleAckRemoval()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 549
    :catch_2
    move-exception v39

    goto/16 :goto_4

    .line 553
    :cond_28
    const/16 v39, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setMapped(Z)V

    goto/16 :goto_4

    .line 559
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "PRACK"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_31

    .line 568
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_2a

    .line 569
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Processing PRACK for dialog "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 571
    :cond_2a
    if-nez v11, :cond_2d

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v39

    if-eqz v39, :cond_2d

    .line 572
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_2b

    .line 573
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dialog does not exist "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " isServerTransaction = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 578
    :cond_2b
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_2c

    .line 579
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Sending 481 for PRACK - automatic dialog support is enabled -- cant find dialog!"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 584
    :cond_2c
    const/16 v39, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v24

    .line 588
    .local v24, "notExist":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_3
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_3
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_3

    .line 592
    :goto_5
    if-eqz v37, :cond_1

    .line 593
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 594
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_0

    .line 589
    :catch_3
    move-exception v15

    .line 590
    .local v15, "e":Ljavax/sip/SipException;
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "error sending response"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 598
    .end local v15    # "e":Ljavax/sip/SipException;
    .end local v24    # "notExist":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_2d
    if-eqz v11, :cond_30

    .line 599
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v39

    if-nez v39, :cond_2f

    .line 600
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_2e

    .line 601
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Dropping out of sequence PRACK "

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 602
    :cond_2e
    if-eqz v37, :cond_1

    .line 603
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 604
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_0

    .line 609
    :cond_2f
    :try_start_4
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 610
    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 611
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 612
    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 613
    :catch_4
    move-exception v18

    .line 614
    .restart local v18    # "ex":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 618
    .end local v18    # "ex":Ljava/lang/Exception;
    :cond_30
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_18

    .line 619
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Processing PRACK without a DIALOG -- this must be a proxy element"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 623
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "BYE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_38

    .line 625
    if-eqz v11, :cond_34

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v39

    if-nez v39, :cond_34

    .line 626
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_32

    .line 627
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dropping out of sequence BYE "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 631
    :cond_32
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v40

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v42

    cmp-long v39, v40, v42

    if-ltz v39, :cond_33

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v39

    sget-object v40, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_33

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 638
    :cond_33
    if-eqz v37, :cond_1

    .line 639
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .line 642
    :cond_34
    if-nez v11, :cond_36

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v39

    if-eqz v39, :cond_36

    .line 652
    const/16 v39, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v27

    .line 654
    .local v27, "response":Lgov/nist/javax/sip/message/SIPResponse;
    const-string v39, "Dialog Not Found"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_35

    .line 657
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "dropping request -- automatic dialog support enabled and dialog does not exist!"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 661
    :cond_35
    :try_start_5
    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_5
    .catch Ljavax/sip/SipException; {:try_start_5 .. :try_end_5} :catch_5

    .line 666
    :goto_6
    if-eqz v37, :cond_1

    .line 667
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 668
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 669
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 662
    :catch_5
    move-exception v18

    .line 663
    .local v18, "ex":Ljavax/sip/SipException;
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Error in sending response"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    .line 679
    .end local v18    # "ex":Ljavax/sip/SipException;
    .end local v27    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_36
    if-eqz v37, :cond_37

    if-eqz v11, :cond_37

    .line 681
    :try_start_6
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_37

    .line 682
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 683
    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 684
    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 691
    :cond_37
    :goto_7
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_18

    .line 692
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "BYE Tx = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " isMapped ="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 687
    :catch_6
    move-exception v18

    .line 688
    .local v18, "ex":Ljava/io/IOException;
    invoke-static/range {v18 .. v18}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_7

    .line 697
    .end local v18    # "ex":Ljava/io/IOException;
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "CANCEL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_40

    .line 699
    const/16 v39, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v35

    check-cast v35, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 701
    .restart local v35    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_39

    .line 702
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Got a CANCEL, InviteServerTx = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " cancel Server Tx ID = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " isMapped = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 710
    :cond_39
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "CANCEL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3c

    .line 714
    if-eqz v35, :cond_3b

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v39

    sget-object v40, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_3b

    .line 718
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_3a

    .line 719
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Too late to cancel Transaction"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 723
    :cond_3a
    const/16 v39, 0xc8

    :try_start_7
    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 724
    :catch_7
    move-exception v18

    .line 725
    .local v18, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v39

    if-eqz v39, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v39

    move-object/from16 v0, v39

    instance-of v0, v0, Ljava/io/IOException;

    move/from16 v39, v0

    if-eqz v39, :cond_1

    .line 726
    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    goto/16 :goto_0

    .line 731
    .end local v18    # "ex":Ljava/lang/Exception;
    :cond_3b
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_3c

    .line 732
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Cancel transaction = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 735
    :cond_3c
    if-eqz v37, :cond_3e

    if-eqz v35, :cond_3e

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v39

    if-eqz v39, :cond_3e

    .line 738
    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v39

    check-cast v39, Lgov/nist/javax/sip/stack/SIPDialog;

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v11

    .end local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    check-cast v11, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 769
    .restart local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_3d
    if-eqz v35, :cond_18

    .line 771
    if-eqz v37, :cond_18

    .line 772
    :try_start_8
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 773
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 774
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 777
    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_4

    .line 781
    :catch_8
    move-exception v18

    .line 782
    .restart local v18    # "ex":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 740
    .end local v18    # "ex":Ljava/lang/Exception;
    :cond_3e
    if-nez v35, :cond_3d

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v39

    if-eqz v39, :cond_3d

    if-eqz v37, :cond_3d

    .line 747
    const/16 v39, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v27

    .line 749
    .restart local v27    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_3f

    .line 750
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "dropping request -- automatic dialog support enabled and INVITE ST does not exist!"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 755
    :cond_3f
    :try_start_9
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_9
    .catch Ljavax/sip/SipException; {:try_start_9 .. :try_end_9} :catch_9

    .line 759
    :goto_8
    if-eqz v37, :cond_1

    .line 760
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 761
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_0

    .line 756
    :catch_9
    move-exception v18

    .line 757
    .local v18, "ex":Ljavax/sip/SipException;
    invoke-static/range {v18 .. v18}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_8

    .line 785
    .end local v18    # "ex":Ljavax/sip/SipException;
    .end local v27    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v35    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_40
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "INVITE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_18

    .line 786
    if-nez v11, :cond_42

    const/16 v22, 0x0

    .line 797
    .restart local v22    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :goto_9
    if-eqz v11, :cond_43

    if-eqz v37, :cond_43

    if-eqz v22, :cond_43

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v40

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v42

    cmp-long v39, v40, v42

    if-lez v39, :cond_43

    move-object/from16 v0, v22

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move/from16 v39, v0

    if-eqz v39, :cond_43

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v39

    if-eqz v39, :cond_43

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v39

    if-eqz v39, :cond_43

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v39

    if-eqz v39, :cond_43

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v39

    sget-object v40, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_43

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v39

    sget-object v40, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_43

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v39

    sget-object v40, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_43

    .line 807
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_41

    .line 808
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Sending 500 response for out of sequence message"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 811
    :cond_41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    .line 786
    .end local v22    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_42
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v22

    goto :goto_9

    .line 821
    .restart local v22    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_43
    if-nez v11, :cond_45

    const/16 v22, 0x0

    .line 823
    :goto_a
    if-eqz v11, :cond_46

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v39

    if-eqz v39, :cond_46

    if-eqz v22, :cond_46

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v39

    if-eqz v39, :cond_46

    move-object/from16 v0, v22

    instance-of v0, v0, Ljavax/sip/ClientTransaction;

    move/from16 v39, v0

    if-eqz v39, :cond_46

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v39

    if-eqz v39, :cond_46

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v39

    const/16 v40, 0xc8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_46

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v40

    move-wide/from16 v0, v40

    invoke-virtual {v11, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v39

    if-nez v39, :cond_46

    .line 832
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_44

    .line 833
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Sending 491 response for client Dialog ACK not sent."

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 836
    :cond_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    .line 821
    :cond_45
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v22

    goto :goto_a

    .line 840
    :cond_46
    if-eqz v11, :cond_18

    if-eqz v22, :cond_18

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v39

    if-eqz v39, :cond_18

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v39

    if-eqz v39, :cond_18

    move-object/from16 v0, v22

    instance-of v0, v0, Ljavax/sip/ServerTransaction;

    move/from16 v39, v0

    if-eqz v39, :cond_18

    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v39

    if-nez v39, :cond_18

    .line 844
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_47

    .line 845
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Sending 491 response for server Dialog ACK not seen."

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 848
    :cond_47
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    .line 898
    .end local v22    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_48
    :try_start_a
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_49

    .line 899
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 901
    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 902
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 903
    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 916
    :cond_49
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_4a

    .line 917
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " transaction.isMapped = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 935
    :cond_4a
    if-nez v11, :cond_59

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v39

    const-string v40, "NOTIFY"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_59

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v39, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v25

    .line 940
    .local v25, "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_4b

    .line 941
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "PROCESSING NOTIFY  DIALOG == null "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 951
    :cond_4b
    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v39

    if-eqz v39, :cond_4d

    if-nez v25, :cond_4d

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    move/from16 v39, v0

    if-nez v39, :cond_4d

    .line 959
    :try_start_b
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_4c

    .line 960
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Could not find Subscription for Notify Tx."

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 963
    :cond_4c
    const/16 v39, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v16

    .line 965
    .local v16, "errorResponse":Ljavax/sip/message/Response;
    const-string v39, "Subscription does not exist"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->setReasonPhrase(Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 969
    .end local v16    # "errorResponse":Ljavax/sip/message/Response;
    :catch_a
    move-exception v18

    .line 970
    .local v18, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "Exception while sending error response statelessly"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 906
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v25    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :catch_b
    move-exception v18

    .line 907
    .local v18, "ex":Ljava/io/IOException;
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    .line 908
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .line 980
    .end local v18    # "ex":Ljava/io/IOException;
    .restart local v25    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_4d
    if-eqz v25, :cond_57

    .line 986
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 990
    invoke-virtual/range {v25 .. v25}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v36

    .line 994
    .local v36, "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v36, :cond_4e

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_4e

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_54

    .line 1000
    :cond_4e
    if-eqz v36, :cond_53

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v39

    if-nez v39, :cond_53

    .line 1001
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    .line 1006
    :goto_b
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_4f

    .line 1007
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "PROCESSING NOTIFY Subscribe DIALOG "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1013
    :cond_4f
    if-nez v36, :cond_51

    invoke-virtual/range {v32 .. v32}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v39

    if-nez v39, :cond_50

    invoke-virtual/range {v25 .. v25}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v39

    if-eqz v39, :cond_51

    .line 1016
    :cond_50
    const-string v39, "Event"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v17

    check-cast v17, Lgov/nist/javax/sip/header/Event;

    .line 1017
    .local v17, "event":Lgov/nist/javax/sip/header/Event;
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Event;->getEventType()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->isEventForked(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_51

    .line 1019
    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v36

    .line 1025
    .end local v17    # "event":Lgov/nist/javax/sip/header/Event;
    :cond_51
    if-eqz v36, :cond_52

    .line 1026
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1027
    sget-object v39, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    invoke-virtual/range {v39 .. v39}, Ljavax/sip/DialogState;->getValue()I

    move-result v39

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1028
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 1029
    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v39

    if-nez v39, :cond_52

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1037
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 1039
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 1068
    :cond_52
    :goto_c
    if-eqz v37, :cond_56

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v39

    if-eqz v39, :cond_56

    .line 1073
    new-instance v30, Ljavax/sip/RequestEvent;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v37

    move-object/from16 v3, v36

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .line 1107
    .end local v25    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v36    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .local v30, "sipEvent":Ljavax/sip/RequestEvent;
    :goto_d
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .line 1004
    .end local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    .restart local v25    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v36    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_53
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v36

    goto/16 :goto_b

    .line 1048
    :cond_54
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1049
    move-object/from16 v11, v36

    .line 1050
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v39

    if-nez v39, :cond_55

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1055
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 1057
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 1061
    :cond_55
    :goto_e
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 1062
    if-eqz v25, :cond_52

    .line 1063
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1064
    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_c

    .line 1081
    :cond_56
    new-instance v30, Ljavax/sip/RequestEvent;

    const/16 v39, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v39

    move-object/from16 v3, v36

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    goto :goto_d

    .line 1086
    .end local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    .end local v36    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_57
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v39

    if-eqz v39, :cond_58

    .line 1087
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v39

    const-string v40, "could not find subscribe tx"

    invoke-interface/range {v39 .. v40}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1092
    :cond_58
    new-instance v30, Ljavax/sip/RequestEvent;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    goto/16 :goto_d

    .line 1099
    .end local v25    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    :cond_59
    if-eqz v37, :cond_5a

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v39

    if-eqz v39, :cond_5a

    .line 1101
    new-instance v30, Ljavax/sip/RequestEvent;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v37

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v11, v3}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    goto/16 :goto_d

    .line 1104
    .end local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    :cond_5a
    new-instance v30, Ljavax/sip/RequestEvent;

    const/16 v39, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v39

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v11, v3}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    goto/16 :goto_d

    .line 1058
    .end local v30    # "sipEvent":Ljavax/sip/RequestEvent;
    .restart local v25    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v36    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :catch_c
    move-exception v39

    goto :goto_e

    .line 1040
    :catch_d
    move-exception v39

    goto/16 :goto_c
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 18
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "incomingChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .prologue
    .line 1270
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v4

    .line 1271
    .local v4, "dialogID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13, v4}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v10

    .line 1273
    .local v10, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 1274
    .local v6, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1275
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PROCESSING INCOMING RESPONSE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1279
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1280
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1281
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Detected stray response -- dropping"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1436
    :cond_1
    :goto_0
    return-void

    .line 1286
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v13, :cond_3

    .line 1287
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1288
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Dropping message: No listening point registered!"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1293
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v11

    .line 1294
    .local v11, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v11, :cond_4

    .line 1295
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1296
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Dropping message:  no provider"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1301
    :cond_4
    invoke-virtual {v11}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v13

    if-nez v13, :cond_5

    .line 1302
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1303
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Dropping message:  no sipListener registered!"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v12, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1314
    .local v12, "transaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v10, :cond_6

    if-eqz v12, :cond_6

    .line 1315
    invoke-virtual {v12, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v10

    .line 1316
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v13

    sget-object v14, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v13, v14, :cond_6

    .line 1317
    const/4 v10, 0x0

    .line 1320
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1321
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Transaction = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sipDialog = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1324
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_b

    .line 1325
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v7

    .line 1327
    .local v7, "originalFrom":Ljava/lang/String;
    if-nez v7, :cond_8

    const/4 v13, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_9

    const/4 v14, 0x1

    :goto_2
    xor-int/2addr v13, v14

    if-eqz v13, :cond_a

    .line 1328
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1329
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "From tag mismatch -- dropping response"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1327
    :cond_8
    const/4 v13, 0x0

    goto :goto_1

    :cond_9
    const/4 v14, 0x0

    goto :goto_2

    .line 1332
    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1334
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1335
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "From tag mismatch -- dropping response"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1340
    .end local v7    # "originalFrom":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-static {v6}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x64

    if-eq v13, v14, :cond_11

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_11

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_11

    if-nez v10, :cond_11

    .line 1343
    invoke-virtual {v11}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1344
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v13, :cond_10

    .line 1345
    if-nez v10, :cond_c

    .line 1347
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v13, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object/from16 v0, p1

    invoke-virtual {v14, v13, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v10

    .line 1350
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1417
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1418
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "sending response to TU for processing "

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1420
    :cond_d
    if-eqz v10, :cond_e

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x64

    if-eq v13, v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 1422
    move-object/from16 v0, p1

    invoke-virtual {v10, v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1425
    :cond_e
    new-instance v9, Lgov/nist/javax/sip/ResponseEventExt;

    move-object/from16 v0, p1

    invoke-direct {v9, v11, v12, v10, v0}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1428
    .local v9, "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1429
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v8

    .line 1431
    .local v8, "originalTx":Lgov/nist/javax/sip/ClientTransactionExt;
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1434
    .end local v8    # "originalTx":Lgov/nist/javax/sip/ClientTransactionExt;
    :cond_f
    invoke-virtual {v11, v9, v12}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .line 1354
    .end local v9    # "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    invoke-virtual {v13, v11, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v10

    goto :goto_3

    .line 1360
    :cond_11
    if-eqz v10, :cond_c

    if-nez v12, :cond_c

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v13

    sget-object v14, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v13, v14, :cond_c

    .line 1362
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    div-int/lit8 v13, v13, 0x64

    const/4 v14, 0x2

    if-eq v13, v14, :cond_12

    .line 1363
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1364
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "status code != 200 ; statusCode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1367
    :cond_12
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v13

    sget-object v14, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v13, v14, :cond_14

    .line 1368
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1369
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Dialog is terminated -- dropping response!"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1374
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v13

    div-int/lit8 v13, v13, 0x64

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1377
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lgov/nist/javax/sip/stack/SIPDialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v3

    .line 1379
    .local v3, "ackRequest":Ljavax/sip/message/Request;
    invoke-virtual {v10, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1380
    .end local v3    # "ackRequest":Ljavax/sip/message/Request;
    :catch_0
    move-exception v5

    .line 1381
    .local v5, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "Error creating ack"

    invoke-interface {v13, v14, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1386
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_14
    const/4 v2, 0x0

    .line 1387
    .local v2, "ackAlreadySent":Z
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    if-eqz v13, :cond_15

    .line 1388
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_15

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1393
    const/4 v2, 0x1

    .line 1397
    :cond_15
    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1402
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1403
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v13}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    const-string v14, "resending ACK"

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1405
    :cond_16
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1407
    :catch_1
    move-exception v13

    goto/16 :goto_3
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 12
    .param p1, "response"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "incomingMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .prologue
    .line 1119
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1120
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROCESSING INCOMING RESPONSE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1123
    :cond_0
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v8, :cond_2

    .line 1124
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1125
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping message: No listening point registered!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1250
    :cond_1
    :goto_0
    return-void

    .line 1130
    :cond_2
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v8

    invoke-virtual {v8, p1}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1131
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1132
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping response - topmost VIA header does not originate from this stack"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    :cond_3
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    .line 1141
    .local v5, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v5, :cond_4

    .line 1142
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1143
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping message:  no provider"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_4
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1148
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1149
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "No listener -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    :cond_5
    iget-object v7, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v7, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1155
    .local v7, "transaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    iget-object v6, v5, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 1157
    .local v6, "sipStackImpl":Lgov/nist/javax/sip/SipStackImpl;
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1158
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1161
    :cond_6
    if-nez v7, :cond_e

    .line 1166
    if-eqz p3, :cond_b

    .line 1167
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v8

    div-int/lit8 v8, v8, 0x64

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    .line 1168
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1169
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Response is not a final response and dialog is found for response -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1175
    :cond_7
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v8, v9, :cond_8

    .line 1176
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1177
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dialog is terminated -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1182
    :cond_8
    const/4 v0, 0x0

    .line 1183
    .local v0, "ackAlreadySent":Z
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1184
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 1187
    const/4 v0, 0x1

    .line 1191
    :cond_9
    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1196
    :try_start_0
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1197
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Retransmission of OK detected: Resending last ACK"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1200
    :cond_a
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1202
    :catch_0
    move-exception v1

    .line 1204
    .local v1, "ex":Ljavax/sip/SipException;
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "could not resend ack"

    invoke-interface {v8, v9, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1210
    .end local v0    # "ackAlreadySent":Z
    .end local v1    # "ex":Ljavax/sip/SipException;
    :cond_b
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1211
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not find tx, handling statelessly Dialog =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1217
    :cond_c
    new-instance v4, Lgov/nist/javax/sip/ResponseEventExt;

    invoke-direct {v4, v5, v7, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1220
    .local v4, "sipEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1221
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v2

    .line 1223
    .local v2, "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1226
    .end local v2    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_d
    invoke-virtual {v5, v4, v7}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .line 1230
    .end local v4    # "sipEvent":Lgov/nist/javax/sip/ResponseEventExt;
    :cond_e
    const/4 v3, 0x0

    .line 1233
    .local v3, "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    new-instance v3, Lgov/nist/javax/sip/ResponseEventExt;

    .end local v3    # "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-direct {v3, v5, v7, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1235
    .restart local v3    # "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1236
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v2

    .line 1238
    .restart local v2    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1242
    .end local v2    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_f
    if-eqz p3, :cond_10

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_10

    .line 1244
    invoke-virtual {p3, v7, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1245
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p3, v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1248
    :cond_10
    invoke-virtual {v5, v3, v7}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0
.end method
