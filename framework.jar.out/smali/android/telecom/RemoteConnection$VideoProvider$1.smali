.class Landroid/telecom/RemoteConnection$VideoProvider$1;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection$VideoProvider;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 279
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .line 280
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Listener;->onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;J)V

    goto :goto_0

    .line 282
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    :cond_0
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    .locals 3
    .param p1, "cameraCapabilities"    # Landroid/telecom/CameraCapabilities;

    .prologue
    .line 286
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .line 287
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Listener;->onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/CameraCapabilities;)V

    goto :goto_0

    .line 289
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    :cond_0
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 272
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .line 273
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Listener;->onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V

    goto :goto_0

    .line 275
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    :cond_0
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    .prologue
    .line 293
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .line 294
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Listener;->onVideoQualityChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    goto :goto_0

    .line 296
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    :cond_0
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 265
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .line 266
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Listener;->onHandleCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    goto :goto_0

    .line 268
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 246
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .line 247
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Listener;->onReceiveSessionModifyRequest(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 249
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 254
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .line 255
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/telecom/RemoteConnection$VideoProvider$Listener;->onReceiveSessionModifyResponse(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 261
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    :cond_0
    return-void
.end method
