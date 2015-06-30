.class Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Lcom/android/internal/telephony/dataconnection/DctController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DctController$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 176
    .local v2, "ss":Landroid/telephony/ServiceState;
    const-string v6, "subscription"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 177
    .local v4, "subId":J
    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 179
    .local v0, "phoneId":I
    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v6

    if-eqz v6, :cond_0

    cmp-long v6, v4, v10

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->isActiveSubId(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataStateReceiver: ignore invalid subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 184
    monitor-exit p0

    .line 231
    .end local v0    # "phoneId":I
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v4    # "subId":J
    :goto_0
    return-void

    .line 186
    .restart local v0    # "phoneId":I
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    .restart local v4    # "subId":J
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataStateReceiver: ignore invalid phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 188
    monitor-exit p0

    goto :goto_0

    .line 230
    .end local v0    # "phoneId":I
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v4    # "subId":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 191
    .restart local v0    # "phoneId":I
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    .restart local v4    # "subId":J
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v6

    aget-boolean v1, v6, v0

    .line 192
    .local v1, "prevPowerOff":Z
    if-eqz v2, :cond_4

    .line 193
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 194
    .local v3, "state":I
    packed-switch v3, :pswitch_data_0

    .line 217
    const-string v6, "DataStateReceiver: SERVICE_STATE_CHANGED invalid state"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 221
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v6

    aget-boolean v6, v6, v0

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->getDataConnectionFromSetting()I
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$700(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v6

    if-ne v0, v6, :cond_4

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataStateReceiver: Current Phone is none and default phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", then enableApnType()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const-string v7, "default"

    invoke-virtual {v6, v4, v5, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->enableApnType(JLjava/lang/String;)I

    .line 230
    .end local v0    # "phoneId":I
    .end local v1    # "prevPowerOff":Z
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v3    # "state":I
    .end local v4    # "subId":J
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 196
    .restart local v0    # "phoneId":I
    .restart local v1    # "prevPowerOff":Z
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    .restart local v3    # "state":I
    .restart local v4    # "subId":J
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v6

    const/4 v7, 0x1

    aput-boolean v7, v6, v0

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataStateReceiver: STATE_POWER_OFF Intent from phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v6

    const/4 v7, 0x0

    aput-boolean v7, v6, v0

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataStateReceiver: STATE_IN_SERVICE Intent from phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataStateReceiver: STATE_OUT_OF_SERVICE Intent from phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 208
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v6

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_3

    .line 209
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v6

    const/4 v7, 0x0

    aput-boolean v7, v6, v0

    goto/16 :goto_1

    .line 213
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataStateReceiver: STATE_EMERGENCY_ONLY Intent from phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
