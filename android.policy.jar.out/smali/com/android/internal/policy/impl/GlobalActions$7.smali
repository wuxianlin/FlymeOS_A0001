.class Lcom/android/internal/policy/impl/GlobalActions$7;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->addRebootItem(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-object p4, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->val$action:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 5

    .prologue
    .line 618
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 620
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->val$action:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GlobalActions"

    const-string v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method
