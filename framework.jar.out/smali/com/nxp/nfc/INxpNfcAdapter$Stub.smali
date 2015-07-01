.class public abstract Lcom/nxp/nfc/INxpNfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INxpNfcAdapter.java"

# interfaces
.implements Lcom/nxp/nfc/INxpNfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/INxpNfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.nfc.INxpNfcAdapter"

.field static final TRANSACTION_DefaultRouteSet:I = 0xd

.field static final TRANSACTION_MifareCLTRouteSet:I = 0xe

.field static final TRANSACTION_MifareDesfireRouteSet:I = 0xc

.field static final TRANSACTION_deselectSecureElement:I = 0x9

.field static final TRANSACTION_getNfcAccessExtrasInterface:I = 0x1

.field static final TRANSACTION_getNfcAlaInterface:I = 0x2

.field static final TRANSACTION_getNfcDtaInterface:I = 0x3

.field static final TRANSACTION_getNfcVzwInterface:I = 0x4

.field static final TRANSACTION_getNxpNfcAdapterExtrasInterface:I = 0x5

.field static final TRANSACTION_getSecureElementList:I = 0x6

.field static final TRANSACTION_getSelectedSecureElement:I = 0x7

.field static final TRANSACTION_selectSecureElement:I = 0x8

.field static final TRANSACTION_setEmvCoPollProfile:I = 0xb

.field static final TRANSACTION_storeSePreference:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.nxp.nfc.INxpNfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcAccessExtrasInterface(Ljava/lang/String;)Lcom/nxp/nfc/INfcAccessExtras;

    move-result-object v4

    .line 54
    .local v4, "_result":Lcom/nxp/nfc/INfcAccessExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/nxp/nfc/INfcAccessExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/nxp/nfc/INfcAccessExtras;
    :sswitch_2
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcAlaInterface()Lcom/nxp/nfc/INfcAla;

    move-result-object v4

    .line 62
    .local v4, "_result":Lcom/nxp/nfc/INfcAla;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/nxp/nfc/INfcAla;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 68
    .end local v4    # "_result":Lcom/nxp/nfc/INfcAla;
    :sswitch_3
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcDtaInterface()Lcom/nxp/nfc/INfcDta;

    move-result-object v4

    .line 70
    .local v4, "_result":Lcom/nxp/nfc/INfcDta;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/nxp/nfc/INfcDta;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 76
    .end local v4    # "_result":Lcom/nxp/nfc/INfcDta;
    :sswitch_4
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcVzwInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v4

    .line 78
    .local v4, "_result":Lcom/nxp/nfc/INfcVzw;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/nxp/nfc/INfcVzw;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 84
    .end local v4    # "_result":Lcom/nxp/nfc/INfcVzw;
    :sswitch_5
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNxpNfcAdapterExtrasInterface()Lcom/nxp/nfc/INxpNfcAdapterExtras;

    move-result-object v4

    .line 86
    .local v4, "_result":Lcom/nxp/nfc/INxpNfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/nxp/nfc/INxpNfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 92
    .end local v4    # "_result":Lcom/nxp/nfc/INxpNfcAdapterExtras;
    :sswitch_6
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v4

    .line 96
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 102
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[I
    :sswitch_7
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v4

    .line 106
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_8
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->selectSecureElement(Ljava/lang/String;I)I

    move-result v4

    .line 118
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_9
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->deselectSecureElement(Ljava/lang/String;)I

    move-result v4

    .line 128
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_a
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->storeSePreference(I)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v6

    .line 147
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->setEmvCoPollProfile(ZI)I

    move-result v4

    .line 149
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :cond_5
    move v0, v7

    .line 145
    goto :goto_1

    .line 155
    :sswitch_c
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v1, v6

    .line 161
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v2, v6

    .line 163
    .local v2, "_arg2":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v3, v6

    .line 164
    .local v3, "_arg3":Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->MifareDesfireRouteSet(IZZZ)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_6
    move v1, v7

    .line 159
    goto :goto_2

    .restart local v1    # "_arg1":Z
    :cond_7
    move v2, v7

    .line 161
    goto :goto_3

    .restart local v2    # "_arg2":Z
    :cond_8
    move v3, v7

    .line 163
    goto :goto_4

    .line 170
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_d
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v1, v6

    .line 176
    .restart local v1    # "_arg1":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v2, v6

    .line 178
    .restart local v2    # "_arg2":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    move v3, v6

    .line 179
    .restart local v3    # "_arg3":Z
    :goto_7
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->DefaultRouteSet(IZZZ)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_9
    move v1, v7

    .line 174
    goto :goto_5

    .restart local v1    # "_arg1":Z
    :cond_a
    move v2, v7

    .line 176
    goto :goto_6

    .restart local v2    # "_arg2":Z
    :cond_b
    move v3, v7

    .line 178
    goto :goto_7

    .line 185
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_e
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    move v1, v6

    .line 191
    .restart local v1    # "_arg1":Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    move v2, v6

    .line 193
    .restart local v2    # "_arg2":Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    move v3, v6

    .line 194
    .restart local v3    # "_arg3":Z
    :goto_a
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->MifareCLTRouteSet(IZZZ)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_c
    move v1, v7

    .line 189
    goto :goto_8

    .restart local v1    # "_arg1":Z
    :cond_d
    move v2, v7

    .line 191
    goto :goto_9

    .restart local v2    # "_arg2":Z
    :cond_e
    move v3, v7

    .line 193
    goto :goto_a

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
