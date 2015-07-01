.class public final Lcom/android/server/oppo/OppoExService;
.super Landroid/os/IOppoExService$Stub;
.source "OppoExService.java"


# static fields
.field private static final OPPO_EX_CHANNEL_NAME:Ljava/lang/String; = "OppoExInputReceiver"

.field private static final OPPO_EX_DEBUGGABLE:Ljava/lang/String; = "persist.sys.ex.service"

.field private static final TAG:Ljava/lang/String; = "OppoExService"


# instance fields
.field private mContext:Landroid/content/Context;

.field mExInputChannel:Landroid/view/InputChannel;

.field private mGestureCallback:Landroid/os/IOppoGestureCallBack;

.field private mGestureStatesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/os/IOppoExService$Stub;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mH:Landroid/os/Handler;

    .line 48
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 50
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 54
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lcom/android/server/oppo/OppoExService;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/oppo/OppoExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OppoExService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    return-void
.end method


# virtual methods
.method public dealScreenoffGesture(I)V
    .locals 4
    .param p1, "nGesture"    # I

    .prologue
    .line 213
    const-string v1, "OppoExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoExService  dealScreenoffGesture nGesture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mGestureCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    invoke-interface {v1, p1}, Landroid/os/IOppoGestureCallBack;->onDealGesture(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppoExService"

    const-string v2, "Failure IOppoGestureCallBack onDealGesture"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public getGestureState(I)Z
    .locals 6
    .param p1, "nGesture"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 237
    :goto_0
    return v3

    .line 235
    :cond_0
    const-string v1, "OppoExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OppoExService  setGestureState mGestureStatesMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 237
    .local v0, "nState":I
    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public registerScreenoffGesture(Landroid/os/IOppoGestureCallBack;)Z
    .locals 1
    .param p1, "callBack"    # Landroid/os/IOppoGestureCallBack;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public setGestureState(IZ)V
    .locals 4
    .param p1, "nGesture"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 225
    const-string v0, "OppoExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoExService  setGestureState nGesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterScreenoffGesture(Landroid/os/IOppoGestureCallBack;)V
    .locals 1
    .param p1, "callBack"    # Landroid/os/IOppoGestureCallBack;

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    .line 210
    return-void
.end method
