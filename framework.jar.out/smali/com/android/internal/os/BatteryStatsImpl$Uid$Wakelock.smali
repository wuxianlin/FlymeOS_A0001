.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
.super Landroid/os/BatteryStats$Uid$Wakelock;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Wakelock"
.end annotation


# instance fields
.field mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 0

    .prologue
    .line 5176
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    return-void
.end method

.method private readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6
    .param p1, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;"
        }
    .end annotation

    .prologue
    .line 5201
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 5202
    const/4 v0, 0x0

    .line 5205
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    goto :goto_0
.end method


# virtual methods
.method public getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 5263
    packed-switch p1, :pswitch_data_0

    .line 5289
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5265
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5266
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_0

    .line 5267
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 5269
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    move-object v1, v0

    .line 5287
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :goto_0
    return-object v1

    .line 5273
    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5274
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_1

    .line 5275
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 5277
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_1
    move-object v1, v0

    .line 5279
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    goto :goto_0

    .line 5281
    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5282
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_2

    .line 5283
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 5285
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_2
    move-object v1, v0

    .line 5287
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    goto :goto_0

    .line 5263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getWakeTime(I)Landroid/os/BatteryStats$Timer;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 5176
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getWakeTime(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getWakeTime(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 5253
    packed-switch p1, :pswitch_data_0

    .line 5257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5254
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5256
    :goto_0
    return-object v0

    .line 5255
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0

    .line 5256
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0

    .line 5253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5237
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5239
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5241
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5243
    return-void
.end method

.method reset()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5209
    const/4 v0, 0x0

    .line 5210
    .local v0, "wlactive":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_0

    .line 5211
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 5213
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_1

    .line 5214
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    .line 5216
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_2

    .line 5217
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    .line 5219
    :cond_2
    if-nez v0, :cond_5

    .line 5220
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_3

    .line 5221
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5222
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5224
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_4

    .line 5225
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5226
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5228
    :cond_4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_5

    .line 5229
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5230
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5233
    :cond_5
    if-nez v0, :cond_9

    :goto_3
    return v2

    :cond_6
    move v1, v3

    .line 5211
    goto :goto_0

    :cond_7
    move v1, v3

    .line 5214
    goto :goto_1

    :cond_8
    move v1, v3

    .line 5217
    goto :goto_2

    :cond_9
    move v2, v3

    .line 5233
    goto :goto_3
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 5246
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5247
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5248
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5249
    return-void
.end method
