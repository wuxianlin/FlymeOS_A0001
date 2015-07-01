.class public Landroid/telecom/RemoteConnection$VideoProvider;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$VideoProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

.field private final mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 4
    .param p1, "videoProviderBinder"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection$VideoProvider$1;-><init>(Landroid/telecom/RemoteConnection$VideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 299
    new-instance v0, Landroid/telecom/VideoCallbackServant;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    invoke-direct {v0, v1}, Landroid/telecom/VideoCallbackServant;-><init>(Lcom/android/internal/telecom/IVideoCallback;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    .line 309
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    .line 313
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    invoke-virtual {v1}, Landroid/telecom/VideoCallbackServant;->getStub()Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->setVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 212
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addListener(Landroid/telecom/RemoteConnection$VideoProvider$Listener;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .prologue
    .line 321
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public removeListener(Landroid/telecom/RemoteConnection$VideoProvider$Listener;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .prologue
    .line 325
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method public requestCallDataUsage()V
    .locals 1

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestCameraCapabilities()V
    .locals 1

    .prologue
    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "reqProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 365
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 351
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 344
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 393
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method
