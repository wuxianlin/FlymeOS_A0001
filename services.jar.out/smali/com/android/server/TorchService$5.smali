.class Lcom/android/server/TorchService$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateListener;
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
    .line 418
    iput-object p1, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 429
    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Configure failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1200(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1200(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->handleError()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1000(Lcom/android/server/TorchService;)V

    .line 433
    :cond_1
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1100(Lcom/android/server/TorchService;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # setter for: Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, p1}, Lcom/android/server/TorchService;->access$1202(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 423
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->postUpdateFlashlight()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$800(Lcom/android/server/TorchService;)V

    .line 425
    :cond_0
    return-void
.end method
