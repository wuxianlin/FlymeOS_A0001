.class final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionState"
.end annotation


# instance fields
.field private final callingUid:I

.field private final client:Landroid/media/tv/ITvInputClient;

.field private hardwareSessionToken:Landroid/os/IBinder;

.field private final info:Landroid/media/tv/TvInputInfo;

.field private logUri:Landroid/net/Uri;

.field private final seq:I

.field private session:Landroid/media/tv/ITvInputSession;

.field private final sessionToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;III)V
    .locals 0
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "client"    # Landroid/media/tv/ITvInputClient;
    .param p5, "seq"    # I
    .param p6, "callingUid"    # I
    .param p7, "userId"    # I

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 1712
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;

    .line 1713
    iput-object p4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 1714
    iput p5, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 1715
    iput p6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 1716
    iput p7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 1717
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/media/tv/TvInputInfo;
    .param p4, "x3"    # Landroid/media/tv/ITvInputClient;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    .line 1697
    invoke-direct/range {p0 .. p7}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;III)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSession;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->logUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 9

    .prologue
    .line 1721
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1722
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 1723
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1725
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v4, v6}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1731
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1732
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1733
    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    if-ne v4, v6, :cond_1

    .line 1734
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    const/16 v7, 0x3e8

    iget v8, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V
    invoke-static {v4, v6, v7, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4800(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1737
    :try_start_3
    iget-object v4, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget v6, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v4, v6}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "TvInputManagerService"

    const-string v6, "error in onSessionReleased"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1744
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1726
    :catch_1
    move-exception v0

    .line 1727
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "TvInputManagerService"

    const-string v6, "error in onSessionReleased"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1743
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iget v7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V
    invoke-static {v4, v6, v7}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 1744
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1745
    return-void
.end method
