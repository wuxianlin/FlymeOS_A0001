.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider;,
        Landroid/telecom/RemoteConnection$Callback;
    }
.end annotation


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mCallCapabilities:I

.field private mCallSubstate:I

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/RemoteConference;

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private final mConnectionId:Ljava/lang/String;

.field private mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mIsVoipAudioMode:Z

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private mVideoState:I


# direct methods
.method constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v3, 0x1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 409
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 412
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 473
    const-string v0, "NULL"

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 475
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 476
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 477
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    const/4 v3, 0x1

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 409
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 412
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 435
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 436
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 437
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 439
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    const/4 v3, 0x1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 409
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 412
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 446
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 447
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 448
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 449
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 450
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 451
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 452
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mCallCapabilities:I

    .line 453
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 454
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 455
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 456
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 457
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 458
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 459
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 460
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 462
    return-void
.end method

.method public static failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 985
    new-instance v0, Landroid/telecom/RemoteConnection;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 609
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public answer()V
    .locals 2

    .prologue
    .line 621
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 635
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 683
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getAddressPresentation()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    return v0
.end method

.method public getCallCapabilities()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallCapabilities:I

    return v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallSubstate:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getConference()Landroid/telecom/RemoteConference;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    return v0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 659
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isRingbackRequested()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public isVoipAudioMode()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 701
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .prologue
    .line 747
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 485
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method public reject()V
    .locals 2

    .prologue
    .line 647
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setAddress(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 933
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 934
    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 935
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 936
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    goto :goto_0

    .line 938
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 2
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 761
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setCallCapabilities(I)V
    .locals 3
    .param p1, "callCapabilities"    # I

    .prologue
    .line 850
    iput p1, p0, Landroid/telecom/RemoteConnection;->mCallCapabilities:I

    .line 851
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 852
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onCallCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_0

    .line 854
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    .prologue
    .line 899
    iput p1, p0, Landroid/telecom/RemoteConnection;->mCallSubstate:I

    .line 900
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 901
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onCallSubstateChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_0

    .line 903
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 942
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 943
    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 944
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 945
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    goto :goto_0

    .line 947
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setConference(Landroid/telecom/RemoteConference;)V
    .locals 3
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 960
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    if-eq v2, p1, :cond_0

    .line 961
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 962
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 963
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    goto :goto_0

    .line 966
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 952
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 953
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 954
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConnection$Callback;->onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V

    goto :goto_0

    .line 956
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 5

    .prologue
    .line 860
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 862
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 863
    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x1

    const-string v4, "Connection destroyed."

    invoke-direct {v2, v3, v4}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 867
    :cond_0
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 868
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0}, Landroid/telecom/RemoteConnection$Callback;->onDestroyed(Landroid/telecom/RemoteConnection;)V

    goto :goto_0

    .line 870
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_1
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 872
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 874
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v3, 0x6

    .line 815
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v2, v3, :cond_0

    .line 816
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 817
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 819
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 820
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConnection$Callback;->onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 823
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setDisconnectedWithSsNotification(ILjava/lang/String;II)V
    .locals 7
    .param p1, "disconnectCause"    # I
    .param p2, "disconnectMessage"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "code"    # I

    .prologue
    .line 828
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 829
    invoke-virtual/range {v0 .. v5}, Landroid/telecom/RemoteConnection$Callback;->setDisconnectedWithSsNotification(Landroid/telecom/RemoteConnection;ILjava/lang/String;II)V

    goto :goto_0

    .line 832
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    .prologue
    .line 917
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 918
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 919
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V

    goto :goto_0

    .line 921
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 970
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 971
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->setPhoneAccountHandle(Landroid/telecom/RemoteConnection;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 973
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remainingDigits"    # Ljava/lang/String;

    .prologue
    .line 880
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 881
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 883
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    .prologue
    .line 838
    iget-boolean v2, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_0

    .line 839
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 840
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 841
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V

    goto :goto_0

    .line 844
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 803
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v2, p1, :cond_0

    .line 804
    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 805
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 806
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onStateChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_0

    .line 809
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 925
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 926
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 927
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 929
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 909
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 910
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 911
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    goto :goto_0

    .line 913
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 889
    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 890
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 891
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_0

    .line 893
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 717
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unhold()V
    .locals 2

    .prologue
    .line 671
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 497
    :cond_0
    return-void
.end method
