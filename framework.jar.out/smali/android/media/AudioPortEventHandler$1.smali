.class Landroid/media/AudioPortEventHandler$1;
.super Landroid/os/Handler;
.source "AudioPortEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioPortEventHandler;-><init>(Landroid/media/AudioManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioPortEventHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    iget-object v7, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    # getter for: Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/media/AudioPortEventHandler;->access$000(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 114
    :cond_1
    :goto_1
    return-void

    .line 64
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    # getter for: Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/media/AudioPortEventHandler;->access$000(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    goto :goto_0

    .line 66
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 72
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :cond_3
    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v10, :cond_4

    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v11, :cond_5

    .line 75
    :cond_4
    iget-object v7, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    # getter for: Landroid/media/AudioPortEventHandler;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Landroid/media/AudioPortEventHandler;->access$100(Landroid/media/AudioPortEventHandler;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 77
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v5, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v11, :cond_6

    .line 80
    iget-object v7, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    # getter for: Landroid/media/AudioPortEventHandler;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Landroid/media/AudioPortEventHandler;->access$100(Landroid/media/AudioPortEventHandler;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v6

    .line 81
    .local v6, "status":I
    if-nez v6, :cond_1

    .line 86
    .end local v6    # "status":I
    :cond_6
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 89
    :pswitch_0
    new-array v7, v9, [Landroid/media/AudioPort;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/AudioPort;

    .line 90
    .local v4, "portList":[Landroid/media/AudioPort;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 91
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v7, v4}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPortListUpdate([Landroid/media/AudioPort;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    :cond_7
    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v10, :cond_1

    .line 99
    .end local v0    # "i":I
    .end local v4    # "portList":[Landroid/media/AudioPort;
    :pswitch_1
    new-array v7, v9, [Landroid/media/AudioPatch;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPatch;

    .line 100
    .local v2, "patchList":[Landroid/media/AudioPatch;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v7, v2}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPatchListUpdate([Landroid/media/AudioPatch;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 106
    .end local v0    # "i":I
    .end local v2    # "patchList":[Landroid/media/AudioPatch;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v7}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onServiceDied()V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
