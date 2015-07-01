.class public Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ESeInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final powerState:I

.field final seId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 621
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "seId"    # I
    .param p2, "powerState"    # I

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->seId:I

    .line 589
    iput p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->powerState:I

    .line 590
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public getPowerState()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->powerState:I

    return v0
.end method

.method public getSeId()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->seId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->seId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",Power state: [switchOn: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->powerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",switchOff: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->powerState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",batteryOff: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->powerState:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "out":Ljava/lang/StringBuilder;
    :cond_0
    move v1, v3

    .line 602
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 617
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->seId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->powerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    return-void
.end method
