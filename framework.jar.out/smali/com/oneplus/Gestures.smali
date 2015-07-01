.class public Lcom/oneplus/Gestures;
.super Ljava/lang/Object;
.source "Gestures.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "Gestures"

.field public static final TOUCHSCREEN_CAMERA_NODE:Ljava/lang/String; = "/proc/touchpanel/camera_enable"

.field public static final TOUCHSCREEN_DOUBLE_TAP_NODE:Ljava/lang/String; = "/proc/touchpanel/double_tap_enable"

.field public static final TOUCHSCREEN_FLASHLIGHT_NODE:Ljava/lang/String; = "/proc/touchpanel/flashlight_enable"

.field public static final TOUCHSCREEN_MUSIC_NODE:Ljava/lang/String; = "/proc/touchpanel/music_enable"

.field private static final sGesturesNodes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/proc/touchpanel/camera_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/proc/touchpanel/music_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/proc/touchpanel/flashlight_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/proc/touchpanel/double_tap_enable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/Gestures;->sGesturesNodes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p0, "node"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v2, Lcom/oneplus/Gestures;->sGesturesNodes:[Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/oneplus/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "currentNode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static setEnabled(ZLjava/lang/String;)Z
    .locals 2
    .param p0, "state"    # Z
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    const-string v0, "1"

    .line 79
    .local v0, "value":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/oneplus/Gestures;->sGesturesNodes:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const/4 v1, 0x0

    .line 87
    :goto_1
    return v1

    .line 77
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 87
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {p1, v0}, Lcom/oneplus/FileUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method
