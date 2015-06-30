.class Lcom/android/server/TorchService$4;
.super Landroid/hardware/camera2/CameraDevice$StateListener;
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
    .line 393
    iput-object p1, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$700(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->dispatchOff()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$600(Lcom/android/server/TorchService;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->teardownTorch()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$900(Lcom/android/server/TorchService;)V

    .line 406
    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 410
    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera error: camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$700(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$700(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->handleError()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1000(Lcom/android/server/TorchService;)V

    .line 414
    :cond_1
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    # setter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0, p1}, Lcom/android/server/TorchService;->access$702(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 397
    iget-object v0, p0, Lcom/android/server/TorchService$4;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->postUpdateFlashlight()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$800(Lcom/android/server/TorchService;)V

    .line 398
    return-void
.end method
