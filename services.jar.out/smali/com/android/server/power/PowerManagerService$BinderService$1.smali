.class Lcom/android/server/power/PowerManagerService$BinderService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;

.field final synthetic val$eventTime:J

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;JI)V
    .locals 0

    .prologue
    .line 3073
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$eventTime:J

    iput p4, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3076
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3078
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$eventTime:J

    iget v3, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$uid:I

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JI)V
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    return-void

    .line 3080
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
