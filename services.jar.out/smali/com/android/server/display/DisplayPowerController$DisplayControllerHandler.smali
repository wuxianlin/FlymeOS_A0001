.class final Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 1131
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1138
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    .line 1142
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$500(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    .line 1146
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    .line 1148
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
