.class Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 137
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** Keyguard connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;-><init>(Lcom/android/internal/policy/IKeyguardService;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->sendStateChangeBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Z)V

    .line 150
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 154
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** Keyguard disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->sendStateChangeBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Z)V

    .line 157
    return-void
.end method
