.class public interface abstract Lcom/nxp/nfc/INfcDta;
.super Ljava/lang/Object;
.source "INfcDta.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INfcDta$Stub;
    }
.end annotation


# virtual methods
.method public abstract snepDtaCmd(Ljava/lang/String;Ljava/lang/String;IIII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
