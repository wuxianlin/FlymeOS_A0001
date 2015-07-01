.class public Lcom/oneplus/KeyDisabler;
.super Ljava/lang/Object;
.source "KeyDisabler.java"


# static fields
.field private static CONTROL_PATH:Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyDisabler"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "/proc/touchpanel/keypad_enable"

    sput-object v0, Lcom/oneplus/KeyDisabler;->CONTROL_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActive()Z
    .locals 2

    .prologue
    .line 42
    sget-object v1, Lcom/oneplus/KeyDisabler;->CONTROL_PATH:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "node":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 44
    :goto_0
    return v1

    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static setActive(Z)Z
    .locals 2
    .param p0, "state"    # Z

    .prologue
    .line 54
    if-eqz p0, :cond_0

    const-string v0, "0"

    .line 57
    .local v0, "value":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/oneplus/KeyDisabler;->CONTROL_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/oneplus/FileUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 54
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method
