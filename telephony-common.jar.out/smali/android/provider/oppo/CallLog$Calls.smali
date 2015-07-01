.class public Landroid/provider/oppo/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/oppo/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/oppo/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final AUTOREJECTED_TYPE:I = 0x5

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IP_PREFIX:Ljava/lang/String; = "ip_prefix"

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PRIVATE_NAME:Ljava/lang/String; = "private_name"

.field public static final PRIVATE_TYPE:Ljava/lang/String; = "private_type"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final RING_TIME:Ljava/lang/String; = "ring_time"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"

.field public static final VTCALL:Ljava/lang/String; = "vtcall"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 67
    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oppo/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 103
    sget-object v0, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;
    .locals 11
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I

    .prologue
    .line 315
    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v10}, Landroid/provider/oppo/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;
    .locals 11
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "simId"    # I

    .prologue
    .line 336
    const/4 v10, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/provider/oppo/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;
    .locals 19
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "simId"    # I
    .param p9, "vtCall"    # I

    .prologue
    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "mtk.gemini.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    # setter for: Landroid/provider/oppo/CallLog;->isMtkSupport:Z
    invoke-static {v3}, Landroid/provider/oppo/CallLog;->access$002(Z)Z

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    # setter for: Landroid/provider/oppo/CallLog;->isMtkGeminiSupport:Z
    invoke-static {v3}, Landroid/provider/oppo/CallLog;->access$102(Z)Z

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 364
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 365
    const-string p2, "-2"

    .line 366
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 376
    :cond_0
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v15, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 378
    .local v15, "values":Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v3, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v3, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 381
    const-string v3, "duration"

    move/from16 v0, p7

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-string v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_1

    .line 384
    const-string v3, "is_read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    :cond_1
    if-eqz p0, :cond_3

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_2

    .line 388
    const-string v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_2
    const-string v3, "numbertype"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string v3, "numberlabel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_3
    const-string v3, "simid"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    if-ltz p9, :cond_4

    .line 396
    const-string v3, "vtcall"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    :cond_4
    if-eqz p0, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 409
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 410
    .local v11, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =? AND data4 =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 426
    .end local v11    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v8, :cond_6

    .line 428
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    sget-object v3, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "call"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 434
    .local v9, "feedbackUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v9    # "feedbackUri":Landroid/net/Uri;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 443
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_6
    const/4 v10, 0x0

    .line 444
    .local v10, "ipPrefix":Ljava/lang/String;
    # getter for: Landroid/provider/oppo/CallLog;->isMtkSupport:Z
    invoke-static {}, Landroid/provider/oppo/CallLog;->access$000()Z

    move-result v3

    if-eqz v3, :cond_d

    # getter for: Landroid/provider/oppo/CallLog;->isMtkGeminiSupport:Z
    invoke-static {}, Landroid/provider/oppo/CallLog;->access$100()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipprefix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 449
    :goto_2
    if-eqz v10, :cond_7

    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    .line 451
    const-string v3, "ip_prefix"

    invoke-virtual {v15, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 453
    .local v14, "tmpNumber":Ljava/lang/String;
    const-string v3, "number"

    invoke-virtual {v15, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .end local v14    # "tmpNumber":Ljava/lang/String;
    :cond_7
    sget-object v3, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 459
    .local v13, "result":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/provider/oppo/CallLog$Calls;->removeExpiredEntries(Landroid/content/Context;)V

    .line 461
    return-object v13

    .line 367
    .end local v10    # "ipPrefix":Ljava/lang/String;
    .end local v13    # "result":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_8
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    .line 368
    const-string p2, "-3"

    .line 369
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 370
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 372
    :cond_a
    const-string p2, "-1"

    .line 373
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 416
    .restart local v15    # "values":Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 417
    .local v12, "phoneNumber":Ljava/lang/String;
    :goto_3
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "phoneNumber":Ljava/lang/String;
    :cond_c
    move-object/from16 v12, p2

    .line 416
    goto :goto_3

    .line 437
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 447
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "ipPrefix":Ljava/lang/String;
    :cond_d
    const-string v3, "ipprefix"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIII)Landroid/net/Uri;
    .locals 19
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "simId"    # I
    .param p9, "vtCall"    # I
    .param p10, "ringTime"    # I

    .prologue
    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "mtk.gemini.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    # setter for: Landroid/provider/oppo/CallLog;->isMtkSupport:Z
    invoke-static {v3}, Landroid/provider/oppo/CallLog;->access$002(Z)Z

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    # setter for: Landroid/provider/oppo/CallLog;->isMtkGeminiSupport:Z
    invoke-static {v3}, Landroid/provider/oppo/CallLog;->access$102(Z)Z

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 488
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 489
    const-string p2, "-2"

    .line 490
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 500
    :cond_0
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v15, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 502
    .local v15, "values":Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v3, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v3, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    const-string v3, "duration"

    move/from16 v0, p7

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    const-string v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_1

    .line 509
    const-string v3, "is_read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    :cond_1
    if-eqz p0, :cond_3

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_2

    .line 513
    const-string v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_2
    const-string v3, "numbertype"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string v3, "numberlabel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_3
    const-string v3, "simid"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    if-ltz p9, :cond_4

    .line 521
    const-string v3, "vtcall"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    :cond_4
    const-string v3, "ring_time"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    if-eqz p0, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 536
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 537
    .local v11, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =? AND data4 =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 553
    .end local v11    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v8, :cond_6

    .line 555
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 556
    sget-object v3, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "call"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 561
    .local v9, "feedbackUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .end local v9    # "feedbackUri":Landroid/net/Uri;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 570
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_6
    const/4 v10, 0x0

    .line 571
    .local v10, "ipPrefix":Ljava/lang/String;
    # getter for: Landroid/provider/oppo/CallLog;->isMtkSupport:Z
    invoke-static {}, Landroid/provider/oppo/CallLog;->access$000()Z

    move-result v3

    if-eqz v3, :cond_d

    # getter for: Landroid/provider/oppo/CallLog;->isMtkGeminiSupport:Z
    invoke-static {}, Landroid/provider/oppo/CallLog;->access$100()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipprefix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 576
    :goto_2
    if-eqz v10, :cond_7

    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    .line 578
    const-string v3, "ip_prefix"

    invoke-virtual {v15, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 580
    .local v14, "tmpNumber":Ljava/lang/String;
    const-string v3, "number"

    invoke-virtual {v15, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .end local v14    # "tmpNumber":Ljava/lang/String;
    :cond_7
    sget-object v3, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 586
    .local v13, "result":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/provider/oppo/CallLog$Calls;->removeExpiredEntries(Landroid/content/Context;)V

    .line 588
    return-object v13

    .line 491
    .end local v10    # "ipPrefix":Ljava/lang/String;
    .end local v13    # "result":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_8
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    .line 492
    const-string p2, "-3"

    .line 493
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 494
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 496
    :cond_a
    const-string p2, "-1"

    .line 497
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 543
    .restart local v15    # "values":Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 544
    .local v12, "phoneNumber":Ljava/lang/String;
    :goto_3
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "phoneNumber":Ljava/lang/String;
    :cond_c
    move-object/from16 v12, p2

    .line 543
    goto :goto_3

    .line 564
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 574
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "ipPrefix":Ljava/lang/String;
    :cond_d
    const-string v3, "ipprefix"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJIIIII)Landroid/net/Uri;
    .locals 18
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "private_name"    # Ljava/lang/String;
    .param p4, "presentation"    # I
    .param p5, "callType"    # I
    .param p6, "start"    # J
    .param p8, "duration"    # I
    .param p9, "simId"    # I
    .param p10, "vtCall"    # I
    .param p11, "private_type"    # I
    .param p12, "ringTime"    # I

    .prologue
    .line 609
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "mtk.gemini.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    # setter for: Landroid/provider/oppo/CallLog;->isMtkSupport:Z
    invoke-static {v3}, Landroid/provider/oppo/CallLog;->access$002(Z)Z

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    # setter for: Landroid/provider/oppo/CallLog;->isMtkGeminiSupport:Z
    invoke-static {v3}, Landroid/provider/oppo/CallLog;->access$102(Z)Z

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 615
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    .line 616
    const-string p2, "-2"

    .line 617
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 627
    :cond_0
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v15, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 629
    .local v15, "values":Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v3, "type"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 632
    const-string v3, "duration"

    move/from16 v0, p8

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 633
    const-string v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const-string v3, "private_name"

    move-object/from16 v0, p3

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v3, "private_type"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    const-string v3, "simid"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_1

    .line 639
    const-string v3, "is_read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    :cond_1
    if-eqz p0, :cond_2

    .line 642
    const-string v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v3, "numbertype"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v3, "numberlabel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_2
    if-ltz p10, :cond_3

    .line 647
    const-string v3, "vtcall"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    :cond_3
    const-string v3, "ring_time"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    if-eqz p0, :cond_5

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 662
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 663
    .local v11, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =? AND data4 =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 677
    .end local v11    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v8, :cond_5

    .line 679
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 680
    sget-object v3, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "call"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 685
    .local v9, "feedbackUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    .end local v9    # "feedbackUri":Landroid/net/Uri;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 694
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_5
    const/4 v10, 0x0

    .line 695
    .local v10, "ipPrefix":Ljava/lang/String;
    # getter for: Landroid/provider/oppo/CallLog;->isMtkSupport:Z
    invoke-static {}, Landroid/provider/oppo/CallLog;->access$000()Z

    move-result v3

    if-eqz v3, :cond_c

    # getter for: Landroid/provider/oppo/CallLog;->isMtkGeminiSupport:Z
    invoke-static {}, Landroid/provider/oppo/CallLog;->access$100()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipprefix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 700
    :goto_2
    if-eqz v10, :cond_6

    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x2

    move/from16 v0, p5

    if-ne v0, v3, :cond_6

    .line 702
    const-string v3, "ip_prefix"

    invoke-virtual {v15, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 704
    .local v14, "tmpNumber":Ljava/lang/String;
    const-string v3, "number"

    invoke-virtual {v15, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .end local v14    # "tmpNumber":Ljava/lang/String;
    :cond_6
    sget-object v3, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 709
    .local v13, "result":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/provider/oppo/CallLog$Calls;->removeExpiredEntries(Landroid/content/Context;)V

    .line 711
    return-object v13

    .line 618
    .end local v10    # "ipPrefix":Ljava/lang/String;
    .end local v13    # "result":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_7
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_8

    .line 619
    const-string p2, "-3"

    .line 620
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 621
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_0

    .line 623
    :cond_9
    const-string p2, "-1"

    .line 624
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 669
    .restart local v15    # "values":Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 670
    .local v12, "phoneNumber":Ljava/lang/String;
    :goto_3
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =? AND data1 =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v12, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "phoneNumber":Ljava/lang/String;
    :cond_b
    move-object/from16 v12, p2

    .line 669
    goto :goto_3

    .line 688
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 698
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "ipPrefix":Ljava/lang/String;
    :cond_c
    const-string v3, "ipprefix"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 723
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 725
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const-string v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 731
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 732
    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v1

    .line 734
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 736
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 741
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 742
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 745
    return-void
.end method
