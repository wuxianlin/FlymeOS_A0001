.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 458
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 459
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 460
    return-void
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 455
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 473
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 475
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 476
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 473
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 468
    .local v0, "old":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-object v0

    .line 467
    .end local v0    # "old":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .locals 6
    .param p1, "queueMode"    # I
    .param p2, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    const/4 v3, -0x1

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, "utterenceProgress":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    instance-of v4, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v4, :cond_0

    move-object v2, p2

    .line 506
    check-cast v2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 509
    :cond_0
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 510
    if-eqz v2, :cond_1

    .line 511
    const/4 v4, -0x8

    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 545
    :cond_1
    :goto_0
    return v3

    .line 517
    :cond_2
    if-nez p1, :cond_4

    .line 518
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    .line 522
    :cond_3
    :goto_1
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    .line 530
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 538
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 539
    const/4 v3, 0x0

    goto :goto_0

    .line 519
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 520
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    goto :goto_1

    .line 541
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_5
    const-string v4, "TextToSpeechService"

    const-string v5, "SynthThread has quit"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-eqz v2, :cond_1

    .line 543
    const/4 v4, -0x4

    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    goto :goto_0
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 491
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 492
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 496
    :cond_0
    return-void
.end method

.method public stopAll()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 581
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 582
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 586
    :cond_0
    invoke-virtual {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 588
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    .line 590
    const/4 v1, 0x0

    return v1
.end method

.method public stopForApp(Ljava/lang/Object;)I
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 557
    const/4 v1, -0x1

    .line 576
    :goto_0
    return v1

    .line 560
    :cond_0
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 568
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 569
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 574
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    .line 576
    const/4 v1, 0x0

    goto :goto_0
.end method
