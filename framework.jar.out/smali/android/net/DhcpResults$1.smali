.class final Landroid/net/DhcpResults$1;
.super Ljava/lang/Object;
.source "DhcpResults.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/DhcpResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 125
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .line 126
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    # invokes: Landroid/net/DhcpResults;->readFromParcel(Landroid/net/DhcpResults;Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Landroid/net/DhcpResults;->access$000(Landroid/net/DhcpResults;Landroid/os/Parcel;)V

    .line 127
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/net/DhcpResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/DhcpResults;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Landroid/net/DhcpResults;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/net/DhcpResults$1;->newArray(I)[Landroid/net/DhcpResults;

    move-result-object v0

    return-object v0
.end method
