.class Lcom/android/internal/telephony/cat/PlayToneParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "tone"    # Lcom/android/internal/telephony/cat/Tone;
    .param p4, "duration"    # Lcom/android/internal/telephony/cat/Duration;
    .param p5, "vibrate"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 102
    iput-object p2, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-direct {v0, p4, p3, p5}, Lcom/android/internal/telephony/cat/ToneSettings;-><init>(Lcom/android/internal/telephony/cat/Duration;Lcom/android/internal/telephony/cat/Tone;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 104
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
