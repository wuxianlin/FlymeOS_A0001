.class Lcom/android/server/display/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1169
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 1158
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1160
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v1

    .line 1161
    .local v0, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$900(Lcom/android/server/display/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .line 1162
    .local v1, "positive":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 1164
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_1
    return-void
.end method
