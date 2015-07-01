.class public Lcom/android/internal/telephony/OppoRadioInfo;
.super Ljava/lang/Object;
.source "OppoRadioInfo.java"


# instance fields
.field private arfcn:I

.field private band:I

.field private cellId:I

.field private lac:I

.field private mNcells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OppoNcellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mcc:I

.field private mnc:I

.field private rat:I

.field private rrstatus:I

.field private rssi:I

.field private sinr:I

.field private txpower:I


# direct methods
.method public constructor <init>(IIIIIIIIIIILjava/util/ArrayList;)V
    .locals 1
    .param p1, "rat"    # I
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I
    .param p4, "lac"    # I
    .param p5, "cellId"    # I
    .param p6, "arfcn"    # I
    .param p7, "band"    # I
    .param p8, "rssi"    # I
    .param p9, "sinr"    # I
    .param p10, "rrstatus"    # I
    .param p11, "txpower"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OppoNcellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p12, "ncells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OppoNcellInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mNcells:Ljava/util/ArrayList;

    .line 27
    iput p1, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rat:I

    .line 28
    iput p2, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mcc:I

    .line 29
    iput p3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mnc:I

    .line 30
    iput p4, p0, Lcom/android/internal/telephony/OppoRadioInfo;->lac:I

    .line 31
    iput p5, p0, Lcom/android/internal/telephony/OppoRadioInfo;->cellId:I

    .line 32
    iput p6, p0, Lcom/android/internal/telephony/OppoRadioInfo;->arfcn:I

    .line 33
    iput p7, p0, Lcom/android/internal/telephony/OppoRadioInfo;->band:I

    .line 34
    iput p8, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rssi:I

    .line 35
    iput p9, p0, Lcom/android/internal/telephony/OppoRadioInfo;->sinr:I

    .line 36
    iput p10, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rrstatus:I

    .line 37
    iput p11, p0, Lcom/android/internal/telephony/OppoRadioInfo;->txpower:I

    .line 38
    iput-object p12, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mNcells:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method public getArfcn()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->arfcn:I

    return v0
.end method

.method public getBand()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->band:I

    return v0
.end method

.method public getCellId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->cellId:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->lac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mnc:I

    return v0
.end method

.method public getNcells()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OppoNcellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mNcells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRat()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rat:I

    return v0
.end method

.method public getRrStatus()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rrstatus:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rssi:I

    return v0
.end method

.method public getSinr()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->sinr:I

    return v0
.end method

.method public getTxpower()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/telephony/OppoRadioInfo;->txpower:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mNcells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mNcells:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OppoNcellInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/OppoNcellInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->lac:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ci="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->cellId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arfcn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->arfcn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", band="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->band:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sinr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->sinr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rrstatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->rrstatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",txpower="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoRadioInfo;->txpower:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
