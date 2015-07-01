.class final Landroid/telephony/SmsMemoryStatus$1;
.super Ljava/lang/Object;
.source "SmsMemoryStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMemoryStatus;
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
        "Landroid/telephony/SmsMemoryStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMemoryStatus;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "used":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .local v0, "total":I
    new-instance v2, Landroid/telephony/SmsMemoryStatus;

    invoke-direct {v2, v1, v0}, Landroid/telephony/SmsMemoryStatus;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Landroid/telephony/SmsMemoryStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMemoryStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SmsMemoryStatus;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 92
    new-array v0, p1, [Landroid/telephony/SmsMemoryStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Landroid/telephony/SmsMemoryStatus$1;->newArray(I)[Landroid/telephony/SmsMemoryStatus;

    move-result-object v0

    return-object v0
.end method
