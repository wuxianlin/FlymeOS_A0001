.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Environment$UserEnvironment;
    }
.end annotation


# static fields
.field private static final CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

.field private static final DATA_DIRECTORY:Ljava/io/File;

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static final DIRECTORY_ANDROID:Ljava/lang/String; = "Android"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_ANDROID_ROOT:Ljava/io/File;

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final DIR_MEDIA_STORAGE:Ljava/io/File;

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final DIR_OEM_ROOT:Ljava/io/File;

.field private static final DIR_VENDOR_ROOT:Ljava/io/File;

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

.field private static final ENV_ANDROID_ROOT:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final ENV_EMULATED_STORAGE_SOURCE:Ljava/lang/String; = "EMULATED_STORAGE_SOURCE"

.field private static final ENV_EMULATED_STORAGE_TARGET:Ljava/lang/String; = "EMULATED_STORAGE_TARGET"

.field private static final ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final ENV_MEDIA_STORAGE:Ljava/lang/String; = "MEDIA_STORAGE"

.field private static final ENV_OEM_ROOT:Ljava/lang/String; = "OEM_ROOT"

.field private static final ENV_SECONDARY_STORAGE:Ljava/lang/String; = "SECONDARY_STORAGE"

.field private static final ENV_VENDOR_ROOT:Ljava/lang/String; = "VENDOR_ROOT"

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File;

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sNoEmulatedVolume:Landroid/os/storage/StorageVolume;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sUserRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    .line 62
    const-string v0, "OEM_ROOT"

    const-string v1, "/oem"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    .line 63
    const-string v0, "VENDOR_ROOT"

    const-string v1, "/vendor"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    .line 64
    const-string v0, "MEDIA_STORAGE"

    const-string v1, "/data/media"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_MEDIA_STORAGE:Ljava/io/File;

    .line 66
    const-string v0, "EMULATED_STORAGE_TARGET"

    invoke-static {v0}, Landroid/os/Environment;->getCanonicalPathOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    .line 80
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 350
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 356
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 359
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 467
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 479
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 491
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 503
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 515
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 523
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 531
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 541
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 548
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 554
    const-string v0, "Documents"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 594
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 595
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidDataDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 640
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 604
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 630
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 631
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 613
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 622
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 899
    move-object v1, p0

    .line 900
    .local v1, "cur":Ljava/io/File;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .local v2, "cur":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 901
    .local v5, "segment":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 902
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v2    # "cur":Ljava/io/File;
    goto :goto_0

    .line 904
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_1

    .line 907
    .end local v1    # "cur":Ljava/io/File;
    .end local v5    # "segment":Ljava/lang/String;
    .restart local v2    # "cur":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public static varargs buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "base"    # [Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 886
    array-length v2, p0

    new-array v1, v2, [Ljava/io/File;

    .line 887
    .local v1, "result":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 888
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v0

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    :cond_0
    return-object v1
.end method

.method private static getCanonicalPathOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "variableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 856
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 864
    :goto_0
    return-object v2

    .line 861
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resolve canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .prologue
    .line 851
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 647
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getEmulatedStorageObbSource()Ljava/io/File;
    .locals 3

    .prologue
    .line 455
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "obb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEmulatedStorageSource(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 449
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 427
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 586
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 737
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 738
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 768
    invoke-static {p0}, Landroid/os/Environment;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 769
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_0

    .line 770
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 773
    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 778
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    :goto_0
    return-object v2

    .line 774
    .restart local v0    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v2

    .line 778
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    :cond_0
    const-string/jumbo v2, "unknown"

    goto :goto_0
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Ljava/io/File;

    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLegacyExternalStorageObbDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 443
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 315
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getMediaDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getNoEmulatedVolume()Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    .line 84
    sget-object v3, Landroid/os/Environment;->sNoEmulatedVolume:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_1

    .line 85
    sget-object v4, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 86
    :try_start_0
    sget-object v3, Landroid/os/Environment;->sNoEmulatedVolume:Landroid/os/storage/StorageVolume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 88
    :try_start_1
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 90
    .local v1, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 91
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->getNoEmulatedVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    sput-object v3, Landroid/os/Environment;->sNoEmulatedVolume:Landroid/os/storage/StorageVolume;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v2    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :cond_1
    sget-object v3, Landroid/os/Environment;->sNoEmulatedVolume:Landroid/os/storage/StorageVolume;

    return-object v3

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Environment"

    const-string v5, "couldn\'t talk to MountService"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public static getOemDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static getSecondaryStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 432
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 433
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondaryStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 753
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 754
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 746
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 9
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 916
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 922
    :try_start_1
    const-string/jumbo v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 924
    .local v4, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 925
    .local v6, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v6

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 926
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8, p0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    .line 933
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v5

    .line 917
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v5, v7

    .line 918
    goto :goto_1

    .line 925
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v8

    :cond_1
    move-object v5, v7

    .line 933
    goto :goto_1
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUserConfigDirectory(I)Ljava/io/File;
    .locals 5
    .param p0, "userId"    # I

    .prologue
    .line 336
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "misc"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 326
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVendorDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static initForCurrentUser()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 104
    .local v0, "userId":I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    .line 105
    return-void
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    .prologue
    .line 347
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageEmulated()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 828
    invoke-static {}, Landroid/os/Environment;->isStorageDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    .local v0, "externalDir":Ljava/io/File;
    :goto_0
    return v1

    .line 829
    .end local v0    # "externalDir":Ljava/io/File;
    :cond_0
    sget-object v2, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v2}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v2

    aget-object v0, v2, v1

    .line 830
    .restart local v0    # "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExternalStorageEmulated(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 842
    invoke-static {p0}, Landroid/os/Environment;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 843
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    return v1

    .line 846
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find storage device at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isExternalStorageRemovable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 789
    invoke-static {}, Landroid/os/Environment;->isStorageDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    .local v0, "externalDir":Ljava/io/File;
    :goto_0
    return v1

    .line 790
    .end local v0    # "externalDir":Ljava/io/File;
    :cond_0
    sget-object v2, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v2}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v2

    aget-object v0, v2, v1

    .line 791
    .restart local v0    # "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExternalStorageRemovable(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 811
    invoke-static {p0}, Landroid/os/Environment;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 812
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    return v1

    .line 815
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find storage device at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isNoEmulatedStorageExist()Z
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Landroid/os/Environment;->getNoEmulatedVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 797
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isStorageDisabled()Z
    .locals 2

    .prologue
    .line 911
    const-string v0, "config.disable_storage"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 950
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 969
    .local v0, "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object p0

    .line 956
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 957
    .local v2, "rawPath":Ljava/lang/String;
    sget-object v3, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 958
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIR_MEDIA_STORAGE:Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 960
    .local v1, "internalPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object p0, v1

    .line 961
    goto :goto_0

    .line 964
    .end local v1    # "internalPath":Ljava/io/File;
    .end local v2    # "rawPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 965
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUserRequired(Z)V
    .locals 0
    .param p0, "userRequired"    # Z

    .prologue
    .line 870
    sput-boolean p0, Landroid/os/Environment;->sUserRequired:Z

    .line 871
    return-void
.end method

.method private static throwIfUserRequired()V
    .locals 3

    .prologue
    .line 874
    sget-boolean v0, Landroid/os/Environment;->sUserRequired:Z

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "Environment"

    const-string v1, "Path requests must specify a user by using UserEnvironment"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    :cond_0
    return-void
.end method
