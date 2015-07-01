.class public Lcom/android/internal/telephony/gsm/OppoSIMRecords;
.super Ljava/lang/Object;
.source "OppoSIMRecords.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "OppoSIMRecords"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllSlotId(Landroid/content/Context;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 43
    .local v2, "value":Landroid/content/ContentValues;
    const-string v3, "slot"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    const-string v0, "slot!=-1"

    .line 45
    .local v0, "selectionWithId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 46
    .local v1, "vRet":I
    return-void
.end method

.method public static clearSlotId(Landroid/content/Context;I)V
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "vSlot"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 49
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "oldSimInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 52
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "slot"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    iget-wide v6, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static getIccIdsDone(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "vSlot"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, "oldIccIdInSlot":Ljava/lang/String;
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v3

    .line 61
    .local v3, "oldSimInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 62
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubInfoRecord;

    iget-object v2, v5, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    .line 63
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 64
    .local v4, "value":Landroid/content/ContentValues;
    const-string v5, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubInfoRecord;

    iget-wide v8, v5, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5, v4, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "nNewCardCount":I
    if-eqz p1, :cond_1

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 77
    :cond_1
    if-lez v1, :cond_2

    .line 78
    if-nez p2, :cond_4

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oppo.qualcomm.gemini.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 80
    .local v0, "isGemini":Z
    if-ne v0, v10, :cond_3

    .line 81
    const-string v5, "SIM1"

    invoke-static {p0, v5, p2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    .end local v0    # "isGemini":Z
    :cond_2
    :goto_0
    return-void

    .line 83
    .restart local v0    # "isGemini":Z
    :cond_3
    const-string v5, "SIM"

    invoke-static {p0, v5, p2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    .end local v0    # "isGemini":Z
    :cond_4
    const-string v5, "SIM2"

    invoke-static {p0, v5, p2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "OppoSIMRecords"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public static setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "strName"    # Ljava/lang/String;
    .param p2, "vSlot"    # I

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "oldSimInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    iget-object v1, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 94
    .local v1, "simDisplayName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 95
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    iget-wide v2, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {p1, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;J)I

    .line 98
    .end local v1    # "simDisplayName":Ljava/lang/String;
    :cond_0
    return-void
.end method
