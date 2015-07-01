.class Lcom/android/server/am/ActivityManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 2089
    const-string v0, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2090
    .local v8, "userId":I
    if-eqz p2, :cond_1

    .line 2091
    move-object/from16 v10, p2

    .local v10, "arr$":[Ljava/lang/String;
    array-length v12, v10

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v1, v10, v11

    .line 2092
    .local v1, "pkg":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 2093
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "finished booting"

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    const/4 v0, 0x1

    monitor-exit v13

    .line 2100
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :goto_1
    return v0

    .line 2097
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_0
    monitor-exit v13

    .line 2091
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2097
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2100
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 2033
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$3;->onPackageModified(Ljava/lang/String;)V

    .line 2034
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2039
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService$3;->getChangingUserId()I

    move-result v4

    .line 2040
    .local v4, "eventUserId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 2041
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2043
    .local v9, "recentTaskIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/Intent;Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2044
    .local v2, "componentsKnownToExist":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    .local v10, "tasksToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 2048
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 2049
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 2050
    .local v11, "tr":Lcom/android/server/am/TaskRecord;
    iget v12, v11, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v12, v4, :cond_0

    .line 2048
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 2052
    :cond_0
    new-instance v12, Landroid/util/Pair;

    iget-object v14, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v15, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2054
    .end local v5    # "i":I
    .end local v11    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v5    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2056
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    :goto_2
    if-ltz v5, :cond_5

    .line 2057
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 2058
    .local v7, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Ljava/lang/Integer;>;"
    iget-object v12, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2059
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2060
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2056
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2065
    :cond_3
    const/4 v12, 0x0

    :try_start_2
    invoke-interface {v8, v1, v12, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2066
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_4

    .line 2067
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 2071
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v3

    .line 2072
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to query activity info for component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2069
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "info":Landroid/content/pm/ActivityInfo;
    :cond_4
    :try_start_3
    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 2077
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    .end local v7    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 2078
    :try_start_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    :goto_4
    if-ltz v5, :cond_6

    .line 2081
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v15, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(II)Z
    invoke-static {v14, v12, v15}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;II)Z

    .line 2078
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 2083
    :cond_6
    monitor-exit v13

    .line 2084
    return-void

    .line 2083
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v12
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2016
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$3;->getChangingUserId()I

    move-result v1

    .line 2017
    .local v1, "eventUserId":I
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2018
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2019
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 2020
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v1, :cond_1

    .line 2018
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2022
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2023
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2025
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(II)Z
    invoke-static {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;II)Z

    goto :goto_1

    .line 2028
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2029
    return-void
.end method
