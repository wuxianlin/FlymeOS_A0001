.class public Lcom/android/internal/telephony/uicc/UiccTlvData;
.super Ljava/lang/Object;
.source "UiccTlvData.java"


# static fields
.field private static final TAG_FILE_DESCRIPTOR:I = 0x82

.field private static final TAG_FILE_IDENTIFIER:I = 0x83

.field private static final TAG_FILE_SIZE:I = 0x80

.field private static final TAG_LIFECYCLE_STATUS:I = 0x8a

.field private static final TAG_PROPRIETARY_INFO:I = 0xa5

.field private static final TAG_SECURITY_ATTR_1:I = 0x8b

.field private static final TAG_SECURITY_ATTR_2:I = 0x8c

.field private static final TAG_SECURITY_ATTR_3:I = 0xab

.field private static final TAG_SHORT_FILE_IDENTIFIER:I = 0x88

.field private static final TAG_TOTAL_FILE_SIZE:I = 0x81

.field private static final TLV_FORMAT_ID:I = 0x62

.field private static final TYPE_2:I = 0x2

.field private static final TYPE_5:I = 0x5


# instance fields
.field mFileSize:I

.field private mFileType:I

.field mIsDataEnough:Z

.field mNumRecords:I

.field mRecordSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    .line 32
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileSize:I

    .line 34
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    .line 35
    return-void
.end method

.method public static isUiccTlvData([B)Z
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 42
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    const/16 v1, 0x62

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-ne v1, v2, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public static parse([B)Lcom/android/internal/telephony/uicc/UiccTlvData;
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccTlvData;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/UiccTlvData;-><init>()V

    .line 52
    .local v3, "parsedData":Lcom/android/internal/telephony/uicc/UiccTlvData;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-eqz v4, :cond_0

    const/16 v4, 0x62

    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-eq v4, v5, :cond_1

    .line 53
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 58
    :cond_1
    const/4 v0, 0x2

    .local v0, "currentLocation":I
    move v1, v0

    .line 61
    .end local v0    # "currentLocation":I
    .local v1, "currentLocation":I
    :goto_0
    :try_start_0
    array-length v4, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v4, :cond_2

    .line 62
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentLocation":I
    .restart local v0    # "currentLocation":I
    :try_start_1
    aget-byte v4, p0, v1

    and-int/lit16 v2, v4, 0xff

    .line 64
    .local v2, "currentTag":I
    sparse-switch v2, :sswitch_data_0

    .line 86
    new-instance v4, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 91
    .end local v2    # "currentTag":I
    :catch_0
    move-exception v4

    .line 97
    .end local v0    # "currentLocation":I
    :cond_2
    :goto_1
    return-object v3

    .line 66
    .restart local v0    # "currentLocation":I
    .restart local v2    # "currentTag":I
    :sswitch_0
    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/uicc/UiccTlvData;->parseFileDescriptor([BI)I

    move-result v0

    move v1, v0

    .line 67
    .end local v0    # "currentLocation":I
    .restart local v1    # "currentLocation":I
    goto :goto_0

    .line 70
    .end local v1    # "currentLocation":I
    .restart local v0    # "currentLocation":I
    :sswitch_1
    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/uicc/UiccTlvData;->parseFileSize([BI)I

    move-result v0

    move v1, v0

    .line 71
    .end local v0    # "currentLocation":I
    .restart local v1    # "currentLocation":I
    goto :goto_0

    .line 81
    .end local v1    # "currentLocation":I
    .restart local v0    # "currentLocation":I
    :sswitch_2
    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/uicc/UiccTlvData;->parseSomeTag([BI)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    move v1, v0

    .line 82
    .end local v0    # "currentLocation":I
    .restart local v1    # "currentLocation":I
    goto :goto_0

    .line 91
    .end local v2    # "currentTag":I
    :catch_1
    move-exception v4

    move v0, v1

    .end local v1    # "currentLocation":I
    .restart local v0    # "currentLocation":I
    goto :goto_1

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_2
        0x88 -> :sswitch_2
        0x8a -> :sswitch_2
        0x8b -> :sswitch_2
        0x8c -> :sswitch_2
        0xa5 -> :sswitch_2
        0xab -> :sswitch_2
    .end sparse-switch
.end method

.method private parseFileDescriptor([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "currentLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 124
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "currentLocation":I
    .local v0, "currentLocation":I
    aget-byte v3, p1, p2

    and-int/lit16 v2, v3, 0xff

    .line 125
    .local v2, "length":I
    if-ne v2, v5, :cond_0

    .line 127
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    .line 129
    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    .line 131
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileSize:I

    .line 133
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    .line 135
    add-int/lit8 v3, v0, 0x5

    .line 146
    :goto_0
    return v3

    .line 136
    :cond_0
    if-ne v2, v4, :cond_1

    .line 138
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 142
    .local v1, "descriptorByte":I
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    .line 144
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    .line 146
    add-int/lit8 v3, v0, 0x2

    goto :goto_0

    .line 149
    .end local v1    # "descriptorByte":I
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3
.end method

.method private parseFileSize([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "currentLocation"    # I

    .prologue
    .line 101
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "currentLocation":I
    .local v0, "currentLocation":I
    aget-byte v4, p1, p2

    and-int/lit16 v3, v4, 0xff

    .line 103
    .local v3, "length":I
    const/4 v1, 0x0

    .line 104
    .local v1, "fileSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 105
    add-int v4, v0, v2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileSize:I

    .line 110
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 111
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    .line 114
    :cond_1
    add-int v4, v0, v3

    return v4
.end method

.method private parseSomeTag([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "currentLocation"    # I

    .prologue
    .line 119
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "currentLocation":I
    .local v0, "currentLocation":I
    aget-byte v2, p1, p2

    and-int/lit16 v1, v2, 0xff

    .line 120
    .local v1, "length":I
    add-int v2, v0, v1

    return v2
.end method


# virtual methods
.method public isIncomplete()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileSize:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
