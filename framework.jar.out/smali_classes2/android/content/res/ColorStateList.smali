.class public Landroid/content/res/ColorStateList;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[[I

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mColors:[I

.field private mDefaultColor:I

.field private mStateSpecs:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 397
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/high16 v0, -0x10000

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 75
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 2
    .param p1, "states"    # [[I
    .param p2, "colors"    # [I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/high16 v1, -0x10000

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 82
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 83
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 85
    array-length v1, p1

    if-lez v1, :cond_1

    .line 86
    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 89
    aget-object v1, p1, v0

    array-length v1, v1

    if-nez v1, :cond_0

    .line 90
    aget v1, p2, v0

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p1, "state"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 352
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    .line 353
    .local v3, "inputStates":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 354
    aget-object v2, v3, v0

    .line 355
    .local v2, "inputState":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_1

    .line 356
    aget v7, v2, v0

    if-ne v7, p1, :cond_0

    .line 371
    .end local v2    # "inputState":[I
    .end local v4    # "j":I
    .end local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    :goto_2
    return-object p0

    .line 355
    .restart local v2    # "inputState":[I
    .restart local v4    # "j":I
    .restart local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 353
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "inputState":[I
    .end local v4    # "j":I
    :cond_2
    array-length v7, v3

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [[I

    .line 363
    .local v6, "outputStates":[[I
    array-length v7, v3

    invoke-static {v3, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    new-array v7, v9, [I

    aput p1, v7, v8

    aput-object v7, v6, v8

    .line 366
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 367
    .local v1, "inputColors":[I
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 368
    .local v5, "outputColors":[I
    array-length v7, v1

    invoke-static {v1, v8, v5, v9, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 369
    aput p2, v5, v8

    .line 371
    new-instance p0, Landroid/content/res/ColorStateList;

    .end local p0    # "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {p0, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_2
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 120
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 124
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 127
    :cond_1
    if-eq v1, v3, :cond_2

    .line 128
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_2
    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "name":Ljava/lang/String;
    const-string v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 152
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 153
    return-object v0

    .line 148
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invalid drawable tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 26
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    add-int/lit8 v14, v23, 0x1

    .line 181
    .local v14, "innerDepth":I
    const-class v23, [I

    const/16 v24, 0x14

    invoke-static/range {v23 .. v24}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[I

    .line 182
    .local v21, "stateSpecList":[[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v9, v0, [I

    .line 183
    .local v9, "colorList":[I
    const/16 v17, 0x0

    .line 186
    .local v17, "listSize":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .local v11, "depth":I
    if-ge v11, v14, :cond_1

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 188
    :cond_1
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 192
    if-gt v11, v14, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "item"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 196
    const/4 v7, 0x0

    .line 197
    .local v7, "alphaRes":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 198
    .local v5, "alpha":F
    const/4 v10, 0x0

    .line 199
    .local v10, "colorRes":I
    const/high16 v8, -0x10000

    .line 200
    .local v8, "color":I
    const/4 v12, 0x0

    .line 203
    .local v12, "haveColor":Z
    const/4 v15, 0x0

    .line 204
    .local v15, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v18

    .line 205
    .local v18, "numAttrs":I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 206
    .local v20, "stateSpec":[I
    const/4 v13, 0x0

    .local v13, "i":I
    move/from16 v16, v15

    .end local v15    # "j":I
    .local v16, "j":I
    :goto_1
    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    .line 207
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v19

    .line 208
    .local v19, "stateResId":I
    if-nez v19, :cond_7

    .line 225
    .end local v19    # "stateResId":I
    :cond_2
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v20

    .line 227
    if-eqz v10, :cond_b

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 235
    :cond_3
    if-eqz v7, :cond_4

    .line 236
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    .line 240
    :cond_4
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0xff

    invoke-static/range {v23 .. v25}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 241
    .local v6, "alphaMod":I
    const v23, 0xffffff

    and-int v23, v23, v8

    shl-int/lit8 v24, v6, 0x18

    or-int v8, v23, v24

    .line 243
    if-eqz v17, :cond_5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 244
    :cond_5
    move-object/from16 v0, p0

    iput v8, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 247
    :cond_6
    move/from16 v0, v17

    invoke-static {v9, v0, v8}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    .line 248
    move-object/from16 v0, v21

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "stateSpecList":[[I
    check-cast v21, [[I

    .line 249
    .restart local v21    # "stateSpecList":[[I
    add-int/lit8 v17, v17, 0x1

    .line 250
    goto/16 :goto_0

    .line 209
    .end local v6    # "alphaMod":I
    .restart local v19    # "stateResId":I
    :cond_7
    const v23, 0x101031f

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 210
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v7

    .line 211
    if-nez v7, :cond_d

    .line 212
    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeFloatValue(IF)F

    move-result v5

    move/from16 v15, v16

    .line 206
    .end local v16    # "j":I
    .end local v19    # "stateResId":I
    .restart local v15    # "j":I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    .end local v15    # "j":I
    .restart local v16    # "j":I
    goto/16 :goto_1

    .line 214
    .restart local v19    # "stateResId":I
    :cond_8
    const v23, 0x10101a5

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 215
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v10

    .line 216
    if-nez v10, :cond_d

    .line 217
    move-object/from16 v0, p3

    invoke-interface {v0, v13, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v8

    .line 218
    const/4 v12, 0x1

    move/from16 v15, v16

    .end local v16    # "j":I
    .restart local v15    # "j":I
    goto :goto_2

    .line 221
    .end local v15    # "j":I
    .restart local v16    # "j":I
    :cond_9
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "j":I
    .restart local v15    # "j":I
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v23

    if-eqz v23, :cond_a

    .end local v19    # "stateResId":I
    :goto_3
    aput v19, v20, v16

    goto :goto_2

    .restart local v19    # "stateResId":I
    :cond_a
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    goto :goto_3

    .line 229
    .end local v15    # "j":I
    .end local v19    # "stateResId":I
    .restart local v16    # "j":I
    :cond_b
    if-nez v12, :cond_3

    .line 230
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": <item> tag requires a \'android:color\' attribute."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 252
    .end local v5    # "alpha":F
    .end local v7    # "alphaRes":I
    .end local v8    # "color":I
    .end local v10    # "colorRes":I
    .end local v11    # "depth":I
    .end local v12    # "haveColor":Z
    .end local v13    # "i":I
    .end local v16    # "j":I
    .end local v18    # "numAttrs":I
    .end local v20    # "stateSpec":[I
    :cond_c
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    .line 253
    move/from16 v0, v17

    new-array v0, v0, [[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 254
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v17

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 255
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    return-void

    .restart local v5    # "alpha":F
    .restart local v7    # "alphaRes":I
    .restart local v8    # "color":I
    .restart local v10    # "colorRes":I
    .restart local v11    # "depth":I
    .restart local v12    # "haveColor":Z
    .restart local v13    # "i":I
    .restart local v16    # "j":I
    .restart local v18    # "numAttrs":I
    .restart local v19    # "stateResId":I
    .restart local v20    # "stateSpec":[I
    :cond_d
    move/from16 v15, v16

    .end local v16    # "j":I
    .restart local v15    # "j":I
    goto/16 :goto_2
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 7
    .param p0, "color"    # I

    .prologue
    .line 101
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v4

    .line 102
    :try_start_0
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 104
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    move-object v0, v3

    .line 105
    .local v0, "csl":Landroid/content/res/ColorStateList;
    :goto_0
    if-eqz v0, :cond_1

    .line 106
    monitor-exit v4

    move-object v1, v0

    .line 111
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .local v1, "csl":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 104
    .end local v1    # "csl":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_1
    new-instance v0, Landroid/content/res/ColorStateList;

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p0, v5, v6

    invoke-direct {v0, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 110
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    monitor-exit v4

    move-object v1, v0

    .restart local v1    # "csl":Ljava/lang/Object;
    goto :goto_1

    .line 112
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v1    # "csl":Ljava/lang/Object;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public getColorForState([II)I
    .locals 4
    .param p1, "stateSet"    # [I
    .param p2, "defaultColor"    # I

    .prologue
    .line 297
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v3

    .line 298
    .local v1, "setLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 299
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v3, v0

    .line 300
    .local v2, "stateSpec":[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget p2, v3, v0

    .line 304
    .end local v2    # "stateSpec":[I
    .end local p2    # "defaultColor":I
    :cond_0
    return p2

    .line 298
    .restart local v2    # "stateSpec":[I
    .restart local p2    # "defaultColor":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public getStates()[[I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public isOpaque()Z
    .locals 4

    .prologue
    .line 278
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v1, v2

    .line 279
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 280
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v2, v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 281
    const/4 v2, 0x0

    .line 284
    :goto_1
    return v2

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 162
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v3, v3

    new-array v0, v3, [I

    .line 163
    .local v0, "colors":[I
    array-length v2, v0

    .line 164
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 165
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 389
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v2

    .line 390
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 392
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_0
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 395
    return-void
.end method
