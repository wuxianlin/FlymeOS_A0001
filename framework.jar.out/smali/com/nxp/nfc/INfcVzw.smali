.class public interface abstract Lcom/nxp/nfc/INfcVzw;
.super Ljava/lang/Object;
.source "INfcVzw.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INfcVzw$Stub;
    }
.end annotation


# virtual methods
.method public abstract setScreenOffCondition(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
