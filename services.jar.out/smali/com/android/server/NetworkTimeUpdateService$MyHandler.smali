.class Lcom/android/server/NetworkTimeUpdateService$MyHandler;
.super Landroid/os/Handler;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    .line 362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 363
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/NetworkTimeUpdateService;->access$300(Lcom/android/server/NetworkTimeUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V
    invoke-static {v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->access$400(Lcom/android/server/NetworkTimeUpdateService;I)V

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    .line 376
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V
    invoke-static {v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->access$400(Lcom/android/server/NetworkTimeUpdateService;I)V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
