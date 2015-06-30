.class Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceCategoryProgramHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendScpResults()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultCode()I

    move-result v7

    .line 129
    .local v7, "resultCode":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_0

    const/4 v10, 0x1

    if-eq v7, v10, :cond_0

    .line 130
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SCP results error: result code = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$100(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    .line 134
    .local v6, "extras":Landroid/os/Bundle;
    if-nez v6, :cond_1

    .line 135
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v11, "SCP results error: missing extras"

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    const-string v10, "sender"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "sender":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 140
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v11, "SCP results error: missing sender extra."

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    const-string v10, "results"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 145
    .local v8, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    if-nez v8, :cond_3

    .line 146
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v11, "SCP results error: missing results extra."

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 151
    .local v0, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v10, 0x2

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v10

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 153
    iput-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 154
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .line 156
    .local v5, "encodedBearerData":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v1, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 157
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/16 v10, 0x1006

    :try_start_0
    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 160
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 161
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 162
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 164
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 165
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 166
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 167
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 168
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 169
    iget-object v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v12, v12

    invoke-virtual {v3, v10, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 171
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 172
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 173
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 174
    array-length v10, v5

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 175
    const/4 v10, 0x0

    array-length v11, v5

    invoke-virtual {v3, v5, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 177
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 183
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 178
    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_1
    move-exception v4

    .line 179
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v11, "exception creating SCP results PDU"

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v10, v11, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$500(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 183
    :catch_2
    move-exception v10

    goto/16 :goto_0

    .line 181
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 182
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 184
    :goto_1
    throw v10

    .line 183
    :catch_3
    move-exception v11

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->sendScpResults()V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v1, "mScpResultsReceiver finished"

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$000(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->sendMessage(I)V

    .line 125
    return-void
.end method
