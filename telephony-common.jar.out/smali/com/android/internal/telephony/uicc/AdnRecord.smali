.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field EmailRecIndex:I

.field EmailTagNumberInIap:I

.field IapBufferSize:I

.field emailefid:I

.field emaillen:I

.field iap:[B

.field iapefid:I

.field mAdditionalNumbers:[Ljava/lang/String;

.field mAlphaTag:Ljava/lang/String;

.field mEfid:I

.field mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I

.field number2:Ljava/lang/String;

.field number2efid:I

.field sfi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 63
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 160
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 161
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 163
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 166
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 63
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 141
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 142
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 143
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 145
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "additionalNumbers"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 63
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 151
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 152
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 153
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 155
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 156
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 157
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 63
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    .line 123
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 124
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 125
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 133
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;
    .param p4, "additionalNumbers"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 137
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 120
    return-void
.end method

.method private static arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "s1"    # [Ljava/lang/String;
    .param p1, "s2"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 225
    if-ne p0, p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v4

    .line 229
    :cond_1
    if-nez p0, :cond_2

    .line 230
    new-array p0, v4, [Ljava/lang/String;

    .line 231
    const-string v6, ""

    aput-object v6, p0, v5

    .line 234
    :cond_2
    if-nez p1, :cond_3

    .line 235
    new-array p1, v4, [Ljava/lang/String;

    .line 236
    const-string v6, ""

    aput-object v6, p1, v5

    .line 239
    :cond_3
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 240
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 239
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 246
    goto :goto_0

    .line 251
    .end local v3    # "str":Ljava/lang/String;
    :cond_6
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 252
    .restart local v3    # "str":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 251
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 255
    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v5

    .line 258
    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .param p1, "record"    # [B

    .prologue
    const/4 v5, 0x0

    .line 434
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 437
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 439
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 441
    .local v2, "numberLength":I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 443
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 470
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :goto_0
    return-void

    .line 454
    .restart local v1    # "footerOffset":I
    .restart local v2    # "numberLength":I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 458
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 460
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 461
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :catch_0
    move-exception v0

    .line 464
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "AdnRecord"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 466
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 467
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 468
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 211
    if-ne p0, p1, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 214
    :cond_0
    if-nez p0, :cond_1

    .line 215
    const-string p0, ""

    .line 217
    :cond_1
    if-nez p1, :cond_2

    .line 218
    const-string p1, ""

    .line 220
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 402
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 411
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .param p1, "recordSize"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 352
    add-int/lit8 v3, p1, -0xe

    .line 355
    .local v3, "footerOffset":I
    new-array v0, p1, [B

    .line 356
    .local v0, "adnString":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 357
    aput-byte v8, v0, v4

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 361
    const-string v5, "AdnRecord"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "adnString":[B
    :cond_1
    :goto_1
    return-object v0

    .line 363
    .restart local v0    # "adnString":[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_3

    .line 365
    const-string v6, "AdnRecord"

    const-string v7, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 367
    goto :goto_1

    .line 368
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 369
    const-string v6, "AdnRecord"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 371
    goto :goto_1

    .line 373
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 374
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 376
    .local v1, "bcdNumber":[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 379
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 382
    .end local v1    # "bcdNumber":[B
    :cond_5
    add-int/lit8 v5, v3, 0xc

    aput-byte v8, v0, v5

    .line 384
    add-int/lit8 v5, v3, 0xd

    aput-byte v8, v0, v5

    .line 387
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 388
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object v2

    .line 389
    .local v2, "byteTag":[B
    array-length v5, v2

    invoke-static {v2, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailLen()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    return v0
.end method

.method public getEmailTagNumberInIap(I)I
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 544
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    return p1
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    return-object v0
.end method

.method public getSFI()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public oppoGetRecordNumber()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public oppoSetRecordNumber(I)V
    .locals 0
    .param p1, "recordIdx"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 484
    return-void
.end method

.method public oppobuildAdnString(I)[B
    .locals 10
    .param p1, "recordSize"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "adnString":[B
    add-int/lit8 v3, p1, -0xe

    .line 562
    .local v3, "footerOffset":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 563
    :cond_0
    new-array v0, p1, [B

    .line 564
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 565
    aput-byte v9, v0, v4

    .line 564
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 568
    :cond_1
    const/4 v2, 0x0

    .line 569
    .local v2, "byteTag":[B
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 570
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v2

    .line 571
    if-eqz v2, :cond_3

    array-length v6, v2

    if-le v6, v3, :cond_3

    .line 612
    .end local v2    # "byteTag":[B
    .end local v4    # "i":I
    :cond_2
    :goto_1
    return-object v5

    .line 575
    .restart local v2    # "byteTag":[B
    .restart local v4    # "i":I
    :cond_3
    if-eqz v2, :cond_4

    .line 576
    array-length v5, v2

    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .end local v2    # "byteTag":[B
    .end local v4    # "i":I
    :cond_4
    :goto_2
    move-object v5, v0

    .line 612
    goto :goto_1

    .line 579
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    .line 581
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v3, :cond_4

    .line 583
    :cond_6
    const/4 v2, 0x0

    .line 584
    .restart local v2    # "byteTag":[B
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 585
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v2

    .line 586
    if-eqz v2, :cond_7

    array-length v6, v2

    if-gt v6, v3, :cond_2

    .line 591
    :cond_7
    new-array v0, p1, [B

    .line 592
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, p1, :cond_8

    .line 593
    aput-byte v9, v0, v4

    .line 592
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 596
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 598
    .local v1, "bcdNumber":[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v8, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 601
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 603
    add-int/lit8 v5, v3, 0xc

    aput-byte v9, v0, v5

    .line 605
    add-int/lit8 v5, v3, 0xd

    aput-byte v9, v0, v5

    .line 608
    if-eqz v2, :cond_4

    .line 609
    array-length v5, v2

    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2
.end method

.method public setAdditionalNumbers([Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalNumbers"    # [Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setEmailEfid(I)V
    .locals 0
    .param p1, "efid"    # I

    .prologue
    .line 499
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 500
    return-void
.end method

.method public setEmailLen(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 514
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 515
    return-void
.end method

.method public setEmailRecIndex(I)V
    .locals 0
    .param p1, "Index"    # I

    .prologue
    .line 534
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailRecIndex:I

    .line 535
    return-void
.end method

.method public setEmailTagNumberInIap(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 539
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->EmailTagNumberInIap:I

    .line 540
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setIAPEfid(I)V
    .locals 0
    .param p1, "efid"    # I

    .prologue
    .line 504
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 505
    return-void
.end method

.method public setIap([BI)V
    .locals 2
    .param p1, "iap"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 549
    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 551
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapBufferSize:I

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 554
    :cond_0
    return-void
.end method

.method public setNumber2(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 488
    if-eqz p1, :cond_0

    .line 489
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 490
    :cond_0
    return-void
.end method

.method public setNumber2Efid(I)V
    .locals 0
    .param p1, "efid"    # I

    .prologue
    .line 509
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 510
    return-void
.end method

.method public setSFI(I)V
    .locals 0
    .param p1, "sfi"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sfi:I

    .line 530
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAnrEmailArray(Lcom/android/internal/telephony/uicc/AdnRecord;II)V
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "emailFileNum"    # I
    .param p3, "anrFileNum"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->updateAnrEmailArrayHelper([Ljava/lang/String;[Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->updateAnrEmailArrayHelper([Ljava/lang/String;[Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 322
    return-void
.end method

.method public updateAnrEmailArrayHelper([Ljava/lang/String;[Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .param p1, "dest"    # [Ljava/lang/String;
    .param p2, "src"    # [Ljava/lang/String;
    .param p3, "fileCount"    # I

    .prologue
    .line 274
    if-nez p3, :cond_1

    .line 275
    const/4 v2, 0x0

    .line 315
    :cond_0
    :goto_0
    return-object v2

    .line 279
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move-object v2, p1

    .line 280
    goto :goto_0

    .line 283
    :cond_3
    new-array v2, p3, [Ljava/lang/String;

    .line 284
    .local v2, "ref":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_4

    .line 285
    const-string v3, ""

    aput-object v3, v2, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    :cond_4
    const/4 v0, 0x0

    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_8

    .line 291
    aget-object v3, p2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 290
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 294
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 295
    aget-object v3, p2, v0

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 296
    aget-object v3, p2, v0

    aput-object v3, v2, v0

    goto :goto_3

    .line 294
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 303
    .end local v1    # "j":I
    :cond_8
    const/4 v0, 0x0

    :goto_5
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 304
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 303
    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 307
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_7
    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 308
    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 309
    aget-object v3, p1, v0

    aput-object v3, v2, v1

    goto :goto_6

    .line 307
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 332
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 338
    return-void
.end method
