.class public Landroid/telephony/ColorOSTelephonyManager;
.super Ljava/lang/Object;
.source "ColorOSTelephonyManager.java"

# interfaces
.implements Landroid/telephony/IColorOSTelephony;


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorOSTelephonyManager"

.field private static isQcomGeminiSupport:Z

.field private static mContext:Landroid/content/Context;

.field private static final sInstance:Landroid/telephony/ColorOSTelephonyManager;

.field private static vDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v0, Landroid/telephony/ColorOSTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/ColorOSTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/ColorOSTelephonyManager;->sInstance:Landroid/telephony/ColorOSTelephonyManager;

    .line 46
    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 48
    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.qualcomm.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 64
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    .line 52
    sput-object p0, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 54
    :cond_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->initRemoteService()V

    .line 56
    sget-object v0, Landroid/telephony/ColorOSTelephonyManager;->sInstance:Landroid/telephony/ColorOSTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 484
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMTKsupportGeminiFlag()Z
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x1

    .line 103
    .local v0, "vRet":Z
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "mtk.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 106
    :cond_0
    return v0
.end method

.method private getRemoteServiceBinder()Landroid/os/IBinder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 672
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v3

    sput-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 674
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v3, v4, :cond_1

    .line 675
    const/4 v2, 0x1

    .line 681
    .local v2, "vType":I
    :goto_0
    if-ne v4, v2, :cond_2

    .line 682
    const/4 v1, 0x1

    .line 683
    .local v1, "vDebugType":I
    const-string v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 694
    .local v0, "mRemote":Landroid/os/IBinder;
    :goto_1
    if-nez v0, :cond_0

    .line 695
    const-string v3, "ColorOSTelephonyManager"

    const-string v4, "***********************************"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v3, "ColorOSTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorOSTelephonyManager is NULL !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v3, "ColorOSTelephonyManager"

    const-string v4, "***********************************"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    .line 701
    .end local v0    # "mRemote":Landroid/os/IBinder;
    :cond_0
    return-object v0

    .line 678
    .end local v1    # "vDebugType":I
    .end local v2    # "vType":I
    :cond_1
    const/4 v2, 0x2

    .restart local v2    # "vType":I
    goto :goto_0

    .line 685
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    .line 686
    const/4 v1, 0x2

    .line 687
    .restart local v1    # "vDebugType":I
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "mRemote":Landroid/os/IBinder;
    goto :goto_1

    .line 690
    .end local v0    # "mRemote":Landroid/os/IBinder;
    .end local v1    # "vDebugType":I
    :cond_3
    const/4 v1, 0x3

    .line 691
    .restart local v1    # "vDebugType":I
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "mRemote":Landroid/os/IBinder;
    goto :goto_1
.end method

.method private static initRemoteService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    sput-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 71
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 78
    .local v0, "vType":I
    :goto_0
    if-ne v2, v0, :cond_1

    .line 79
    const-string v1, "com.android.internal.telephony.msim.ITelephonyMSim"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    .line 87
    :goto_1
    return-void

    .line 75
    .end local v0    # "vType":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "vType":I
    goto :goto_0

    .line 81
    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 82
    const-string v1, "com.android.internal.telephony.ITelephony"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    goto :goto_1

    .line 85
    :cond_2
    const-string v1, "com.android.internal.telephony.ITelephony"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    goto :goto_1
.end method

.method public static innerGetQcomDualCard()Z
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x1

    .line 92
    .local v0, "vRet":Z
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.qualcomm.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 95
    :cond_0
    return v0
.end method


# virtual methods
.method public answerRingingCallGemini(I)V
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x1

    .line 508
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 509
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->endCallForSubscriber(J)Z

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 514
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0

    .line 517
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public colorChangeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 894
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 895
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 899
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    if-eqz p4, :cond_0

    .line 905
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 912
    :goto_0
    const/16 v4, 0x271c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    :goto_1
    return-void

    .line 909
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v2

    .line 916
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorChangeIccLockPassword ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 919
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorCheckUsimIs4G(I)Z
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 928
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 931
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    const/16 v5, 0x271d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 942
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    :goto_0
    return v2

    .line 937
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 938
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorCheckUsimIs4G ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    const/4 v2, 0x0

    .line 942
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 942
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetDataSubscription()I
    .locals 8

    .prologue
    .line 1145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1147
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 1148
    .local v2, "_result":I
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1150
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1151
    const/4 v5, -0x1

    .line 1178
    :goto_0
    return v5

    .line 1154
    :cond_0
    if-nez v4, :cond_1

    .line 1156
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1157
    const/16 v5, 0x272c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_1
    move v5, v2

    .line 1178
    goto :goto_0

    .line 1161
    :catch_0
    move-exception v3

    .line 1162
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetDataSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    const/4 v2, -0x1

    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1166
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5

    .line 1172
    :cond_1
    :try_start_2
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_sim_data_call"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_1

    .line 1174
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public colorGetDefaultDataSubscription()I
    .locals 8

    .prologue
    .line 1182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1185
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1189
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1190
    const/16 v5, 0x272c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1199
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1203
    :goto_0
    return v2

    .line 1194
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1195
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetDefaultDataSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1196
    const/4 v2, -0x1

    .line 1199
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1199
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetDefaultSubscription()I
    .locals 4

    .prologue
    .line 1112
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()J

    move-result-wide v2

    long-to-int v0, v2

    .line 1113
    .local v0, "vRet":I
    return v0
.end method

.method public colorGetIccCardTypeGemini(I)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    .line 1361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1364
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1366
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1367
    const/4 v2, 0x0

    .line 1385
    :goto_0
    return-object v2

    .line 1371
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    const/16 v5, 0x2736

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1375
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1382
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1377
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1378
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    const/4 v2, 0x0

    .line 1382
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1382
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccCardTypeGeminiGlobal(I)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    .line 1389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1392
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1394
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1395
    const/4 v2, 0x0

    .line 1413
    :goto_0
    return-object v2

    .line 1399
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    const/16 v5, 0x2738

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1410
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1405
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1406
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccCardTypeGeminiGlobal ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    const/4 v2, 0x0

    .line 1410
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1410
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccLockEnabled(I)Z
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 839
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 841
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 845
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    const/16 v5, 0x271a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 848
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 849
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 856
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    :goto_0
    return v2

    .line 851
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 852
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccLockEnabled ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    const/4 v2, 0x0

    .line 856
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 856
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccPin1RetryCount(I)I
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    .line 949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 952
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 956
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    const/16 v5, 0x271e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 959
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 967
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    :goto_0
    return v2

    .line 962
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 963
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccPin1RetryCount ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 964
    const/4 v2, -0x1

    .line 967
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 967
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetInterfaceReserve3(I)I
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    .line 1475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1478
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1481
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1483
    const/16 v5, 0x273d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1492
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1495
    :goto_0
    return v2

    .line 1487
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1488
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetInterfaceReserve3 ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1489
    const/4 v2, -0x1

    .line 1492
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1492
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetPreferredNetworkType(I)I
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 739
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 742
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/16 v5, 0x2716

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 746
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 753
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 756
    :goto_0
    return v2

    .line 748
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 749
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetPreferredNetworkType ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    const/4 v2, -0x1

    .line 753
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 753
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetPrioritySubscription()I
    .locals 8

    .prologue
    .line 1232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1235
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1238
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1239
    const/16 v5, 0x2730

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1241
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1248
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1252
    :goto_0
    return v2

    .line 1243
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1244
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetPrioritySubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    const/4 v2, -0x1

    .line 1248
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1248
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomActiveSubscriptionsCount()I
    .locals 8

    .prologue
    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1062
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1064
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1065
    const/4 v2, -0x1

    .line 1084
    :goto_0
    return v2

    .line 1070
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1071
    const/16 v5, 0x2728

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1080
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1075
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1076
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomActiveSubscriptionsCount ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    const/4 v2, -0x1

    .line 1080
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1080
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomImeiGemini(I)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1420
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1422
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1423
    const/4 v2, 0x0

    .line 1441
    :goto_0
    return-object v2

    .line 1427
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    const/16 v5, 0x2739

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1438
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1433
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1434
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomImeiGemini ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1435
    const/4 v2, 0x0

    .line 1438
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1438
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomLTECDMAImei(I)[Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    .line 1445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1448
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1450
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1451
    const/4 v2, 0x0

    .line 1469
    :goto_0
    return-object v2

    .line 1455
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1457
    const/16 v5, 0x273a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1458
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1459
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1466
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1461
    .end local v2    # "_result":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1462
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomLTECDMAImei ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    const/4 v2, 0x0

    .line 1466
    .restart local v2    # "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1466
    .end local v2    # "_result":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetSMSSubscription()I
    .locals 8

    .prologue
    .line 1207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1210
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1214
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1215
    const/16 v5, 0x272f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1224
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1228
    :goto_0
    return v2

    .line 1219
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1220
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetSMSSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1221
    const/4 v2, -0x1

    .line 1224
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1224
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetScAddressGemini(II)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "simId"    # I

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 978
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 980
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 981
    const/4 v2, 0x0

    .line 1001
    :goto_0
    return-object v2

    .line 986
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    const/16 v5, 0x271f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 991
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 998
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 993
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 994
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetScAddressGemini ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    const/4 v2, 0x0

    .line 998
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 998
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetSimIndicatorState(I)I
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 708
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 712
    .local v4, "mRemote":Landroid/os/IBinder;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v5

    if-nez v5, :cond_0

    .line 732
    :goto_0
    return v2

    .line 718
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    const/16 v5, 0x2715

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 729
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 724
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 725
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetSimIndicatorState ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    const/4 v2, -0x1

    .line 729
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 729
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetVoiceSubscription()I
    .locals 8

    .prologue
    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1120
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1122
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1123
    const/4 v2, -0x1

    .line 1141
    :goto_0
    return v2

    .line 1127
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1128
    const/16 v5, 0x272b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1137
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1132
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1133
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetVoiceSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    const/4 v2, -0x1

    .line 1137
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1137
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorIs3GButtonEnable(I)Z
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 788
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 791
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    const/16 v5, 0x2718

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 802
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    :goto_0
    return v2

    .line 797
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 798
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorIs3GButtonEnable ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    const/4 v2, 0x0

    .line 802
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 802
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorIsQcomSubActive(I)Z
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1032
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1034
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1036
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1055
    :goto_0
    return v2

    .line 1041
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    const/16 v5, 0x2727

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1052
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1047
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1048
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorIsQcomSubActive ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    const/4 v2, 0x0

    .line 1052
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1052
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetDataSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1280
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1283
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    const/16 v4, 0x2732

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1295
    :goto_0
    return-void

    .line 1288
    :catch_0
    move-exception v2

    .line 1289
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetDataSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1292
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetDefaultDataSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1301
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1304
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    const/16 v4, 0x2733

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1316
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v2

    .line 1310
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetDefaultDataSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1313
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetDefaultSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1089
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1090
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1092
    .local v3, "mRemote":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1097
    :cond_0
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    const/16 v4, 0x2729

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v2

    .line 1103
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetQcomActiveSubscriptionsCount ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1106
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "enabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 864
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 865
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 868
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v6, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    if-eqz p4, :cond_1

    .line 874
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 880
    :goto_1
    const/16 v4, 0x271b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 890
    :goto_2
    return-void

    :cond_0
    move v4, v5

    .line 870
    goto :goto_0

    .line 878
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 883
    :catch_0
    move-exception v2

    .line 884
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetIccLockEnabled ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 887
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetLine1Number(ILjava/lang/String;)Z
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 812
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 814
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 834
    :goto_0
    return v2

    .line 819
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 822
    const/16 v5, 0x2719

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 831
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 826
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 827
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetLine1Number ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    const/4 v2, 0x0

    .line 831
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 831
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetPreferredNetworkType(II)I
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "type"    # I

    .prologue
    .line 760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 763
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 766
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/16 v5, 0x2717

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 778
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    :goto_0
    return v2

    .line 773
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 774
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetPreferredNetworkType ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    const/4 v2, -0x1

    .line 778
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 778
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetPrioritySubscription(I)V
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1343
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1346
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    const/16 v4, 0x2735

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1358
    :goto_0
    return-void

    .line 1351
    :catch_0
    move-exception v2

    .line 1352
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1355
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetSMSSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1322
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1325
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    const/16 v4, 0x2734

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1337
    :goto_0
    return-void

    .line 1330
    :catch_0
    move-exception v2

    .line 1331
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetSMSSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1334
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetScAddressGemini(ILjava/lang/String;I)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "simId"    # I

    .prologue
    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1006
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1007
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1009
    .local v3, "mRemote":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1014
    :cond_0
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    const/16 v4, 0x2720

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v2

    .line 1022
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetScAddressGemini ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1025
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetVoiceSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1259
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1262
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    const/16 v4, 0x2731

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1274
    :goto_0
    return-void

    .line 1267
    :catch_0
    move-exception v2

    .line 1268
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetVoiceSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1271
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorgetPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 1502
    const/4 v0, -0x1

    return v0
.end method

.method public endCallGemini(I)Z
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 490
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 491
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    int-to-long v4, p1

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/ITelephony;->endCallForSubscriber(J)Z

    move-result v1

    .line 502
    :cond_0
    :goto_0
    return v1

    .line 493
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 497
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 501
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallStateGemini(I)I
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 125
    const/4 v0, -0x1

    .line 127
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 128
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(J)I

    move-result v0

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 133
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPhoneTypeGemini(I)I
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 439
    const/4 v0, -0x1

    .line 441
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 442
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    .line 450
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 447
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getDataActivityGemini(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 424
    const/4 v0, -0x1

    .line 426
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 427
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 432
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    goto :goto_0
.end method

.method public getDataNetworkTypeGemini(I)I
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 454
    const/4 v0, -0x1

    .line 456
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 457
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(J)I

    move-result v0

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 462
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getDataStateGemini(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 409
    const/4 v0, -0x1

    .line 411
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 412
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 417
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 233
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 346
    const-string v0, ""

    .line 348
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 350
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorGetIccCardTypeGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 355
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 158
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 160
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 163
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 364
    const-string v0, ""

    .line 366
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 367
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 369
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 372
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 379
    const-string v0, ""

    .line 381
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 382
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_0
    :goto_0
    return-object v0

    .line 384
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 387
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 200
    const/4 v0, -0x1

    .line 202
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 203
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(J)I

    move-result v0

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 208
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getSimOperatorGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 394
    const-string v0, ""

    .line 396
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 397
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_0
    :goto_0
    return-object v0

    .line 399
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 402
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 469
    const-string v0, ""

    .line 471
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 472
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(J)Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_0
    :goto_0
    return-object v0

    .line 474
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 477
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimStateGemini(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 170
    const/4 v0, -0x1

    .line 172
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 173
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 178
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 327
    :cond_0
    return-object v0
.end method

.method public getSpNameInEfSpnGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 315
    :cond_0
    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 113
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 118
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 143
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 148
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasIccCardGemini(I)Z
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 188
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 193
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 279
    :cond_0
    return v0
.end method

.method public isIccCardProviderAsMvnoGemini(I)Z
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 267
    :cond_0
    return v0
.end method

.method public isIdleGemini(I)Z
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 541
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 542
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    int-to-long v4, p1

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(J)Z

    move-result v1

    .line 553
    :cond_0
    :goto_0
    return v1

    .line 544
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 548
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 552
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 553
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 218
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v0

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 223
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method public isOffhookGemini(I)Z
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 559
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 560
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    int-to-long v4, p1

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(J)Z

    move-result v1

    .line 571
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 566
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 570
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 303
    :cond_0
    return-object v0
.end method

.method public isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 291
    :cond_0
    return-object v0
.end method

.method public isRingingGemini(I)Z
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 523
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 524
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    int-to-long v4, p1

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/ITelephony;->isRingingForSubscriber(J)Z

    move-result v1

    .line 535
    :cond_0
    :goto_0
    return v1

    .line 526
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 530
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 534
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 535
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSimInsert(I)Z
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 334
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listenGemini(Landroid/telephony/PhoneStateListener;II)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "simId"    # I

    .prologue
    const/4 v3, 0x1

    .line 245
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 246
    sget-object v2, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 247
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    int-to-long v2, p3

    iput-wide v2, p1, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 248
    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 256
    .end local v1    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 253
    sget-object v2, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 254
    .local v0, "mSingTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public setDataEnabledGemini(IZ)V
    .locals 4
    .param p1, "subscription"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 649
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 650
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 651
    .local v0, "subId":[J
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-interface {v1, v2, v3, p2}, Lcom/android/internal/telephony/ITelephony;->setDataEnabledUsingSubId(JZ)V

    .line 661
    .end local v0    # "subId":[J
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 656
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 658
    :catch_0
    move-exception v1

    goto :goto_0

    .line 659
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 595
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 596
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    int-to-long v4, p2

    invoke-interface {v2, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(JLjava/lang/String;)Z

    move-result v1

    .line 607
    :cond_0
    :goto_0
    return v1

    .line 598
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 602
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 606
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 607
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;I)[I
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 631
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 632
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    int-to-long v4, p2

    invoke-interface {v2, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(JLjava/lang/String;)[I

    move-result-object v1

    .line 643
    :cond_0
    :goto_0
    return-object v1

    .line 634
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 638
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 642
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 643
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 577
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 578
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    int-to-long v4, p3

    invoke-interface {v2, v4, v5, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 589
    :cond_0
    :goto_0
    return v1

    .line 580
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 584
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 588
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 589
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 613
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 614
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    int-to-long v4, p3

    invoke-interface {v2, v4, v5, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(JLjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 625
    :cond_0
    :goto_0
    return-object v1

    .line 616
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 620
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 624
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 625
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
