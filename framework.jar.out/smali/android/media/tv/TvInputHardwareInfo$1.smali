.class final Landroid/media/tv/TvInputHardwareInfo$1;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputHardwareInfo;
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
        "Landroid/media/tv/TvInputHardwareInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputHardwareInfo;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 52
    :try_start_0
    new-instance v1, Landroid/media/tv/TvInputHardwareInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo$1;)V

    .line 53
    .local v1, "info":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputHardwareInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TvInputHardwareInfo"

    const-string v4, "Exception creating TvInputHardwareInfo from parcel"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 57
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputHardwareInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/tv/TvInputHardwareInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    new-array v0, p1, [Landroid/media/tv/TvInputHardwareInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputHardwareInfo$1;->newArray(I)[Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v0

    return-object v0
.end method
