.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final TRANSACTION_onInterruptionFilterChanged:I = 0x6

.field static final TRANSACTION_onListenerConnected:I = 0x1

.field static final TRANSACTION_onListenerHintsChanged:I = 0x5

.field static final TRANSACTION_onNotificationPosted:I = 0x2

.field static final TRANSACTION_onNotificationRankingUpdate:I = 0x4

.field static final TRANSACTION_onNotificationRemoved:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.notification.INotificationListener"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/INotificationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
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
    const-string v1, "android.service.notification.INotificationListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/service/notification/INotificationListener;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/service/notification/INotificationListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "android.service.notification.INotificationListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationRankingUpdate;

    .line 56
    .local v0, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    goto :goto_0

    .line 54
    .end local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_1

    .line 61
    .end local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_2
    const-string v3, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationRankingUpdate;

    .line 71
    .local v1, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    goto :goto_0

    .line 69
    .end local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_2

    .line 76
    .end local v0    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_3
    const-string v3, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationRankingUpdate;

    .line 86
    .restart local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    goto :goto_0

    .line 84
    .end local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_3

    .line 91
    .end local v0    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_4
    const-string v3, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationRankingUpdate;

    .line 99
    .local v0, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_4

    .line 104
    .end local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_5
    const-string v3, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(I)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v3, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(I)V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
