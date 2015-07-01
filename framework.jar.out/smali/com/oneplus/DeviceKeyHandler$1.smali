.class Lcom/oneplus/DeviceKeyHandler$1;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/DeviceKeyHandler;->processEvent(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/DeviceKeyHandler;

.field final synthetic val$keyEvent:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/oneplus/DeviceKeyHandler;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oneplus/DeviceKeyHandler$1;->this$0:Lcom/oneplus/DeviceKeyHandler;

    iput-object p2, p0, Lcom/oneplus/DeviceKeyHandler$1;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 201
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    .line 187
    iget-object v1, p0, Lcom/oneplus/DeviceKeyHandler$1;->this$0:Lcom/oneplus/DeviceKeyHandler;

    iget-object v1, v1, Lcom/oneplus/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 188
    iget-object v1, p0, Lcom/oneplus/DeviceKeyHandler$1;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # getter for: Lcom/oneplus/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/oneplus/DeviceKeyHandler;->access$600(Lcom/oneplus/DeviceKeyHandler;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 189
    iget-object v1, p0, Lcom/oneplus/DeviceKeyHandler$1;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # getter for: Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;
    invoke-static {v1}, Lcom/oneplus/DeviceKeyHandler;->access$700(Lcom/oneplus/DeviceKeyHandler;)Lcom/oneplus/DeviceKeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oneplus/DeviceKeyHandler$EventHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/oneplus/DeviceKeyHandler$1;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # getter for: Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;
    invoke-static {v1}, Lcom/oneplus/DeviceKeyHandler;->access$700(Lcom/oneplus/DeviceKeyHandler;)Lcom/oneplus/DeviceKeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oneplus/DeviceKeyHandler$EventHandler;->removeMessages(I)V

    .line 194
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/oneplus/DeviceKeyHandler$1;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # getter for: Lcom/oneplus/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/oneplus/DeviceKeyHandler;->access$800(Lcom/oneplus/DeviceKeyHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/oneplus/DeviceKeyHandler$1;->this$0:Lcom/oneplus/DeviceKeyHandler;

    iget-object v2, p0, Lcom/oneplus/DeviceKeyHandler$1;->val$keyEvent:Landroid/view/KeyEvent;

    # invokes: Lcom/oneplus/DeviceKeyHandler;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;
    invoke-static {v1, v2}, Lcom/oneplus/DeviceKeyHandler;->access$900(Lcom/oneplus/DeviceKeyHandler;Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/DeviceKeyHandler$1;->this$0:Lcom/oneplus/DeviceKeyHandler;

    # getter for: Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;
    invoke-static {v1}, Lcom/oneplus/DeviceKeyHandler;->access$700(Lcom/oneplus/DeviceKeyHandler;)Lcom/oneplus/DeviceKeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
