.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceConnectionProxy"
.end annotation


# instance fields
.field private final mConnectionCb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "connectionCb"    # Landroid/os/IBinder;

    .prologue
    .line 3411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3412
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->mConnectionCb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    .line 3414
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    .prologue
    .line 3430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->mConnectionCb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection;->onServiceDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3434
    :goto_0
    return-void

    .line 3431
    :catch_0
    move-exception v0

    .line 3432
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AppWidgetServiceImpl"

    const-string v2, "Error clearing service interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3418
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->mConnectionCb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    invoke-interface {v1, p2}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection;->onServiceConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3422
    :goto_0
    return-void

    .line 3419
    :catch_0
    move-exception v0

    .line 3420
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AppWidgetServiceImpl"

    const-string v2, "Error passing service interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 3425
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 3426
    return-void
.end method
