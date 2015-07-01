.class public Lcom/android/internal/telephony/OppoNcellInfo;
.super Ljava/lang/Object;
.source "OppoNcellInfo.java"


# instance fields
.field private arfcn:I

.field private rat:I

.field private rssi:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "rat"    # I
    .param p2, "arfcn"    # I
    .param p3, "rssi"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/OppoNcellInfo;->rat:I

    .line 13
    iput p1, p0, Lcom/android/internal/telephony/OppoNcellInfo;->rat:I

    .line 14
    iput p2, p0, Lcom/android/internal/telephony/OppoNcellInfo;->arfcn:I

    .line 15
    iput p3, p0, Lcom/android/internal/telephony/OppoNcellInfo;->rssi:I

    .line 16
    return-void
.end method


# virtual methods
.method public getArfcn()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/android/internal/telephony/OppoNcellInfo;->arfcn:I

    return v0
.end method

.method public getRat()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/android/internal/telephony/OppoNcellInfo;->rat:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/internal/telephony/OppoNcellInfo;->rssi:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OppoNcellInfo;->rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OppoNcellInfo;->arfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OppoNcellInfo;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
