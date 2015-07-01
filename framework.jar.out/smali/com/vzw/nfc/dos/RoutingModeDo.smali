.class public Lcom/vzw/nfc/dos/RoutingModeDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "RoutingModeDo.java"


# static fields
.field public static final _TAG:I = 0xb2


# instance fields
.field private mFullPowerModeAllowed:Z

.field private mLowPowerModeAllowed:Z

.field private mNoPowerModeAllowed:Z

.field private mRoutingInfo:B


# direct methods
.method public constructor <init>(B)V
    .locals 3
    .param p1, "route_info"    # B

    .prologue
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x0

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 24
    iput-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 26
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 27
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 28
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 43
    iput-byte p1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 44
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 3
    .param p1, "low_power"    # Z
    .param p2, "full_power"    # Z
    .param p3, "no_power"    # Z

    .prologue
    const/4 v2, 0x0

    .line 35
    const/4 v0, 0x0

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 24
    iput-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 26
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 27
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 28
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 36
    iput-boolean p1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 37
    iput-boolean p2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 38
    iput-boolean p3, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 39
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "rawData"    # [B
    .param p2, "valueIndex"    # I
    .param p3, "valueLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 31
    const/16 v0, 0xb2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 24
    iput-byte v1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 26
    iput-boolean v1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 27
    iput-boolean v1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 28
    iput-boolean v1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getRoutingInfo()B
    .locals 1

    .prologue
    .line 47
    iget-byte v0, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    return v0
.end method

.method public isFullPowerModeAllowed()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    return v0
.end method

.method public isLowPowerModeAllowed()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    return v0
.end method

.method public isNoPowerModeAllowed()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    return v0
.end method

.method public translate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 65
    iput-byte v4, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 67
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/RoutingModeDo;->getRawData()[B

    move-result-object v0

    .line 68
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/RoutingModeDo;->getValueIndex()I

    move-result v1

    .line 70
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/RoutingModeDo;->getValueLength()I

    move-result v2

    add-int/2addr v2, v1

    array-length v5, v0

    if-le v2, v5, :cond_0

    .line 71
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Not enough data for FILTER_CONDITION_TAG_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/RoutingModeDo;->getValueLength()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 76
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Invalid length of FILTER_CONDITION_TAG_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    aget-byte v2, v0, v1

    iput-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 82
    iget-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 83
    iget-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 84
    iget-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 85
    return-void

    :cond_2
    move v2, v4

    .line 82
    goto :goto_0

    :cond_3
    move v2, v4

    .line 83
    goto :goto_1

    :cond_4
    move v3, v4

    .line 84
    goto :goto_2
.end method
