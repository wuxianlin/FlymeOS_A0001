.class public Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;
.super Ljava/lang/Object;
.source "DupSmsFilterExt.java"

# interfaces
.implements Lcom/android/internal/telephony/oppo_mtk/IDupSmsFilterExt;


# static fields
.field protected static final DEFAULT_DUP_SMS_KEEP_PERIOD:J = 0x493e0L

.field protected static final EVENT_CLEAR_SMS_LIST:I = 0x1

.field protected static final KEY_DUP_SMS_KEEP_PERIOD:Ljava/lang/String; = "dev.dup_sms_keep_period"

.field private static TAG:Ljava/lang/String;

.field private static volatile mDupSmsFilterExt:Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSimId:I

.field protected mSmsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "sms"

    sput-object v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simId"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mContext:Landroid/content/Context;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSimId:I

    .line 67
    iput-object v1, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    .line 81
    sget-object v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "call constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-nez p1, :cond_0

    .line 83
    sget-object v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "FAIL! context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mContext:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSimId:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 71
    sget-object v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mDupSmsFilterExt:Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;

    if-nez v0, :cond_0

    .line 72
    const-class v1, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;

    monitor-enter v1

    .line 73
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mDupSmsFilterExt:Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;

    .line 74
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mDupSmsFilterExt:Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isTestIccCard()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized removeExpiredItem()V
    .locals 8

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v5, "call removeExpiredItem"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v4, "dev.dup_sms_keep_period"

    const-wide/32 v6, 0x493e0

    invoke-static {v4, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 130
    .local v0, "delayedPeriod":J
    iget-object v4, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 131
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 133
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "delayedPeriod":J
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 137
    .restart local v0    # "delayedPeriod":J
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSmsMap has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " items after removeExpiredItem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public containDupSms([B)Z
    .locals 8
    .param p1, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 94
    sget-object v2, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v4, "call containDupSms"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->isTestIccCard()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 112
    :goto_0
    return v2

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->removeExpiredItem()V

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->isDupSms([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const/4 v2, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit v4

    move v2, v3

    .line 112
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected isDupSms([B[B)Z
    .locals 2
    .param p1, "newPdu"    # [B
    .param p2, "oldPdu"    # [B

    .prologue
    .line 116
    sget-object v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "call isDupSms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/internal/telephony/oppo_mtk/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "find a duplicated sms--------------warning!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
