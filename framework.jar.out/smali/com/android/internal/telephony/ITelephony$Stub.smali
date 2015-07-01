.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x5

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x63

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x26

.field static final TRANSACTION_disableLocationUpdates:I = 0x23

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x24

.field static final TRANSACTION_enableDataConnectivity:I = 0x25

.field static final TRANSACTION_enableLocationUpdates:I = 0x21

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x22

.field static final TRANSACTION_enableSimplifiedNetworkSettingsForSubscriber:I = 0x65

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_getActivePhoneType:I = 0x2f

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x30

.field static final TRANSACTION_getAllCellInfo:I = 0x45

.field static final TRANSACTION_getAllCellInfoUsingSubId:I = 0x46

.field static final TRANSACTION_getAtr:I = 0x6c

.field static final TRANSACTION_getAtrUsingSubId:I = 0x6d

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x58

.field static final TRANSACTION_getCallState:I = 0x2b

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x2c

.field static final TRANSACTION_getCarrierPackageNamesForIntent:I = 0x64

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x31

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x32

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x33

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x34

.field static final TRANSACTION_getCdmaEriText:I = 0x35

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x36

.field static final TRANSACTION_getCdmaMdn:I = 0x60

.field static final TRANSACTION_getCdmaMin:I = 0x61

.field static final TRANSACTION_getCellLocation:I = 0x29

.field static final TRANSACTION_getDataActivity:I = 0x2d

.field static final TRANSACTION_getDataEnabled:I = 0x5d

.field static final TRANSACTION_getDataNetworkType:I = 0x3c

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x3d

.field static final TRANSACTION_getDataState:I = 0x2e

.field static final TRANSACTION_getDefaultSim:I = 0x48

.field static final TRANSACTION_getIccOperatorNumeric:I = 0x40

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x69

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x68

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x43

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x44

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2a

.field static final TRANSACTION_getNetworkType:I = 0x3a

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3b

.field static final TRANSACTION_getPcscfAddress:I = 0x5e

.field static final TRANSACTION_getPreferredNetworkType:I = 0x59

.field static final TRANSACTION_getSimplifiedNetworkSettingsEnabledForSubscriber:I = 0x66

.field static final TRANSACTION_getVoiceMessageCount:I = 0x38

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x39

.field static final TRANSACTION_getVoiceNetworkType:I = 0x3e

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x3f

.field static final TRANSACTION_handlePinMmi:I = 0x18

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x19

.field static final TRANSACTION_hasCarrierPrivileges:I = 0x62

.field static final TRANSACTION_hasIccCard:I = 0x41

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x42

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4b

.field static final TRANSACTION_iccCloseLogicalChannelUsingSubId:I = 0x4c

.field static final TRANSACTION_iccExchangeSimIO:I = 0x51

.field static final TRANSACTION_iccExchangeSimIOUsingSubId:I = 0x52

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x49

.field static final TRANSACTION_iccOpenLogicalChannelUsingSubId:I = 0x4a

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4f

.field static final TRANSACTION_iccTransmitApduBasicChannelUsingSubId:I = 0x50

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4d

.field static final TRANSACTION_iccTransmitApduLogicalChannelUsingSubId:I = 0x4e

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x6b

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x27

.field static final TRANSACTION_isDataPossibleForSubscription:I = 0x28

.field static final TRANSACTION_isIdle:I = 0xb

.field static final TRANSACTION_isIdleForSubscriber:I = 0xc

.field static final TRANSACTION_isOffhook:I = 0x7

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xd

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xe

.field static final TRANSACTION_isRinging:I = 0xa

.field static final TRANSACTION_isRingingForSubscriber:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xf

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x6e

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x37

.field static final TRANSACTION_nvReadItem:I = 0x54

.field static final TRANSACTION_nvResetConfig:I = 0x57

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x56

.field static final TRANSACTION_nvWriteItem:I = 0x55

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x53

.field static final TRANSACTION_setCellInfoListRate:I = 0x47

.field static final TRANSACTION_setDataEnabled:I = 0x5b

.field static final TRANSACTION_setDataEnabledUsingSubId:I = 0x5c

.field static final TRANSACTION_setImsRegistrationState:I = 0x5f

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x67

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x6a

.field static final TRANSACTION_setPreferredNetworkType:I = 0x5a

.field static final TRANSACTION_setRadio:I = 0x1c

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1d

.field static final TRANSACTION_setRadioPower:I = 0x1e

.field static final TRANSACTION_shutdownMobileRadios:I = 0x6f

.field static final TRANSACTION_silenceRinger:I = 0x6

.field static final TRANSACTION_supplyPin:I = 0x10

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x11

.field static final TRANSACTION_supplyPinReportResult:I = 0x14

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x15

.field static final TRANSACTION_supplyPuk:I = 0x12

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x13

.field static final TRANSACTION_supplyPukReportResult:I = 0x16

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x17

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1a

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1b

.field static final TRANSACTION_updateServiceLocation:I = 0x1f

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 1206
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v2, 0x1

    goto :goto_0

    .line 74
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v21

    .line 76
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v21, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 82
    .end local v21    # "_result":Z
    :sswitch_4
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 85
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(J)Z

    move-result v21

    .line 86
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v21, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 92
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_5
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 99
    :sswitch_6
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 106
    :sswitch_7
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v21

    .line 108
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v21, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 109
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 114
    .end local v21    # "_result":Z
    :sswitch_8
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 117
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(J)Z

    move-result v21

    .line 118
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v21, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 119
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 124
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_9
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 127
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(J)Z

    move-result v21

    .line 128
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v21, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 129
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 134
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v21

    .line 136
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v21, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 137
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 142
    .end local v21    # "_result":Z
    :sswitch_b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v21

    .line 144
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v21, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 145
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 150
    .end local v21    # "_result":Z
    :sswitch_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 153
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(J)Z

    move-result v21

    .line 154
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v21, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 155
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 160
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v21

    .line 162
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v21, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 163
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 168
    .end local v21    # "_result":Z
    :sswitch_e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 171
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(J)Z

    move-result v21

    .line 172
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v21, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 173
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 178
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v21

    .line 180
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v21, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 181
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 186
    .end local v21    # "_result":Z
    :sswitch_10
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v21

    .line 190
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v21, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 191
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 196
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_11
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 200
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 201
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(JLjava/lang/String;)Z

    move-result v21

    .line 202
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v21, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 203
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 208
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_12
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 214
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v21, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 215
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 220
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_13
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 224
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 226
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 228
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v21, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 229
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 234
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_14
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v21

    .line 238
    .local v21, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 244
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":[I
    :sswitch_15
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 248
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(JLjava/lang/String;)[I

    move-result-object v21

    .line 250
    .restart local v21    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 256
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":[I
    :sswitch_16
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 260
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 261
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v21

    .line 262
    .restart local v21    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 264
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 268
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":[I
    :sswitch_17
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 272
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(JLjava/lang/String;Ljava/lang/String;)[I

    move-result-object v21

    .line 276
    .restart local v21    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 278
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 282
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":[I
    :sswitch_18
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v21

    .line 286
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v21, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 287
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 292
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_19
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 296
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 297
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(JLjava/lang/String;)Z

    move-result v21

    .line 298
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v21, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 299
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 304
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_1a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 311
    :sswitch_1b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 314
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(J)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 320
    .end local v12    # "_arg0":J
    :sswitch_1c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    .line 323
    .local v3, "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v21

    .line 324
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v21, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 322
    .end local v3    # "_arg0":Z
    .end local v21    # "_result":Z
    :cond_11
    const/4 v3, 0x0

    goto :goto_12

    .line 325
    .restart local v3    # "_arg0":Z
    .restart local v21    # "_result":Z
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 330
    .end local v3    # "_arg0":Z
    .end local v21    # "_result":Z
    :sswitch_1d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 334
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v4, 0x1

    .line 335
    .local v4, "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(JZ)Z

    move-result v21

    .line 336
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v21, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 334
    .end local v4    # "_arg1":Z
    .end local v21    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 337
    .restart local v4    # "_arg1":Z
    .restart local v21    # "_result":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 342
    .end local v4    # "_arg1":Z
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_1e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v3, 0x1

    .line 345
    .restart local v3    # "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v21

    .line 346
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v21, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 344
    .end local v3    # "_arg0":Z
    .end local v21    # "_result":Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 347
    .restart local v3    # "_arg0":Z
    .restart local v21    # "_result":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 352
    .end local v3    # "_arg0":Z
    .end local v21    # "_result":Z
    :sswitch_1f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 359
    :sswitch_20
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 362
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(J)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 368
    .end local v12    # "_arg0":J
    :sswitch_21
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 375
    :sswitch_22
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 378
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(J)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 384
    .end local v12    # "_arg0":J
    :sswitch_23
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 391
    :sswitch_24
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 394
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(J)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 400
    .end local v12    # "_arg0":J
    :sswitch_25
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v21

    .line 402
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v21, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 403
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 408
    .end local v21    # "_result":Z
    :sswitch_26
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v21

    .line 410
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v21, :cond_18

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 411
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 416
    .end local v21    # "_result":Z
    :sswitch_27
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v21

    .line 418
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v21, :cond_19

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 419
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 424
    .end local v21    # "_result":Z
    :sswitch_28
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 428
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataPossibleForSubscription(JLjava/lang/String;)Z

    move-result v21

    .line 430
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v21, :cond_1a

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 431
    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .line 436
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_29
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v21

    .line 438
    .local v21, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    if-eqz v21, :cond_1b

    .line 440
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 446
    :goto_1c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 444
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 450
    .end local v21    # "_result":Landroid/os/Bundle;
    :sswitch_2a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 454
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 456
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 460
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v21

    .line 462
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 468
    .end local v21    # "_result":I
    :sswitch_2c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 471
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscriber(J)I

    move-result v21

    .line 472
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 478
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_2d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v21

    .line 480
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 486
    .end local v21    # "_result":I
    :sswitch_2e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v21

    .line 488
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 494
    .end local v21    # "_result":I
    :sswitch_2f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v21

    .line 496
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 502
    .end local v21    # "_result":I
    :sswitch_30
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 505
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSubscriber(J)I

    move-result v21

    .line 506
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 512
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_31
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v21

    .line 514
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 520
    .end local v21    # "_result":I
    :sswitch_32
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 523
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(J)I

    move-result v21

    .line 524
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 530
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_33
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v21

    .line 532
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 538
    .end local v21    # "_result":I
    :sswitch_34
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 541
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(J)I

    move-result v21

    .line 542
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 548
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_35
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v21

    .line 550
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 556
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 559
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(J)Ljava/lang/String;

    move-result-object v21

    .line 560
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 566
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v21

    .line 568
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v21, :cond_1c

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 569
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 574
    .end local v21    # "_result":Z
    :sswitch_38
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v21

    .line 576
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 582
    .end local v21    # "_result":I
    :sswitch_39
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 585
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(J)I

    move-result v21

    .line 586
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 592
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_3a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v21

    .line 594
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 600
    .end local v21    # "_result":I
    :sswitch_3b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 603
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(J)I

    move-result v21

    .line 604
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 610
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_3c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType()I

    move-result v21

    .line 612
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 618
    .end local v21    # "_result":I
    :sswitch_3d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 621
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(J)I

    move-result v21

    .line 622
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 628
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_3e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkType()I

    move-result v21

    .line 630
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 636
    .end local v21    # "_result":I
    :sswitch_3f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 639
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(J)I

    move-result v21

    .line 640
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 646
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_40
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 649
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccOperatorNumeric(J)Ljava/lang/String;

    move-result-object v21

    .line 650
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 652
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 656
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v21

    .line 658
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v21, :cond_1d

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 659
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1e

    .line 664
    .end local v21    # "_result":Z
    :sswitch_42
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 667
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    move-result v21

    .line 668
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v21, :cond_1e

    const/4 v2, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 669
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1f

    .line 674
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_43
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v21

    .line 676
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 682
    .end local v21    # "_result":I
    :sswitch_44
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 685
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(J)I

    move-result v21

    .line 686
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 692
    .end local v12    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_45
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v22

    .line 694
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 696
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 700
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_46
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 703
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfoUsingSubId(J)Ljava/util/List;

    move-result-object v22

    .line 704
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 706
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 710
    .end local v12    # "_arg0":J
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_47
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 713
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 719
    .end local v3    # "_arg0":I
    :sswitch_48
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v21

    .line 721
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 727
    .end local v21    # "_result":I
    :sswitch_49
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v21

    .line 731
    .local v21, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    if-eqz v21, :cond_1f

    .line 733
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 739
    :goto_20
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 737
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 743
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 747
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 748
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelUsingSubId(JLjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v21

    .line 749
    .restart local v21    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v21, :cond_20

    .line 751
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 757
    :goto_21
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 755
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 761
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 764
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(I)Z

    move-result v21

    .line 765
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    if-eqz v21, :cond_21

    const/4 v2, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 766
    :cond_21
    const/4 v2, 0x0

    goto :goto_22

    .line 771
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_4c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 775
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 776
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannelUsingSubId(JI)Z

    move-result v21

    .line 777
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    if-eqz v21, :cond_22

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 778
    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .line 783
    .end local v4    # "_arg1":I
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_4d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 787
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 789
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 791
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 793
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 795
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 797
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg6":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 798
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 799
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 801
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 805
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 809
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 811
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 813
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 815
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 817
    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 819
    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 821
    .local v9, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg7":Ljava/lang/String;
    move-object/from16 v11, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    .line 822
    invoke-virtual/range {v11 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelUsingSubId(JIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 823
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 829
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v12    # "_arg0":J
    .end local v20    # "_arg7":Ljava/lang/String;
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 833
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 835
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 837
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 839
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 841
    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 842
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 843
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 845
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 849
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 853
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 855
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 857
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 859
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 861
    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 863
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg6":Ljava/lang/String;
    move-object/from16 v11, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    .line 864
    invoke-virtual/range {v11 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelUsingSubId(JIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 865
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 871
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 875
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 877
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 879
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 881
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 883
    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 884
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v21

    .line 885
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 887
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 891
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v21    # "_result":[B
    :sswitch_52
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 895
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 897
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 899
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 901
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 903
    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 905
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg6":Ljava/lang/String;
    move-object/from16 v11, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    .line 906
    invoke-virtual/range {v11 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIOUsingSubId(JIIIIILjava/lang/String;)[B

    move-result-object v21

    .line 907
    .restart local v21    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 909
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 913
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg0":J
    .end local v21    # "_result":[B
    :sswitch_53
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 916
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 917
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 923
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_54
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 926
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v21

    .line 927
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 929
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 933
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_55
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 937
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 938
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v21

    .line 939
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    if-eqz v21, :cond_23

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 940
    :cond_23
    const/4 v2, 0x0

    goto :goto_24

    .line 945
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_56
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 948
    .local v3, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v21

    .line 949
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    if-eqz v21, :cond_24

    const/4 v2, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 950
    :cond_24
    const/4 v2, 0x0

    goto :goto_25

    .line 955
    .end local v3    # "_arg0":[B
    .end local v21    # "_result":Z
    :sswitch_57
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 958
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v21

    .line 959
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    if-eqz v21, :cond_25

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 960
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .line 965
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_58
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType()I

    move-result v21

    .line 967
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 973
    .end local v21    # "_result":I
    :sswitch_59
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType()I

    move-result v21

    .line 975
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 981
    .end local v21    # "_result":I
    :sswitch_5a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 984
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(I)Z

    move-result v21

    .line 985
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    if-eqz v21, :cond_26

    const/4 v2, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 986
    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .line 991
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_5b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    const/4 v3, 0x1

    .line 994
    .local v3, "_arg0":Z
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(Z)V

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 993
    .end local v3    # "_arg0":Z
    :cond_27
    const/4 v3, 0x0

    goto :goto_28

    .line 1000
    :sswitch_5c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1004
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    const/4 v4, 0x1

    .line 1005
    .local v4, "_arg1":Z
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabledUsingSubId(JZ)V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v4    # "_arg1":Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_29

    .line 1011
    .end local v12    # "_arg0":J
    :sswitch_5d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled()Z

    move-result v21

    .line 1013
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    if-eqz v21, :cond_29

    const/4 v2, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1014
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .line 1019
    .end local v21    # "_result":Z
    :sswitch_5e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1023
    .local v21, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1025
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1029
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":[Ljava/lang/String;
    :sswitch_5f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v3, 0x1

    .line 1032
    .local v3, "_arg0":Z
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 1033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v3    # "_arg0":Z
    :cond_2a
    const/4 v3, 0x0

    goto :goto_2b

    .line 1038
    :sswitch_60
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1041
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(J)Ljava/lang/String;

    move-result-object v21

    .line 1042
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1044
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1048
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_61
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1051
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(J)Ljava/lang/String;

    move-result-object v21

    .line 1052
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1054
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1058
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_62
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasCarrierPrivileges()I

    move-result v21

    .line 1060
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1066
    .end local v21    # "_result":I
    :sswitch_63
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v21

    .line 1070
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":I
    :sswitch_64
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 1079
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1084
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v24

    .line 1085
    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1087
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1082
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_2c

    .line 1091
    .end local v3    # "_arg0":Landroid/content/Intent;
    :sswitch_65
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1095
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v4, 0x1

    .line 1096
    .restart local v4    # "_arg1":Z
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->enableSimplifiedNetworkSettingsForSubscriber(JZ)V

    .line 1097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1095
    .end local v4    # "_arg1":Z
    :cond_2c
    const/4 v4, 0x0

    goto :goto_2d

    .line 1102
    .end local v12    # "_arg0":J
    :sswitch_66
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1105
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z

    move-result v21

    .line 1106
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    if-eqz v21, :cond_2d

    const/4 v2, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1107
    :cond_2d
    const/4 v2, 0x0

    goto :goto_2e

    .line 1112
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_67
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1116
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1118
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1119
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1125
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg0":J
    :sswitch_68
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1128
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(J)Ljava/lang/String;

    move-result-object v21

    .line 1129
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1131
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1135
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1138
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(J)Ljava/lang/String;

    move-result-object v21

    .line 1139
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1141
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v12    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1148
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v21

    .line 1149
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    if-eqz v21, :cond_2e

    const/4 v2, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1150
    :cond_2e
    const/4 v2, 0x0

    goto :goto_2f

    .line 1155
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_6b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1159
    .local v3, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1160
    .local v10, "_arg1_length":I
    if-gez v10, :cond_2f

    .line 1161
    const/4 v4, 0x0

    .line 1166
    .local v4, "_arg1":[B
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v21

    .line 1167
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1170
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1164
    .end local v4    # "_arg1":[B
    .end local v21    # "_result":I
    :cond_2f
    new-array v4, v10, [B

    .restart local v4    # "_arg1":[B
    goto :goto_30

    .line 1174
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":[B
    .end local v10    # "_arg1_length":I
    :sswitch_6c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v21

    .line 1176
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1178
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v21    # "_result":[B
    :sswitch_6d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 1185
    .restart local v12    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtrUsingSubId(J)[B

    move-result-object v21

    .line 1186
    .restart local v21    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1188
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1192
    .end local v12    # "_arg0":J
    .end local v21    # "_result":[B
    :sswitch_6e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v21

    .line 1194
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    if-eqz v21, :cond_30

    const/4 v2, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1195
    :cond_30
    const/4 v2, 0x0

    goto :goto_31

    .line 1200
    .end local v21    # "_result":Z
    :sswitch_6f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 1202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
