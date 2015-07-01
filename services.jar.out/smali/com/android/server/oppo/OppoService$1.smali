.class Lcom/android/server/oppo/OppoService$1;
.super Landroid/os/Handler;
.source "OppoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoService;


# direct methods
.method constructor <init>(Lcom/android/server/oppo/OppoService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x2

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mRetry:I
    invoke-static {v0}, Lcom/android/server/oppo/OppoService;->access$000(Lcom/android/server/oppo/OppoService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # invokes: Lcom/android/server/oppo/OppoService;->isFactoryMode()Z
    invoke-static {v0}, Lcom/android/server/oppo/OppoService;->access$100(Lcom/android/server/oppo/OppoService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const-string v0, "sys.usb.config"

    const-string v1, "diag_mdm,adb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 46
    const-string v0, "sys.dial.enable"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/oppo/OppoService;->mRetry:I
    invoke-static {v0, v1}, Lcom/android/server/oppo/OppoService;->access$002(Lcom/android/server/oppo/OppoService;I)I

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # operator-- for: Lcom/android/server/oppo/OppoService;->mRetry:I
    invoke-static {v0}, Lcom/android/server/oppo/OppoService;->access$010(Lcom/android/server/oppo/OppoService;)I

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/server/oppo/OppoService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/oppo/OppoService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
