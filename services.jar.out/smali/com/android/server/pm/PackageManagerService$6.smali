.class Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0

    .prologue
    .line 8604
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 8606
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v11, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8608
    new-instance v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v6, v11}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 8609
    .local v6, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$6;->val$currentStatus:I

    iput v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 8610
    const/4 v11, -0x1

    iput v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 8611
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 8612
    new-instance v11, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v11}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>()V

    iput-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 8613
    iget v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v11, v9, :cond_0

    .line 8614
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v12, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 8615
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 8616
    :try_start_0
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v12, v13, v6}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 8617
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8618
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v12, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v13, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 8624
    :cond_0
    iget-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v11, :cond_4

    move v8, v9

    .line 8625
    .local v8, "update":Z
    :goto_0
    iget-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v11, :cond_5

    move v4, v10

    .line 8626
    .local v4, "flags":I
    :goto_1
    if-nez v8, :cond_6

    const v11, 0x8000

    and-int/2addr v11, v4

    if-eqz v11, :cond_6

    move v2, v9

    .line 8633
    .local v2, "doRestore":Z
    :goto_2
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v11, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput v9, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 8634
    :cond_1
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v7, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v12, v7, 0x1

    iput v12, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 8636
    .local v7, "token":I
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v1, v11, v12, v6}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 8637
    .local v1, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v11, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8640
    iget v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v11, v9, :cond_2

    if-eqz v2, :cond_2

    .line 8645
    const-string v9, "backup"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 8647
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_7

    .line 8651
    :try_start_1
    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v9, v7}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8664
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_2
    :goto_3
    if-nez v2, :cond_3

    .line 8668
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v11, 0x9

    invoke-virtual {v9, v11, v7, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 8669
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v9, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8671
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    return-void

    .line 8617
    .end local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2    # "doRestore":Z
    .end local v4    # "flags":I
    .end local v7    # "token":I
    .end local v8    # "update":Z
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    :cond_4
    move v8, v10

    .line 8624
    goto :goto_0

    .line 8625
    .restart local v8    # "update":Z
    :cond_5
    iget-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .restart local v4    # "flags":I
    :cond_6
    move v2, v10

    .line 8626
    goto :goto_2

    .line 8654
    .restart local v0    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v2    # "doRestore":Z
    .restart local v7    # "token":I
    :catch_0
    move-exception v3

    .line 8655
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "PackageManager"

    const-string v11, "Exception trying to enqueue restore"

    invoke-static {v9, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8656
    const/4 v2, 0x0

    .line 8657
    goto :goto_3

    .line 8659
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v9, "PackageManager"

    const-string v11, "Backup Manager not found!"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8660
    const/4 v2, 0x0

    goto :goto_3

    .line 8652
    :catch_1
    move-exception v9

    goto :goto_3
.end method
