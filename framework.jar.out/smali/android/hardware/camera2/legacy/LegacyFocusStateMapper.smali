.class public Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mAfModePrevious:Ljava/lang/String;

.field private mAfRun:I

.field private mAfState:I

.field private mAfStatePrevious:I

.field private final mCamera:Landroid/hardware/Camera;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "LegacyFocusStateMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    .line 51
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 53
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 63
    const-string v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .prologue
    .line 39
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    return p1
.end method

.method private static afStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "afState"    # I

    .prologue
    .line 302
    packed-switch p0, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 304
    :pswitch_0
    const-string v0, "ACTIVE_SCAN"

    goto :goto_0

    .line 306
    :pswitch_1
    const-string v0, "FOCUSED_LOCKED"

    goto :goto_0

    .line 308
    :pswitch_2
    const-string v0, "INACTIVE"

    goto :goto_0

    .line 310
    :pswitch_3
    const-string v0, "NOT_FOCUSED_LOCKED"

    goto :goto_0

    .line 312
    :pswitch_4
    const-string v0, "PASSIVE_FOCUSED"

    goto :goto_0

    .line 314
    :pswitch_5
    const-string v0, "PASSIVE_SCAN"

    goto :goto_0

    .line 316
    :pswitch_6
    const-string v0, "PASSIVE_UNFOCUSED"

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 6
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    .line 284
    const-string/jumbo v1, "result must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 288
    :try_start_0
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 289
    .local v0, "newAfState":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    sget-boolean v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    if-eq v0, v1, :cond_0

    .line 292
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mapResultTriggers - afState changed from %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    invoke-static {v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->afStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->afStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 298
    iput v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    .line 299
    return-void

    .line 289
    .end local v0    # "newAfState":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 82
    const-string v6, "captureRequest must not be null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 90
    .local v3, "afTrigger":I
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "afMode":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    sget-boolean v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    if-eqz v6, :cond_0

    .line 94
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processRequestTriggers - AF mode switched from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 101
    :try_start_0
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 102
    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 103
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 107
    :cond_1
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    .line 113
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 114
    :try_start_1
    iget v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 115
    .local v4, "currentAfRun":I
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;

    invoke-direct {v1, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    .line 160
    .local v1, "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 171
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 269
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processRequestTriggers - ignoring unknown control.afTrigger = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_3
    :goto_2
    :pswitch_0
    return-void

    .line 103
    .end local v1    # "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    .end local v4    # "currentAfRun":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 115
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 160
    .restart local v1    # "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    .restart local v4    # "currentAfRun":I
    :sswitch_0
    const-string v7, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "macro"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "continuous-picture"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v7, "continuous-video"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x3

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_1

    .line 175
    :pswitch_2
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_4
    :goto_3
    packed-switch v6, :pswitch_data_2

    .line 186
    const/4 v2, 0x0

    .line 190
    .local v2, "afStateAfterStart":I
    :goto_4
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 191
    :try_start_4
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 192
    iput v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 193
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 195
    sget-boolean v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    if-eqz v6, :cond_5

    .line 196
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processRequestTriggers - got AF_TRIGGER_START, new AF run is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_5
    if-eqz v2, :cond_3

    .line 205
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v7, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;

    invoke-direct {v7, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_2

    .line 175
    .end local v2    # "afStateAfterStart":I
    :sswitch_4
    const-string v7, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :sswitch_5
    const-string/jumbo v7, "macro"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :sswitch_6
    const-string v7, "continuous-picture"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x2

    goto :goto_3

    :sswitch_7
    const-string v7, "continuous-video"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x3

    goto :goto_3

    .line 178
    :pswitch_3
    const/4 v2, 0x3

    .line 179
    .restart local v2    # "afStateAfterStart":I
    goto :goto_4

    .line 182
    .end local v2    # "afStateAfterStart":I
    :pswitch_4
    const/4 v2, 0x1

    .line 183
    .restart local v2    # "afStateAfterStart":I
    goto :goto_4

    .line 193
    .end local v4    # "currentAfRun":I
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .line 248
    .end local v2    # "afStateAfterStart":I
    .restart local v4    # "currentAfRun":I
    :pswitch_5
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 251
    :try_start_6
    iget-object v8, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 252
    :try_start_7
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 253
    .local v5, "updatedAfRun":I
    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 254
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 256
    :try_start_8
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 258
    sget-boolean v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    if-eqz v6, :cond_6

    .line 259
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processRequestTriggers - got AF_TRIGGER_CANCEL, new AF run is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_6
    monitor-exit v7

    goto/16 :goto_2

    .end local v5    # "updatedAfRun":I
    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6

    .line 254
    :catchall_4
    move-exception v6

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 160
    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_3
        0x2dddaf -> :sswitch_0
        0x62d9bcc -> :sswitch_1
        0x363d9440 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 171
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 175
    :sswitch_data_1
    .sparse-switch
        -0xb99cbc3 -> :sswitch_7
        0x2dddaf -> :sswitch_4
        0x62d9bcc -> :sswitch_5
        0x363d9440 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
