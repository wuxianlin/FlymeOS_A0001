.class public Lcom/oneplus/VibratorHW;
.super Ljava/lang/Object;
.source "VibratorHW.java"


# static fields
.field private static final DBG:Z = false

.field private static LEVEL_PATH:Ljava/lang/String; = null

.field private static MAX_PATH:Ljava/lang/String; = null

.field private static MIN_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VibratorHW"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "/sys/class/timed_output/vibrator/vtg_level"

    sput-object v0, Lcom/oneplus/VibratorHW;->LEVEL_PATH:Ljava/lang/String;

    .line 28
    const-string v0, "/sys/class/timed_output/vibrator/vtg_max"

    sput-object v0, Lcom/oneplus/VibratorHW;->MAX_PATH:Ljava/lang/String;

    .line 29
    const-string v0, "/sys/class/timed_output/vibrator/vtg_min"

    sput-object v0, Lcom/oneplus/VibratorHW;->MIN_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurIntensity()I
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oneplus/VibratorHW;->LEVEL_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDefaultIntensity()I
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/oneplus/VibratorHW;->getMaxIntensity()I

    move-result v0

    return v0
.end method

.method public static getMaxIntensity()I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oneplus/VibratorHW;->MAX_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMinIntensity()I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/oneplus/VibratorHW;->MIN_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getWarningThreshold()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    return v0
.end method

.method public static setIntensity(I)Z
    .locals 2
    .param p0, "intensity"    # I

    .prologue
    .line 72
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/oneplus/VibratorHW;->LEVEL_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/oneplus/FileUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
