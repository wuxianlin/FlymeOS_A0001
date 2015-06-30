.class public final Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SMSDispatcherReceiver"
.end annotation


# instance fields
.field private final mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 580
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 581
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 585
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SMS_SEND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 587
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->getResultCode()I

    move-result v1

    .line 588
    .local v1, "rc":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 589
    const-string v3, "SMSDispatcher"

    const-string v4, "Sending SMS by IP pending."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    .line 591
    .local v2, "resultExtras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "messageref"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const-string v4, "messageref"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 593
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->sendPendingList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v1    # "rc":I
    .end local v2    # "resultExtras":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 595
    .restart local v1    # "rc":I
    .restart local v2    # "resultExtras":Landroid/os/Bundle;
    :cond_0
    const-string v3, "SMSDispatcher"

    const-string v4, "Can\'t find messageref in result extras."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    .end local v2    # "resultExtras":Landroid/os/Bundle;
    :cond_1
    const-string v3, "SMSDispatcher"

    const-string v4, "Sending SMS by IP failed."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 603
    .end local v1    # "rc":I
    :cond_2
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected BroadcastReceiver action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
