.class public final Lcom/android/internal/telephony/uicc/RuimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "RuimFileHandler.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RuimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 58
    sparse-switch p1, :sswitch_data_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 71
    :sswitch_0
    const-string v0, "3F007F25"

    goto :goto_0

    .line 74
    :sswitch_1
    const-string v0, "3F007F105F3C"

    goto :goto_0

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x4f20 -> :sswitch_1
        0x4f21 -> :sswitch_1
        0x6f22 -> :sswitch_0
        0x6f28 -> :sswitch_0
        0x6f30 -> :sswitch_0
        0x6f31 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f3a -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f41 -> :sswitch_0
        0x6f44 -> :sswitch_0
        0x6f5a -> :sswitch_0
        0x6f81 -> :sswitch_0
        0x6f90 -> :sswitch_0
    .end sparse-switch
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 42
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 51
    .local v11, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc0

    const/16 v3, 0x4f20

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 54
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "RuimFH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "RuimFH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
