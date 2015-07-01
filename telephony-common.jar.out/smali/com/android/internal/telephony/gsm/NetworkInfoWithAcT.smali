.class public Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
.super Ljava/lang/Object;
.source "NetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastItem:Z

.field nAct:I

.field nPriority:I

.field operatorAlphaName:Ljava/lang/String;

.field operatorNumeric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "nPriority"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->mLastItem:Z

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 89
    iput p3, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    .line 90
    iput p4, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessTechnology()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    return v0
.end method

.method public getOperatorAlphaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    return v0
.end method

.method public isLastItem()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->mLastItem:Z

    return v0
.end method

.method public setAccessTechnology(I)V
    .locals 0
    .param p1, "nAct"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    .line 78
    return-void
.end method

.method public setLastItem(Z)V
    .locals 0
    .param p1, "lastItem"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->mLastItem:Z

    .line 115
    return-void
.end method

.method public setOperatorAlphaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorAlphaName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfoWithAcT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return-void
.end method
