.class Landroid/media/PlayerRecord;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerRecord$RemotePlaybackState;,
        Landroid/media/PlayerRecord$RcClientDeathHandler;,
        Landroid/media/PlayerRecord$RccPlaybackState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field public static sController:Landroid/media/MediaFocusControl;

.field private static sLastRccId:I


# instance fields
.field private mCallingPackageName:Ljava/lang/String;

.field private mCallingUid:I

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field public mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPlaybackVolume:I

.field public mPlaybackVolumeHandling:I

.field public mPlaybackVolumeMax:I

.field private mRcClient:Landroid/media/IRemoteControlClient;

.field private mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

.field private mRccId:I

.field private final mReceiverComponent:Landroid/content/ComponentName;

.field public mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Landroid/media/PlayerRecord;->sLastRccId:I

    return-void
.end method

.method protected constructor <init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, -0x1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Landroid/media/PlayerRecord;->mRccId:I

    .line 221
    iput-object p1, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    .line 222
    iput-object p2, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    .line 223
    iput-object p3, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    .line 224
    iput v1, p0, Landroid/media/PlayerRecord;->mCallingUid:I

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 226
    sget v1, Landroid/media/PlayerRecord;->sLastRccId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/media/PlayerRecord;->sLastRccId:I

    iput v1, p0, Landroid/media/PlayerRecord;->mRccId:I

    .line 227
    new-instance v1, Landroid/media/PlayerRecord$RccPlaybackState;

    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/media/PlayerRecord$RccPlaybackState;-><init>(IJF)V

    iput-object v1, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    .line 232
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->resetPlaybackInfo()V

    .line 233
    iget-object v1, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    iget-object v2, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected static setMediaFocusControl(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "mfc"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 215
    sput-object p0, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    .line 216
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 349
    sget-object v0, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V

    .line 350
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->unlinkToRcClientDeath()V

    .line 341
    iget-object v0, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    .line 345
    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "registrationInfo"    # Z

    .prologue
    .line 192
    if-eqz p2, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  pi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- ercvr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mRccId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- vol handling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- vol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- volMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- volObs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->destroy()V

    .line 355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 356
    return-void
.end method

.method protected getMediaButtonIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected getMediaButtonReceiver()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getRcc()Landroid/media/IRemoteControlClient;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method protected getRccId()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/media/PlayerRecord;->mRccId:I

    return v0
.end method

.method protected hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 261
    iget-object v0, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 267
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPlaybackActive()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v0

    return v0
.end method

.method protected resetControllerInfoForNoRcc()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->unlinkToRcClientDeath()V

    .line 311
    iput-object v0, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 312
    iput-object v0, p0, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    .line 313
    return-void
.end method

.method protected resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    .locals 6
    .param p1, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 281
    iget-object v3, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->unlinkToRcClientDeath()V

    .line 286
    :cond_0
    iput-object p1, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 287
    iput-object p2, p0, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    .line 288
    iput p3, p0, Landroid/media/PlayerRecord;->mCallingUid:I

    .line 289
    if-nez p1, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->resetPlaybackInfo()V

    .line 305
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v3, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 294
    .local v0, "b":Landroid/os/IBinder;
    new-instance v2, Landroid/media/PlayerRecord$RcClientDeathHandler;

    iget-object v3, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, p0, v0, v3}, Landroid/media/PlayerRecord$RcClientDeathHandler;-><init>(Landroid/media/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 297
    .local v2, "rcdh":Landroid/media/PlayerRecord$RcClientDeathHandler;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    iput-object v2, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_1
.end method

.method public resetPlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlayerRecord;->mPlaybackType:I

    .line 317
    iput v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolume:I

    .line 318
    iput v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolumeMax:I

    .line 319
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/PlayerRecord;->mPlaybackVolumeHandling:I

    .line 320
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/PlayerRecord;->mPlaybackStream:I

    .line 321
    iget-object v0, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0}, Landroid/media/PlayerRecord$RccPlaybackState;->reset()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 323
    return-void
.end method

.method public unlinkToRcClientDeath()V
    .locals 4

    .prologue
    .line 327
    iget-object v1, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    # getter for: Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/PlayerRecord$RcClientDeathHandler;->access$000(Landroid/media/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    # getter for: Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/PlayerRecord$RcClientDeathHandler;->access$000(Landroid/media/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Error in unlinkToRcClientDeath()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
