.class public Landroid/provider/oppo/Telephony$SIMInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/oppo/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/oppo/Telephony$SIMInfo$ErrorCode;
    }
.end annotation


# instance fields
.field public mColor:I

.field public mDataRoaming:I

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mICCId:Ljava/lang/String;

.field public mNameSource:I

.field public mNumber:Ljava/lang/String;

.field public mSimBackgroundRes:I

.field public mSimId:J

.field public mSlot:I

.field public mWapPush:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3521
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/oppo/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 3523
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/oppo/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 3524
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/oppo/Telephony$SIMInfo;->mDispalyNumberFormat:I

    .line 3526
    iput v2, p0, Landroid/provider/oppo/Telephony$SIMInfo;->mDataRoaming:I

    .line 3527
    iput v1, p0, Landroid/provider/oppo/Telephony$SIMInfo;->mSlot:I

    .line 3528
    sget-object v0, Landroid/provider/oppo/Telephony;->SIMBackgroundRes:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimBackgroundRes:I

    .line 3529
    iput v1, p0, Landroid/provider/oppo/Telephony$SIMInfo;->mWapPush:I

    .line 3531
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Landroid/provider/oppo/Telephony$SIMInfo;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 3570
    new-instance v0, Landroid/provider/oppo/Telephony$SIMInfo;

    invoke-direct {v0}, Landroid/provider/oppo/Telephony$SIMInfo;-><init>()V

    .line 3571
    .local v0, "info":Landroid/provider/oppo/Telephony$SIMInfo;
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    .line 3572
    const-string v2, "icc_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 3573
    const-string v2, "display_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 3574
    const-string v2, "name_source"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mNameSource:I

    .line 3575
    const-string v2, "number"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 3576
    const-string v2, "display_number_format"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mDispalyNumberFormat:I

    .line 3577
    const-string v2, "color"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    .line 3578
    const-string v2, "data_roaming"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mDataRoaming:I

    .line 3579
    const-string v2, "slot"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSlot:I

    .line 3580
    sget-object v2, Landroid/provider/oppo/Telephony;->SIMBackgroundRes:[I

    array-length v1, v2

    .line 3581
    .local v1, "size":I
    iget v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    if-ltz v2, :cond_0

    iget v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    if-ge v2, v1, :cond_0

    .line 3582
    sget-object v2, Landroid/provider/oppo/Telephony;->SIMBackgroundRes:[I

    iget v3, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    aget v2, v2, v3

    iput v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimBackgroundRes:I

    .line 3584
    :cond_0
    const-string v2, "wap_push"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mWapPush:I

    .line 3585
    return-object v0
.end method

.method private static fromCursor(Landroid/database/Cursor;Landroid/content/Context;)Landroid/provider/oppo/Telephony$SIMInfo;
    .locals 9
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 3539
    new-instance v6, Landroid/provider/oppo/Telephony$SIMInfo;

    invoke-direct {v6}, Landroid/provider/oppo/Telephony$SIMInfo;-><init>()V

    .line 3540
    .local v6, "info":Landroid/provider/oppo/Telephony$SIMInfo;
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    .line 3541
    const-string v0, "icc_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 3543
    const-string v0, "display_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3544
    .local v7, "name":Ljava/lang/String;
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",info.mSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "info.mSimId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    if-eqz v7, :cond_1

    const-string v0, "SIM1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3546
    const-string v0, "SIM2"

    iput-object v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 3547
    const-string v1, "SIM2"

    iget-wide v2, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/oppo/Telephony$SIMInfo;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    .line 3555
    :goto_0
    const-string v0, "name_source"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mNameSource:I

    .line 3556
    const-string v0, "number"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 3557
    const-string v0, "display_number_format"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mDispalyNumberFormat:I

    .line 3558
    const-string v0, "color"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    .line 3559
    const-string v0, "data_roaming"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mDataRoaming:I

    .line 3560
    const-string v0, "slot"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSlot:I

    .line 3561
    sget-object v0, Landroid/provider/oppo/Telephony;->SIMBackgroundRes:[I

    array-length v8, v0

    .line 3562
    .local v8, "size":I
    iget v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    if-ltz v0, :cond_0

    iget v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    if-ge v0, v8, :cond_0

    .line 3563
    sget-object v0, Landroid/provider/oppo/Telephony;->SIMBackgroundRes:[I

    iget v1, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    aget v0, v0, v1

    iput v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSimBackgroundRes:I

    .line 3565
    :cond_0
    const-string v0, "wap_push"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mWapPush:I

    .line 3566
    return-object v6

    .line 3548
    .end local v8    # "size":I
    :cond_1
    if-eqz v7, :cond_2

    const-string v0, "SIM2"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSlot:I

    if-nez v0, :cond_2

    .line 3549
    const-string v0, "SIM1"

    iput-object v0, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 3550
    const-string v1, "SIM1"

    iget-wide v2, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/oppo/Telephony$SIMInfo;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    goto/16 :goto_0

    .line 3552
    :cond_2
    iput-object v7, v6, Landroid/provider/oppo/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3810
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3813
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3814
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3817
    if-eqz v6, :cond_0

    .line 3818
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3821
    :cond_0
    :goto_0
    return v0

    .line 3817
    :cond_1
    if-eqz v6, :cond_2

    .line 3818
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3821
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3817
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3818
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/oppo/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3617
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3618
    .local v7, "simList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/oppo/Telephony$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3621
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3622
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3623
    invoke-static {v6, p0}, Landroid/provider/oppo/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;Landroid/content/Context;)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3627
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 3628
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 3627
    :cond_1
    if-eqz v6, :cond_2

    .line 3628
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3631
    :cond_2
    return-object v7
.end method

.method private static getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I
    .locals 21
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 3999
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4000
    .local v10, "default_name":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "display_name LIKE "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4001
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-nez p3, :cond_1

    .line 4002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4006
    :goto_0
    const-string v2, " AND ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4008
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4010
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "display_name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4012
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4013
    .local v8, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    .line 4014
    .local v13, "index":I
    if-eqz v9, :cond_3

    .line 4015
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4016
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4018
    .local v11, "display_name":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 4019
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 4020
    .local v14, "length":I
    const/4 v2, 0x2

    if-lt v14, v2, :cond_0

    .line 4021
    add-int/lit8 v2, v14, -0x2

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 4022
    .local v16, "sub":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4023
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 4024
    .local v18, "value":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4004
    .end local v8    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "display_name":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v14    # "length":I
    .end local v16    # "sub":Ljava/lang/String;
    .end local v18    # "value":J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4029
    .restart local v8    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "index":I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4031
    :cond_3
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_2
    const/16 v2, 0x63

    if-gt v12, v2, :cond_5

    .line 4032
    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4031
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 4035
    :cond_4
    move v13, v12

    .line 4039
    :cond_5
    return v13
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 3757
    invoke-static {p0, p1}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v0

    .line 3758
    .local v0, "simInfo":Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 3759
    iget-wide v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    .line 3760
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3791
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3794
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3795
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3798
    if-eqz v6, :cond_0

    .line 3799
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3802
    :cond_0
    :goto_0
    return v0

    .line 3798
    :cond_1
    if-eqz v6, :cond_2

    .line 3799
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3802
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3798
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3799
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/oppo/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3594
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3595
    .local v7, "simList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/oppo/Telephony$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    const-string v5, "slot ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3598
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3599
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3600
    invoke-static {v6, p0}, Landroid/provider/oppo/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;Landroid/content/Context;)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3604
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 3605
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 3604
    :cond_1
    if-eqz v6, :cond_2

    .line 3605
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3608
    :cond_2
    return-object v7
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/oppo/Telephony$SIMInfo;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3711
    if-nez p1, :cond_1

    .line 3725
    :cond_0
    :goto_0
    return-object v2

    .line 3712
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "icc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3715
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3716
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3717
    invoke-static {v6, p0}, Landroid/provider/oppo/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;Landroid/content/Context;)Landroid/provider/oppo/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3721
    if-eqz v6, :cond_0

    .line 3722
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3721
    :cond_2
    if-eqz v6, :cond_0

    .line 3722
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3721
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3722
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/provider/oppo/Telephony$SIMInfo;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMId"    # J

    .prologue
    const/4 v2, 0x0

    .line 3641
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 3655
    :cond_0
    :goto_0
    return-object v2

    .line 3642
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3645
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3646
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3647
    invoke-static {v6, p0}, Landroid/provider/oppo/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;Landroid/content/Context;)Landroid/provider/oppo/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3651
    if-eqz v6, :cond_0

    .line 3652
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3651
    :cond_2
    if-eqz v6, :cond_0

    .line 3652
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3651
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3652
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/oppo/Telephony$SIMInfo;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3665
    if-nez p1, :cond_1

    .line 3679
    :cond_0
    :goto_0
    return-object v2

    .line 3666
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3669
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3670
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3671
    invoke-static {v6, p0}, Landroid/provider/oppo/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;Landroid/content/Context;)Landroid/provider/oppo/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3675
    if-eqz v6, :cond_0

    .line 3676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3675
    :cond_2
    if-eqz v6, :cond_0

    .line 3676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3675
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cardSlot"    # I

    .prologue
    const/4 v2, 0x0

    .line 3688
    if-gez p1, :cond_1

    .line 3702
    :cond_0
    :goto_0
    return-object v2

    .line 3689
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3692
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3693
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3694
    invoke-static {v6, p0}, Landroid/provider/oppo/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;Landroid/content/Context;)Landroid/provider/oppo/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3698
    if-eqz v6, :cond_0

    .line 3699
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3698
    :cond_2
    if-eqz v6, :cond_0

    .line 3699
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3698
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3699
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 3734
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v7

    .line 3748
    :cond_0
    :goto_0
    return v0

    .line 3735
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "slot"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3738
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3739
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3740
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3744
    if-eqz v6, :cond_0

    .line 3745
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3744
    :cond_2
    if-eqz v6, :cond_3

    .line 3745
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 3748
    goto :goto_0

    .line 3744
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3745
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 3769
    if-nez p1, :cond_1

    move v0, v7

    .line 3783
    :cond_0
    :goto_0
    return v0

    .line 3770
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "slot"

    aput-object v3, v2, v5

    const-string v3, "display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3773
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3774
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3775
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3779
    if-eqz v6, :cond_0

    .line 3780
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3779
    :cond_2
    if-eqz v6, :cond_3

    .line 3780
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 3783
    goto :goto_0

    .line 3779
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3780
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getSuffixFromIndex(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 3991
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 3992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3994
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ICCId"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 3938
    if-nez p1, :cond_0

    .line 3939
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ICCId should not null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3942
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3943
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "icc_id=?"

    .line 3944
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "slot"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3946
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3947
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3948
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "icc_id"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3949
    const-string v1, "color"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3950
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3951
    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 3964
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v10, "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 3965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3969
    :cond_3
    return-object v10

    .line 3954
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3955
    .local v8, "simId":J
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3956
    .local v7, "oldSlot":I
    sget-object v1, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 3957
    .restart local v10    # "uri":Landroid/net/Uri;
    if-eq p2, v7, :cond_2

    .line 3958
    new-instance v11, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3959
    .restart local v11    # "values":Landroid/content/ContentValues;
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3960
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3964
    .end local v7    # "oldSlot":I
    .end local v8    # "simId":J
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 3965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "color"    # I
    .param p2, "SIMId"    # J

    .prologue
    const/4 v4, 0x0

    .line 3879
    sget-object v2, Landroid/provider/oppo/Telephony;->SIMBackgroundRes:[I

    array-length v0, v2

    .line 3880
    .local v0, "size":I
    if-ltz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 3883
    :goto_0
    return v2

    .line 3881
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3882
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3883
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "roaming"    # I
    .param p2, "SIMId"    # J

    .prologue
    const/4 v4, 0x0

    .line 3910
    if-ltz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3913
    :goto_0
    return v1

    .line 3911
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3912
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3913
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 3973
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-nez p3, :cond_1

    .line 3983
    :cond_0
    :goto_0
    return v1

    .line 3976
    :cond_1
    if-eqz p3, :cond_0

    .line 3977
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3978
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3979
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameSource"    # J

    .prologue
    .line 3987
    invoke-static {p0, p1, p2, p3}, Landroid/provider/oppo/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "format"    # I
    .param p2, "SIMId"    # J

    .prologue
    const/4 v4, 0x0

    .line 3895
    if-ltz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3898
    :goto_0
    return v1

    .line 3896
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3897
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "display_number_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3898
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "SIMId"    # J

    .prologue
    const/4 v4, 0x0

    .line 3832
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3835
    :goto_0
    return v1

    .line 3833
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3834
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "SIMId"    # J
    .param p4, "Source"    # J

    .prologue
    const/4 v4, 0x0

    .line 3848
    const-string v1, "Telephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayNameEx SIMId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "displayName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3853
    :goto_0
    return v1

    .line 3850
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3851
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3852
    const-string v1, "name_source"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3853
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SIMId"    # J

    .prologue
    const/4 v4, 0x0

    .line 3864
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3867
    :goto_0
    return v1

    .line 3865
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3866
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setWAPPush(Landroid/content/Context;IJ)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # I
    .param p2, "SIMId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 3922
    if-gt p1, v4, :cond_0

    if-lt p1, v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 3927
    :cond_0
    :goto_0
    return v1

    .line 3925
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 3926
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "wap_push"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3927
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
