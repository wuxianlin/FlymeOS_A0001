.class public abstract Landroid/telecom/RemoteConnection$Callback;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 127
    return-void
.end method

.method public onCallCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "callCapabilities"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onCallSubstateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "callSubstate"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 203
    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConnection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    return-void
.end method

.method public onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 167
    return-void
.end method

.method public onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 65
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 98
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "ringback"    # Z

    .prologue
    .line 78
    return-void
.end method

.method public onStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "state"    # I

    .prologue
    .line 54
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 116
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 191
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "videoState"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "isVoip"    # Z

    .prologue
    .line 107
    return-void
.end method

.method public setDisconnectedWithSsNotification(Landroid/telecom/RemoteConnection;ILjava/lang/String;II)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "disconnectCause"    # I
    .param p3, "disconnectMessage"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "code"    # I

    .prologue
    .line 69
    return-void
.end method

.method public setPhoneAccountHandle(Landroid/telecom/RemoteConnection;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 208
    return-void
.end method
