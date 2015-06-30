.class public Lorg/ccil/cowan/tagsoup/HTMLScanner;
.super Ljava/lang/Object;
.source "HTMLScanner.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;
.implements Lorg/xml/sax/Locator;


# static fields
.field private static final A_ADUP:I = 0x1

.field private static final A_ADUP_SAVE:I = 0x2

.field private static final A_ADUP_STAGC:I = 0x3

.field private static final A_ANAME:I = 0x4

.field private static final A_ANAME_ADUP:I = 0x5

.field private static final A_ANAME_ADUP_STAGC:I = 0x6

.field private static final A_AVAL:I = 0x7

.field private static final A_AVAL_STAGC:I = 0x8

.field private static final A_CDATA:I = 0x9

.field private static final A_CMNT:I = 0xa

.field private static final A_DECL:I = 0xb

.field private static final A_EMPTYTAG:I = 0xc

.field private static final A_ENTITY:I = 0xd

.field private static final A_ENTITY_START:I = 0xe

.field private static final A_ETAG:I = 0xf

.field private static final A_GI:I = 0x10

.field private static final A_GI_STAGC:I = 0x11

.field private static final A_LT:I = 0x12

.field private static final A_LT_PCDATA:I = 0x13

.field private static final A_MINUS:I = 0x14

.field private static final A_MINUS2:I = 0x15

.field private static final A_MINUS3:I = 0x16

.field private static final A_PCDATA:I = 0x17

.field private static final A_PI:I = 0x18

.field private static final A_PITARGET:I = 0x19

.field private static final A_PITARGET_PI:I = 0x1a

.field private static final A_SAVE:I = 0x1b

.field private static final A_SKIP:I = 0x1c

.field private static final A_SP:I = 0x1d

.field private static final A_STAGC:I = 0x1e

.field private static final A_UNGET:I = 0x1f

.field private static final A_UNSAVE_PCDATA:I = 0x20

.field private static final S_ANAME:I = 0x1

.field private static final S_APOS:I = 0x2

.field private static final S_AVAL:I = 0x3

.field private static final S_BB:I = 0x4

.field private static final S_BBC:I = 0x5

.field private static final S_BBCD:I = 0x6

.field private static final S_BBCDA:I = 0x7

.field private static final S_BBCDAT:I = 0x8

.field private static final S_BBCDATA:I = 0x9

.field private static final S_CDATA:I = 0xa

.field private static final S_CDATA2:I = 0xb

.field private static final S_CDSECT:I = 0xc

.field private static final S_CDSECT1:I = 0xd

.field private static final S_CDSECT2:I = 0xe

.field private static final S_COM:I = 0xf

.field private static final S_COM2:I = 0x10

.field private static final S_COM3:I = 0x11

.field private static final S_COM4:I = 0x12

.field private static final S_DECL:I = 0x13

.field private static final S_DECL2:I = 0x14

.field private static final S_DONE:I = 0x15

.field private static final S_EMPTYTAG:I = 0x16

.field private static final S_ENT:I = 0x17

.field private static final S_EQ:I = 0x18

.field private static final S_ETAG:I = 0x19

.field private static final S_GI:I = 0x1a

.field private static final S_NCR:I = 0x1b

.field private static final S_PCDATA:I = 0x1c

.field private static final S_PI:I = 0x1d

.field private static final S_PITARGET:I = 0x1e

.field private static final S_QUOT:I = 0x1f

.field private static final S_STAGC:I = 0x20

.field private static final S_TAG:I = 0x21

.field private static final S_TAGWS:I = 0x22

.field private static final S_XNCR:I = 0x23

.field private static final debug_actionnames:[Ljava/lang/String;

.field private static final debug_statenames:[Ljava/lang/String;

.field private static statetable:[I

.field static statetableIndex:[[S

.field static statetableIndexMaxChar:I


# instance fields
.field private theCurrentColumn:I

.field private theCurrentLine:I

.field private theLastColumn:I

.field private theLastLine:I

.field theNextState:I

.field theOutputBuffer:[C

.field private thePublicid:Ljava/lang/String;

.field theSize:I

.field theState:I

.field private theSystemid:Ljava/lang/String;

.field theWinMap:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 97
    const/16 v7, 0x250

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    sput-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    .line 248
    const/16 v7, 0x21

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v10

    const-string v8, "A_ADUP"

    aput-object v8, v7, v11

    const-string v8, "A_ADUP_SAVE"

    aput-object v8, v7, v12

    const-string v8, "A_ADUP_STAGC"

    aput-object v8, v7, v13

    const-string v8, "A_ANAME"

    aput-object v8, v7, v14

    const/4 v8, 0x5

    const-string v9, "A_ANAME_ADUP"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "A_ANAME_ADUP_STAGC"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "A_AVAL"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "A_AVAL_STAGC"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "A_CDATA"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "A_CMNT"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "A_DECL"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "A_EMPTYTAG"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "A_ENTITY"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "A_ENTITY_START"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "A_ETAG"

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "A_GI"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "A_GI_STAGC"

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "A_LT"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "A_LT_PCDATA"

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "A_MINUS"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    const-string v9, "A_MINUS2"

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "A_MINUS3"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    const-string v9, "A_PCDATA"

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "A_PI"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    const-string v9, "A_PITARGET"

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "A_PITARGET_PI"

    aput-object v9, v7, v8

    const/16 v8, 0x1b

    const-string v9, "A_SAVE"

    aput-object v9, v7, v8

    const/16 v8, 0x1c

    const-string v9, "A_SKIP"

    aput-object v9, v7, v8

    const/16 v8, 0x1d

    const-string v9, "A_SP"

    aput-object v9, v7, v8

    const/16 v8, 0x1e

    const-string v9, "A_STAGC"

    aput-object v9, v7, v8

    const/16 v8, 0x1f

    const-string v9, "A_UNGET"

    aput-object v9, v7, v8

    const/16 v8, 0x20

    const-string v9, "A_UNSAVE_PCDATA"

    aput-object v9, v7, v8

    sput-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_actionnames:[Ljava/lang/String;

    .line 249
    const/16 v7, 0x24

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v10

    const-string v8, "S_ANAME"

    aput-object v8, v7, v11

    const-string v8, "S_APOS"

    aput-object v8, v7, v12

    const-string v8, "S_AVAL"

    aput-object v8, v7, v13

    const-string v8, "S_BB"

    aput-object v8, v7, v14

    const/4 v8, 0x5

    const-string v9, "S_BBC"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "S_BBCD"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "S_BBCDA"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "S_BBCDAT"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "S_BBCDATA"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "S_CDATA"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "S_CDATA2"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "S_CDSECT"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "S_CDSECT1"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "S_CDSECT2"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "S_COM"

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "S_COM2"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "S_COM3"

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "S_COM4"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "S_DECL"

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "S_DECL2"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    const-string v9, "S_DONE"

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "S_EMPTYTAG"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    const-string v9, "S_ENT"

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "S_EQ"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    const-string v9, "S_ETAG"

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "S_GI"

    aput-object v9, v7, v8

    const/16 v8, 0x1b

    const-string v9, "S_NCR"

    aput-object v9, v7, v8

    const/16 v8, 0x1c

    const-string v9, "S_PCDATA"

    aput-object v9, v7, v8

    const/16 v8, 0x1d

    const-string v9, "S_PI"

    aput-object v9, v7, v8

    const/16 v8, 0x1e

    const-string v9, "S_PITARGET"

    aput-object v9, v7, v8

    const/16 v8, 0x1f

    const-string v9, "S_QUOT"

    aput-object v9, v7, v8

    const/16 v8, 0x20

    const-string v9, "S_STAGC"

    aput-object v9, v7, v8

    const/16 v8, 0x21

    const-string v9, "S_TAG"

    aput-object v9, v7, v8

    const/16 v8, 0x22

    const-string v9, "S_TAGWS"

    aput-object v9, v7, v8

    const/16 v8, 0x23

    const-string v9, "S_XNCR"

    aput-object v9, v7, v8

    sput-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_statenames:[Ljava/lang/String;

    .line 304
    const/4 v5, -0x1

    .line 305
    .local v5, "maxState":I
    const/4 v4, -0x1

    .line 306
    .local v4, "maxChar":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 307
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    aget v7, v7, v3

    if-le v7, v5, :cond_0

    .line 308
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    aget v5, v7, v3

    .line 310
    :cond_0
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    if-le v7, v4, :cond_1

    .line 311
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v3, 0x1

    aget v4, v7, v8

    .line 306
    :cond_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 314
    :cond_2
    add-int/lit8 v7, v4, 0x1

    sput v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndexMaxChar:I

    .line 316
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v4, 0x3

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    sput-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    .line 317
    const/4 v6, 0x0

    .local v6, "theState":I
    :goto_1
    if-gt v6, v5, :cond_8

    .line 318
    const/4 v1, -0x2

    .local v1, "ch":I
    :goto_2
    if-gt v1, v4, :cond_7

    .line 319
    const/4 v2, -0x1

    .line 320
    .local v2, "hit":I
    const/4 v0, 0x0

    .line 321
    .local v0, "action":I
    const/4 v3, 0x0

    :goto_3
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 322
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    aget v7, v7, v3

    if-eq v6, v7, :cond_4

    .line 323
    if-eqz v0, :cond_5

    .line 336
    :cond_3
    :goto_4
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    aget-object v7, v7, v6

    add-int/lit8 v8, v1, 0x2

    int-to-short v9, v2

    aput-short v9, v7, v8

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 326
    :cond_4
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    if-nez v7, :cond_6

    .line 327
    move v2, v3

    .line 328
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v3, 0x2

    aget v0, v7, v8

    .line 321
    :cond_5
    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 330
    :cond_6
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    if-ne v7, v1, :cond_5

    .line 331
    move v2, v3

    .line 332
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v3, 0x2

    aget v0, v7, v8

    .line 333
    goto :goto_4

    .line 317
    .end local v0    # "action":I
    .end local v2    # "hit":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 339
    .end local v1    # "ch":I
    :cond_8
    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        0x1
        0x2f
        0x5
        0x16
        0x1
        0x3d
        0x4
        0x3
        0x1
        0x3e
        0x6
        0x1c
        0x1
        0x0
        0x1b
        0x1
        0x1
        -0x1
        0x6
        0x15
        0x1
        0x20
        0x4
        0x18
        0x1
        0xa
        0x4
        0x18
        0x1
        0x9
        0x4
        0x18
        0x2
        0x27
        0x7
        0x22
        0x2
        0x0
        0x1b
        0x2
        0x2
        -0x1
        0x8
        0x15
        0x2
        0x20
        0x1d
        0x2
        0x2
        0xa
        0x1d
        0x2
        0x2
        0x9
        0x1d
        0x2
        0x3
        0x22
        0x1c
        0x1f
        0x3
        0x27
        0x1c
        0x2
        0x3
        0x3e
        0x8
        0x1c
        0x3
        0x0
        0x1b
        0x20
        0x3
        -0x1
        0x8
        0x15
        0x3
        0x20
        0x1c
        0x3
        0x3
        0xa
        0x1c
        0x3
        0x3
        0x9
        0x1c
        0x3
        0x4
        0x43
        0x1c
        0x5
        0x4
        0x0
        0x1c
        0x13
        0x4
        -0x1
        0x1c
        0x15
        0x5
        0x44
        0x1c
        0x6
        0x5
        0x0
        0x1c
        0x13
        0x5
        -0x1
        0x1c
        0x15
        0x6
        0x41
        0x1c
        0x7
        0x6
        0x0
        0x1c
        0x13
        0x6
        -0x1
        0x1c
        0x15
        0x7
        0x54
        0x1c
        0x8
        0x7
        0x0
        0x1c
        0x13
        0x7
        -0x1
        0x1c
        0x15
        0x8
        0x41
        0x1c
        0x9
        0x8
        0x0
        0x1c
        0x13
        0x8
        -0x1
        0x1c
        0x15
        0x9
        0x5b
        0x1c
        0xc
        0x9
        0x0
        0x1c
        0x13
        0x9
        -0x1
        0x1c
        0x15
        0xa
        0x3c
        0x1b
        0xb
        0xa
        0x0
        0x1b
        0xa
        0xa
        -0x1
        0x17
        0x15
        0xb
        0x2f
        0x20
        0x19
        0xb
        0x0
        0x1b
        0xa
        0xb
        -0x1
        0x20
        0x15
        0xc
        0x5d
        0x1b
        0xd
        0xc
        0x0
        0x1b
        0xc
        0xc
        -0x1
        0x1c
        0x15
        0xd
        0x5d
        0x1b
        0xe
        0xd
        0x0
        0x1b
        0xc
        0xd
        -0x1
        0x1c
        0x15
        0xe
        0x3e
        0x9
        0x1c
        0xe
        0x0
        0x1b
        0xc
        0xe
        -0x1
        0x1c
        0x15
        0xf
        0x2d
        0x1c
        0x10
        0xf
        0x0
        0x1b
        0x10
        0xf
        -0x1
        0xa
        0x15
        0x10
        0x2d
        0x1c
        0x11
        0x10
        0x0
        0x1b
        0x10
        0x10
        -0x1
        0xa
        0x15
        0x11
        0x2d
        0x1c
        0x12
        0x11
        0x0
        0x14
        0x10
        0x11
        -0x1
        0xa
        0x15
        0x12
        0x2d
        0x16
        0x12
        0x12
        0x3e
        0xa
        0x1c
        0x12
        0x0
        0x15
        0x10
        0x12
        -0x1
        0xa
        0x15
        0x13
        0x2d
        0x1c
        0xf
        0x13
        0x3e
        0x1c
        0x1c
        0x13
        0x5b
        0x1c
        0x4
        0x13
        0x0
        0x1b
        0x14
        0x13
        -0x1
        0x1c
        0x15
        0x14
        0x3e
        0xb
        0x1c
        0x14
        0x0
        0x1b
        0x14
        0x14
        -0x1
        0x1c
        0x15
        0x16
        0x3e
        0xc
        0x1c
        0x16
        0x0
        0x1b
        0x1
        0x16
        0x20
        0x1c
        0x22
        0x16
        0xa
        0x1c
        0x22
        0x16
        0x9
        0x1c
        0x22
        0x17
        0x0
        0xd
        0x17
        0x17
        -0x1
        0xd
        0x15
        0x18
        0x3d
        0x1c
        0x3
        0x18
        0x3e
        0x3
        0x1c
        0x18
        0x0
        0x2
        0x1
        0x18
        -0x1
        0x3
        0x15
        0x18
        0x20
        0x1c
        0x18
        0x18
        0xa
        0x1c
        0x18
        0x18
        0x9
        0x1c
        0x18
        0x19
        0x3e
        0xf
        0x1c
        0x19
        0x0
        0x1b
        0x19
        0x19
        -0x1
        0xf
        0x15
        0x19
        0x20
        0x1c
        0x19
        0x19
        0xa
        0x1c
        0x19
        0x19
        0x9
        0x1c
        0x19
        0x1a
        0x2f
        0x1c
        0x16
        0x1a
        0x3e
        0x11
        0x1c
        0x1a
        0x0
        0x1b
        0x1a
        0x1a
        -0x1
        0x1c
        0x15
        0x1a
        0x20
        0x10
        0x22
        0x1a
        0xa
        0x10
        0x22
        0x1a
        0x9
        0x10
        0x22
        0x1b
        0x0
        0xd
        0x1b
        0x1b
        -0x1
        0xd
        0x15
        0x1c
        0x26
        0xe
        0x17
        0x1c
        0x3c
        0x17
        0x21
        0x1c
        0x0
        0x1b
        0x1c
        0x1c
        -0x1
        0x17
        0x15
        0x1d
        0x3e
        0x18
        0x1c
        0x1d
        0x0
        0x1b
        0x1d
        0x1d
        -0x1
        0x18
        0x15
        0x1e
        0x3e
        0x1a
        0x1c
        0x1e
        0x0
        0x1b
        0x1e
        0x1e
        -0x1
        0x1a
        0x15
        0x1e
        0x20
        0x19
        0x1d
        0x1e
        0xa
        0x19
        0x1d
        0x1e
        0x9
        0x19
        0x1d
        0x1f
        0x22
        0x7
        0x22
        0x1f
        0x0
        0x1b
        0x1f
        0x1f
        -0x1
        0x8
        0x15
        0x1f
        0x20
        0x1d
        0x1f
        0x1f
        0xa
        0x1d
        0x1f
        0x1f
        0x9
        0x1d
        0x1f
        0x20
        0x3e
        0x8
        0x1c
        0x20
        0x0
        0x1b
        0x20
        0x20
        -0x1
        0x8
        0x15
        0x20
        0x20
        0x7
        0x22
        0x20
        0xa
        0x7
        0x22
        0x20
        0x9
        0x7
        0x22
        0x21
        0x21
        0x1c
        0x13
        0x21
        0x2f
        0x1c
        0x19
        0x21
        0x3c
        0x1b
        0x21
        0x21
        0x3f
        0x1c
        0x1e
        0x21
        0x0
        0x1b
        0x1a
        0x21
        -0x1
        0x13
        0x15
        0x21
        0x20
        0x12
        0x1c
        0x21
        0xa
        0x12
        0x1c
        0x21
        0x9
        0x12
        0x1c
        0x22
        0x2f
        0x1c
        0x16
        0x22
        0x3e
        0x1e
        0x1c
        0x22
        0x0
        0x1b
        0x1
        0x22
        -0x1
        0x1e
        0x15
        0x22
        0x20
        0x1c
        0x22
        0x22
        0xa
        0x1c
        0x22
        0x22
        0x9
        0x1c
        0x22
        0x23
        0x0
        0xd
        0x23
        0x23
        -0x1
        0xd
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    .line 265
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20ac
        0xfffd
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0xfffd
        0x17d
        0xfffd
        0xfffd
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0xfffd
        0x17e
        0x178
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v2, Lorg/ccil/cowan/tagsoup/HTMLScanner;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;-><init>()V

    .line 693
    .local v2, "s":Lorg/ccil/cowan/tagsoup/Scanner;
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 694
    .local v1, "r":Ljava/io/Reader;
    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 695
    .local v3, "w":Ljava/io/Writer;
    new-instance v0, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v0, v3}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    .line 696
    .local v0, "pw":Lorg/ccil/cowan/tagsoup/PYXWriter;
    invoke-interface {v2, v1, v0}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 697
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 698
    return-void
.end method

.method private mark()V
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    .line 658
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    .line 659
    return-void
.end method

.method private static nicechar(I)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # I

    .prologue
    .line 702
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const-string v0, "\\n"

    .line 704
    :goto_0
    return-object v0

    .line 703
    :cond_0
    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 704
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 670
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x14

    if-lt v1, v2, :cond_1

    .line 671
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 673
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v1, v3, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 674
    iput v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 683
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 684
    return-void

    .line 678
    :cond_2
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 679
    .local v0, "newOutputBuffer":[C
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 680
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    goto :goto_0
.end method

.method private unread(Ljava/io/PushbackReader;I)V
    .locals 1
    .param p1, "r"    # Ljava/io/PushbackReader;
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PushbackReader;->unread(I)V

    .line 345
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    return-object v0
.end method

.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    .line 373
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    .line 375
    return-void
.end method

.method public scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 11
    .param p1, "r0"    # Ljava/io/Reader;
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 384
    const/16 v8, 0x1c

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    .line 386
    instance-of v8, p1, Ljava/io/BufferedReader;

    if-eqz v8, :cond_5

    .line 387
    new-instance v6, Ljava/io/PushbackReader;

    const/4 v8, 0x5

    invoke-direct {v6, p1, v8}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 393
    .local v6, "r":Ljava/io/PushbackReader;
    :goto_0
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v5

    .line 394
    .local v5, "firstChar":I
    const v8, 0xfeff

    if-eq v5, v8, :cond_0

    invoke-direct {p0, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 396
    :cond_0
    :goto_1
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x15

    if-eq v8, v9, :cond_18

    .line 397
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v2

    .line 400
    .local v2, "ch":I
    const/16 v8, 0x80

    if-lt v2, v8, :cond_1

    const/16 v8, 0x9f

    if-gt v2, v8, :cond_1

    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    add-int/lit8 v9, v2, -0x80

    aget v2, v8, v9

    .line 402
    :cond_1
    const/16 v8, 0xd

    if-ne v2, v8, :cond_2

    .line 403
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v2

    .line 404
    const/16 v8, 0xa

    if-eq v2, v8, :cond_2

    .line 405
    invoke-direct {p0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 406
    const/16 v2, 0xa

    .line 410
    :cond_2
    const/16 v8, 0xa

    if-ne v2, v8, :cond_6

    .line 411
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    .line 412
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 418
    :goto_2
    const/16 v8, 0x20

    if-ge v2, v8, :cond_3

    const/16 v8, 0xa

    if-eq v2, v8, :cond_3

    const/16 v8, 0x9

    if-eq v2, v8, :cond_3

    const/4 v8, -0x1

    if-ne v2, v8, :cond_0

    .line 421
    :cond_3
    const/4 v8, -0x1

    if-lt v2, v8, :cond_7

    sget v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndexMaxChar:I

    if-ge v2, v8, :cond_7

    move v1, v2

    .line 422
    .local v1, "adjCh":I
    :goto_3
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    aget-object v8, v8, v9

    add-int/lit8 v9, v1, 0x2

    aget-short v7, v8, v9

    .line 423
    .local v7, "statetableRow":I
    const/4 v0, 0x0

    .line 424
    .local v0, "action":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 425
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v9, v7, 0x2

    aget v0, v8, v9

    .line 426
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v9, v7, 0x3

    aget v8, v8, v9

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 430
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 644
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t process state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 390
    .end local v0    # "action":I
    .end local v1    # "adjCh":I
    .end local v2    # "ch":I
    .end local v5    # "firstChar":I
    .end local v6    # "r":Ljava/io/PushbackReader;
    .end local v7    # "statetableRow":I
    :cond_5
    new-instance v6, Ljava/io/PushbackReader;

    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .restart local v6    # "r":Ljava/io/PushbackReader;
    goto/16 :goto_0

    .line 415
    .restart local v2    # "ch":I
    .restart local v5    # "firstChar":I
    :cond_6
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto :goto_2

    .line 421
    :cond_7
    const/4 v1, -0x2

    goto :goto_3

    .line 432
    .restart local v0    # "action":I
    .restart local v1    # "adjCh":I
    .restart local v7    # "statetableRow":I
    :pswitch_0
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTMLScanner can\'t cope with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 436
    :pswitch_1
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 437
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 646
    :goto_4
    :pswitch_2
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    goto/16 :goto_1

    .line 440
    :pswitch_3
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 441
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 442
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_4

    .line 445
    :pswitch_4
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 446
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 447
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_4

    .line 450
    :pswitch_5
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 451
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto :goto_4

    .line 454
    :pswitch_6
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 455
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 456
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    goto :goto_4

    .line 459
    :pswitch_7
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 460
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 461
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 462
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_4

    .line 465
    :pswitch_8
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 466
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto :goto_4

    .line 469
    :pswitch_9
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 470
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 471
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto/16 :goto_4

    .line 474
    :pswitch_a
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 476
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_8

    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v8, v8, -0x2

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 477
    :cond_8
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 478
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 481
    :pswitch_b
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 482
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 483
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 486
    :pswitch_c
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 487
    int-to-char v3, v2

    .line 489
    .local v3, "ch1":C
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_9

    const/16 v8, 0x23

    if-ne v3, v8, :cond_9

    .line 490
    const/16 v8, 0x1b

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 491
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 494
    :cond_9
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_b

    const/16 v8, 0x78

    if-eq v3, v8, :cond_a

    const/16 v8, 0x58

    if-ne v3, v8, :cond_b

    .line 495
    :cond_a
    const/16 v8, 0x23

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 496
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 499
    :cond_b
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_c

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 500
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 503
    :cond_c
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_d

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 504
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 507
    :cond_d
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x23

    if-ne v8, v9, :cond_f

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "abcdefABCDEF"

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_f

    .line 508
    :cond_e
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 514
    :cond_f
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x1

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    .line 515
    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->getEntity()I

    move-result v4

    .line 517
    .local v4, "ent":I
    if-eqz v4, :cond_15

    .line 518
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 519
    const/16 v8, 0x80

    if-lt v4, v8, :cond_10

    const/16 v8, 0x9f

    if-gt v4, v8, :cond_10

    .line 520
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    add-int/lit8 v9, v4, -0x80

    aget v4, v8, v9

    .line 522
    :cond_10
    const/16 v8, 0x20

    if-ge v4, v8, :cond_12

    .line 524
    const/16 v4, 0x20

    .line 540
    :goto_5
    const/16 v8, 0x3b

    if-eq v2, v8, :cond_11

    .line 541
    invoke-direct {p0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 542
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 549
    :cond_11
    :goto_6
    const/16 v8, 0x1c

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    goto/16 :goto_4

    .line 526
    :cond_12
    const v8, 0xd800

    if-lt v4, v8, :cond_13

    const v8, 0xdfff

    if-gt v4, v8, :cond_13

    .line 528
    const/4 v4, 0x0

    goto :goto_5

    .line 530
    :cond_13
    const v8, 0xffff

    if-gt v4, v8, :cond_14

    .line 532
    invoke-direct {p0, v4, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_5

    .line 536
    :cond_14
    const/high16 v8, 0x10000

    sub-int/2addr v4, v8

    .line 537
    shr-int/lit8 v8, v4, 0xa

    const v9, 0xd800

    add-int/2addr v8, v9

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 538
    and-int/lit16 v8, v4, 0x3ff

    const v9, 0xdc00

    add-int/2addr v8, v9

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_5

    .line 546
    :cond_15
    invoke-direct {p0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 547
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto :goto_6

    .line 552
    .end local v3    # "ch1":C
    .end local v4    # "ent":I
    :pswitch_d
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    .line 553
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 556
    :pswitch_e
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->decl([CII)V

    .line 557
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 560
    :pswitch_f
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 561
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 564
    :pswitch_10
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 565
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 566
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto/16 :goto_4

    .line 569
    :pswitch_11
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 570
    const/16 v8, 0x3c

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 571
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 574
    :pswitch_12
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 575
    const/16 v8, 0x3c

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 576
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 577
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 580
    :pswitch_13
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 581
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 582
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 585
    :pswitch_14
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 586
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->cmnt([CII)V

    .line 587
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 590
    :pswitch_15
    const/16 v8, 0x2d

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 591
    const/16 v8, 0x20

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 594
    :pswitch_16
    const/16 v8, 0x2d

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 595
    const/16 v8, 0x20

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 598
    :pswitch_17
    const/16 v8, 0x2d

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 599
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 602
    :pswitch_18
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 603
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    .line 604
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 607
    :pswitch_19
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    .line 608
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 611
    :pswitch_1a
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    .line 612
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 613
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    goto/16 :goto_4

    .line 616
    :pswitch_1b
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 621
    :pswitch_1c
    const/16 v8, 0x20

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_4

    .line 624
    :pswitch_1d
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 625
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 628
    :pswitch_1e
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 630
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-lez v8, :cond_16

    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 631
    :cond_16
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 632
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stage([CII)V

    goto/16 :goto_4

    .line 635
    :pswitch_1f
    invoke-direct {p0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 636
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto/16 :goto_4

    .line 639
    :pswitch_20
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-lez v8, :cond_17

    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 640
    :cond_17
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 641
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_4

    .line 648
    .end local v0    # "action":I
    .end local v1    # "adjCh":I
    .end local v2    # "ch":I
    .end local v7    # "statetableRow":I
    :cond_18
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    .line 649
    return-void

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_14
        :pswitch_e
        :pswitch_1e
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_2
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public startCDATA()V
    .locals 1

    .prologue
    .line 667
    const/16 v0, 0xa

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    return-void
.end method
