.class Lcom/android/server/TorchService$3;
.super Ljava/lang/Object;
.source "TorchService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 348
    iput-object p1, p0, Lcom/android/server/TorchService$3;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService$3;->this$0:Lcom/android/server/TorchService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/TorchService;->mTorchEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/TorchService;->access$502(Lcom/android/server/TorchService;Z)Z

    .line 353
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/android/server/TorchService$3;->this$0:Lcom/android/server/TorchService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/TorchService;->updateFlashlight(Z)V
    invoke-static {v0, v1}, Lcom/android/server/TorchService;->access$400(Lcom/android/server/TorchService;Z)V

    .line 355
    iget-object v0, p0, Lcom/android/server/TorchService$3;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->dispatchOff()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$600(Lcom/android/server/TorchService;)V

    .line 356
    return-void

    .line 353
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
