.class final Landroid/telecom/ParcelableConference$1;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telecom/ParcelableConference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 102
    const-class v0, Landroid/telecom/ParcelableConference;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 103
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 104
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, "state":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .local v3, "capabilities":I
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v4, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v4, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v5

    .line 110
    .local v5, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 112
    .local v6, "videoState":I
    new-instance v0, Landroid/telecom/ParcelableConference;

    invoke-direct/range {v0 .. v6}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableConference;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    new-array v0, p1, [Landroid/telecom/ParcelableConference;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->newArray(I)[Landroid/telecom/ParcelableConference;

    move-result-object v0

    return-object v0
.end method
