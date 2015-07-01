.class public final Landroid/telecom/ParcelableConnection;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Landroid/net/Uri;

.field private final mAddressPresentation:I

.field private final mCallSubstate:I

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mCapabilities:I

.field private final mConferenceableConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mIsVoipAudioMode:Z

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mRingbackRequested:Z

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Landroid/telecom/ParcelableConnection$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableConnection$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;I)V
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I
    .param p3, "capabilities"    # I
    .param p4, "address"    # Landroid/net/Uri;
    .param p5, "addressPresentation"    # I
    .param p6, "callerDisplayName"    # Ljava/lang/String;
    .param p7, "callerDisplayNamePresentation"    # I
    .param p8, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p9, "videoState"    # I
    .param p10, "ringbackRequested"    # Z
    .param p11, "isVoipAudioMode"    # Z
    .param p12, "statusHints"    # Landroid/telecom/StatusHints;
    .param p13, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p15, "callSubstate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "II",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IZZ",
            "Landroid/telecom/StatusHints;",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p14, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 69
    iput p2, p0, Landroid/telecom/ParcelableConnection;->mState:I

    .line 70
    iput p3, p0, Landroid/telecom/ParcelableConnection;->mCapabilities:I

    .line 71
    iput-object p4, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    .line 72
    iput p5, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    .line 73
    iput-object p6, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 74
    iput p7, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    .line 75
    iput-object p8, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 76
    iput p9, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    .line 77
    iput-boolean p10, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    .line 78
    iput-boolean p11, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    .line 79
    iput-object p12, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 80
    iput-object p13, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 81
    iput-object p14, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    .line 82
    iput p15, p0, Landroid/telecom/ParcelableConnection;->mCallSubstate:I

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallSubstate:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCapabilities:I

    return v0
.end method

.method public final getConferenceableConnectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    return v0
.end method

.method public getIsVoipAudioMode()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    return v0
.end method

.method public isRingbackRequested()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParcelableConnection [act:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mCapabilities:I

    invoke-static {v1}, Landroid/telecom/PhoneCapabilities;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 219
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 224
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 227
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 228
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 229
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 230
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallSubstate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 225
    goto :goto_1

    :cond_2
    move v1, v2

    .line 226
    goto :goto_2
.end method
