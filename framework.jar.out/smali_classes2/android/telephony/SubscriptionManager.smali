.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final ASK_USER_SUB_ID:J = -0x3e9L

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = true

.field public static final DEFAULT_INT_VALUE:I = -0x64

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_NW_MODE:I = -0x1

.field public static final DEFAULT_PHONE_ID:I = 0x7fffffff

.field public static final DEFAULT_SLOT_ID:I = 0x7fffffff

.field public static final DEFAULT_STRING_VALUE:Ljava/lang/String; = "N/A"

.field public static final DEFAULT_SUB_ID:J = 0x7fffffffffffffffL

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final ERROR_GENERAL:I = -0x1

.field public static final ERROR_NAME_EXIST:I = -0x2

.field public static final EXTRA_VALUE_NEW_SIM:I = 0x1

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final EXTRA_VALUE_REMOVE_SIM:I = 0x2

.field public static final EXTRA_VALUE_REPOSITION_SIM:I = 0x3

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INACTIVE:I = 0x0

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final INVALID_PHONE_ID:I = -0x3e8

.field public static final INVALID_SLOT_ID:I = -0x3e8

.field public static final INVALID_SUB_ID:J = -0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "SUB"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NETWORK_MODE:Ljava/lang/String; = "network_mode"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field private static final RES_TYPE_BACKGROUND_DARK:I = 0x0

.field private static final RES_TYPE_BACKGROUND_LIGHT:I = 0x1

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SLOT:Ljava/lang/String; = "slot"

.field public static final SLOT_NONE:I = -0x1

.field public static final SUB_CONFIGURATION_IN_PROGRESS:I = 0x2

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final SUB_STATE:Ljava/lang/String; = "sub_state"

.field private static final VDBG:Z = false

.field public static final WAP_PUSH:Ljava/lang/String; = "wap_push"

.field public static final WAP_PUSH_DEFAULT:I = -0x1

.field public static final WAP_PUSH_DISABLE:I = 0x0

.field public static final WAP_PUSH_ENABLE:I = 0x1

.field private static final sSimBackgroundDarkRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 279
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->setSimResource(I)[I

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->sSimBackgroundDarkRes:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const-string v0, "SubscriptionManager created"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static activateSubId(J)V
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1010
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->activateSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :goto_0
    return-void

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 484
    if-nez p0, :cond_0

    .line 485
    const-string v1, "[addSubInfoRecord]- null iccId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 487
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 488
    const-string v1, "[addSubInfoRecord]- invalid slotId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 492
    :cond_1
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 493
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 495
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 497
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static allDefaultsSelected()Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x3e8

    const/4 v0, 0x0

    .line 951
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 954
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 957
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 960
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static clearDefaultsForInactiveSubIds()V
    .locals 2

    .prologue
    .line 971
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 972
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 973
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static clearSubInfo()V
    .locals 2

    .prologue
    .line 937
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 938
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 939
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deactivateSubId(J)V
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1019
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->deactivateSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getActiveSubIdList()[J
    .locals 3

    .prologue
    .line 1075
    const/4 v1, 0x0

    .line 1078
    .local v1, "subId":[J
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1079
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1086
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1087
    const/4 v2, 0x0

    new-array v1, v2, [J

    .line 1090
    :cond_1
    return-object v1

    .line 1082
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getActiveSubInfoCount()I
    .locals 3

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 464
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 465
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 472
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 468
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getActiveSubInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    const/4 v1, 0x0

    .line 419
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 420
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 427
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_1
    return-object v1

    .line 423
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAllSubInfoCount()I
    .locals 3

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 444
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 445
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 446
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 452
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 448
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAllSubInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 396
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 397
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 404
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_1
    return-object v1

    .line 400
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultDataPhoneId()I
    .locals 2

    .prologue
    .line 931
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultDataSubId()J
    .locals 4

    .prologue
    .line 896
    const-wide/16 v2, -0x3e8

    .line 899
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 900
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 901
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 908
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 903
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultDataSubInfo()Landroid/telephony/SubInfoRecord;
    .locals 2

    .prologue
    .line 926
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsPhoneId()I
    .locals 2

    .prologue
    .line 891
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultSmsSubId()J
    .locals 4

    .prologue
    .line 856
    const-wide/16 v2, -0x3e8

    .line 859
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 860
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 861
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 868
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 863
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultSmsSubInfo()Landroid/telephony/SubInfoRecord;
    .locals 2

    .prologue
    .line 886
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSubId()J
    .locals 4

    .prologue
    .line 772
    const-wide/16 v2, -0x3e8

    .line 775
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 776
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 777
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 784
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 779
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 2

    .prologue
    .line 824
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubId()J
    .locals 4

    .prologue
    .line 789
    const-wide/16 v2, -0x3e8

    .line 792
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 793
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 794
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 801
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 796
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultVoiceSubInfo()Landroid/telephony/SubInfoRecord;
    .locals 2

    .prologue
    .line 819
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method private static getISubInfo()Lcom/android/internal/telephony/ISub;
    .locals 1

    .prologue
    .line 1047
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0
.end method

.method public static getOnDemandDataSubId()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x3e8

    .line 1119
    :try_start_0
    const-string v4, "isub"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1120
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1121
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getOnDemandDataSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1126
    :cond_0
    :goto_0
    return-wide v2

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getPhoneId(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 715
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 716
    const-string v2, "[getPhoneId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 717
    const/16 v1, -0x3e8

    .line 732
    :cond_0
    :goto_0
    return v1

    .line 720
    :cond_1
    const/16 v1, -0x3e8

    .line 723
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 724
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 725
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getPhoneId(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 727
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSlotId(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 673
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 674
    const-string v2, "[getSlotId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 677
    :cond_0
    const/16 v1, -0x3e8

    .line 680
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 681
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 682
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getSlotId(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 688
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v1

    .line 684
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubId(I)[J
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 694
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    const-string v2, "[getSubId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 696
    const/4 v1, 0x0

    .line 710
    :cond_0
    :goto_0
    return-object v1

    .line 699
    :cond_1
    const/4 v1, 0x0

    .line 702
    .local v1, "subId":[J
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 703
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 704
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 706
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 302
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    const-string v2, "[getSubInfoForSubscriberx]- invalid subId"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 304
    const/4 v1, 0x0

    .line 318
    :cond_0
    :goto_0
    return-object v1

    .line 307
    :cond_1
    const/4 v1, 0x0

    .line 310
    .local v1, "subInfo":Landroid/telephony/SubInfoRecord;
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 311
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 314
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    if-nez p0, :cond_1

    .line 331
    const-string v2, "[getSubInfoUsingIccId]- null iccid"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 332
    const/4 v1, 0x0

    .line 350
    :cond_0
    :goto_0
    return-object v1

    .line 335
    :cond_1
    const/4 v1, 0x0

    .line 338
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 339
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 340
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 347
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 348
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_0

    .line 342
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getSubInfoUsingSlotId(I)Ljava/util/List;
    .locals 3
    .param p0, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    const-string v2, "[getSubInfoUsingSlotId]- invalid slotId"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x0

    .line 381
    :cond_0
    :goto_0
    return-object v1

    .line 366
    :cond_1
    const/4 v1, 0x0

    .line 369
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 370
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 371
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubInfoUsingSlotId(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 378
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_0

    .line 373
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getSubState(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1028
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->getSubState(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1030
    :goto_0
    return v1

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSMSPromptEnabled()Z
    .locals 2

    .prologue
    .line 829
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 830
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 831
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 836
    :goto_0
    return v1

    .line 833
    :catch_0
    move-exception v1

    .line 836
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 1002
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 993
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 985
    const-wide/16 v0, -0x3e8

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoicePromptEnabled()Z
    .locals 2

    .prologue
    .line 1096
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1097
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1098
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->isVoicePromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1103
    :goto_0
    return v1

    .line 1100
    :catch_0
    move-exception v1

    .line 1103
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 762
    const-string v0, "SUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 1051
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1052
    .local v0, "subIds":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1053
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {p0, p1, v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V

    .line 1057
    :goto_0
    return-void

    .line 1055
    :cond_0
    const-string v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # J

    .prologue
    .line 1062
    const-string v0, "subscription"

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1063
    const-string v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    const-string v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    return-void
.end method

.method public static setColor(IJ)I
    .locals 5
    .param p0, "color"    # I
    .param p1, "subId"    # J

    .prologue
    .line 515
    sget-object v3, Landroid/telephony/SubscriptionManager;->sSimBackgroundDarkRes:[I

    array-length v2, v3

    .line 516
    .local v2, "size":I
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ltz p0, :cond_0

    if-lt p0, v2, :cond_2

    .line 517
    :cond_0
    const-string v3, "[setColor]- fail"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 518
    const/4 v1, -0x1

    .line 532
    :cond_1
    :goto_0
    return v1

    .line 521
    :cond_2
    const/4 v1, 0x0

    .line 524
    .local v1, "result":I
    :try_start_0
    const-string v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 525
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 526
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setColor(IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 528
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static setDataRoaming(IJ)I
    .locals 3
    .param p0, "roaming"    # I
    .param p1, "subId"    # J

    .prologue
    .line 647
    if-ltz p0, :cond_0

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 648
    :cond_0
    const-string v2, "[setDataRoaming]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 649
    const/4 v1, -0x1

    .line 663
    :cond_1
    :goto_0
    return v1

    .line 652
    :cond_2
    const/4 v1, 0x0

    .line 655
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 656
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 657
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 659
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setDefaultDataSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 915
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 916
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 917
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 919
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDefaultSmsSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 875
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 876
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 877
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDefaultVoiceSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 808
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 809
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDisplayName(Ljava/lang/String;J)I
    .locals 3
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 544
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayName(Ljava/lang/String;JJ)I
    .locals 7
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "nameSource"    # J

    .prologue
    .line 561
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    const-string v1, "[setDisplayName]- fail"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 563
    const/4 v6, -0x1

    .line 577
    :cond_0
    :goto_0
    return v6

    .line 566
    :cond_1
    const/4 v6, 0x0

    .line 569
    .local v6, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 570
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 571
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;JJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 573
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDisplayNumber(Ljava/lang/String;J)I
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 589
    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 590
    :cond_0
    const-string v2, "[setDisplayNumber]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 591
    const/4 v1, -0x1

    .line 605
    :cond_1
    :goto_0
    return v1

    .line 594
    :cond_2
    const/4 v1, 0x0

    .line 597
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 598
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 599
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 601
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setDisplayNumberFormat(IJ)I
    .locals 3
    .param p0, "format"    # I
    .param p1, "subId"    # J

    .prologue
    .line 618
    if-ltz p0, :cond_0

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 619
    :cond_0
    const-string v2, "[setDisplayNumberFormat]- fail, return -1"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 620
    const/4 v1, -0x1

    .line 634
    :cond_1
    :goto_0
    return v1

    .line 623
    :cond_2
    const/4 v1, 0x0

    .line 626
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 627
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 628
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumberFormat(IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 630
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setSMSPromptEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 841
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 842
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 843
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setSMSPromptEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static setSimResource(I)[I
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x4

    .line 737
    const/4 v0, 0x0

    .line 739
    .local v0, "simResource":[I
    packed-switch p0, :pswitch_data_0

    .line 758
    :goto_0
    return-object v0

    .line 741
    :pswitch_0
    new-array v0, v1, [I

    .end local v0    # "simResource":[I
    fill-array-data v0, :array_0

    .line 747
    .restart local v0    # "simResource":[I
    goto :goto_0

    .line 749
    :pswitch_1
    new-array v0, v1, [I

    .end local v0    # "simResource":[I
    fill-array-data v0, :array_1

    .restart local v0    # "simResource":[I
    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 741
    :array_0
    .array-data 4
        0x1080611
        0x1080613
        0x1080612
        0x1080614
    .end array-data

    .line 749
    :array_1
    .array-data 4
        0x1080615
        0x1080617
        0x1080616
        0x1080618
    .end array-data
.end method

.method public static setSubState(JI)I
    .locals 4
    .param p0, "subId"    # J
    .param p2, "subState"    # I

    .prologue
    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1037
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubState(JI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1039
    :goto_0
    return v1

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setVoicePromptEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 1108
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1109
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1110
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setVoicePromptEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1112
    :catch_0
    move-exception v1

    goto :goto_0
.end method
