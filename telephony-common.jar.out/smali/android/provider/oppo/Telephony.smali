.class public final Landroid/provider/oppo/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/oppo/Telephony$ScrapSpace;,
        Landroid/provider/oppo/Telephony$CbSms;,
        Landroid/provider/oppo/Telephony$TextBasedCbSmsColumns;,
        Landroid/provider/oppo/Telephony$WapPush;,
        Landroid/provider/oppo/Telephony$GPRSInfo;,
        Landroid/provider/oppo/Telephony$GprsInfo;,
        Landroid/provider/oppo/Telephony$SIMInfo;,
        Landroid/provider/oppo/Telephony$SimInfo;,
        Landroid/provider/oppo/Telephony$Intents;,
        Landroid/provider/oppo/Telephony$CellBroadcasts;,
        Landroid/provider/oppo/Telephony$Carriers;,
        Landroid/provider/oppo/Telephony$MmsSms;,
        Landroid/provider/oppo/Telephony$Mms;,
        Landroid/provider/oppo/Telephony$Threads;,
        Landroid/provider/oppo/Telephony$ThreadsColumns;,
        Landroid/provider/oppo/Telephony$CanonicalAddressesColumns;,
        Landroid/provider/oppo/Telephony$BaseMmsColumns;,
        Landroid/provider/oppo/Telephony$Sms;,
        Landroid/provider/oppo/Telephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field private static final OPPO_LONG_4600:I = 0x0

.field public static final SIMBackgroundRes:[I

.field private static final TAG:Ljava/lang/String; = "Telephony"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3511
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/provider/oppo/Telephony;->SIMBackgroundRes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method
