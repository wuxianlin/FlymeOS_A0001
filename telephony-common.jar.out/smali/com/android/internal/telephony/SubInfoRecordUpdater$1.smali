.class Lcom/android/internal/telephony/SubInfoRecordUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubInfoRecordUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const-string v17, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "action":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Action: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 127
    const-string v17, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 128
    const-string v17, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 129
    .local v12, "simStatus":Ljava/lang/String;
    const-string v17, "slot"

    const/16 v18, -0x3e8

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 131
    .local v13, "slotId":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "slotId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " simStatus: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 132
    const/16 v17, -0x3e8

    move/from16 v0, v17

    if-ne v13, v0, :cond_0

    .line 186
    .end local v12    # "simStatus":Ljava/lang/String;
    .end local v13    # "slotId":I
    :goto_0
    return-void

    .line 136
    .restart local v12    # "simStatus":Ljava/lang/String;
    .restart local v13    # "slotId":I
    :cond_0
    const-string v17, "LOADED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 137
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()Landroid/telephony/TelephonyManager;

    move-result-object v17

    if-nez v17, :cond_1

    .line 138
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$102(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 141
    :cond_1
    const-string v17, "subscription"

    const-wide/16 v18, -0x3e8

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 144
    .local v14, "subId":J
    invoke-static {v14, v15}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 145
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "msisdn":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 148
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v8, :cond_2

    .line 149
    new-instance v11, Landroid/content/ContentValues;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 150
    .local v11, "number":Landroid/content/ContentValues;
    const-string v17, "number"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v17, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "_id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    .end local v11    # "number":Landroid/content/ContentValues;
    :cond_2
    invoke-static {v14, v15}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v16

    .line 158
    .local v16, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget v0, v0, Landroid/telephony/SubInfoRecord;->nameSource:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 160
    new-instance v7, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    .line 162
    .local v7, "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "CarrierName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CarrierName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 167
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " 0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v13, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "nameToSet":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Found, name = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 175
    :goto_1
    new-instance v9, Landroid/content/ContentValues;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 176
    .local v9, "name":Landroid/content/ContentValues;
    const-string v17, "display_name"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v17, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "_id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    .end local v4    # "CarrierName":Ljava/lang/String;
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v7    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v9    # "name":Landroid/content/ContentValues;
    .end local v10    # "nameToSet":Ljava/lang/String;
    .end local v12    # "simStatus":Ljava/lang/String;
    .end local v13    # "slotId":I
    .end local v14    # "subId":J
    .end local v16    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_3
    :goto_2
    const-string v17, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .restart local v4    # "CarrierName":Ljava/lang/String;
    .restart local v6    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v7    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .restart local v8    # "msisdn":Ljava/lang/String;
    .restart local v12    # "simStatus":Ljava/lang/String;
    .restart local v13    # "slotId":I
    .restart local v14    # "subId":J
    .restart local v16    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SUB 0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v13, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 172
    .restart local v10    # "nameToSet":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Not found, name = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    .end local v4    # "CarrierName":Ljava/lang/String;
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v7    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v10    # "nameToSet":Ljava/lang/String;
    .end local v16    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_5
    const-string v17, "[Receiver] Invalid subId, could not update ContentResolver"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto :goto_2
.end method
