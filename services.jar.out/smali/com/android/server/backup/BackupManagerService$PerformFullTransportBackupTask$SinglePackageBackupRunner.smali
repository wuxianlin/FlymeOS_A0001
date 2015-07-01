.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePackageBackupRunner"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mOutput:Landroid/os/ParcelFileDescriptor;

.field final mTarget:Landroid/content/pm/PackageInfo;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "target"    # Landroid/content/pm/PackageInfo;
    .param p4, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3957
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3958
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    .line 3959
    .local v0, "oldfd":I
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    .line 3960
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 3961
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3962
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3967
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3968
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 3969
    .local v1, "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3973
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3974
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3975
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3976
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3978
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3983
    .end local v1    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 3976
    .restart local v1    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3979
    :catch_0
    move-exception v0

    .line 3980
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PFTBT"

    const-string v4, "Error closing transport pipe in runner"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3970
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 3971
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during full package backup of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3973
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3974
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3975
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3976
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3978
    :try_start_6
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 3979
    :catch_2
    move-exception v0

    .line 3980
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PFTBT"

    const-string v4, "Error closing transport pipe in runner"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3976
    .local v0, "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 3973
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3974
    :try_start_8
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3975
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 3976
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 3978
    :try_start_9
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 3981
    :goto_1
    throw v3

    .line 3976
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 3979
    :catch_3
    move-exception v0

    .line 3980
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PFTBT"

    const-string v5, "Error closing transport pipe in runner"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
