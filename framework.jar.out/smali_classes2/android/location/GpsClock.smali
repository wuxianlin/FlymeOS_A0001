.class public Landroid/location/GpsClock;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:S = 0x8s

.field private static final HAS_BIAS_UNCERTAINTY:S = 0x10s

.field private static final HAS_DRIFT:S = 0x20s

.field private static final HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field private static final HAS_FULL_BIAS:S = 0x4s

.field private static final HAS_LEAP_SECOND:S = 0x1s

.field private static final HAS_NO_FLAGS:S = 0x0s

.field private static final HAS_TIME_UNCERTAINTY:S = 0x2s

.field private static final TAG:Ljava/lang/String; = "GpsClock"

.field public static final TYPE_GPS_TIME:B = 0x2t

.field public static final TYPE_LOCAL_HW_TIME:B = 0x1t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mBiasInNs:D

.field private mBiasUncertaintyInNs:D

.field private mDriftInNsPerSec:D

.field private mDriftUncertaintyInNsPerSec:D

.field private mFlags:S

.field private mFullBiasInNs:J

.field private mLeapSecond:S

.field private mTimeInNs:J

.field private mTimeUncertaintyInNs:D

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    new-instance v0, Landroid/location/GpsClock$1;

    invoke-direct {v0}, Landroid/location/GpsClock$1;-><init>()V

    sput-object v0, Landroid/location/GpsClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    .line 74
    return-void
.end method

.method static synthetic access$002(Landroid/location/GpsClock;S)S
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # S

    .prologue
    .line 29
    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return p1
.end method

.method static synthetic access$102(Landroid/location/GpsClock;S)S
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # S

    .prologue
    .line 29
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return p1
.end method

.method static synthetic access$202(Landroid/location/GpsClock;B)B
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # B

    .prologue
    .line 29
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return p1
.end method

.method static synthetic access$302(Landroid/location/GpsClock;J)J
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/GpsClock;D)D
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GpsClock;J)J
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GpsClock;D)D
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GpsClock;D)D
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GpsClock;D)D
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GpsClock;D)D
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide p1
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    packed-switch v0, :pswitch_data_0

    .line 136
    const-string v0, "<Invalid>"

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, "GpsTime"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "LocalHwClock"

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 490
    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 491
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetLeapSecond()V

    .line 492
    invoke-virtual {p0, v0}, Landroid/location/GpsClock;->setType(B)V

    .line 493
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsClock;->setTimeInNs(J)V

    .line 494
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetTimeUncertaintyInNs()V

    .line 495
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasInNs()V

    .line 496
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasUncertaintyInNs()V

    .line 497
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftInNsPerSec()V

    .line 498
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftUncertaintyInNsPerSec()V

    .line 499
    return-void
.end method

.method private isFlagSet(S)Z
    .locals 1
    .param p1, "flag"    # S

    .prologue
    .line 510
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetFlag(S)V
    .locals 2
    .param p1, "flag"    # S

    .prologue
    .line 506
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 507
    return-void
.end method

.method private setFlag(S)V
    .locals 1
    .param p1, "flag"    # S

    .prologue
    .line 502
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    or-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 503
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public getBiasInNs()D
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide v0
.end method

.method public getBiasUncertaintyInNs()D
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide v0
.end method

.method public getDriftInNsPerSec()D
    .locals 2

    .prologue
    .line 356
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide v0
.end method

.method public getDriftUncertaintyInNsPerSec()D
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide v0
.end method

.method public getFullBiasInNs()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide v0
.end method

.method public getLeapSecond()S
    .locals 1

    .prologue
    .line 155
    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return v0
.end method

.method public getTimeInNs()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide v0
.end method

.method public getTimeUncertaintyInNs()D
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 103
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    return v0
.end method

.method public hasBiasInNs()Z
    .locals 1

    .prologue
    .line 280
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyInNs()Z
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftInNsPerSec()Z
    .locals 1

    .prologue
    .line 345
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyInNsPerSec()Z
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasInNs()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyInNs()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    .line 97
    return-void
.end method

.method public resetBiasInNs()V
    .locals 2

    .prologue
    .line 305
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 306
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 307
    return-void
.end method

.method public resetBiasUncertaintyInNs()V
    .locals 2

    .prologue
    .line 337
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 338
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 339
    return-void
.end method

.method public resetDriftInNsPerSec()V
    .locals 2

    .prologue
    .line 371
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 372
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 373
    return-void
.end method

.method public resetDriftUncertaintyInNsPerSec()V
    .locals 2

    .prologue
    .line 403
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 404
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 405
    return-void
.end method

.method public resetFullBiasInNs()V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 273
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 274
    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 171
    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 172
    return-void
.end method

.method public resetTimeUncertaintyInNs()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 232
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 233
    return-void
.end method

.method public set(Landroid/location/GpsClock;)V
    .locals 2
    .param p1, "clock"    # Landroid/location/GpsClock;

    .prologue
    .line 80
    iget-short v0, p1, Landroid/location/GpsClock;->mFlags:S

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 81
    iget-short v0, p1, Landroid/location/GpsClock;->mLeapSecond:S

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 82
    iget-byte v0, p1, Landroid/location/GpsClock;->mType:B

    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    .line 83
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 84
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 85
    iget-wide v0, p1, Landroid/location/GpsClock;->mFullBiasInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 86
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 87
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 88
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 89
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 90
    return-void
.end method

.method public setBiasInNs(D)V
    .locals 1
    .param p1, "biasInNs"    # D

    .prologue
    .line 297
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 298
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 299
    return-void
.end method

.method public setBiasUncertaintyInNs(D)V
    .locals 1
    .param p1, "biasUncertaintyInNs"    # D

    .prologue
    .line 329
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 330
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 331
    return-void
.end method

.method public setDriftInNsPerSec(D)V
    .locals 1
    .param p1, "driftInNsPerSec"    # D

    .prologue
    .line 363
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 364
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 365
    return-void
.end method

.method public setDriftUncertaintyInNsPerSec(D)V
    .locals 1
    .param p1, "driftUncertaintyInNsPerSec"    # D

    .prologue
    .line 395
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 396
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 397
    return-void
.end method

.method public setFullBiasInNs(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 264
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 265
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 266
    return-void
.end method

.method public setLeapSecond(S)V
    .locals 1
    .param p1, "leapSecond"    # S

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 163
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 164
    return-void
.end method

.method public setTimeInNs(J)V
    .locals 1
    .param p1, "timeInNs"    # J

    .prologue
    .line 199
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 200
    return-void
.end method

.method public setTimeUncertaintyInNs(D)V
    .locals 1
    .param p1, "timeUncertaintyInNs"    # D

    .prologue
    .line 223
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 224
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 225
    return-void
.end method

.method public setType(B)V
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 117
    const-string v0, "GpsClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitizing invalid \'type\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    .line 121
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 452
    const-string v1, "   %-15s = %s\n"

    .line 453
    .local v1, "format":Ljava/lang/String;
    const-string v2, "   %-15s = %-25s   %-26s = %s\n"

    .line 454
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "GpsClock:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "   %-15s = %s\n"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "Type"

    aput-object v6, v5, v7

    invoke-direct {p0}, Landroid/location/GpsClock;->getTypeString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v5, "   %-15s = %s\n"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v3, "LeapSecond"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasLeapSecond()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-short v3, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    :goto_0
    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "TimeInNs"

    aput-object v3, v6, v7

    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v10

    const-string v3, "TimeUncertaintyInNs"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasTimeUncertaintyInNs()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1
    aput-object v3, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v5, "   %-15s = %s\n"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v3, "FullBiasInNs"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasFullBiasInNs()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v8, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "BiasInNs"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasInNs()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v8, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_3
    aput-object v3, v6, v10

    const-string v3, "BiasUncertaintyInNs"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasUncertaintyInNs()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v8, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_4
    aput-object v3, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "DriftInNsPerSec"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftInNsPerSec()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v8, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_5
    aput-object v3, v6, v10

    const-string v3, "DriftUncertaintyInNsPerSec"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftUncertaintyInNsPerSec()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v8, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_0
    aput-object v4, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    move-object v3, v4

    .line 458
    goto/16 :goto_0

    :cond_2
    move-object v3, v4

    .line 460
    goto/16 :goto_1

    :cond_3
    move-object v3, v4

    .line 467
    goto :goto_2

    :cond_4
    move-object v3, v4

    .line 472
    goto :goto_3

    :cond_5
    move-object v3, v4

    goto :goto_4

    :cond_6
    move-object v3, v4

    .line 479
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 433
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 436
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 437
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 438
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 439
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 440
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 441
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 442
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 443
    return-void
.end method
