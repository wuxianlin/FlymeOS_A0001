.class public Lcom/android/internal/telephony/ModemStackController;
.super Landroid/os/Handler;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    }
.end annotation


# static fields
.field private static final BIND_TO_STACK:I = 0x1

.field private static final CMD_DEACTIVATE_ALL_SUBS:I = 0x1

.field private static final CMD_TRIGGER_BIND:I = 0x5

.field private static final CMD_TRIGGER_UNBIND:I = 0x3

.field private static final DEFAULT_MAX_DATA_ALLOWED:I = 0x1

.field private static final EVENT_BIND_DONE:I = 0x6

.field private static final EVENT_GET_MODEM_CAPS_DONE:I = 0x2

.field private static final EVENT_MODEM_CAPABILITY_CHANGED:I = 0xa

.field private static final EVENT_RADIO_AVAILABLE:I = 0x9

.field private static final EVENT_SET_PREF_MODE_DONE:I = 0x7

.field private static final EVENT_SUB_DEACTIVATED:I = 0x8

.field private static final EVENT_UNBIND_DONE:I = 0x4

.field private static final FAILURE:I = 0x0

.field private static final GET_MODEM_CAPS_BUFFER_LEN:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "ModemStackController"

.field private static final PRIMARY_STACK_ID:I = 0x0

.field private static final STATE_BIND:I = 0x5

.field private static final STATE_GOT_MODEM_CAPS:I = 0x2

.field private static final STATE_SET_PREF_MODE:I = 0x7

.field private static final STATE_SUB_ACT:I = 0x6

.field private static final STATE_SUB_DEACT:I = 0x3

.field private static final STATE_UNBIND:I = 0x4

.field private static final STATE_UNKNOWN:I = 0x1

.field private static final SUCCESS:I = 0x1

.field private static final UNBIND_TO_STACK:I

.field private static sModemStackController:Lcom/android/internal/telephony/ModemStackController;


# instance fields
.field private mActiveSubCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdFailed:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mDeactivationInProgress:Z

.field private mDeactivedSubCount:I

.field private mIsPhoneInEcbmMode:Z

.field private mIsRecoveryInProgress:Z

.field private mIsStackReady:Z

.field private mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

.field private mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mModemRatCapabilitiesAvailable:Z

.field private mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mNumPhones:I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStackReadyRegistrants:Landroid/os/RegistrantList;

.field private mSubState:[I

.field private mSubcriptionStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStackMsg:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 245
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 150
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    .line 151
    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 152
    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 153
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    .line 154
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    .line 155
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    .line 156
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    .line 157
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 158
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 159
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    .line 160
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 161
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 162
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    .line 163
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    .line 164
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 165
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    .line 170
    iput-object v7, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 172
    new-instance v2, Lcom/android/internal/telephony/ModemStackController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ModemStackController$1;-><init>(Lcom/android/internal/telephony/ModemStackController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 248
    iput-object p3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 249
    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    .line 250
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0xa

    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemCapEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aput v1, v2, v1

    .line 259
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aput v1, v2, v1

    .line 260
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v6, v2, v1

    .line 261
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v5, v2, v1

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ne v2, v6, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 267
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v2, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ModemStackController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method private areAllSubsinSameState(I)Z
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 551
    .local v3, "subState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areAllSubsinSameState state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " substate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 552
    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    .line 554
    .end local v3    # "subState":I
    :goto_1
    return v4

    .line 550
    .restart local v3    # "subState":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    .end local v3    # "subState":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private bindStackOnSub(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 447
    return-void
.end method

.method private deactivateAllSubscriptions()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 729
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 730
    .local v1, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v3

    .line 731
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    iput v8, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 732
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 733
    .local v2, "subInfo":Landroid/telephony/SubInfoRecord;
    iget-wide v6, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(J)I

    move-result v4

    .line 734
    .local v4, "subStatus":I
    if-ne v4, v9, :cond_0

    .line 735
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 736
    iget-wide v6, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->deactivateSubId(J)V

    .line 738
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    iget v6, v2, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 740
    .end local v2    # "subInfo":Landroid/telephony/SubInfoRecord;
    .end local v4    # "subStatus":I
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-lez v5, :cond_2

    .line 741
    iput v8, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 742
    iput-boolean v9, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 747
    :goto_1
    return-void

    .line 744
    :cond_2
    iput-boolean v8, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 745
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/ModemStackController;
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0
.end method

.method private isAnyCallsInProgress()Z
    .locals 6

    .prologue
    .line 629
    const/4 v1, 0x0

    .line 630
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 631
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(J)I

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    const/4 v1, 0x1

    .line 637
    :cond_0
    return v1

    .line 630
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAnyCmdFailed()Z
    .locals 3

    .prologue
    .line 565
    const/4 v1, 0x0

    .line 566
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 567
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 568
    const/4 v1, 0x1

    .line 566
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_1
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 836
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 840
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ModemStackController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 227
    const-string v0, "ModemStackController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ModemStackController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 233
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyModemDataCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 782
    const-string v0, "notifyGetDataCapabilitiesDone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 784
    return-void
.end method

.method private notifyModemRatCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 776
    const-string v0, "notifyGetRatCapabilitiesDone: Got RAT capabilities for all Stacks!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 779
    return-void
.end method

.method private notifyStackReady()V
    .locals 3

    .prologue
    .line 750
    const-string v1, "notifyStackReady: Stack is READY!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 751
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 752
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 753
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 755
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 763
    return-void
.end method

.method private onBindComplete(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x5

    .line 474
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 482
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 487
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->setPrefNwTypeOnAllSubs()V

    goto :goto_0
.end method

.method private onGetModemCapabilityDone(Landroid/os/AsyncResult;[BI)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "result"    # [B
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x2

    .line 368
    if-nez p2, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone: EXIT!, result null or Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone on phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 379
    if-ltz p3, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p3, v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p3

    .line 382
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 385
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyModemRatCapabilitiesAvailable()V

    goto :goto_0

    .line 389
    :cond_2
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSetPrefNwModeDone(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x7

    .line 492
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 500
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 510
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->updateNetworkSelectionMode()V

    .line 511
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    goto :goto_0
.end method

.method private onSubDeactivated(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 413
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 414
    .local v0, "subStatus":Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-eq v1, v0, :cond_1

    .line 416
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubDeactivated on phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Failed!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v4, v1, p2

    .line 420
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubDeactivated on phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aget v1, v1, p2

    if-ne v1, v5, :cond_3

    .line 441
    :cond_2
    :goto_0
    return-void

    .line 425
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v5, v1, p2

    .line 426
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 429
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-ne v1, v2, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 434
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 435
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 437
    :cond_4
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 438
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private onUnbindComplete(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x4

    .line 456
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 464
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerBindingOnAllSubs()V

    goto :goto_0
.end method

.method private onUnsolModemCapabilityChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 394
    const-string v3, "onUnsolModemCapabilityChanged"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 395
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;

    .line 397
    .local v2, "unsolOemHookBuffer":Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
    if-nez v2, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsolModemCapabilityChanged: EXIT!, result null or Exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->getUnsolOemHookBuffer()[B

    move-result-object v0

    check-cast v0, [B

    .line 403
    .local v0, "data":[B
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->getRilInstance()I

    move-result v1

    .line 405
    .local v1, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsolModemCapabilityChanged on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 408
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyModemDataCapabilitiesAvailable()V

    goto :goto_0
.end method

.method private parseGetModemCapabilityResponse([BI)V
    .locals 8
    .param p1, "result"    # [B
    .param p2, "phoneId"    # I

    .prologue
    const/4 v7, 0x7

    .line 593
    array-length v0, p1

    if-eq v0, v7, :cond_0

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGetModemCapabilityResponse: EXIT!, result length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and Expected length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not matching."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 614
    :goto_0
    return-void

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGetModemCapabilityResponse: buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 599
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 600
    .local v6, "respBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 602
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 604
    .local v2, "stackId":I
    if-ltz v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-lt v2, v0, :cond_2

    .line 605
    :cond_1
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 609
    .local v3, "supportedRatBitMask":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 610
    .local v4, "voiceDataCap":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .local v5, "maxDataCap":I
    move-object v0, p0

    move v1, p2

    .line 612
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController;->updateModemCapInfo(IIIII)V

    goto :goto_0
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable on phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 355
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p2, v1, :cond_0

    .line 356
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 359
    .local v0, "getModemCapsMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getModemCapability(Landroid/os/Message;)V

    .line 364
    .end local v0    # "getModemCapsMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 362
    :cond_0
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recoverToPrevState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 805
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    if-eqz v1, :cond_2

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 810
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 812
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 813
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aget v2, v2, v3

    if-ne v1, v2, :cond_1

    .line 816
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    .line 827
    :cond_1
    :goto_0
    return-void

    .line 821
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_3

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private resetSubStates()V
    .locals 3

    .prologue
    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_0
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 830
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 832
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 833
    return-void
.end method

.method private setPrefNwTypeOnAllSubs()V
    .locals 4

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 544
    const/4 v2, 0x7

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 545
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    .end local v1    # "resp":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 619
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    goto :goto_1

    .line 626
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private triggerBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 531
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_0
    return-void
.end method

.method private triggerDeactivationOnAllSubs()V
    .locals 1

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 537
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 538
    return-void
.end method

.method private triggerUnBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 524
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_0
    return-void
.end method

.method private unbindStackOnSub(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 451
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 452
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 453
    return-void
.end method

.method private updateModemCapInfo(IIIII)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "stackId"    # I
    .param p3, "supportedRatBitMask"    # I
    .param p4, "voiceDataCap"    # I
    .param p5, "maxDataCap"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aput p2, v0, p1

    .line 579
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v7, v0, p1

    new-instance v0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v1, p1

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;-><init>(Lcom/android/internal/telephony/ModemStackController;IIII)V

    aput-object v0, v6, v7

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateModemCapInfo: ModemCaps["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private updateNetworkSelectionMode()V
    .locals 3

    .prologue
    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentStackIdForPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMaxDataAllowed()I
    .locals 5

    .prologue
    .line 645
    const-string v4, "getMaxDataAllowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 646
    const/4 v2, 0x1

    .line 647
    .local v2, "ret":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v3, "unsortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 650
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 651
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getMaxDataCap()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 655
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 656
    .local v1, "listSize":I
    if-lez v1, :cond_2

    .line 657
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 659
    :cond_2
    return v2
.end method

.method public getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimarySub()I
    .locals 2

    .prologue
    .line 667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 668
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->getCurrentStackIdForPhoneId(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 672
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 667
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 280
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 283
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 284
    .local v1, "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_RADIO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 289
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 290
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 291
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_GET_MODEM_CAPS_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 292
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->onGetModemCapabilityDone(Landroid/os/AsyncResult;[BI)V

    goto :goto_0

    .line 296
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 297
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_MODEM_CAPABILITY_CHANGED ar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->onUnsolModemCapabilityChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 302
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v2, "CMD_DEACTIVATE_ALL_SUBS"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->deactivateAllSubscriptions()V

    goto :goto_0

    .line 307
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 308
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 309
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_SUB_DEACTIVATED"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onSubDeactivated(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 314
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 315
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "CMD_TRIGGER_UNBIND"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->unbindStackOnSub(I)V

    goto :goto_0

    .line 320
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 321
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 322
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_UNBIND_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onUnbindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 327
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 328
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "CMD_TRIGGER_BIND"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->bindStackOnSub(I)V

    goto/16 :goto_0

    .line 333
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 334
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 335
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_BIND_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onBindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 340
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 341
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 342
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_SET_PREF_MODE_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onSetPrefNwModeDone(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isStackReady()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    return v0
.end method

.method public registerForModemDataCapsUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 797
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 799
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 801
    monitor-exit v2

    .line 802
    return-void

    .line 801
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 787
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 788
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v1, :cond_0

    .line 789
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 791
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 793
    monitor-exit v2

    .line 794
    return-void

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 766
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 767
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 770
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 772
    monitor-exit v2

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStackBinding([IZLandroid/os/Message;)I
    .locals 8
    .param p1, "prefStackIds"    # [I
    .param p2, "isBootUp"    # Z
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 680
    const/4 v3, 0x0

    .line 681
    .local v3, "isUpdateRequired":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCallsInProgress()Z

    move-result v0

    .line 683
    .local v0, "callInProgress":Z
    iget v6, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ne v6, v5, :cond_1

    .line 684
    const-string v5, "No need to update Stack Binding in case of Single Sim."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 725
    :cond_0
    :goto_0
    return v4

    .line 687
    :cond_1
    const-string v6, "persist.radio.disable_flexmap"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    move v2, v5

    .line 690
    .local v2, "isFlexmapDisabled":Z
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    if-nez v6, :cond_4

    if-nez p2, :cond_4

    .line 691
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStackBinding: Calls is progress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsPhoneInEcbmMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsStackReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". So EXITING!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isFlexmapDisabled":Z
    :cond_3
    move v2, v4

    .line 687
    goto :goto_1

    .line 696
    .restart local v2    # "isFlexmapDisabled":Z
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v6, :cond_5

    .line 697
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v7, p1, v1

    aput v7, v6, v1

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 700
    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v6, :cond_6

    .line 701
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v7, v7, v1

    if-eq v6, v7, :cond_7

    .line 703
    const/4 v3, 0x1

    .line 708
    :cond_6
    if-nez v2, :cond_9

    if-eqz v3, :cond_9

    .line 709
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 711
    iput-object p3, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 713
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->syncPreferredNwModeFromDB()V

    .line 714
    if-eqz p2, :cond_8

    .line 715
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    :goto_4
    move v4, v5

    .line 725
    goto :goto_0

    .line 700
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 717
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerDeactivationOnAllSubs()V

    goto :goto_4

    .line 720
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStackBinding: FlexMap Disabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 722
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    goto/16 :goto_0
.end method
