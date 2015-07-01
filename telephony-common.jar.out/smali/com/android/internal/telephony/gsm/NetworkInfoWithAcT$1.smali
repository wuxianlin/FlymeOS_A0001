.class final Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;
.super Ljava/lang/Object;
.source "NetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 37
    .local v0, "netInfoWithAct":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 41
    new-array v0, p1, [Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;->newArray(I)[Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    move-result-object v0

    return-object v0
.end method
