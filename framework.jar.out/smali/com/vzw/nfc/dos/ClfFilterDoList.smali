.class public Lcom/vzw/nfc/dos/ClfFilterDoList;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "ClfFilterDoList.java"


# instance fields
.field private mClfFilterDos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/nfc/dos/ClfFilterDo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .param p1, "rawData"    # [B
    .param p2, "valueIndex"    # I
    .param p3, "valueLength"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/nfc/dos/ClfFilterDoList;->mClfFilterDos:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public getClfFilterDos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/nfc/dos/ClfFilterDo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vzw/nfc/dos/ClfFilterDoList;->mClfFilterDos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public translate()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v6, p0, Lcom/vzw/nfc/dos/ClfFilterDoList;->mClfFilterDos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 39
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDoList;->getRawData()[B

    move-result-object v1

    .line 40
    .local v1, "data":[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDoList;->getValueIndex()I

    move-result v3

    .line 42
    .local v3, "index":I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDoList;->getValueLength()I

    move-result v6

    if-nez v6, :cond_0

    .line 71
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDoList;->getValueLength()I

    move-result v6

    add-int/2addr v6, v3

    array-length v7, v1

    if-le v6, v7, :cond_1

    .line 48
    new-instance v6, Lcom/vzw/nfc/dos/DoParserException;

    const-string v7, "Not enough data for ALL_CLF_FILTER_DO!"

    invoke-direct {v6, v7}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 53
    :cond_1
    move v0, v3

    .line 54
    .local v0, "currentPos":I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDoList;->getValueLength()I

    move-result v6

    add-int v2, v3, v6

    .line 56
    .local v2, "endPos":I
    :cond_2
    invoke-static {v1, v0}, Lcom/vzw/nfc/dos/VzwTlv;->parse([BI)Lcom/vzw/nfc/dos/VzwTlv;

    move-result-object v4

    .line 60
    .local v4, "temp":Lcom/vzw/nfc/dos/VzwTlv;
    invoke-virtual {v4}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v6

    const/16 v7, 0xfe

    if-ne v6, v7, :cond_3

    .line 61
    new-instance v5, Lcom/vzw/nfc/dos/ClfFilterDo;

    invoke-virtual {v4}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v6

    invoke-virtual {v4}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v7

    invoke-direct {v5, v1, v6, v7}, Lcom/vzw/nfc/dos/ClfFilterDo;-><init>([BII)V

    .line 63
    .local v5, "tmpClfFilterDo":Lcom/vzw/nfc/dos/ClfFilterDo;
    invoke-virtual {v5}, Lcom/vzw/nfc/dos/ClfFilterDo;->translate()V

    .line 64
    iget-object v6, p0, Lcom/vzw/nfc/dos/ClfFilterDoList;->mClfFilterDos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v4}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v6

    invoke-virtual {v4}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v7

    add-int v0, v6, v7

    .line 70
    if-lt v0, v2, :cond_2

    goto :goto_0

    .line 66
    .end local v5    # "tmpClfFilterDo":Lcom/vzw/nfc/dos/ClfFilterDo;
    :cond_3
    new-instance v6, Lcom/vzw/nfc/dos/DoParserException;

    const-string v7, "Invalid DO in ALL_CLF_FILTER_DO!"

    invoke-direct {v6, v7}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
