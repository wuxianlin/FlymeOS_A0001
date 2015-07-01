.class public final Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "OppoGsmSMSDispatcher.java"


# static fields
.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "GsmSMSDispatcher"

.field private static final VDBG:Z


# instance fields
.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 84
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    return-void
.end method

.method private checkPhoneNumber(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 808
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 813
    if-nez p1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v2

    .line 817
    :cond_1
    const-string v3, "GsmSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPhoneNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 819
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->checkPhoneNumber(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 822
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSubmitPduHeaderWithLang(IIIIII)[B
    .locals 4
    .param p0, "destPort"    # I
    .param p1, "refNumber"    # I
    .param p2, "seqNumber"    # I
    .param p3, "msgCount"    # I
    .param p4, "singleShiftId"    # I
    .param p5, "lockingShiftId"    # I

    .prologue
    const/4 v3, 0x0

    .line 833
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 835
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-ltz p0, :cond_0

    .line 837
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 838
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 839
    iput v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 840
    iput-boolean v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 842
    iput-object v1, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 845
    .end local v1    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_0
    if-lez p3, :cond_1

    .line 847
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 848
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput p1, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 849
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 850
    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 858
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 860
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 863
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    if-gtz p4, :cond_2

    if-lez p5, :cond_3

    .line 864
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    .line 865
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p4, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 866
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p5, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->lockingShiftId:I

    .line 869
    :cond_3
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    return-object v3
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, 0x1

    .line 177
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 178
    .local v5, "pduString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 180
    .local v6, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    .line 181
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 182
    .local v7, "tpStatus":I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 183
    .local v4, "messageRef":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 184
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 185
    .local v8, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 187
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 188
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 192
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 193
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 195
    const-string v9, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0    # "count":I
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "messageRef":I
    .end local v7    # "tpStatus":I
    .end local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v11, v11, v10}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 206
    return-void

    .line 183
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "messageRef":I
    .restart local v7    # "tpStatus":I
    .restart local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private onUpdateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 424
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 430
    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 431
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_0

    .line 432
    if-eqz v0, :cond_3

    .line 433
    const-string v2, "GsmSMSDispatcher"

    const-string v3, "Removing stale icc objects."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 435
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 440
    :cond_3
    if-eqz v1, :cond_0

    .line 441
    const-string v2, "GsmSMSDispatcher"

    const-string v3, "New Uicc application found"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 443
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0xe

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 263
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 29
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .line 674
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "GsmSMSDispatcher: copy text message to icc card"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText invalid sc address"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/16 p1, 0x0

    .line 681
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText invalid dest address"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v2, 0x8

    .line 804
    :goto_0
    return v2

    .line 686
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mSuccess:Z

    .line 688
    const/16 v26, 0x1

    .line 690
    .local v26, "isDeliverPdu":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    .line 694
    .local v5, "msgCount":I
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText storage available"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v2, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 701
    :cond_2
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText to encode deliver pdu"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/16 v26, 0x1

    .line 712
    :goto_1
    const-string v2, "GsmSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[copyText msgCount "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v2, 0x1

    if-le v5, v2, :cond_8

    .line 714
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText multi-part message"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    .line 723
    .local v3, "refNumber":I
    const/4 v14, 0x0

    .line 724
    .local v14, "encoding":I
    new-array v0, v5, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v23, v0

    .line 725
    .local v23, "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_3
    move/from16 v0, v25

    if-ge v0, v5, :cond_a

    .line 726
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    aput-object v2, v23, v25

    .line 727
    aget-object v2, v23, v25

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v14, v2, :cond_4

    if-eqz v14, :cond_3

    const/4 v2, 0x1

    if-ne v14, v2, :cond_4

    .line 730
    :cond_3
    aget-object v2, v23, v25

    iget v14, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 725
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 703
    .end local v3    # "refNumber":I
    .end local v14    # "encoding":I
    .end local v23    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v25    # "i":I
    :cond_5
    const/4 v2, 0x5

    move/from16 v0, p4

    if-eq v0, v2, :cond_6

    const/4 v2, 0x7

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 704
    :cond_6
    const/16 v26, 0x0

    .line 705
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText to encode submit pdu"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 707
    :cond_7
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText invalid status, default is deliver pdu"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 715
    :cond_8
    const/4 v2, 0x1

    if-ne v5, v2, :cond_9

    .line 716
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText single-part message"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 718
    :cond_9
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText invalid message count"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 734
    .restart local v3    # "refNumber":I
    .restart local v14    # "encoding":I
    .restart local v23    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v25    # "i":I
    :cond_a
    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    if-ge v0, v5, :cond_12

    .line 735
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mSuccess:Z

    if-nez v2, :cond_b

    .line 736
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText Exception happened when copy message"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 739
    :cond_b
    const/4 v6, -0x1

    .line 740
    .local v6, "singleShiftId":I
    const/4 v7, -0x1

    .line 741
    .local v7, "lockingShiftId":I
    aget-object v2, v23, v25

    iget v15, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 742
    .local v15, "language":I
    move/from16 v21, v14

    .line 744
    .local v21, "encoding_method":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_c

    .line 745
    const-string v2, "GsmSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detail: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ted"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v8, v23, v25

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    aget-object v2, v23, v25

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v2, :cond_f

    aget-object v2, v23, v25

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v2, :cond_f

    .line 747
    move v6, v15

    .line 748
    move v7, v15

    .line 749
    const/16 v21, 0xd

    .line 759
    :cond_c
    :goto_5
    const/4 v11, 0x0

    .line 760
    .local v11, "smsHeader":[B
    const/4 v2, 0x1

    if-le v5, v2, :cond_d

    .line 761
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText get pdu header for multi-part message"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v2, -0x1

    add-int/lit8 v4, v25, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v11

    .line 766
    :cond_d
    if-eqz v26, :cond_11

    .line 767
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v12, p5

    invoke-static/range {v8 .. v15}, Lcom/android/internal/telephony/gsm/OppoSmsMessage;->getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/android/internal/telephony/gsm/OppoSmsMessage$DeliverPdu;

    move-result-object v27

    .line 770
    .local v27, "pdu":Lcom/android/internal/telephony/gsm/OppoSmsMessage$DeliverPdu;
    if-eqz v27, :cond_e

    .line 771
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText write deliver pdu into SIM"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/OppoSmsMessage$DeliverPdu;->encodedScAddress:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/OppoSmsMessage$DeliverPdu;->encodedMessage:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move/from16 v0, p4

    invoke-interface {v2, v0, v4, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 786
    .end local v27    # "pdu":Lcom/android/internal/telephony/gsm/OppoSmsMessage$DeliverPdu;
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 788
    :try_start_0
    const-string v2, "GsmSMSDispatcher"

    const-string v8, "[copyText wait until the message be wrote in SIM"

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText thread is waked up"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 750
    .end local v11    # "smsHeader":[B
    :cond_f
    aget-object v2, v23, v25

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v2, :cond_10

    .line 751
    move v7, v15

    .line 752
    const/16 v21, 0xc

    goto :goto_5

    .line 753
    :cond_10
    aget-object v2, v23, v25

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v2, :cond_c

    .line 754
    move v6, v15

    .line 755
    const/16 v21, 0xb

    goto/16 :goto_5

    .line 776
    .restart local v11    # "smsHeader":[B
    :cond_11
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v20, v11

    move/from16 v22, v15

    invoke-static/range {v16 .. v22}, Lcom/android/internal/telephony/gsm/OppoSmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v27

    .line 779
    .local v27, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v27, :cond_e

    .line 780
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText write submit pdu into SIM"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move/from16 v0, p4

    invoke-interface {v2, v0, v4, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_6

    .line 790
    .end local v27    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v24

    .line 791
    .local v24, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "GsmSMSDispatcher"

    const-string v8, "[copyText interrupted while trying to copy text message into SIM"

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v2, 0x1

    monitor-exit v4

    goto/16 :goto_0

    .line 794
    .end local v24    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 798
    .end local v6    # "singleShiftId":I
    .end local v7    # "lockingShiftId":I
    .end local v11    # "smsHeader":[B
    .end local v15    # "language":I
    .end local v21    # "encoding_method":I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mSuccess:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    .line 799
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText all messages have been copied into SIM"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 803
    :cond_13
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "[copyText copy failed"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 129
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "3gpp"

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 4

    .prologue
    .line 417
    const-string v0, "GsmSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmSMSDispatcher: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 165
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 146
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 151
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 155
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->onUpdateIccAvailability()V

    goto :goto_0

    .line 159
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmsOnIcc(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called only on ImsSMSDispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendConcatenatedData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 29
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "origPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 457
    const/16 v24, 0x80

    .line 458
    .local v24, "maxUserDataBytes":I
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v26, v0

    .line 459
    .local v26, "nLength":I
    div-int v25, v26, v24

    .line 460
    .local v25, "msgCount":I
    const/16 v23, 0x0

    .line 462
    .local v23, "i":I
    rem-int v2, v26, v24

    if-eqz v2, :cond_0

    .line 464
    add-int/lit8 v25, v25, 0x1

    .line 482
    :cond_0
    move/from16 v0, v25

    move/from16 v1, v24

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[B

    .line 483
    .local v22, "dataArray":[[B
    invoke-static {}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v27, v0

    .line 484
    .local v27, "refNumber":I
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 486
    .local v7, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v27

    iput v0, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 487
    move/from16 v0, v25

    iput v0, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 488
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 491
    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 493
    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_1

    .line 495
    mul-int v2, v23, v24

    aget-object v3, v22, v23

    const/4 v4, 0x0

    mul-int v5, v23, v24

    sub-int v5, v26, v5

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 491
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 500
    :cond_1
    mul-int v2, v23, v24

    aget-object v3, v22, v23

    const/4 v4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1

    .line 506
    :cond_2
    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 508
    add-int/lit8 v2, v23, 0x1

    iput v2, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 510
    aget-object v5, v22, v23

    if-eqz p7, :cond_3

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/OppoSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLcom/android/internal/telephony/SmsHeader$ConcatRef;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v14

    .line 518
    .local v14, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    aget-object v13, v22, v23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;II[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v16

    .line 519
    .local v16, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    invoke-virtual/range {v15 .. v21}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v28

    .line 520
    .local v28, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 506
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 510
    .end local v14    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v16    # "map":Ljava/util/HashMap;
    .end local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 523
    :cond_4
    return-void
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 15
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "origPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 212
    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 214
    .local v6, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v6, :cond_1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 215
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;II[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v8

    .line 216
    .local v8, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v14

    .line 218
    .local v14, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v14}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 222
    .end local v8    # "map":Ljava/util/HashMap;
    .end local v14    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .line 212
    .end local v6    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 220
    .restart local v6    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 29
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    .line 532
    .local v3, "refNumber":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 534
    .local v5, "msgCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v5, :cond_3

    .line 535
    add-int/lit8 v4, v26, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move/from16 v2, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v27

    .line 538
    .local v27, "smsHeader":[B
    const/16 v21, 0x0

    .line 539
    .local v21, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v26

    if-le v2, v0, :cond_0

    .line 540
    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v21, Landroid/app/PendingIntent;

    .line 543
    .restart local v21    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    const/16 v22, 0x0

    .line 544
    .local v22, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v26

    if-le v2, v0, :cond_1

    .line 545
    move-object/from16 v0, p6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 548
    .restart local v22    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_1
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 549
    .local v11, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v3, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 550
    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 551
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 552
    add-int/lit8 v2, v26, 0x1

    iput v2, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 553
    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v9

    if-eqz v22, :cond_2

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-static/range {v6 .. v11}, Lcom/android/internal/telephony/gsm/OppoSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLcom/android/internal/telephony/SmsHeader$ConcatRef;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 556
    .local v18, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v16, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;II[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v20

    .line 558
    .local v20, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, p0

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v28

    .line 560
    .local v28, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 534
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 553
    .end local v18    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v20    # "map":Ljava/util/HashMap;
    .end local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 563
    .end local v11    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v21    # "sentIntent":Landroid/app/PendingIntent;
    .end local v22    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v27    # "smsHeader":[B
    :cond_3
    return-void
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "validity_period"

    const/4 v3, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 603
    .local v10, "validityPeriod":I
    const-string v2, "GsmSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTextWithExtraParams: validityPeriod is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v25, v0

    .line 606
    .local v25, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 607
    .local v23, "msgCount":I
    const/4 v7, 0x0

    .line 611
    .local v7, "encoding":I
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v20, v0

    .line 612
    .local v20, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 613
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v19

    .line 614
    .local v19, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_1

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    if-ne v7, v2, :cond_1

    .line 617
    :cond_0
    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 619
    :cond_1
    aput-object v19, v20, v22

    .line 612
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 622
    .end local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 623
    new-instance v18, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 624
    .local v18, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 625
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 626
    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 633
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 634
    new-instance v17, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 635
    .local v17, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 638
    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 639
    aget-object v2, v20, v22

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 640
    aget-object v2, v20, v22

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 643
    :cond_3
    const/4 v14, 0x0

    .line 644
    .local v14, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_4

    .line 645
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 648
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v15, 0x0

    .line 649
    .local v15, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_5

    .line 650
    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 653
    .restart local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v15, :cond_7

    const/4 v5, 0x1

    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/gsm/OppoSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v24

    .line 657
    .local v24, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v24, :cond_8

    .line 658
    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v24

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v11, p0

    move-object/from16 v16, p1

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;)V

    .line 622
    :cond_6
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 653
    .end local v24    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 660
    .restart local v24    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_8
    const-string v2, "GsmSMSDispatcher"

    const-string v3, "sendMultipartTextWithExtraParams: pdu is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-eqz v14, :cond_6

    .line 663
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v14, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 664
    :catch_0
    move-exception v21

    .line 665
    .local v21, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "GsmSMSDispatcher"

    const-string v3, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 670
    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v17    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v18    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v21    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v24    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_9
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I

    .prologue
    .line 294
    if-eqz p7, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    iget v6, p4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v7, p4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move/from16 v5, p5

    move/from16 v8, p11

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 298
    .local v9, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v9, :cond_3

    .line 299
    invoke-virtual {p0, p1, p2, p3, v9}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v1

    .line 301
    .local v1, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    if-eqz p8, :cond_0

    if-eqz p10, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v10

    .line 302
    .local v10, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 306
    .end local v1    # "map":Ljava/util/HashMap;
    .end local v10    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_2
    return-void

    .line 294
    .end local v9    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 301
    .restart local v1    # "map":Ljava/util/HashMap;
    .restart local v9    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 304
    .end local v1    # "map":Ljava/util/HashMap;
    :cond_3
    const-string v0, "GsmSMSDispatcher"

    const-string v2, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .locals 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p13, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p14, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 273
    if-eqz p7, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v9, p5

    move/from16 v12, p11

    invoke-static/range {v4 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 276
    .local v15, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v15, :cond_3

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 279
    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    if-eqz p8, :cond_0

    if-eqz p10, :cond_2

    :cond_0
    const/4 v13, 0x1

    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p4

    move/from16 v14, p11

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 282
    .local v16, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 286
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_2
    return-void

    .line 273
    .end local v15    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 279
    .restart local v5    # "map":Ljava/util/HashMap;
    .restart local v15    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 284
    .end local v5    # "map":Ljava/util/HashMap;
    :cond_3
    const-string v4, "GsmSMSDispatcher"

    const-string v6, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 311
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 313
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "pdu"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v12, v0

    check-cast v12, [B

    .line 315
    .local v12, "pdu":[B
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v0, :cond_0

    .line 316
    const-string v0, "GsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms:  mRetryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMessageRef="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    aget-byte v0, v12, v6

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_0

    .line 325
    aget-byte v0, v12, v6

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v12, v6

    .line 326
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v0, v0

    aput-byte v0, v12, v7

    .line 329
    :cond_0
    const-string v0, "GsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms:  isIms()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->isIms()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImsRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMessageRef="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 339
    .local v4, "resultReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getCarrierAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 341
    .local v9, "carrierPackage":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 342
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v0, "pdu"

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 344
    const-string v2, "smsc"

    const-string v0, "smsc"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 345
    const-string v0, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v10, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 348
    .local v10, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const-string v0, "concat.refNumber"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string v0, "concat.seqNumber"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const-string v0, "concat.msgCount"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    .end local v10    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    const-string v0, "GsmSMSDispatcher"

    const-string v2, "Sending SMS by carrier app."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    .line 367
    .local v9, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v9, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getNotInServiceError(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 407
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 374
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "smsc"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v8, v0

    check-cast v8, [B

    .line 375
    .local v8, "smsc":[B
    const-string v0, "pdu"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v7, v0

    check-cast v7, [B

    .line 376
    .local v7, "pdu":[B
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 382
    .local v5, "reply":Landroid/os/Message;
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v0, :cond_1

    .line 387
    aget-byte v0, v7, v2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    .line 388
    aget-byte v0, v7, v2

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    .line 389
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    .line 392
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 405
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZI)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "isExpectMore"    # Z
    .param p10, "validityPeriod"    # I

    .prologue
    .line 229
    if-eqz p5, :cond_1

    const/4 v2, 0x1

    :goto_0
    move/from16 v0, p10

    invoke-static {p2, p1, p3, v2, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 231
    .local v10, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v10, :cond_4

    .line 232
    if-nez p6, :cond_3

    .line 233
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSubId()J

    move-result-wide v4

    if-eqz p5, :cond_2

    const/4 v8, 0x1

    :goto_1
    move-object v3, p0

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 244
    :cond_0
    :goto_2
    invoke-virtual {p0, p1, p2, p3, v10}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v3

    .line 245
    .local v3, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .line 247
    .local v11, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 251
    .end local v3    # "map":Ljava/util/HashMap;
    .end local v11    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_3
    return-void

    .line 229
    .end local v10    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    .restart local v10    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 242
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->getSubId()J

    move-result-wide v4

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->moveToOutbox(JLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    .line 249
    :cond_4
    const-string v2, "GsmSMSDispatcher"

    const-string v4, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 573
    const-string v1, "validity_period"

    const/4 v2, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 574
    .local v9, "validityPeriod":I
    const-string v1, "GsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextWithExtraParams: validityPeriod is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-eqz p6, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/gsm/OppoSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 579
    .local v11, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v11, :cond_2

    .line 580
    iget-object v2, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v3, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/gsm/OppoGsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;)V

    .line 591
    :cond_0
    :goto_1
    return-void

    .line 576
    .end local v11    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 582
    .restart local v11    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v1, "GsmSMSDispatcher"

    const-string v2, "sendTextWithExtraParams: pdu is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz p5, :cond_0

    .line 585
    const/4 v1, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 586
    :catch_0
    move-exception v10

    .line 587
    .local v10, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "GsmSMSDispatcher"

    const-string v2, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected updateSmsSendStatus(IZ)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 413
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "updateSmsSendStatus should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method
