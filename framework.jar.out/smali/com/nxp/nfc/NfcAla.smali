.class public final Lcom/nxp/nfc/NfcAla;
.super Ljava/lang/Object;
.source "NfcAla.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcAla"


# instance fields
.field private mService:Lcom/nxp/nfc/INfcAla;


# direct methods
.method public constructor <init>(Lcom/nxp/nfc/INfcAla;)V
    .locals 0
    .param p1, "mAlaService"    # Lcom/nxp/nfc/INfcAla;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/nxp/nfc/NfcAla;->mService:Lcom/nxp/nfc/INfcAla;

    .line 34
    return-void
.end method


# virtual methods
.method public appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "choice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/nxp/nfc/NfcAla;->mService:Lcom/nxp/nfc/INfcAla;

    invoke-interface {v2, p1, p2}, Lcom/nxp/nfc/INfcAla;->appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to Load applet"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcAla"

    const-string v3, "RemoteException in AppletLoadApplet(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in AppletLoadApplet()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getKeyCertificate()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/nxp/nfc/NfcAla;->mService:Lcom/nxp/nfc/INfcAla;

    invoke-interface {v2}, Lcom/nxp/nfc/INfcAla;->getKeyCertificate()[B

    move-result-object v0

    .line 88
    .local v0, "data":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 89
    return-object v0

    .line 91
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid data received"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NfcAla"

    const-string v3, "RemoteException in getKeyCertificate(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in getKeyCertificate()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/nxp/nfc/NfcAla;->mService:Lcom/nxp/nfc/INfcAla;

    invoke-interface {v2, p1, p2}, Lcom/nxp/nfc/INfcAla;->getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    .local v1, "num":I
    return v1

    .line 74
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcAla"

    const-string v3, "RemoteException in GetListofApplets(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in GetListofApplets()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
