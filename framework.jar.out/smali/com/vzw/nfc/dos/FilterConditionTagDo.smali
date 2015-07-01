.class public Lcom/vzw/nfc/dos/FilterConditionTagDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "FilterConditionTagDo.java"


# static fields
.field public static final SCREEN_OFF_TAG:B = -0xft

.field public static final _TAG:I = 0xd2


# instance fields
.field private mFilterConditionTag:B


# direct methods
.method public constructor <init>(B)V
    .locals 3
    .param p1, "filter_cond_tag"    # B

    .prologue
    const/4 v2, 0x0

    .line 32
    const/4 v0, 0x0

    const/16 v1, 0xd2

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 25
    iput-byte v2, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 33
    iput-byte p1, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 34
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "rawData"    # [B
    .param p2, "valueIndex"    # I
    .param p3, "valueLength"    # I

    .prologue
    .line 28
    const/16 v0, 0xd2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 25
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 29
    return-void
.end method


# virtual methods
.method public getFilterConditionTag()B
    .locals 1

    .prologue
    .line 37
    iget-byte v0, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    return v0
.end method

.method public translate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 45
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getRawData()[B

    move-result-object v0

    .line 46
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getValueIndex()I

    move-result v1

    .line 48
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getValueLength()I

    move-result v2

    add-int/2addr v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_0

    .line 49
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Not enough data for FILTER_CONDITION_TAG_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getValueLength()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 54
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Invalid length of FILTER_CONDITION_TAG_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_1
    aget-byte v2, v0, v1

    iput-byte v2, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 58
    return-void
.end method
