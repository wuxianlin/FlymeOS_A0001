.class public Lcom/android/internal/telephony/OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OperatorInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNetworktype:Ljava/lang/String;

.field private mOperatorAlphaLong:Ljava/lang/String;

.field private mOperatorAlphaShort:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mRadioTech:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/OperatorInfo$State;

.field private networktype:Ljava/lang/String;

.field private statestring:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OperatorInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V
    .locals 3
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 78
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 80
    if-eqz p3, :cond_0

    .line 81
    const-string v1, "\\+"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 83
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 84
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 87
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 88
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Ljava/lang/String;)V
    .locals 1
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;
    .param p5, "networktype"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 193
    iput-object p4, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 194
    iput-object p5, p0, Lcom/android/internal/telephony/OperatorInfo;->mNetworktype:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "stateString"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p4}, Lcom/android/internal/telephony/OperatorInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "stateString"    # Ljava/lang/String;
    .param p5, "networktype"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p4}, Lcom/android/internal/telephony/OperatorInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Ljava/lang/String;)V

    .line 204
    iput-object p4, p0, Lcom/android/internal/telephony/OperatorInfo;->statestring:Ljava/lang/String;

    .line 205
    return-void
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 110
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    .line 107
    :cond_1
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworktype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mNetworktype:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public getStatestring()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->statestring:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mNetworktype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return-void
.end method
