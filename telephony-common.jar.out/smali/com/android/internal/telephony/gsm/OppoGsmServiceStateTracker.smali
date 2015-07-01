.class public Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;
.super Ljava/lang/Object;
.source "OppoGsmServiceStateTracker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static oppoShowPlmn:Z

.field private static oppoShowSpn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    .line 47
    sput-boolean v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShowPlmn()Z
    .locals 1

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    return v0
.end method

.method public static getShowSpn()Z
    .locals 1

    .prologue
    .line 202
    sget-boolean v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    return v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public static oppoGetAustraliaPlmn(Landroid/telephony/ServiceState;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ss"    # Landroid/telephony/ServiceState;
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "simNumeric"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v2, "ro.oppo.version"

    const-string v3, "CN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "region":Ljava/lang/String;
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "23211"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "23201"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string p1, "bob"

    .line 141
    :cond_0
    :goto_0
    move-object v1, p1

    .line 144
    .local v1, "vRet":Ljava/lang/String;
    return-object v1

    .line 128
    .end local v1    # "vRet":Ljava/lang/String;
    :cond_1
    const-string v2, "23212"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "23201"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const-string p1, "yesss!"

    goto :goto_0

    .line 131
    :cond_2
    const-string v2, "50218"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "50212"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const-string p1, "U Mobile"

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "50212"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string p1, "MY MAXIS"

    goto :goto_0
.end method

.method public static oppoGetPlmnOverride(Landroid/content/Context;Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operatorNumic"    # Ljava/lang/String;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmcmnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "oppo"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "plmn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leon operatorNumic is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", plmn is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "plmn":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v2

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "OperatorName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "OperatorName":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static oppoNvCheckAndRestore(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "state.nvRestore.onBootup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const-string v4, "nv restore state reached."

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 58
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 61
    .local v2, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 62
    .local v3, "r":Landroid/content/res/Resources;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Oppo_NV_Backup:The NV partition is invalid!"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x1080078

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "Oppo_NV_Backup"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "The NV partition is invalid!"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 72
    .local v0, "mNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 73
    .local v1, "n":Landroid/app/Notification;
    const/16 v4, 0x22b8

    invoke-virtual {v2, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 76
    .end local v0    # "mNotificationBuilder":Landroid/app/Notification$Builder;
    .end local v1    # "n":Landroid/app/Notification;
    .end local v2    # "nm":Landroid/app/NotificationManager;
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "keylog.nvCheck.produce"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const-string v4, "key log reached"

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 79
    const-string v4, "nvCheckComplete on production line"

    .line 81
    :cond_1
    return-void
.end method

.method public static oppoSetDataNetmgrdMTU(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const-string v0, "persist.data_netmgrd_mtu"

    const-string v1, "1400"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    const-string v0, "persist.data_netmgrd_mtu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "persist.data_netmgrd_mtu"

    const-string v1, "1500"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static oppoShowSpnOrPlmn(Landroid/telephony/ServiceState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "ss"    # Landroid/telephony/ServiceState;
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 152
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 154
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "520"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    :cond_1
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 160
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 170
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 171
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    .line 179
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46689"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 181
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 182
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    .line 189
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "51010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 191
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 192
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    .line 199
    :cond_6
    :goto_3
    return-void

    .line 162
    :cond_7
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 163
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    goto :goto_0

    .line 173
    :cond_8
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 174
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    goto :goto_1

    .line 184
    :cond_9
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 185
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    goto :goto_2

    .line 194
    :cond_a
    sput-boolean v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowSpn:Z

    .line 195
    sput-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->oppoShowPlmn:Z

    goto :goto_3
.end method
