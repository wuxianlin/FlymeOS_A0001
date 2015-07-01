.class public Landroid/provider/oppo/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/oppo/CallLog$Calls;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "call_log"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static isMtkGeminiSupport:Z

.field private static isMtkSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "content://call_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oppo/CallLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Landroid/provider/oppo/CallLog;->isMtkSupport:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Landroid/provider/oppo/CallLog;->isMtkSupport:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Landroid/provider/oppo/CallLog;->isMtkGeminiSupport:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Landroid/provider/oppo/CallLog;->isMtkGeminiSupport:Z

    return p0
.end method
