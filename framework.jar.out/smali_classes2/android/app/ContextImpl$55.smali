.class final Landroid/app/ContextImpl$55;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 706
    const-string v2, "fingerprint"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 707
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/service/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/fingerprint/IFingerprintService;

    move-result-object v1

    .line 708
    .local v1, "service":Landroid/service/fingerprint/IFingerprintService;
    new-instance v2, Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/service/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;Landroid/service/fingerprint/IFingerprintService;)V

    return-object v2
.end method
