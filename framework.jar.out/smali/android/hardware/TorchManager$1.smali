.class Landroid/hardware/TorchManager$1;
.super Landroid/hardware/ITorchCallback$Stub;
.source "TorchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/TorchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/TorchManager;


# direct methods
.method constructor <init>(Landroid/hardware/TorchManager;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Landroid/hardware/TorchManager$1;->this$0:Landroid/hardware/TorchManager;

    invoke-direct {p0}, Landroid/hardware/ITorchCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchAvailabilityChanged(Z)V
    .locals 5
    .param p1, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Landroid/hardware/TorchManager$1;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mHandler:Landroid/hardware/TorchManager$TorchHandler;
    invoke-static {v0}, Landroid/hardware/TorchManager;->access$100(Landroid/hardware/TorchManager;)Landroid/hardware/TorchManager$TorchHandler;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/TorchManager$1;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mHandler:Landroid/hardware/TorchManager$TorchHandler;
    invoke-static {v0}, Landroid/hardware/TorchManager;->access$100(Landroid/hardware/TorchManager;)Landroid/hardware/TorchManager$TorchHandler;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/TorchManager$TorchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void

    :cond_0
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public onTorchError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Landroid/hardware/TorchManager$1;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mHandler:Landroid/hardware/TorchManager$TorchHandler;
    invoke-static {v0}, Landroid/hardware/TorchManager;->access$100(Landroid/hardware/TorchManager;)Landroid/hardware/TorchManager$TorchHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/TorchManager$TorchHandler;->sendEmptyMessage(I)Z

    .line 158
    return-void
.end method

.method public onTorchOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Landroid/hardware/TorchManager$1;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mHandler:Landroid/hardware/TorchManager$TorchHandler;
    invoke-static {v0}, Landroid/hardware/TorchManager;->access$100(Landroid/hardware/TorchManager;)Landroid/hardware/TorchManager$TorchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/TorchManager$TorchHandler;->sendEmptyMessage(I)Z

    .line 153
    return-void
.end method
