.class Lcom/android/server/TorchService$6;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TorchService;


# direct methods
.method constructor <init>(Lcom/android/server/TorchService;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/server/TorchService$6;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method

.method private setTorchAvailable(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    .line 456
    iget-object v2, p0, Lcom/android/server/TorchService$6;->this$0:Lcom/android/server/TorchService;

    monitor-enter v2

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TorchService$6;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mTorchAvailable:Z
    invoke-static {v1}, Lcom/android/server/TorchService;->access$1400(Lcom/android/server/TorchService;)Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 458
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/TorchService$6;->this$0:Lcom/android/server/TorchService;

    # setter for: Lcom/android/server/TorchService;->mTorchAvailable:Z
    invoke-static {v1, p1}, Lcom/android/server/TorchService;->access$1402(Lcom/android/server/TorchService;Z)Z

    .line 459
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    if-eqz v0, :cond_1

    .line 461
    # getter for: Lcom/android/server/TorchService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/TorchService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAvailabilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/server/TorchService$6;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->dispatchAvailabilityChanged(Z)V
    invoke-static {v1, p1}, Lcom/android/server/TorchService;->access$1500(Lcom/android/server/TorchService;Z)V

    .line 464
    :cond_1
    return-void

    .line 457
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 440
    # getter for: Lcom/android/server/TorchService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/TorchService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAvailable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/server/TorchService$6;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mTorchCameraId:I
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1300(Lcom/android/server/TorchService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/TorchService$6;->setTorchAvailable(Z)V

    .line 444
    :cond_1
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 448
    # getter for: Lcom/android/server/TorchService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/TorchService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraUnavailable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/server/TorchService$6;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mTorchCameraId:I
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1300(Lcom/android/server/TorchService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/TorchService$6;->setTorchAvailable(Z)V

    .line 452
    :cond_1
    return-void
.end method
