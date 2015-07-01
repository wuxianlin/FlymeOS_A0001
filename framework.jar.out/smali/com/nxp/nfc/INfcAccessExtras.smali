.class public interface abstract Lcom/nxp/nfc/INfcAccessExtras;
.super Ljava/lang/Object;
.source "INfcAccessExtras.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INfcAccessExtras$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkChannelAdminAccess(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
