.class public abstract Landroid/os/IOppoExService$Stub;
.super Landroid/os/Binder;
.source "IOppoExService.java"

# interfaces
.implements Landroid/os/IOppoExService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOppoExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOppoExService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IOppoExService"

.field static final TRANSACTION_dealScreenoffGesture:I = 0x3

.field static final TRANSACTION_getGestureState:I = 0x5

.field static final TRANSACTION_registerScreenoffGesture:I = 0x1

.field static final TRANSACTION_setGestureState:I = 0x4

.field static final TRANSACTION_unregisterScreenoffGesture:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IOppoExService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IOppoExService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IOppoExService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IOppoExService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IOppoExService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IOppoExService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IOppoExService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "android.os.IOppoExService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IOppoGestureCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoGestureCallBack;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Landroid/os/IOppoGestureCallBack;
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->registerScreenoffGesture(Landroid/os/IOppoGestureCallBack;)Z

    move-result v2

    .line 52
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Landroid/os/IOppoGestureCallBack;
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IOppoGestureCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoGestureCallBack;

    move-result-object v0

    .line 61
    .restart local v0    # "_arg0":Landroid/os/IOppoGestureCallBack;
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->unregisterScreenoffGesture(Landroid/os/IOppoGestureCallBack;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Landroid/os/IOppoGestureCallBack;
    :sswitch_3
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->dealScreenoffGesture(I)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v5, "android.os.IOppoExService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 81
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/os/IOppoExService$Stub;->setGestureState(IZ)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_1
    move v1, v3

    .line 80
    goto :goto_1

    .line 87
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v5, "android.os.IOppoExService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->getGestureState(I)Z

    move-result v2

    .line 91
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
