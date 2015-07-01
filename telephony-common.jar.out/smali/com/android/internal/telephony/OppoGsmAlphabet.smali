.class public Lcom/android/internal/telephony/OppoGsmAlphabet;
.super Ljava/lang/Object;
.source "OppoGsmAlphabet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static is0X80coding:Z

.field private static is0X81coding:Z

.field private static is0X82coding:Z

.field private static max:I

.field private static min:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 47
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 48
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containChinese(Ljava/lang/String;)Z
    .locals 6
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v4

    .line 294
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 295
    .local v1, "ch":[C
    array-length v3, v1

    .line 297
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 298
    aget-char v0, v1, v2

    .line 299
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isChinese(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    const/4 v4, 0x1

    goto :goto_0

    .line 297
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
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
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "charIndex":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 261
    .local v2, "sz":I
    const/4 v1, 0x0

    .line 263
    .local v1, "count":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 265
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return v1
.end method

.method public static enableEncodeTo0x81(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "ret":Z
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->containChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const/4 v0, 0x0

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isThai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isRussian(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static enableToEncode0X80()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    return v0
.end method

.method public static enableToEncode0X81()Z
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    return v0
.end method

.method public static enableToEncode0X82()Z
    .locals 1

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    return v0
.end method

.method public static encodeTo0x81(Ljava/lang/String;)[B
    .locals 12
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "b0x81":[B
    const/4 v2, 0x0

    .line 384
    .local v2, "bytes":[B
    const/4 v1, 0x0

    .line 385
    .local v1, "base":B
    const/4 v3, 0x0

    .line 386
    .local v3, "data":B
    const/4 v6, 0x0

    .line 387
    .local v6, "len":I
    const/4 v7, 0x0

    .line 389
    .local v7, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 390
    add-int/lit8 v9, v6, 0x3

    new-array v0, v9, [B

    .line 393
    const/16 v9, -0x7f

    aput-byte v9, v0, v11

    .line 396
    int-to-byte v9, v6

    aput-byte v9, v0, v10

    .line 398
    const/4 v7, 0x3

    .line 399
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 401
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "temp":Ljava/lang/String;
    :try_start_0
    const-string v9, "utf-16be"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 411
    invoke-static {v8}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isEnglish(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 416
    if-nez v1, :cond_0

    .line 417
    aget-byte v9, v2, v11

    shl-int/lit8 v9, v9, 0x1

    int-to-byte v1, v9

    .line 418
    const/4 v9, 0x2

    aput-byte v1, v0, v9

    .line 422
    :cond_0
    aget-byte v3, v2, v10

    .line 423
    and-int/lit16 v9, v3, 0x80

    if-nez v9, :cond_1

    .line 424
    or-int/lit16 v9, v3, 0x80

    int-to-byte v3, v9

    .line 432
    :cond_1
    :goto_1
    add-int v9, v7, v5

    aput-byte v3, v0, v9

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v4

    .line 407
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encodeTo0x81() : unsurport encoding of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    const/4 v0, 0x0

    .line 435
    .end local v0    # "b0x81":[B
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "temp":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 429
    .restart local v0    # "b0x81":[B
    .restart local v8    # "temp":Ljava/lang/String;
    :cond_3
    aget-byte v3, v2, v10

    goto :goto_1
.end method

.method public static isChinese(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "ret":Z
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 276
    .local v1, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v1, v2, :cond_1

    .line 282
    :cond_0
    const/4 v0, 0x1

    .line 285
    :cond_1
    return v0
.end method

.method public static isEnglish(Ljava/lang/String;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 310
    .local v3, "sz":I
    const/4 v2, 0x1

    .line 311
    .local v2, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 313
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 314
    .local v0, "c":C
    const/16 v4, 0x21

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_0

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_0
    const/4 v2, 0x0

    .line 322
    .end local v0    # "c":C
    :cond_1
    return v2
.end method

.method public static isRussian(Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 349
    .local v4, "sz":I
    const/4 v3, 0x1

    .line 350
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 351
    .local v1, "hasRussian":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 353
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 354
    .local v0, "c":C
    const/16 v5, 0x21

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_0

    .line 351
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    :cond_0
    const/16 v5, 0x400

    if-lt v0, v5, :cond_1

    const/16 v5, 0x4ff

    if-gt v0, v5, :cond_1

    .line 357
    const/4 v1, 0x1

    goto :goto_1

    .line 359
    :cond_1
    const/4 v3, 0x0

    .line 364
    .end local v0    # "c":C
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static isThai(Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 328
    .local v4, "sz":I
    const/4 v3, 0x1

    .line 329
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 330
    .local v1, "hasThai":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 332
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 333
    .local v0, "c":C
    const/16 v5, 0x21

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_0

    .line 330
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_0
    const/16 v5, 0xe01

    if-lt v0, v5, :cond_1

    const/16 v5, 0xe59

    if-gt v0, v5, :cond_1

    .line 336
    const/4 v1, 0x1

    goto :goto_1

    .line 338
    :cond_1
    const/4 v3, 0x0

    .line 343
    .end local v0    # "c":C
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static judge([BII)V
    .locals 6
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "srcLen"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    const/16 v2, 0x7fff

    sput v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 107
    sput v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 112
    const/4 v2, 0x2

    if-lt p2, v2, :cond_0

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 119
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-eqz v2, :cond_3

    .line 121
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 124
    .local v1, "temp":I
    if-gez v1, :cond_1

    .line 126
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    add-int/lit16 v2, v2, 0x82

    sput v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 141
    .end local v0    # "i":I
    .end local v1    # "temp":I
    :cond_0
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    sub-int/2addr v2, v3

    const/16 v3, 0x81

    if-ge v2, v3, :cond_5

    .line 145
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    if-ne v2, v3, :cond_4

    .line 147
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 148
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 149
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 171
    :goto_1
    return-void

    .line 129
    .restart local v0    # "i":I
    .restart local v1    # "temp":I
    :cond_1
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    if-le v2, v1, :cond_2

    .line 131
    sput v1, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 133
    :cond_2
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    if-ge v2, v1, :cond_3

    .line 135
    sput v1, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 116
    .end local v1    # "temp":I
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_4
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 160
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 161
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    goto :goto_1

    .line 167
    :cond_5
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 168
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 169
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    goto :goto_1
.end method

.method public static stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 60
    if-nez p0, :cond_0

    move-object v2, v5

    .line 97
    :goto_0
    return-object v2

    .line 67
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v6, v7}, Lcom/android/internal/telephony/OppoGsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v3

    .line 69
    .local v3, "septets":I
    new-array v2, v3, [B

    .line 71
    .local v2, "ret":[B
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {p0, v2, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v2    # "ret":[B
    .end local v3    # "septets":I
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v6, "utf-16be"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 86
    .local v4, "temp":[B
    array-length v6, v4

    div-int/lit8 v6, v6, 0x2

    new-array v2, v6, [B

    .line 87
    .restart local v2    # "ret":[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/OppoGsmAlphabet;->judge([BII)V

    .line 88
    const/4 v6, 0x0

    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Lcom/android/internal/telephony/OppoGsmAlphabet;->ucs2ToAlphaField([BIII[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 91
    .end local v2    # "ret":[B
    .end local v4    # "temp":[B
    :catch_1
    move-exception v1

    .line 93
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "unsurport encoding."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 94
    goto :goto_0
.end method

.method public static ucs2ToAlphaField([BIII[B)[B
    .locals 5
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "srcLen"    # I
    .param p3, "destOff"    # I
    .param p4, "dest"    # [B

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "outOff":I
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    if-nez v3, :cond_3

    .line 181
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    if-eqz v3, :cond_1

    .line 183
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x3

    new-array p4, v3, [B

    .line 184
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v4, p2, 0x2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 186
    const/16 v3, -0x7f

    aput-byte v3, p4, p3

    .line 188
    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v3, v3, 0x7f80

    sput v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 189
    add-int/lit8 v3, p3, 0x2

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    shr-int/lit8 v4, v4, 0x7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 190
    add-int/lit8 v1, p3, 0x3

    .line 203
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_4

    .line 207
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    if-nez v3, :cond_2

    .line 209
    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    .line 219
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 203
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 192
    .end local v0    # "i":I
    :cond_1
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    if-eqz v3, :cond_0

    .line 194
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array p4, v3, [B

    .line 195
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v4, p2, 0x2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 197
    const/16 v3, -0x7e

    aput-byte v3, p4, p3

    .line 199
    add-int/lit8 v3, p3, 0x2

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 200
    add-int/lit8 v3, p3, 0x3

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 201
    add-int/lit8 v1, p3, 0x4

    goto :goto_0

    .line 215
    .restart local v0    # "i":I
    :cond_2
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int v4, p1, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    sub-int v2, v3, v4

    .line 217
    .local v2, "temp":I
    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    goto :goto_2

    .line 225
    .end local v0    # "i":I
    .end local v2    # "temp":I
    :cond_3
    add-int/lit8 v3, p2, 0x1

    new-array p4, v3, [B

    .line 226
    const/16 v3, -0x80

    aput-byte v3, p4, p3

    .line 227
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v3, p4, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 230
    :cond_4
    return-object p4
.end method
