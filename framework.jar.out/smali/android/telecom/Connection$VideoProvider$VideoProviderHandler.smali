.class final Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method private constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telecom/Connection$VideoProvider;
    .param p2, "x1"    # Landroid/telecom/Connection$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v0

    # setter for: Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;
    invoke-static {v1, v0}, Landroid/telecom/Connection$VideoProvider;->access$102(Landroid/telecom/Connection$VideoProvider;Lcom/android/internal/telecom/IVideoCallback;)Lcom/android/internal/telecom/IVideoCallback;

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 214
    :pswitch_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    goto :goto_0

    .line 217
    :pswitch_5
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    goto :goto_0

    .line 220
    :pswitch_6
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 223
    :pswitch_7
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 226
    :pswitch_8
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    goto :goto_0

    .line 229
    :pswitch_9
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestCallDataUsage()V

    goto :goto_0

    .line 232
    :pswitch_a
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
