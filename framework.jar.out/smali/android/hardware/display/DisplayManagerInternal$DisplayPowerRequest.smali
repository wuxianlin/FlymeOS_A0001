.class public final Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPowerRequest"
.end annotation


# static fields
.field public static final POLICY_BRIGHT:I = 0x3

.field public static final POLICY_DIM:I = 0x2

.field public static final POLICY_DOZE:I = 0x1

.field public static final POLICY_OFF:I


# instance fields
.field public blockScreenOn:Z

.field public dozeScreenBrightness:I

.field public dozeScreenState:I

.field public lowPowerMode:Z

.field public policy:I

.field public screenAutoBrightnessAdjustment:F

.field public screenBrightness:I

.field public useAutoBrightness:Z

.field public useProximitySensor:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 194
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 195
    const/16 v0, 0xff

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 197
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 198
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 200
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 0
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 205
    return-void
.end method

.method public static policyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "policy"    # I

    .prologue
    .line 261
    packed-switch p0, :pswitch_data_0

    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 263
    :pswitch_0
    const-string v0, "OFF"

    goto :goto_0

    .line 265
    :pswitch_1
    const-string v0, "DOZE"

    goto :goto_0

    .line 267
    :pswitch_2
    const-string v0, "DIM"

    goto :goto_0

    .line 269
    :pswitch_3
    const-string v0, "BRIGHT"

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 1
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    .line 212
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 213
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 214
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 215
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 216
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 217
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    .line 218
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 219
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 220
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 221
    return-void
.end method

.method public equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 225
    instance-of v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public isBrightOrDim()Z
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
