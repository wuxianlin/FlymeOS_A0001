.class Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DdsSwitchSerializerHandler"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsSwitchSerializer"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 780
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 781
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 803
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 856
    :goto_0
    return-void

    .line 805
    :pswitch_0
    const-string v3, "DdsSwitchSerializer"

    const-string v4, "EVENT_START_DDS_SWITCH"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$900(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 810
    const-string v3, "DdsSwitchSerializer"

    const-string v4, "DDS switch in progress, wait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 816
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 817
    :catch_0
    move-exception v14

    .line 818
    .local v14, "e":Ljava/lang/Exception;
    const-string v3, "DdsSwitchSerializer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while serializing the DDS switch request , e="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    const-string v3, "DdsSwitchSerializer"

    const-string v4, "Locked!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$902(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 816
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 823
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkRequest;

    .line 825
    .local v5, "n":Landroid/net/NetworkRequest;
    const-string v3, "DdsSwitchSerializer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start the DDS switch for req "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)J

    move-result-wide v18

    .line 828
    .local v18, "subId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()J

    move-result-wide v8

    cmp-long v3, v18, v8

    if-nez v3, :cond_1

    .line 829
    const-string v3, "DdsSwitchSerializer"

    const-string v4, "No change in DDS, respond back"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$902(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1100(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/os/RegistrantList;

    move-result-object v3

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v5, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 835
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v16

    .line 836
    .local v16, "phoneId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v17

    .line 838
    .local v17, "prefPhoneId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1200(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v3

    aget-object v3, v3, v17

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    .local v15, "phone":Lcom/android/internal/telephony/Phone;
    move-object v3, v15

    .line 839
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 840
    .local v13, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;ILandroid/net/NetworkRequest;ZZ)V

    .line 842
    .local v2, "prefSwitchInfo":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v4, 0x5

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 844
    .local v12, "dataAllowFalse":Landroid/os/Message;
    const/4 v3, 0x0

    invoke-virtual {v13, v3, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    .line 846
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 848
    const-string v3, "Ondemand DDS switch"

    invoke-virtual {v13, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 850
    :cond_2
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;ILandroid/net/NetworkRequest;ZZ)V

    .line 851
    .local v6, "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1200(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v3

    aget-object v3, v3, v17

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1300()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7, v6}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 803
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public isLocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 794
    monitor-enter p0

    .line 795
    :try_start_0
    const-string v3, "DdsSwitchSerializer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLocked = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$900(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$900(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 795
    goto :goto_0

    :cond_1
    move v0, v1

    .line 796
    goto :goto_1

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unLock()V
    .locals 2

    .prologue
    .line 784
    const-string v0, "DdsSwitchSerializer"

    const-string v1, "unLock the DdsSwitchSerializer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-enter p0

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$902(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 787
    const-string v0, "DdsSwitchSerializer"

    const-string v1, "unLocked the DdsSwitchSerializer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 789
    monitor-exit p0

    .line 791
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
