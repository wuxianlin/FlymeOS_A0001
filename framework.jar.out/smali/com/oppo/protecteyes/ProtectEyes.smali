.class public Lcom/oppo/protecteyes/ProtectEyes;
.super Ljava/lang/Object;
.source "ProtectEyes.java"


# static fields
.field public static final PROEYES_ALREADY_INIT:I = 0x2

.field public static final PROEYES_FAILED:I = -0x1

.field public static final PROEYES_NO_INIT:I = 0x1

.field public static final PROEYES_SUCCESS:I

.field private static proEyesInit:I


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/oppo/protecteyes/ProtectEyes;->proEyesInit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "protecteyes"

    iput-object v0, p0, Lcom/oppo/protecteyes/ProtectEyes;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private native disableProtectEyes_native()I
.end method

.method private native enableProtectEyes_native(DDD)I
.end method

.method private native exitProtectEyes_native()I
.end method

.method private native initProtectEyes_native()I
.end method


# virtual methods
.method public disableProtectEyes()I
    .locals 4

    .prologue
    .line 90
    const/4 v0, -0x1

    .line 91
    .local v0, "ret":I
    sget v2, Lcom/oppo/protecteyes/ProtectEyes;->proEyesInit:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 92
    iget-object v2, p0, Lcom/oppo/protecteyes/ProtectEyes;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "protectEyes does not init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 104
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 96
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    invoke-direct {p0}, Lcom/oppo/protecteyes/ProtectEyes;->disableProtectEyes_native()I

    move-result v0

    .line 97
    if-gez v0, :cond_1

    .line 98
    iget-object v2, p0, Lcom/oppo/protecteyes/ProtectEyes;->TAG:Ljava/lang/String;

    const-string v3, "enableProtectEyes failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, -0x1

    :goto_1
    move v1, v0

    .line 104
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0

    .line 101
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public enableProtectEyes(DDD)I
    .locals 5
    .param p1, "r"    # D
    .param p3, "g"    # D
    .param p5, "b"    # D

    .prologue
    .line 72
    const/4 v0, -0x1

    .line 73
    .local v0, "ret":I
    sget v2, Lcom/oppo/protecteyes/ProtectEyes;->proEyesInit:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 74
    iget-object v2, p0, Lcom/oppo/protecteyes/ProtectEyes;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "protectEyes does not init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 86
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 78
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/oppo/protecteyes/ProtectEyes;->enableProtectEyes_native(DDD)I

    move-result v0

    .line 79
    if-gez v0, :cond_1

    .line 80
    iget-object v2, p0, Lcom/oppo/protecteyes/ProtectEyes;->TAG:Ljava/lang/String;

    const-string v3, "enableProtectEyes failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, -0x1

    :goto_1
    move v1, v0

    .line 86
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0

    .line 83
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public exitProtectEyes()I
    .locals 3

    .prologue
    .line 108
    const/4 v0, -0x1

    .line 109
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/oppo/protecteyes/ProtectEyes;->exitProtectEyes_native()I

    move-result v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    const/4 v1, 0x1

    sput v1, Lcom/oppo/protecteyes/ProtectEyes;->proEyesInit:I

    .line 112
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/oppo/protecteyes/ProtectEyes;->TAG:Ljava/lang/String;

    const-string v2, "exitProtectEyes failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initProtectEyes()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 46
    const/4 v0, -0x1

    .line 48
    .local v0, "ret":I
    sget v1, Lcom/oppo/protecteyes/ProtectEyes;->proEyesInit:I

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/oppo/protecteyes/ProtectEyes;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "protectEyes already init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/oppo/protecteyes/ProtectEyes;->initProtectEyes_native()I

    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    const/4 v0, -0x1

    .line 56
    iget-object v1, p0, Lcom/oppo/protecteyes/ProtectEyes;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "protectEyes init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v0

    .line 62
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    sput v2, Lcom/oppo/protecteyes/ProtectEyes;->proEyesInit:I

    goto :goto_1
.end method
