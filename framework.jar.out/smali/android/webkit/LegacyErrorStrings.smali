.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .locals 4
    .param p0, "errorCode"    # I

    .prologue
    const v0, 0x104017e

    .line 46
    packed-switch p0, :pswitch_data_0

    .line 96
    const-string v1, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using generic message for unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    :pswitch_0
    return v0

    .line 48
    :pswitch_1
    const v0, 0x104017d

    goto :goto_0

    .line 54
    :pswitch_2
    const v0, 0x104017f

    goto :goto_0

    .line 57
    :pswitch_3
    const v0, 0x1040180

    goto :goto_0

    .line 60
    :pswitch_4
    const v0, 0x1040181

    goto :goto_0

    .line 63
    :pswitch_5
    const v0, 0x1040182

    goto :goto_0

    .line 66
    :pswitch_6
    const v0, 0x1040183

    goto :goto_0

    .line 69
    :pswitch_7
    const v0, 0x1040184

    goto :goto_0

    .line 72
    :pswitch_8
    const v0, 0x1040185

    goto :goto_0

    .line 75
    :pswitch_9
    const v0, 0x1040186

    goto :goto_0

    .line 78
    :pswitch_a
    const v0, 0x1040008

    goto :goto_0

    .line 81
    :pswitch_b
    const v0, 0x1040187

    goto :goto_0

    .line 84
    :pswitch_c
    const v0, 0x1040007

    goto :goto_0

    .line 87
    :pswitch_d
    const v0, 0x1040188

    goto :goto_0

    .line 90
    :pswitch_e
    const v0, 0x1040189

    goto :goto_0

    .line 93
    :pswitch_f
    const v0, 0x104018a

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
