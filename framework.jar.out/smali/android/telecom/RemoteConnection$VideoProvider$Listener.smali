.class public abstract Landroid/telecom/RemoteConnection$VideoProvider$Listener;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;J)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "dataUsage"    # J

    .prologue
    .line 229
    return-void
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/CameraCapabilities;)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "cameraCapabilities"    # Landroid/telecom/CameraCapabilities;

    .prologue
    .line 233
    return-void
.end method

.method public onHandleCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "event"    # I

    .prologue
    .line 225
    return-void
.end method

.method public onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 227
    return-void
.end method

.method public onReceiveSessionModifyRequest(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 217
    return-void
.end method

.method public onReceiveSessionModifyResponse(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "status"    # I
    .param p3, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p4, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 223
    return-void
.end method

.method public onVideoQualityChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "videoQuality"    # I

    .prologue
    .line 235
    return-void
.end method
