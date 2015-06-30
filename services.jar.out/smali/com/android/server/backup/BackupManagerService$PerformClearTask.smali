.class Lcom/android/server/backup/BackupManagerService$PerformClearTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformClearTask"
.end annotation


# instance fields
.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 8032
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8033
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 8034
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 8035
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 8040
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8041
    .local v1, "stateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8042
    .local v2, "stateFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8046
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v3, v4}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8054
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 8060
    :goto_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8062
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "stateFile":Ljava/io/File;
    :goto_1
    return-void

    .line 8047
    :catch_0
    move-exception v3

    .line 8054
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 8060
    :goto_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 8049
    :catch_1
    move-exception v0

    .line 8050
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport threw attempting to clear data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8054
    :try_start_4
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 8060
    :goto_3
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 8052
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 8054
    :try_start_5
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 8060
    :goto_4
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 8055
    :catch_2
    move-exception v4

    goto :goto_4

    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    goto :goto_2

    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "stateFile":Ljava/io/File;
    :catch_5
    move-exception v3

    goto :goto_0
.end method
