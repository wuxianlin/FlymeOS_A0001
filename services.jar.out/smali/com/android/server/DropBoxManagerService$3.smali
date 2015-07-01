.class Lcom/android/server/DropBoxManagerService$3;
.super Landroid/os/Handler;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 1

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 189
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/DropBoxManagerService$3;->mRetry:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    # getter for: Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_LOGS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    # getter for: Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/DropBoxManagerService;->setOppoDeviceImeiNO(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/server/DropBoxManagerService;->access$600(Lcom/android/server/DropBoxManagerService;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/DropBoxManagerService$3;->mRetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/DropBoxManagerService$3;->mRetry:I

    if-lez v0, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/server/DropBoxManagerService$3;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/DropBoxManagerService$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
