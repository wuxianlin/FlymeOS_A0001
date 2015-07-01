.class Lcom/oneplus/DeviceKeyHandler$EventHandler;
.super Landroid/os/Handler;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/oneplus/DeviceKeyHandler;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/DeviceKeyHandler;Lcom/oneplus/DeviceKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/DeviceKeyHandler;
    .param p2, "x1"    # Lcom/oneplus/DeviceKeyHandler$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/oneplus/DeviceKeyHandler$EventHandler;-><init>(Lcom/oneplus/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0xbb8

    .line 112
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    .line 113
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # getter for: Lcom/oneplus/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/oneplus/DeviceKeyHandler;->access$100(Lcom/oneplus/DeviceKeyHandler;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 116
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # invokes: Lcom/oneplus/DeviceKeyHandler;->ensureKeyguardManager()V
    invoke-static {v4}, Lcom/oneplus/DeviceKeyHandler;->access$200(Lcom/oneplus/DeviceKeyHandler;)V

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    iget-object v4, v4, Lcom/oneplus/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 121
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 123
    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # invokes: Lcom/oneplus/DeviceKeyHandler;->startActivitySafely(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lcom/oneplus/DeviceKeyHandler;->access$300(Lcom/oneplus/DeviceKeyHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    const/16 v5, 0x55

    # invokes: Lcom/oneplus/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V
    invoke-static {v4, v5}, Lcom/oneplus/DeviceKeyHandler;->access$400(Lcom/oneplus/DeviceKeyHandler;I)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    iget-object v4, v4, Lcom/oneplus/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 131
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.TOGGLE_FLASH_LIGHT_STATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "flashlightIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # getter for: Lcom/oneplus/DeviceKeyHandler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/DeviceKeyHandler;->access$500(Lcom/oneplus/DeviceKeyHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    .end local v2    # "flashlightIntent":Landroid/content/Intent;
    :pswitch_3
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    const/16 v5, 0x58

    # invokes: Lcom/oneplus/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V
    invoke-static {v4, v5}, Lcom/oneplus/DeviceKeyHandler;->access$400(Lcom/oneplus/DeviceKeyHandler;I)V

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v4, p0, Lcom/oneplus/DeviceKeyHandler$EventHandler;->this$0:Lcom/oneplus/DeviceKeyHandler;

    const/16 v5, 0x57

    # invokes: Lcom/oneplus/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V
    invoke-static {v4, v5}, Lcom/oneplus/DeviceKeyHandler;->access$400(Lcom/oneplus/DeviceKeyHandler;I)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0xfa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
