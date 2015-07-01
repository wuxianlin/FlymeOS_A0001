.class public Landroid/os/OppoAssertTip;
.super Ljava/lang/Object;
.source "OppoAssertTip.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusAssertTip"

.field private static mOppoAssertTipInstance:Landroid/os/OppoAssertTip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OppoAssertTip;->mOppoAssertTipInstance:Landroid/os/OppoAssertTip;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getInstance()Landroid/os/OppoAssertTip;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/os/OppoAssertTip;->mOppoAssertTipInstance:Landroid/os/OppoAssertTip;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/OppoAssertTip;

    invoke-direct {v0}, Landroid/os/OppoAssertTip;-><init>()V

    sput-object v0, Landroid/os/OppoAssertTip;->mOppoAssertTipInstance:Landroid/os/OppoAssertTip;

    .line 56
    :cond_0
    sget-object v0, Landroid/os/OppoAssertTip;->mOppoAssertTipInstance:Landroid/os/OppoAssertTip;

    return-object v0
.end method

.method private native setTipTextPaintAttr(II)I
.end method


# virtual methods
.method public native hideAssertMessage()I
.end method

.method public requestSetTipTextPaintAttr(I)I
    .locals 6
    .param p1, "textSize"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 70
    const/16 v4, 0xa

    if-ge p1, v4, :cond_0

    .line 71
    const-string v4, "OnePlusAssertTip"

    const-string/jumbo v5, "size is too small! set larger than 10."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return v3

    .line 74
    :cond_0
    new-array v1, v5, [C

    const/16 v4, 0x57

    aput-char v4, v1, v3

    .line 75
    .local v1, "str":[C
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .local v2, "testPaint":Landroid/graphics/Paint;
    int-to-float v4, p1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    invoke-virtual {v2, v1, v3, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    .line 78
    .local v0, "charWidth":F
    float-to-int v3, v0

    invoke-direct {p0, p1, v3}, Landroid/os/OppoAssertTip;->setTipTextPaintAttr(II)I

    move-result v3

    goto :goto_0
.end method

.method public requestShowAssertMessage(Ljava/lang/String;)I
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 62
    :cond_0
    const-string v0, "OnePlusAssertTip"

    const-string/jumbo v1, "requestShowAssertMessage:message is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/OppoAssertTip;->showAssertMessage(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public native showAssertMessage(Ljava/lang/String;)I
.end method

.method public native testAddFunction(II)I
.end method
