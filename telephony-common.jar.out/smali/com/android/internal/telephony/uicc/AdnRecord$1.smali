.class final Lcom/android/internal/telephony/uicc/AdnRecord$1;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AdnRecord;
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
        "Lcom/android/internal/telephony/uicc/AdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .local v1, "efid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, "recordNumber":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "emails":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "additionalNumbers":[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 112
    new-array v0, p1, [Lcom/android/internal/telephony/uicc/AdnRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$1;->newArray(I)[Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v0

    return-object v0
.end method
