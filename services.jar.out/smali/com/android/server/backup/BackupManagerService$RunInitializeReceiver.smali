.class Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunInitializeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/backup/BackupManagerService$1;

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1172
    const-string v1, "android.app.backup.intent.INIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1174
    :try_start_0
    const-string v1, "BackupManagerService"

    const-string v3, "Running a device init"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1180
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1181
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1182
    monitor-exit v2

    .line 1184
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1182
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
