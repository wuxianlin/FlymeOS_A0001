.class public abstract Landroid/telecom/Connection$VideoProvider;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;,
        Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    }
.end annotation


# static fields
.field private static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_VIDEO_CALLBACK:I = 0x1

.field private static final MSG_SET_ZOOM:I = 0x6

.field public static final SESSION_EVENT_CAMERA_FAILURE:I = 0x5

.field public static final SESSION_EVENT_CAMERA_READY:I = 0x6

.field public static final SESSION_EVENT_RX_PAUSE:I = 0x1

.field public static final SESSION_EVENT_RX_RESUME:I = 0x2

.field public static final SESSION_EVENT_TX_START:I = 0x3

.field public static final SESSION_EVENT_TX_STOP:I = 0x4

.field public static final SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1

.field public static final SESSION_MODIFY_REQUEST_TIMED_OUT:I = 0x4


# instance fields
.field private final mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

.field private final mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

.field private mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$1;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 299
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$1;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 300
    return-void
.end method

.method static synthetic access$102(Landroid/telecom/Connection$VideoProvider;Lcom/android/internal/telecom/IVideoCallback;)Lcom/android/internal/telecom/IVideoCallback;
    .locals 0
    .param p0, "x0"    # Landroid/telecom/Connection$VideoProvider;
    .param p1, "x1"    # Lcom/android/internal/telecom/IVideoCallback;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-object v0
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 1
    .param p1, "dataUsage"    # J

    .prologue
    .line 463
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 465
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    .locals 1
    .param p1, "cameraCapabilities"    # Landroid/telecom/CameraCapabilities;

    .prologue
    .line 477
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changePeerDimensions(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 449
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 451
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changeVideoQuality(I)V
    .locals 1
    .param p1, "videoQuality"    # I

    .prologue
    .line 491
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 493
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getInterface()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 434
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 436
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract onRequestCallDataUsage()V
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetPauseImage(Ljava/lang/String;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 394
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 414
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method
