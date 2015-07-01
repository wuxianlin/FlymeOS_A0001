.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final BOOT_REASON_FILE:Ljava/lang/String; = "/sys/power/app_boot"

.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final GET_IMEI_NO_DELAY:I = 0x7530

.field private static final MSG_GET_IMEI_NO:I = 0x2

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    .line 114
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 115
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 119
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 120
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 121
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 122
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 124
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 130
    new-instance v1, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 168
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/DropBoxManagerService$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5, p1}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    new-instance v1, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 211
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 214
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/DropBoxManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DropBoxManagerService;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->setOppoDeviceImeiNO(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .locals 19
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 866
    .local v6, "t":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v18

    .line 867
    .local v18, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v11, 0x0

    .line 868
    .local v11, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 869
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v11, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 870
    .restart local v11    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->clear()V

    .line 873
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 877
    :cond_1
    if-eqz v11, :cond_4

    .line 878
    move-object v10, v11

    .local v10, "arr$":[Lcom/android/server/DropBoxManagerService$EntryFile;
    array-length v14, v10

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_4

    aget-object v13, v10, v12

    .line 879
    .local v13, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/DropBoxManagerService$FileList;

    .line 881
    .local v15, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v15, :cond_2

    iget-object v2, v15, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    iget v2, v15, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v2, v3

    iput v2, v15, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 884
    :cond_2
    iget v2, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 885
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v5, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v16, v6, v8

    .end local v6    # "t":J
    .local v16, "t":J
    iget v8, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v6, v16

    .line 878
    .end local v16    # "t":J
    .restart local v6    # "t":J
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 888
    :cond_3
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v4, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v16, v6, v8

    .end local v6    # "t":J
    .restart local v16    # "t":J
    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v6, v16

    .end local v16    # "t":J
    .restart local v6    # "t":J
    goto :goto_1

    .line 893
    .end local v10    # "arr$":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v12    # "i$":I
    .end local v13    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "len$":I
    .end local v15    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_4
    if-nez p1, :cond_5

    .line 894
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v0, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :goto_2
    monitor-exit p0

    return-wide v6

    .line 896
    :cond_5
    :try_start_1
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 860
    .end local v6    # "t":J
    .end local v11    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v18    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 847
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 849
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 850
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 851
    .restart local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 854
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v7, :cond_1

    .line 798
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 799
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t mkdir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 802
    :cond_0
    :try_start_1
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 803
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v7, :cond_6

    .line 810
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 811
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_2

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t list files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 804
    .end local v4    # "files":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t statfs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 813
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_2
    new-instance v7, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 814
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 817
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    .line 818
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 819
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaning temp file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 817
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 824
    :cond_3
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v2, v3, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 825
    .local v2, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 826
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 828
    :cond_4
    iget-wide v8, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 829
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 834
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 837
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private readBootReason()Ljava/lang/String;
    .locals 6

    .prologue
    .line 253
    const-string v4, ""

    .line 255
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v5, "/sys/power/app_boot"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 257
    .local v3, "length":I
    new-array v0, v3, [B

    .line 258
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 259
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "length":I
    :goto_0
    return-object v4

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendFeedbackBroadcast(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 273
    .local v3, "pakageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 278
    :goto_0
    const-string v4, "com.nearme.feedback"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->readBootReason()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "bootReason":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.nearme.feedback.feedback"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "dropboxIntent":Landroid/content/Intent;
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    const-string v4, "filePath"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 283
    const-string v4, "boot_reason"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-boolean v4, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    if-nez v4, :cond_0

    .line 285
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    :cond_0
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    .end local v0    # "bootReason":Ljava/lang/String;
    .end local v1    # "dropboxIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setOppoDeviceImeiNO(Landroid/content/Context;)Z
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 224
    const-string v0, "invalid imei"

    .line 225
    .local v0, "INVLAID_IMEI":Ljava/lang/String;
    const-string v1, "persist.sys.oneplus.device.imei"

    .line 226
    .local v1, "PERSIST_KEY":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "0"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 228
    :cond_0
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 229
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_1

    .line 230
    const-string v5, "DropBoxManagerService"

    const-string v7, "getOppoDeviceImeiNO:telephonyManager null, can not get imei NO!"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 244
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return v5

    .line 233
    .restart local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "imei":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 235
    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOppoDeviceImeiNO: set persist.sys.oneplus.device.imei to:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_2
    const-string v5, "DropBoxManagerService"

    const-string v7, "getOppoDeviceImeiNO:can not get right imei NO!"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 240
    goto :goto_0

    .line 243
    .end local v3    # "imei":Ljava/lang/String;
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOppoDeviceImeiNO imei:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized trimToFit()J
    .locals 32

    .prologue
    .line 908
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_age_seconds"

    const v28, 0x3f480

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 910
    .local v6, "ageSeconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_max_files"

    const/16 v28, 0x3e8

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 912
    .local v13, "maxFiles":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    .line 913
    .local v8, "cutoffMillis":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_1

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 915
    .local v11, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v26, v0

    cmp-long v26, v26, v8

    if-lez v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v0, v13, :cond_6

    .line 928
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 929
    .local v24, "uptimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1388

    add-long v26, v26, v28

    cmp-long v26, v24, v26

    if-lez v26, :cond_2

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_quota_percent"

    const/16 v28, 0xa

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 932
    .local v17, "quotaPercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_reserve_percent"

    const/16 v28, 0xa

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 934
    .local v18, "reservePercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_quota_kb"

    const/16 v28, 0x1400

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 937
    .local v16, "quotaKb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    .line 939
    .local v7, "available":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getBlockCount()I

    move-result v26

    mul-int v26, v26, v18

    div-int/lit8 v26, v26, 0x64

    sub-int v15, v7, v26

    .line 940
    .local v15, "nonreserved":I
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v27, v0

    div-int v14, v26, v27

    .line 941
    .local v14, "maximum":I
    const/16 v26, 0x0

    mul-int v27, v15, v17

    div-int/lit8 v27, v27, 0x64

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v0, v26

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 942
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 959
    .end local v7    # "available":I
    .end local v14    # "maximum":I
    .end local v15    # "nonreserved":I
    .end local v16    # "quotaKb":I
    .end local v17    # "quotaPercent":I
    .end local v18    # "reservePercent":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    .local v23, "unsqueezed":I
    const/16 v19, 0x0

    .line 962
    .local v19, "squeezed":I
    new-instance v22, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 963
    .local v22, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 964
    .local v20, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v19, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    sub-int v27, v27, v23

    div-int v27, v27, v19

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    .line 970
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    sub-int v26, v26, v23

    div-int v21, v26, v19

    .line 973
    .local v21, "tagQuota":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 974
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 990
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "squeezed":I
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v21    # "tagQuota":I
    .end local v22    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v23    # "unsqueezed":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v27, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    monitor-exit p0

    return-wide v26

    .line 917
    .end local v24    # "uptimeMillis":J
    .restart local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 918
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 919
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v27, v0

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 920
    :cond_8
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 908
    .end local v6    # "ageSeconds":I
    .end local v8    # "cutoffMillis":J
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "maxFiles":I
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26

    .line 967
    .restart local v6    # "ageSeconds":I
    .restart local v8    # "cutoffMillis":J
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "maxFiles":I
    .restart local v19    # "squeezed":I
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v22    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v23    # "unsqueezed":I
    .restart local v24    # "uptimeMillis":J
    :cond_9
    :try_start_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    sub-int v23, v23, v26

    .line 968
    add-int/lit8 v19, v19, 0x1

    .line 969
    goto/16 :goto_1

    .line 975
    .restart local v21    # "tagQuota":I
    :cond_a
    :goto_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_4

    .line 976
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 977
    .restart local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 978
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v27, v0

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 981
    :cond_c
    :try_start_3
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 982
    :cond_d
    new-instance v26, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v27, v0

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-wide v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 983
    :catch_0
    move-exception v10

    .line 984
    .local v10, "e":Ljava/io/IOException;
    :try_start_4
    const-string v26, "DropBoxManagerService"

    const-string v27, "Can\'t write tombstone file"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 44
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    .prologue
    .line 294
    const/16 v35, 0x0

    .line 295
    .local v35, "temp":Ljava/io/File;
    const/16 v25, 0x0

    .line 296
    .local v25, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v34

    .line 300
    .local v34, "tag":Ljava/lang/String;
    const-string v40, "persist.sys.assert.enable"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 301
    .local v30, "qtassert":Z
    const-string v40, "persist.sys.assert.panic"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 302
    .local v29, "qeassert":Z
    const-string v40, "persist.sys.assert.state"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 303
    .local v5, "assertState":Z
    if-nez v30, :cond_0

    if-nez v29, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    const/4 v4, 0x1

    .line 305
    .local v4, "assertEnable":Z
    :goto_0
    const-string v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "QT Assert:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ";QE Assert:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v9

    .line 310
    .local v9, "flags":I
    and-int/lit8 v40, v9, 0x1

    if-eqz v40, :cond_4

    new-instance v40, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v40 .. v40}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v40
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v9    # "flags":I
    :catch_0
    move-exception v8

    .line 471
    .local v8, "e":Ljava/io/IOException;
    :goto_1
    :try_start_1
    const-string v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Can\'t write: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    if-eqz v25, :cond_1

    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 474
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 475
    if-eqz v35, :cond_2

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    .line 477
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 303
    .end local v4    # "assertEnable":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 312
    .restart local v4    # "assertEnable":Z
    .restart local v9    # "flags":I
    :cond_4
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v40

    if-nez v40, :cond_6

    .line 473
    if-eqz v25, :cond_5

    :try_start_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 474
    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 475
    if-eqz v35, :cond_2

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 318
    :cond_6
    if-eqz v4, :cond_7

    :try_start_5
    const-string v40, "SYSTEM_SERVER_GZ"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 319
    const-string v40, "persist.sys.send.file"

    const-string v41, "null"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 320
    .local v33, "systemcrashFile":Ljava/lang/String;
    const-string v40, "null"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 321
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v11, "gzFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/DropBoxManagerService;->sendFeedbackBroadcast(Ljava/util/ArrayList;)V

    .line 328
    .end local v11    # "gzFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v33    # "systemcrashFile":Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v22

    .line 329
    .local v22, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 331
    .local v16, "lastTrim":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v40, v0

    move/from16 v0, v40

    new-array v6, v0, [B

    .line 332
    .local v6, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 337
    .local v13, "input":Ljava/io/InputStream;
    const/16 v31, 0x0

    .line 338
    .local v31, "read":I
    :goto_5
    array-length v0, v6

    move/from16 v40, v0

    move/from16 v0, v31

    move/from16 v1, v40

    if-ge v0, v1, :cond_8

    .line 339
    array-length v0, v6

    move/from16 v40, v0

    sub-int v40, v40, v31

    move/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v13, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    .line 340
    .local v21, "n":I
    if-gtz v21, :cond_13

    .line 347
    .end local v21    # "n":I
    :cond_8
    new-instance v36, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "drop"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Thread;->getId()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ".tmp"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 348
    .end local v35    # "temp":Ljava/io/File;
    .local v36, "temp":Ljava/io/File;
    :try_start_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 349
    .local v7, "bufferSize":I
    const/16 v40, 0x1000

    move/from16 v0, v40

    if-le v7, v0, :cond_9

    const/16 v7, 0x1000

    .line 350
    :cond_9
    const/16 v40, 0x200

    move/from16 v0, v40

    if-ge v7, v0, :cond_a

    const/16 v7, 0x200

    .line 351
    :cond_a
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v36

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 352
    .local v10, "foutput":Ljava/io/FileOutputStream;
    new-instance v28, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v28

    invoke-direct {v0, v10, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 353
    .end local v25    # "output":Ljava/io/OutputStream;
    .local v28, "output":Ljava/io/OutputStream;
    :try_start_7
    array-length v0, v6

    move/from16 v40, v0

    move/from16 v0, v31

    move/from16 v1, v40

    if-ne v0, v1, :cond_1f

    and-int/lit8 v40, v9, 0x4

    if-nez v40, :cond_1f

    .line 354
    new-instance v25, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 355
    .end local v28    # "output":Ljava/io/OutputStream;
    .restart local v25    # "output":Ljava/io/OutputStream;
    or-int/lit8 v9, v9, 0x4

    .line 360
    :goto_6
    if-nez v4, :cond_b

    :try_start_8
    const-string v40, "SYSTEM_SERVER"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 361
    const-string v40, "<android-panic-begin>\n"

    invoke-static/range {v40 .. v40}, Landroid/os/OppoManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v32

    .line 362
    .local v32, "size":I
    const-string v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "write tag begin size : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v32    # "size":I
    :cond_b
    const/16 v40, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v40

    move/from16 v2, v31

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 370
    if-nez v4, :cond_c

    const-string v40, "SYSTEM_SERVER"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 371
    const/16 v40, 0x0

    const-string v41, "UTF-8"

    move/from16 v0, v40

    move/from16 v1, v31

    move-object/from16 v2, v41

    invoke-static {v6, v0, v1, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 372
    .local v37, "text":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/os/OppoManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v32

    .line 373
    .restart local v32    # "size":I
    const-string v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "write system server log size : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v32    # "size":I
    .end local v37    # "text":Ljava/lang/String;
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 378
    .local v26, "now":J
    sub-long v40, v26, v16

    const-wide/16 v42, 0x7530

    cmp-long v40, v40, v42

    if-lez v40, :cond_d

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v22

    .line 380
    move-wide/from16 v16, v26

    .line 383
    :cond_d
    invoke-virtual {v13, v6}, Ljava/io/InputStream;->read([B)I

    move-result v31

    .line 384
    if-gtz v31, :cond_14

    .line 385
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 386
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V

    .line 387
    const/16 v25, 0x0

    .line 392
    :goto_7
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 393
    .local v18, "len":J
    cmp-long v40, v18, v22

    if-lez v40, :cond_15

    .line 394
    const-string v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Dropping: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->length()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " > "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " bytes)"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 396
    const/16 v35, 0x0

    .line 403
    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    :goto_8
    if-nez v4, :cond_e

    :try_start_9
    const-string v40, "SYSTEM_SERVER"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 404
    const-string v40, "\n<android-panic-end>\n"

    invoke-static/range {v40 .. v40}, Landroid/os/OppoManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v32

    .line 405
    .restart local v32    # "size":I
    const-string v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "write tag end size : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v32    # "size":I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v38

    .line 409
    .local v38, "time":J
    const/16 v35, 0x0

    .line 427
    new-instance v40, Ljava/io/File;

    const-string v41, "/data/system/dropbox"

    invoke-direct/range {v40 .. v41}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 428
    .local v15, "logFiles":[Ljava/io/File;
    const/16 v24, 0x0

    .line 429
    .local v24, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_9
    if-eqz v15, :cond_1d

    array-length v0, v15

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v12, v0, :cond_1d

    .line 430
    aget-object v40, v15, v12

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    .line 431
    const-string v40, ".gz"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 432
    const/16 v40, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v41

    add-int/lit8 v41, v41, -0x3

    move-object/from16 v0, v24

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 434
    :cond_f
    const-string v40, ".lost"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 435
    const/16 v40, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v41

    add-int/lit8 v41, v41, -0x5

    move-object/from16 v0, v24

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 442
    :cond_10
    :goto_a
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "@"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 443
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v20, "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "/data/system/dropbox/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    aget-object v41, v15, v12

    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const-string v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "file :: /data/system/dropbox/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget-object v42, v15, v12

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    if-eqz v4, :cond_18

    .line 447
    const-string v40, "system_server"

    const/16 v41, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v40

    if-nez v40, :cond_11

    const-string v40, "system_app_crash"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_11

    const-string v40, "system_app_anr"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_11

    const-string v40, "data_app_crash"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_11

    const-string v40, "data_app_anr"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 452
    :cond_11
    aget-object v40, v15, v12

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Lcom/oppo/debug/ASSERT;->epitaph(Ljava/io/File;Ljava/lang/String;I)Z

    .line 453
    new-instance v14, Landroid/content/Intent;

    const-string v40, "com.oppo.oppologkit.assertlogcopy"

    move-object/from16 v0, v40

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 429
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v20    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    .line 341
    .end local v7    # "bufferSize":I
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .end local v15    # "logFiles":[Ljava/io/File;
    .end local v18    # "len":J
    .end local v24    # "name":Ljava/lang/String;
    .end local v26    # "now":J
    .end local v38    # "time":J
    .restart local v21    # "n":I
    :cond_13
    add-int v31, v31, v21

    .line 342
    goto/16 :goto_5

    .line 389
    .end local v21    # "n":I
    .end local v35    # "temp":Ljava/io/File;
    .restart local v7    # "bufferSize":I
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v26    # "now":J
    .restart local v36    # "temp":Ljava/io/File;
    :cond_14
    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_7

    .line 470
    .end local v7    # "bufferSize":I
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v26    # "now":J
    :catch_1
    move-exception v8

    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    goto/16 :goto_1

    .line 399
    .end local v35    # "temp":Ljava/io/File;
    .restart local v7    # "bufferSize":I
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v18    # "len":J
    .restart local v26    # "now":J
    .restart local v36    # "temp":Ljava/io/File;
    :cond_15
    if-gtz v31, :cond_b

    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    goto/16 :goto_8

    .line 436
    .restart local v12    # "i":I
    .restart local v15    # "logFiles":[Ljava/io/File;
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v38    # "time":J
    :cond_16
    :try_start_b
    const-string v40, ".txt"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_17

    .line 437
    const/16 v40, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v41

    add-int/lit8 v41, v41, -0x4

    move-object/from16 v0, v24

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 438
    :cond_17
    const-string v40, ".dat"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 439
    const/16 v40, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v41

    add-int/lit8 v41, v41, -0x4

    move-object/from16 v0, v24

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 457
    .restart local v20    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    const-string v40, "system_server"

    const/16 v41, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v40

    if-eqz v40, :cond_1b

    .line 458
    const-string v40, "ro.runtime.panic"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v40

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-nez v40, :cond_12

    .line 459
    const-string v40, "ro.runtime.panic"

    const-string v41, "1"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v40, "persist.sys.panic.file"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "/data/system/dropbox/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget-object v42, v15, v12

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_b

    .line 473
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v9    # "flags":I
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v15    # "logFiles":[Ljava/io/File;
    .end local v16    # "lastTrim":J
    .end local v18    # "len":J
    .end local v20    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "max":J
    .end local v24    # "name":Ljava/lang/String;
    .end local v26    # "now":J
    .end local v31    # "read":I
    .end local v38    # "time":J
    :catchall_0
    move-exception v40

    :goto_c
    if-eqz v25, :cond_19

    :try_start_c
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 474
    :cond_19
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 475
    if-eqz v35, :cond_1a

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    :cond_1a
    throw v40

    .line 462
    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferSize":I
    .restart local v9    # "flags":I
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v15    # "logFiles":[Ljava/io/File;
    .restart local v16    # "lastTrim":J
    .restart local v18    # "len":J
    .restart local v20    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "max":J
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v26    # "now":J
    .restart local v31    # "read":I
    .restart local v38    # "time":J
    :cond_1b
    :try_start_d
    const-string v40, "SYSTEM_SERVER"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1c

    const-string v40, "SYSTEM_LAST_KMSG"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 464
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->sendFeedbackBroadcast(Ljava/util/ArrayList;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_b

    .line 473
    .end local v20    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    if-eqz v25, :cond_1e

    :try_start_e
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 474
    :cond_1e
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 475
    if-eqz v35, :cond_2

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 473
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v15    # "logFiles":[Ljava/io/File;
    .end local v16    # "lastTrim":J
    .end local v18    # "len":J
    .end local v22    # "max":J
    .end local v24    # "name":Ljava/lang/String;
    .end local v26    # "now":J
    .end local v31    # "read":I
    .end local v38    # "time":J
    :catch_2
    move-exception v40

    goto/16 :goto_4

    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferSize":I
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v15    # "logFiles":[Ljava/io/File;
    .restart local v16    # "lastTrim":J
    .restart local v18    # "len":J
    .restart local v22    # "max":J
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v26    # "now":J
    .restart local v31    # "read":I
    .restart local v38    # "time":J
    :catch_3
    move-exception v40

    goto :goto_e

    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v9    # "flags":I
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v15    # "logFiles":[Ljava/io/File;
    .end local v16    # "lastTrim":J
    .end local v18    # "len":J
    .end local v22    # "max":J
    .end local v24    # "name":Ljava/lang/String;
    .end local v26    # "now":J
    .end local v31    # "read":I
    .end local v38    # "time":J
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v40

    goto/16 :goto_2

    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v41

    goto :goto_d

    .end local v35    # "temp":Ljava/io/File;
    .restart local v6    # "buffer":[B
    .restart local v9    # "flags":I
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v16    # "lastTrim":J
    .restart local v22    # "max":J
    .restart local v31    # "read":I
    .restart local v36    # "temp":Ljava/io/File;
    :catchall_1
    move-exception v40

    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    goto :goto_c

    .end local v25    # "output":Ljava/io/OutputStream;
    .end local v35    # "temp":Ljava/io/File;
    .restart local v7    # "bufferSize":I
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v28    # "output":Ljava/io/OutputStream;
    .restart local v36    # "temp":Ljava/io/File;
    :catchall_2
    move-exception v40

    move-object/from16 v25, v28

    .end local v28    # "output":Ljava/io/OutputStream;
    .restart local v25    # "output":Ljava/io/OutputStream;
    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    goto :goto_c

    .line 470
    .end local v25    # "output":Ljava/io/OutputStream;
    .end local v35    # "temp":Ljava/io/File;
    .restart local v28    # "output":Ljava/io/OutputStream;
    .restart local v36    # "temp":Ljava/io/File;
    :catch_6
    move-exception v8

    move-object/from16 v25, v28

    .end local v28    # "output":Ljava/io/OutputStream;
    .restart local v25    # "output":Ljava/io/OutputStream;
    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    goto/16 :goto_1

    .end local v25    # "output":Ljava/io/OutputStream;
    .end local v35    # "temp":Ljava/io/File;
    .restart local v28    # "output":Ljava/io/OutputStream;
    .restart local v36    # "temp":Ljava/io/File;
    :cond_1f
    move-object/from16 v25, v28

    .end local v28    # "output":Ljava/io/OutputStream;
    .restart local v25    # "output":Ljava/io/OutputStream;
    goto/16 :goto_6
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 31
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    const-string v3, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :goto_0
    monitor-exit p0

    return-void

    .line 530
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    :try_start_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v26, "out":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "doPrint":Z
    const/4 v13, 0x0

    .line 541
    .local v13, "doFile":Z
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v27, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 543
    aget-object v3, p3, v17

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p3, v17

    const-string v4, "--print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 544
    :cond_1
    const/4 v14, 0x1

    .line 542
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 531
    .end local v13    # "doFile":Z
    .end local v14    # "doPrint":Z
    .end local v17    # "i":I
    .end local v26    # "out":Ljava/lang/StringBuilder;
    .end local v27    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v15

    .line 532
    .local v15, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    const-string v3, "DropBoxManagerService"

    const-string v4, "Can\'t init"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 523
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 545
    .restart local v13    # "doFile":Z
    .restart local v14    # "doPrint":Z
    .restart local v17    # "i":I
    .restart local v26    # "out":Ljava/lang/StringBuilder;
    .restart local v27    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    aget-object v3, p3, v17

    const-string v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p3, v17

    const-string v4, "--file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 546
    :cond_3
    const/4 v13, 0x1

    goto :goto_2

    .line 547
    :cond_4
    aget-object v3, p3, v17

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 548
    const-string v3, "Unknown argument: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 550
    :cond_5
    aget-object v3, p3, v17

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 554
    :cond_6
    const-string v3, "Drop box contents: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 557
    const-string v3, "Searching for:"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "a":Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 559
    .end local v8    # "a":Ljava/lang/String;
    :cond_7
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_8
    const/16 v25, 0x0

    .local v25, "numFound":I
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 563
    .local v24, "numArgs":I
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 564
    .local v29, "time":Landroid/text/format/Time;
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 566
    .local v16, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 567
    const-string v3, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 568
    .local v11, "date":Ljava/lang/String;
    const/16 v21, 0x1

    .line 569
    .local v21, "match":Z
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    if-eqz v21, :cond_c

    .line 570
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 571
    .local v9, "arg":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const/16 v21, 0x1

    .line 569
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 571
    :cond_b
    const/16 v21, 0x0

    goto :goto_6

    .line 573
    .end local v9    # "arg":Ljava/lang/String;
    :cond_c
    if-eqz v21, :cond_9

    .line 575
    add-int/lit8 v25, v25, 0x1

    .line 576
    if-eqz v14, :cond_d

    const-string v3, "========================================\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_d
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v3, :cond_e

    const-string v3, "(no tag)"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v3, :cond_f

    .line 579
    const-string v3, " (no file)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 577
    :cond_e
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_7

    .line 581
    :cond_f
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_10

    .line 582
    const-string v3, " (contents lost)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 585
    :cond_10
    const-string v3, " ("

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_11

    const-string v3, "compressed "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_11
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1a

    const-string v3, "text"

    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v3, ", "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    if-nez v13, :cond_12

    if-eqz v14, :cond_14

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_14

    .line 592
    :cond_12
    if-nez v14, :cond_13

    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_13
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_14
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_19

    if-nez v14, :cond_15

    if-nez v13, :cond_19

    .line 597
    :cond_15
    const/4 v12, 0x0

    .line 598
    .local v12, "dbe":Landroid/os/DropBoxManager$Entry;
    const/16 v19, 0x0

    .line 600
    .local v19, "isr":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 603
    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v2, "dbe":Landroid/os/DropBoxManager$Entry;
    if-eqz v14, :cond_1e

    .line 604
    :try_start_5
    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 605
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    const/16 v3, 0x1000

    :try_start_6
    new-array v10, v3, [C

    .line 606
    .local v10, "buf":[C
    const/16 v23, 0x0

    .line 608
    .local v23, "newline":Z
    :cond_16
    :goto_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/InputStreamReader;->read([C)I

    move-result v22

    .line 609
    .local v22, "n":I
    if-gtz v22, :cond_1b

    .line 619
    if-nez v23, :cond_17

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_17
    move-object/from16 v19, v20

    .line 631
    .end local v10    # "buf":[C
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :goto_a
    if-eqz v2, :cond_18

    :try_start_7
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 632
    :cond_18
    if-eqz v19, :cond_19

    .line 634
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 641
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    :cond_19
    :goto_b
    if-eqz v14, :cond_9

    :try_start_9
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 587
    :cond_1a
    const-string v3, "data"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    .line 610
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v10    # "buf":[C
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "n":I
    .restart local v23    # "newline":Z
    :cond_1b
    const/4 v3, 0x0

    :try_start_a
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v10, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 611
    add-int/lit8 v3, v22, -0x1

    aget-char v3, v10, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1d

    const/16 v23, 0x1

    .line 614
    :goto_c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_16

    .line 615
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 616
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    .line 627
    .end local v10    # "buf":[C
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    :catch_1
    move-exception v15

    move-object/from16 v19, v20

    .line 628
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "e":Ljava/io/IOException;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :goto_d
    :try_start_b
    const-string v3, "*** "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 631
    if-eqz v2, :cond_1c

    :try_start_c
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 632
    :cond_1c
    if-eqz v19, :cond_19

    .line 634
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b

    .line 635
    :catch_2
    move-exception v3

    goto :goto_b

    .line 611
    .end local v15    # "e":Ljava/io/IOException;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "buf":[C
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "n":I
    .restart local v23    # "newline":Z
    :cond_1d
    const/16 v23, 0x0

    goto :goto_c

    .line 621
    .end local v10    # "buf":[C
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :cond_1e
    const/16 v3, 0x46

    :try_start_e
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v28

    .line 622
    .local v28, "text":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_20

    const/16 v30, 0x1

    .line 623
    .local v30, "truncated":Z
    :goto_e
    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    if-eqz v30, :cond_1f

    const-string v3, " ..."

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_1f
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_a

    .line 627
    .end local v28    # "text":Ljava/lang/String;
    .end local v30    # "truncated":Z
    :catch_3
    move-exception v15

    goto :goto_d

    .line 622
    .restart local v28    # "text":Ljava/lang/String;
    :cond_20
    const/16 v30, 0x0

    goto :goto_e

    .line 631
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v28    # "text":Ljava/lang/String;
    .restart local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_1
    move-exception v3

    move-object v2, v12

    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    :goto_f
    if-eqz v2, :cond_21

    :try_start_f
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 632
    :cond_21
    if-eqz v19, :cond_22

    .line 634
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 636
    :cond_22
    :goto_10
    :try_start_11
    throw v3

    .line 644
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v11    # "date":Ljava/lang/String;
    .end local v16    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .end local v21    # "match":Z
    :cond_23
    if-nez v25, :cond_24

    const-string v3, "(No entries found.)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_24
    if-eqz p3, :cond_25

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_27

    .line 647
    :cond_25
    if-nez v14, :cond_26

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_26
    const-string v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_27
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 635
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v11    # "date":Ljava/lang/String;
    .restart local v16    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "match":Z
    :catch_4
    move-exception v3

    goto/16 :goto_b

    :catch_5
    move-exception v4

    goto :goto_10

    .line 631
    :catchall_2
    move-exception v3

    goto :goto_f

    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v3

    move-object/from16 v19, v20

    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    goto :goto_f

    .line 627
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catch_6
    move-exception v15

    move-object v2, v12

    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_d
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .prologue
    const/4 v10, 0x0

    .line 490
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 496
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    if-nez p1, :cond_1

    :try_start_2
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .local v9, "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_0
    if-nez v9, :cond_2

    move-object v0, v10

    .line 519
    .end local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 497
    :catch_0
    move-exception v6

    .line 498
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 499
    goto :goto_1

    .line 502
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v9, v0

    goto :goto_0

    .line 505
    .restart local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_2
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 506
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 507
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 508
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 511
    :cond_4
    :try_start_4
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 513
    :catch_1
    move-exception v6

    .line 514
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_5
    move-object v0, v10

    .line 519
    goto :goto_1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 482
    .local v0, "token":J
    :try_start_0
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 485
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 482
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method
