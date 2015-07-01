.class public Landroid/telephony/OppoTelephonyFunction;
.super Ljava/lang/Object;
.source "OppoTelephonyFunction.java"


# static fields
.field public static final CONCATENATED_8_BIT_REFERENCE_LENGTH:I = 0x5

.field public static final PORT_ADDRESS_16_REFERENCE_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OppoTelephonyFunction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;ZI)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "throwsException"    # Z
    .param p2, "rfu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "charIndex":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 122
    .local v2, "sz":I
    const/4 v1, 0x0

    .line 124
    .local v1, "count":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 125
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return v1
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 97
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99
    return-object v0
.end method

.method public static divideDataMessage([B)[[B
    .locals 10
    .param p0, "data"    # [B

    .prologue
    .line 60
    array-length v3, p0

    .line 62
    .local v3, "dataLen":I
    const/16 v0, 0x85

    .line 65
    .local v0, "bytePreSeg":I
    if-le v3, v0, :cond_0

    .line 66
    add-int/lit8 v0, v0, -0x5

    .line 69
    :cond_0
    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    div-int v6, v7, v0

    .line 70
    .local v6, "total":I
    move v5, v3

    .line 71
    .local v5, "remainLen":I
    const/4 v2, 0x0

    .line 72
    .local v2, "count":I
    new-array v4, v6, [[B

    .line 74
    .local v4, "dataSegList":[[B
    :goto_0
    if-lez v5, :cond_2

    .line 77
    if-le v5, v0, :cond_1

    .line 78
    move v1, v0

    .line 83
    .local v1, "copyLen":I
    :goto_1
    sub-int/2addr v5, v1

    .line 85
    new-array v7, v1, [B

    aput-object v7, v4, v2

    .line 87
    mul-int v7, v2, v0

    aget-object v8, v4, v2

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_0

    .line 80
    .end local v1    # "copyLen":I
    :cond_1
    move v1, v5

    .restart local v1    # "copyLen":I
    goto :goto_1

    .line 92
    .end local v1    # "copyLen":I
    :cond_2
    return-object v4
.end method

.method public static dmAutoRegisterSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 193
    if-nez v0, :cond_1

    .line 195
    const/4 p0, 0x0

    .line 207
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 200
    .restart local v0    # "index":I
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static dmAutoRegisterSmsOrigPort(Ljava/lang/String;)I
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "origPort":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 180
    add-int/lit8 v2, v0, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return v1

    .line 181
    .restart local v0    # "index":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getMinMatch()I
    .locals 3

    .prologue
    .line 103
    const-string v1, "persist.sys.oneplus.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method

.method public static stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 143
    if-nez p0, :cond_0

    move-object v2, v5

    .line 169
    :goto_0
    return-object v2

    .line 146
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v6, v7}, Landroid/telephony/OppoTelephonyFunction;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v3

    .line 148
    .local v3, "septets":I
    new-array v2, v3, [B

    .line 150
    .local v2, "ret":[B
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {p0, v2, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v2    # "ret":[B
    .end local v3    # "septets":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v6, "utf-16be"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 158
    .local v4, "temp":[B
    array-length v6, v4

    add-int/lit8 v6, v6, 0x1

    new-array v2, v6, [B

    .line 160
    .restart local v2    # "ret":[B
    const/4 v6, 0x0

    const/16 v7, -0x80

    aput-byte v7, v2, v6

    .line 162
    const/4 v6, 0x0

    const/4 v7, 0x1

    array-length v8, v4

    invoke-static {v4, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 164
    .end local v2    # "ret":[B
    .end local v4    # "temp":[B
    :catch_1
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v6, "OppoTelephonyFunction"

    const-string v7, "unsurport encoding."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 166
    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v4, 0x0

    .line 49
    :goto_0
    return-object v4

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 40
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 44
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
