.class Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;
.super Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v0, p1, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    return-void
.end method


# virtual methods
.method protected onCallEnded(I)V
    .locals 6
    .param p1, "cause"    # I

    .prologue
    .line 737
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getDisconnectCause()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 738
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setDisconnectCause(I)V

    .line 740
    :cond_0
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 742
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$600(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipAudioCall;

    move-result-object v1

    .line 744
    .local v1, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$602(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall;

    .line 745
    if-nez v1, :cond_2

    const-string v0, ""

    .line 748
    .local v0, "sessionState":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SipAudioCallAdapter] onCallEnded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$700(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getDisconnectCause()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$800(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    .line 752
    if-eqz v1, :cond_1

    .line 753
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 754
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->close()V

    .line 756
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionEnded(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 757
    monitor-exit v3

    .line 758
    return-void

    .line 745
    .end local v0    # "sessionState":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 757
    .end local v1    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->startAudio()V

    .line 765
    :cond_0
    return-void
.end method

.method public onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->startAudio()V

    .line 772
    :cond_0
    return-void
.end method

.method public onChanged(Landroid/net/sip/SipAudioCall;)V
    .locals 6
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 776
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 777
    :try_start_0
    # invokes: Lcom/android/internal/telephony/sip/SipPhone;->getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    invoke-static {p1}, Lcom/android/internal/telephony/sip/SipPhone;->access$1100(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 778
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, v1, :cond_0

    monitor-exit v3

    .line 801
    :goto_0
    return-void

    .line 779
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 780
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 796
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 797
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$700(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$800(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    .line 800
    monitor-exit v3

    goto :goto_0

    .end local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 782
    .restart local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone;->access$200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 783
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->access$200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v4, :cond_2

    .line 785
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 792
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->access$1200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone;->access$200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 794
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_1

    .line 786
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(I)V

    .line 789
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method protected onError(I)V
    .locals 3
    .param p1, "cause"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$800(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(I)V

    .line 807
    return-void
.end method
