.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
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
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    .line 1013
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    .line 1015
    .local v4, "netProp":Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1016
    .local v3, "iface":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1017
    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1019
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1020
    .local v0, "addressCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1021
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1024
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1026
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1029
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1033
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 1034
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1036
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 1037
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/ProxyInfo;

    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1039
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v6, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    const-class v7, Landroid/net/LinkProperties;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1041
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    .line 1042
    .local v5, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    goto :goto_4

    .line 1044
    .end local v5    # "stackedLink":Landroid/net/LinkProperties;
    :cond_5
    return-object v4

    .line 1027
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1011
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1048
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1011
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
