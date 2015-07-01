.class Lcom/nxp/nfc/INfcDta$Stub$Proxy;
.super Ljava/lang/Object;
.source "INfcDta.java"

# interfaces
.implements Lcom/nxp/nfc/INfcDta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/INfcDta$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/nxp/nfc/INfcDta$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nxp/nfc/INfcDta$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "com.nxp.nfc.INfcDta"

    return-object v0
.end method

.method public snepDtaCmd(Ljava/lang/String;Ljava/lang/String;IIII)Z
    .locals 7
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "serviceSap"    # I
    .param p4, "miu"    # I
    .param p5, "rwSize"    # I
    .param p6, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.nxp.nfc.INfcDta"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v4, p0, Lcom/nxp/nfc/INfcDta$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    return v2

    .end local v2    # "_result":Z
    :cond_0
    move v2, v3

    .line 102
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
