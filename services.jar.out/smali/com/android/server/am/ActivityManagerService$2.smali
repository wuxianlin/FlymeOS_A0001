.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1986
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1989
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2078
    :goto_0
    return-void

    .line 1991
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 1992
    .local v24, "start":J
    const/16 v16, 0x0

    .line 1993
    .local v16, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1994
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v3, :cond_0

    .line 1995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 1996
    new-instance v17, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .end local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v17, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v16, v17

    .line 1998
    .end local v17    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    if-eqz v16, :cond_5

    .line 2000
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2001
    const-wide/16 v12, 0x0

    .line 2002
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v6

    .line 2003
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    .line 2004
    .local v2, "N":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    if-ge v15, v2, :cond_4

    .line 2005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v15}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v22

    .line 2006
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v22

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_1

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v7, 0x2710

    if-lt v3, v7, :cond_2

    .line 2004
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1998
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v15    # "j":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2010
    .restart local v2    # "N":I
    .restart local v12    # "nativeTotalPss":J
    .restart local v15    # "j":I
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2011
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 2013
    monitor-exit v7

    goto :goto_2

    .line 2015
    :catchall_1
    move-exception v3

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 2018
    .end local v2    # "N":I
    .end local v15    # "j":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_2
    move-exception v3

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 2015
    .restart local v2    # "N":I
    .restart local v15    # "j":I
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2016
    :try_start_7
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v8

    add-long/2addr v12, v8

    goto :goto_2

    .line 2018
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2019
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2023
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getBuffersSizeKb()J

    move-result-wide v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    move-result-wide v28

    add-long v10, v10, v28

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getSlabSizeKb()J

    move-result-wide v28

    add-long v10, v10, v28

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2028
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2031
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v15    # "j":I
    :cond_5
    const/4 v14, 0x0

    .local v14, "i":I
    const/16 v18, 0x0

    .line 2032
    .local v18, "num":I
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v23, v0

    .line 2037
    .local v23, "tmp":[J
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2038
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v14, v3, :cond_7

    .line 2041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2042
    monitor-exit v6

    goto/16 :goto_0

    .line 2053
    :catchall_3
    move-exception v3

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v3

    .line 2028
    .end local v14    # "i":I
    .end local v18    # "num":I
    .end local v23    # "tmp":[J
    .restart local v2    # "N":I
    .restart local v12    # "nativeTotalPss":J
    .restart local v15    # "j":I
    :catchall_4
    move-exception v3

    :try_start_a
    monitor-exit v26
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v3

    .line 2044
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v15    # "j":I
    .restart local v14    # "i":I
    .restart local v18    # "num":I
    .restart local v23    # "tmp":[J
    :cond_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    .line 2045
    .local v20, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    move/from16 v21, v0

    .line 2046
    .local v21, "procState":I
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v21

    if-ne v0, v3, :cond_a

    .line 2047
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v19, v0

    .line 2052
    .local v19, "pid":I
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 2053
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2054
    if-eqz v20, :cond_6

    .line 2055
    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v4

    .line 2056
    .local v4, "pss":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2057
    :try_start_c
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_9

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v21

    if-ne v3, v0, :cond_9

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v19

    if-ne v3, v0, :cond_9

    .line 2059
    add-int/lit8 v18, v18, 0x1

    .line 2060
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v20

    iput-wide v6, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 2061
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v6, 0x0

    aget-wide v6, v23, v6

    const/4 v8, 0x1

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(JJZLandroid/util/ArrayMap;)V

    .line 2065
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_8

    .line 2066
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    .line 2068
    :cond_8
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    .line 2069
    const/16 v3, 0x9

    move/from16 v0, v21

    if-lt v0, v3, :cond_9

    .line 2070
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    .line 2073
    :cond_9
    monitor-exit v10

    goto/16 :goto_3

    :catchall_5
    move-exception v3

    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3

    .line 2049
    .end local v4    # "pss":J
    .end local v19    # "pid":I
    :cond_a
    const/16 v20, 0x0

    .line 2050
    const/16 v19, 0x0

    .restart local v19    # "pid":I
    goto :goto_4

    .line 1989
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
