.class public Lcom/android/server/ThemeService;
.super Landroid/content/res/IThemeService$Stub;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThemeService$ResourceProcessingHandler;,
        Lcom/android/server/ThemeService$ThemeWorkerHandler;
    }
.end annotation


# static fields
.field private static final CM_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.cyanogenmod.setupwizard"

.field private static final DEBUG:Z = false

.field private static final GOOGLE_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final MAX_ICON_CACHE_SIZE:J = 0x2000000L

.field private static final MIN_COMPATIBLE_VERSION:I = 0x15

.field private static final PURGED_ICON_CACHE_SIZE:J = 0x1800000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/res/IThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

.field private mIconCacheSize:J

.field private mIsThemeApplying:Z

.field private mOldestFilesFirstComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mProcessingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/res/IThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I

.field private mResourceProcessingHandler:Lcom/android/server/ThemeService$ResourceProcessingHandler;

.field private final mThemesToProcessQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangedByUs:Z

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/android/server/ThemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 216
    invoke-direct {p0}, Landroid/content/res/IThemeService$Stub;-><init>()V

    .line 113
    iput-boolean v4, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    .line 114
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    .line 116
    iput-boolean v4, p0, Lcom/android/server/ThemeService;->mIsThemeApplying:Z

    .line 118
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    .line 121
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    .line 1137
    new-instance v1, Lcom/android/server/ThemeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ThemeService$1;-><init>(Lcom/android/server/ThemeService;)V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1151
    new-instance v1, Lcom/android/server/ThemeService$2;

    invoke-direct {v1, p0}, Lcom/android/server/ThemeService$2;-><init>(Lcom/android/server/ThemeService;)V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1172
    new-instance v1, Lcom/android/server/ThemeService$3;

    invoke-direct {v1, p0}, Lcom/android/server/ThemeService$3;-><init>(Lcom/android/server/ThemeService;)V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mOldestFilesFirstComparator:Ljava/util/Comparator;

    .line 217
    iput-object p1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    .line 218
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ThemeServiceWorker"

    invoke-direct {v1, v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    .line 219
    iget-object v1, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 220
    new-instance v1, Lcom/android/server/ThemeService$ThemeWorkerHandler;

    iget-object v2, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ThemeService$ThemeWorkerHandler;-><init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    .line 221
    sget-object v1, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v2, "Spawned worker thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResourceProcessingThread"

    invoke-direct {v0, v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 225
    .local v0, "processingThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 226
    new-instance v1, Lcom/android/server/ThemeService$ResourceProcessingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ThemeService$ResourceProcessingHandler;-><init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ThemeService;->mResourceProcessingHandler:Lcom/android/server/ThemeService$ResourceProcessingHandler;

    .line 230
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createThemeDirIfNotExists()V

    .line 231
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createFontDirIfNotExists()V

    .line 232
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createAlarmDirIfNotExists()V

    .line 233
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createNotificationDirIfNotExists()V

    .line 234
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createRingtoneDirIfNotExists()V

    .line 235
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createIconCacheDirIfNotExists()V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ThemeService;Landroid/content/res/ThemeChangeRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ThemeService;
    .param p1, "x1"    # Landroid/content/res/ThemeChangeRequest;
    .param p2, "x2"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/ThemeService;->doApplyTheme(Landroid/content/res/ThemeChangeRequest;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ThemeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ThemeService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/ThemeService;->doApplyDefaultTheme()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ThemeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ThemeService;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/ThemeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ThemeService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/ThemeService;Landroid/content/res/ThemeChangeRequest;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ThemeService;
    .param p1, "x1"    # Landroid/content/res/ThemeChangeRequest;
    .param p2, "x2"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ThemeService;->updateProvider(Landroid/content/res/ThemeChangeRequest;J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ThemeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ThemeService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ThemeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ThemeService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/ThemeService;->doRebuildResourceCache()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ThemeService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ThemeService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ThemeService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ThemeService;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ThemeService;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->getThemeName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ThemeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ThemeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->postFailedThemeInstallNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ThemeService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ThemeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/ThemeService;->sendThemeResourcesCachedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ThemeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ThemeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->postFinishedProcessing(Ljava/lang/String;)V

    return-void
.end method

.method private applyBootAnimation(Ljava/lang/String;)Z
    .locals 9
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 1109
    const/4 v3, 0x0

    .line 1111
    .local v3, "success":Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 1112
    .local v5, "zip":Ljava/util/zip/ZipFile;
    const-string v6, "assets/bootanimation/bootanimation.zip"

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 1113
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_0

    .line 1114
    invoke-direct {p0}, Lcom/android/server/ThemeService;->clearBootAnimation()V

    .line 1115
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1116
    .local v2, "is":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bootanimation.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "bootAnimationPath":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v0}, Landroid/content/pm/ThemeUtils;->copyAndScaleBootAnimation(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1119
    const/16 v6, 0x1e4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v0, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1122
    .end local v0    # "bootAnimationPath":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/BufferedInputStream;
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    const/4 v3, 0x1

    .line 1128
    .end local v4    # "ze":Ljava/util/zip/ZipEntry;
    .end local v5    # "zip":Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 1124
    :catch_0
    move-exception v1

    .line 1125
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load boot animation for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private broadcastThemeChange(Landroid/content/res/ThemeChangeRequest;J)V
    .locals 6
    .param p1, "request"    # Landroid/content/res/ThemeChangeRequest;
    .param p2, "updateTime"    # J

    .prologue
    .line 917
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v0

    .line 918
    .local v0, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 922
    .local v1, "componentsArrayList":Ljava/util/ArrayList;
    const-string v3, "components"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 923
    const-string v3, "request_type"

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getReqeustType()Landroid/content/res/ThemeChangeRequest$RequestType;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    const-string v3, "update_time"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 925
    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private clearBootAnimation()V
    .locals 3

    .prologue
    .line 1132
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bootanimation.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v0, "anim":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1135
    :cond_0
    return-void
.end method

.method private static createBuilderFrom(Landroid/content/res/Configuration;Landroid/content/res/ThemeChangeRequest;Ljava/lang/String;Z)Landroid/content/res/ThemeConfig$Builder;
    .locals 6
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "request"    # Landroid/content/res/ThemeChangeRequest;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "removePerAppThemes"    # Z

    .prologue
    .line 766
    new-instance v2, Landroid/content/res/ThemeConfig$Builder;

    iget-object v4, p0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {v2, v4}, Landroid/content/res/ThemeConfig$Builder;-><init>(Landroid/content/res/ThemeConfig;)V

    .line 768
    .local v2, "builder":Landroid/content/res/ThemeConfig$Builder;
    if-eqz p3, :cond_0

    iget-object v4, p0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-static {v2, v4}, Lcom/android/server/ThemeService;->removePerAppThemesFromConfig(Landroid/content/res/ThemeConfig$Builder;Landroid/content/res/ThemeConfig;)V

    .line 770
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 771
    if-nez p2, :cond_8

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 774
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 775
    if-nez p2, :cond_9

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 779
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 780
    if-nez p2, :cond_a

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 783
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 784
    const-string v5, "com.android.systemui"

    if-nez p2, :cond_b

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v5, v4}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 788
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 789
    const-string v4, "com.android.systemui.navbar"

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "pkgName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v4, p2}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 794
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getPerAppOverlays()Ljava/util/Map;

    move-result-object v0

    .line 795
    .local v0, "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 796
    .local v1, "appPkgName":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 797
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    goto :goto_4

    .end local v0    # "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :cond_8
    move-object v4, p2

    .line 771
    goto :goto_0

    :cond_9
    move-object v4, p2

    .line 775
    goto :goto_1

    :cond_a
    move-object v4, p2

    .line 780
    goto :goto_2

    :cond_b
    move-object v4, p2

    .line 784
    goto :goto_3

    .line 801
    .end local p2    # "pkgName":Ljava/lang/String;
    .restart local v0    # "appOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getReqeustType()Landroid/content/res/ThemeChangeRequest$RequestType;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/ThemeConfig$Builder;->setLastThemeChangeRequestType(Landroid/content/res/ThemeChangeRequest$RequestType;)Landroid/content/res/ThemeConfig$Builder;

    .line 803
    return-object v2
.end method

.method private doApplyDefaultTheme()V
    .locals 10

    .prologue
    .line 447
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 448
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v8, "default_theme_package"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "defaultThemePkg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 451
    const-string v8, "default_theme_components"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "defaultThemeComponents":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 455
    invoke-static {}, Landroid/content/pm/ThemeUtils;->getAllComponents()Ljava/util/List;

    move-result-object v2

    .line 460
    .local v2, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v0, Landroid/content/res/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Landroid/content/res/ThemeChangeRequest$Builder;-><init>()V

    .line 461
    .local v0, "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 462
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {v0, v1, v4}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    goto :goto_1

    .line 457
    .end local v0    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v2    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 465
    .restart local v0    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/ThemeChangeRequest$Builder;->build()Landroid/content/res/ThemeChangeRequest;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ThemeService;->requestThemeChange(Landroid/content/res/ThemeChangeRequest;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "defaultThemeComponents":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void

    .line 466
    .restart local v0    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    .restart local v2    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "defaultThemeComponents":Ljava/lang/String;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 467
    .local v5, "e":Landroid/os/RemoteException;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "Unable to set default theme"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private doApplyTheme(Landroid/content/res/ThemeChangeRequest;Z)V
    .locals 8
    .param p1, "request"    # Landroid/content/res/ThemeChangeRequest;
    .param p2, "removePerAppTheme"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 369
    monitor-enter p0

    .line 370
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getNumChangesRequested()I

    move-result v4

    if-nez v4, :cond_1

    .line 374
    :cond_0
    const-wide/16 v4, 0x0

    invoke-direct {p0, v6, p1, v4, v5}, Lcom/android/server/ThemeService;->postFinish(ZLandroid/content/res/ThemeChangeRequest;J)V

    .line 444
    :goto_0
    return-void

    .line 371
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 377
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/ThemeService;->mIsThemeApplying:Z

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 380
    .local v2, "updateTime":J
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 383
    const/16 v4, 0x4b

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getNumChangesRequested()I

    move-result v5

    div-int v1, v4, v5

    .line 385
    .local v1, "progressIncrement":I
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 386
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->updateIcons(Ljava/lang/String;)Z

    .line 387
    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 390
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 391
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->updateWallpaper(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    iput-boolean v6, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    .line 394
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 397
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getLockWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 398
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getLockWallpaperThemePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->updateLockscreen(Ljava/lang/String;)Z

    .line 399
    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 402
    :cond_5
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 403
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getNotificationThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 404
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getNotificationThemePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->updateNotifications(Ljava/lang/String;)Z

    .line 405
    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 408
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getAlarmThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 409
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getAlarmThemePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->updateNotifications(Ljava/lang/String;)Z

    .line 410
    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 413
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getRingtoneThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 414
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getRingtoneThemePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->updateNotifications(Ljava/lang/String;)Z

    .line 415
    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 417
    :cond_8
    invoke-static {v6}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 419
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getBootanimationThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 420
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getBootanimationThemePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->updateBootAnim(Ljava/lang/String;)Z

    .line 421
    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 424
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 425
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->updateFonts(Ljava/lang/String;)Z

    .line 426
    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    .line 430
    :cond_a
    :try_start_2
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/ThemeService;->updateProvider(Landroid/content/res/ThemeChangeRequest;J)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 436
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->shouldUpdateConfiguration(Landroid/content/res/ThemeChangeRequest;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/android/server/ThemeService;->updateConfiguration(Landroid/content/res/ThemeChangeRequest;Z)Z

    .line 440
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->killLaunchers(Landroid/content/res/ThemeChangeRequest;)V

    .line 442
    invoke-direct {p0, v6, p1, v2, v3}, Lcom/android/server/ThemeService;->postFinish(ZLandroid/content/res/ThemeChangeRequest;J)V

    .line 443
    iput-boolean v7, p0, Lcom/android/server/ThemeService;->mIsThemeApplying:Z

    goto/16 :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Not updating the theme provider since it is unavailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doRebuildResourceCache()V
    .locals 2

    .prologue
    .line 473
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/resource-cache/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 474
    invoke-direct {p0}, Lcom/android/server/ThemeService;->processInstalledThemes()V

    .line 475
    return-void
.end method

.method private getThemeName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1231
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    iget-object v0, v0, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    .line 1237
    :goto_0
    return-object v0

    .line 1233
    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 1237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handlesThemeChanges(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 858
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 859
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 860
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    const/4 v2, 0x1

    .line 865
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private incrementProgress(I)V
    .locals 2
    .param p1, "increment"    # I

    .prologue
    const/16 v1, 0x64

    .line 929
    monitor-enter p0

    .line 930
    :try_start_0
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 931
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 932
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    invoke-direct {p0}, Lcom/android/server/ThemeService;->postProgress()V

    .line 934
    return-void

    .line 932
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSetupActivity(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 853
    const-string v0, "com.google.android.setupwizard"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.cyanogenmod.setupwizard"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThemeApiUpToDate()Z
    .locals 6

    .prologue
    .line 344
    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 345
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 347
    .local v1, "recordedApiLevel":I
    :try_start_0
    const-string v3, "theme_prev_boot_api_level"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 353
    :goto_0
    sget-object v3, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prev api level was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", api is now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, -0x1

    .line 351
    sget-object v3, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v4, "Previous api level not found. First time booting?"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isThemeCompatibleWithUpgradedApi(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, "compatible":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 332
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Comparing theme target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    const/4 v0, 0x1

    .line 338
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    move v0, v3

    .line 334
    goto :goto_0

    .line 335
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get package info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private killLaunchers(Landroid/content/res/ThemeChangeRequest;)V
    .locals 12
    .param p1, "request"    # Landroid/content/res/ThemeChangeRequest;

    .prologue
    const/4 v11, 0x0

    .line 821
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 850
    :cond_0
    return-void

    .line 826
    :cond_1
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 829
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 830
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    iget-object v8, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 834
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 836
    .local v7, "themeChangeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 837
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_2

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->isSetupActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/android/server/ThemeService;->handlesThemeChanges(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 840
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 841
    .local v6, "pkgToStop":Ljava/lang/String;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Force stopping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for theme change"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v1

    .line 845
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "Unable to force stop package, did you forget platform signature?"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private postFailedThemeInstallNotification(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1214
    iget-object v2, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1216
    .local v0, "nm":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const v4, 0x104009e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const v4, 0x104009f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1080078

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1227
    .local v1, "notice":Landroid/app/Notification;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1228
    return-void
.end method

.method private postFinish(ZLandroid/content/res/ThemeChangeRequest;J)V
    .locals 7
    .param p1, "isSuccess"    # Z
    .param p2, "request"    # Landroid/content/res/ThemeChangeRequest;
    .param p3, "updateTime"    # J

    .prologue
    .line 882
    monitor-enter p0

    .line 883
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 884
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 887
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 888
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeChangeListener;

    .line 890
    .local v3, "listener":Landroid/content/res/IThemeChangeListener;
    :try_start_1
    invoke-interface {v3, p1}, Landroid/content/res/IThemeChangeListener;->onFinish(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 887
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 884
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "listener":Landroid/content/res/IThemeChangeListener;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 891
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "listener":Landroid/content/res/IThemeChangeListener;
    :catch_0
    move-exception v1

    .line 892
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 895
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/content/res/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 898
    if-eqz p1, :cond_1

    .line 899
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/ThemeService;->broadcastThemeChange(Landroid/content/res/ThemeChangeRequest;J)V

    .line 901
    :cond_1
    return-void
.end method

.method private postFinishedProcessing(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 904
    iget-object v4, p0, Lcom/android/server/ThemeService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 905
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 906
    iget-object v4, p0, Lcom/android/server/ThemeService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeProcessingListener;

    .line 908
    .local v3, "listener":Landroid/content/res/IThemeProcessingListener;
    :try_start_0
    invoke-interface {v3, p1}, Landroid/content/res/IThemeProcessingListener;->onFinishedProcessing(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    :catch_0
    move-exception v1

    .line 910
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 913
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/content/res/IThemeProcessingListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 914
    return-void
.end method

.method private postProgress()V
    .locals 6

    .prologue
    .line 869
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 870
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 871
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeChangeListener;

    .line 873
    .local v3, "listener":Landroid/content/res/IThemeChangeListener;
    :try_start_0
    iget v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    invoke-interface {v3, v4}, Landroid/content/res/IThemeChangeListener;->onProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :catch_0
    move-exception v1

    .line 875
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 878
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/content/res/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 879
    return-void
.end method

.method private processInstalledThemes()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1180
    iget-object v5, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "defaultTheme":Ljava/lang/String;
    const-string v5, "system"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1184
    iget-object v5, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    invoke-virtual {v5, v8, v7, v7, v0}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1187
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/ThemeService;->mResourceProcessingHandler:Lcom/android/server/ThemeService$ResourceProcessingHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1190
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v5, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 1191
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1192
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, v2, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v5, :cond_2

    iget-boolean v5, v2, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v5, :cond_1

    .line 1194
    :cond_2
    iget-object v5, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v7, v7, v6}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1197
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/ThemeService;->mResourceProcessingHandler:Lcom/android/server/ThemeService$ResourceProcessingHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1200
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method private purgeIconCache()V
    .locals 12

    .prologue
    .line 1095
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purging icon cahe of size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v1, Ljava/io/File;

    sget-object v8, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v1, "cacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1098
    .local v3, "files":[Ljava/io/File;
    iget-object v8, p0, Lcom/android/server/ThemeService;->mOldestFilesFirstComparator:Ljava/util/Comparator;

    invoke-static {v3, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1099
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1100
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1101
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1102
    .local v6, "size":J
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    sub-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    .line 1104
    .end local v6    # "size":J
    :cond_0
    iget-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    const-wide/32 v10, 0x1800000

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    .line 1106
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    return-void

    .line 1099
    .restart local v2    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private removeObsoleteThemeOverlayIfExists()V
    .locals 15

    .prologue
    .line 260
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 261
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v3, 0x0

    .line 263
    .local v3, "config":Landroid/content/res/ThemeConfig;
    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v3, v12, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 272
    :goto_0
    if-nez v3, :cond_1

    .line 324
    :goto_1
    return-void

    .line 266
    :cond_0
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v13, "ActivityManager getDefault() returned null, cannot remove obsolete theme"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v7

    .line 270
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v13, "Failed to get the theme config "

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 276
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v4, "currentThemeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "mods_status_bar"

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v12, "mods_navigation_bar"

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v12, "mods_overlays"

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v12, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/content/pm/ThemeUtils;->getDefaultComponents(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 286
    .local v6, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/res/ThemeChangeRequest$Builder;

    invoke-direct {v1}, Landroid/content/res/ThemeChangeRequest$Builder;-><init>()V

    .line 287
    .local v1, "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 288
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    .local v2, "component":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 290
    .local v10, "pkgName":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 293
    .local v5, "defaultPkg":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 294
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Current overlay theme is same as default. Not doing anything for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 300
    :cond_3
    const-string v12, "system"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 301
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Current overlay theme for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " was system. no need to unapply"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 306
    :cond_4
    invoke-direct {p0, v10}, Lcom/android/server/ThemeService;->isThemeCompatibleWithUpgradedApi(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 307
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "is incompatible with latest theme api for component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Applying "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v1, v2, v10}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    goto/16 :goto_2

    .line 314
    .end local v2    # "component":Ljava/lang/String;
    .end local v5    # "defaultPkg":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Landroid/content/res/ThemeChangeRequest$Builder;->build()Landroid/content/res/ThemeChangeRequest;

    move-result-object v11

    .line 315
    .local v11, "request":Landroid/content/res/ThemeChangeRequest;
    invoke-virtual {v11}, Landroid/content/res/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 317
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {p0, v11, v12}, Lcom/android/server/ThemeService;->requestThemeChange(Landroid/content/res/ThemeChangeRequest;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 318
    :catch_1
    move-exception v12

    goto/16 :goto_1

    .line 322
    :cond_6
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v13, "Current theme is compatible with the system. Not unapplying anything"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static removePerAppThemesFromConfig(Landroid/content/res/ThemeConfig$Builder;Landroid/content/res/ThemeConfig;)V
    .locals 4
    .param p0, "builder"    # Landroid/content/res/ThemeConfig$Builder;
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 808
    if-eqz p1, :cond_1

    .line 809
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getAppThemes()Ljava/util/Map;

    move-result-object v2

    .line 810
    .local v2, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 811
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isPerAppThemeComponent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    goto :goto_0

    .line 816
    .end local v0    # "appPkgName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :cond_1
    return-void
.end method

.method private sendThemeResourcesCachedBroadcast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "themePkgName"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 1203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.THEME_RESOURCES_CACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    const-string v1, "android.intent.extra.RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1207
    return-void
.end method

.method private setCustomLockScreenWallpaper(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 657
    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 659
    .local v2, "wm":Landroid/app/WallpaperManager;
    :try_start_0
    const-string v3, "system"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    :cond_0
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clearKeyguardWallpaper()V

    .line 672
    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 662
    :cond_2
    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/android/internal/util/cm/ImageUtils;->getCroppedKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 663
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 664
    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setKeyguardStream(Ljava/io/InputStream;)V

    .line 665
    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There was an error setting lockscreen wp for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private shouldUpdateConfiguration(Landroid/content/res/ThemeChangeRequest;)Z
    .locals 1
    .param p1, "request"    # Landroid/content/res/ThemeChangeRequest;

    .prologue
    .line 756
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getOverlayThemePackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getFontThemePackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getIconsThemePackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getStatusBarThemePackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getNavBarThemePackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getPerAppOverlays()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAlarms(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 571
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    const-string v1, "alarms"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 13
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Landroid/content/pm/ThemeUtils;->clearAudibles(Landroid/content/Context;Ljava/lang/String;)V

    .line 588
    const-string v10, "system"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 589
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    move/from16 v0, p3

    invoke-static {v10, v0}, Landroid/content/pm/ThemeUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 590
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v11, "There was an error installing the default audio file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v10, 0x0

    .line 642
    :goto_0
    return v10

    .line 593
    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    .line 596
    :cond_1
    const/4 v8, 0x0

    .line 598
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 608
    :try_start_1
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const/4 v11, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 609
    .local v9, "themeCtx":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 610
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 615
    .local v2, "assetList":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v10, v2

    if-nez v10, :cond_3

    .line 616
    :cond_2
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v11, "Could not find any audio assets"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v10, 0x0

    goto :goto_0

    .line 599
    .end local v2    # "assetList":[Ljava/lang/String;
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v9    # "themeCtx":Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 600
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to update audible "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    const/4 v10, 0x0

    goto :goto_0

    .line 611
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 612
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "There was an error getting assets for pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    const/4 v10, 0x0

    goto :goto_0

    .line 622
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "assetList":[Ljava/lang/String;
    .restart local v3    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v9    # "themeCtx":Landroid/content/Context;
    :cond_3
    const/4 v10, 0x0

    aget-object v1, v2, v10

    .line 623
    .local v1, "asset":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x0

    goto :goto_0

    .line 625
    :cond_4
    const/4 v5, 0x0

    .line 626
    .local v5, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 628
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file:///android_asset/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 630
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .local v7, "outFile":Ljava/io/File;
    invoke-static {v5, v7}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 632
    const/16 v10, 0x1e7

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v7, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 634
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    iget-object v11, v11, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v10, v7, v0, v11}, Landroid/content/pm/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 640
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 642
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 635
    .end local v7    # "outFile":Ljava/io/File;
    :catch_2
    move-exception v4

    .line 636
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "There was an error installing the new audio file for pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    const/4 v10, 0x0

    .line 639
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 640
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 639
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 640
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v10
.end method

.method private updateBootAnim(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 555
    const-string v4, "system"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/android/server/ThemeService;->clearBootAnimation()V

    .line 567
    :goto_0
    return v2

    .line 561
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 562
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->applyBootAnimation(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v4, "Changing boot animation failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 565
    goto :goto_0
.end method

.method private updateConfiguration(Landroid/content/res/ThemeChangeRequest;Z)Z
    .locals 8
    .param p1, "request"    # Landroid/content/res/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z

    .prologue
    .line 717
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 718
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 721
    .local v6, "token":J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 722
    .local v1, "config":Landroid/content/res/Configuration;
    const/4 v5, 0x0

    invoke-static {v1, p1, v5, p2}, Lcom/android/server/ThemeService;->createBuilderFrom(Landroid/content/res/Configuration;Landroid/content/res/ThemeChangeRequest;Ljava/lang/String;Z)Landroid/content/res/ThemeConfig$Builder;

    move-result-object v4

    .line 724
    .local v4, "themeBuilder":Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v4}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v3

    .line 726
    .local v3, "newConfig":Landroid/content/res/ThemeConfig;
    iput-object v3, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 727
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "newConfig":Landroid/content/res/ThemeConfig;
    .end local v4    # "themeBuilder":Landroid/content/res/ThemeConfig$Builder;
    .end local v6    # "token":J
    :cond_0
    const/4 v5, 0x1

    :goto_0
    return v5

    .line 728
    .restart local v6    # "token":J
    :catch_0
    move-exception v2

    .line 729
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    .line 731
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private updateConfiguration(Landroid/content/res/ThemeConfig;)Z
    .locals 6
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 738
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 739
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 742
    .local v4, "token":J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 744
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object p1, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 745
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 752
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v4    # "token":J
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 746
    .restart local v4    # "token":J
    :catch_0
    move-exception v2

    .line 747
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 749
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private updateFonts(Ljava/lang/String;)Z
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 509
    new-instance v11, Ljava/io/File;

    sget-object v12, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 511
    const-string v11, "system"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 516
    :try_start_0
    iget-object v11, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const/4 v12, 0x2

    invoke-virtual {v11, p1, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 517
    .local v10, "themeCtx":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 518
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    const-string v11, "fonts"

    invoke-virtual {v3, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 523
    .local v2, "assetList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v11, v2

    if-nez v11, :cond_1

    .line 524
    :cond_0
    sget-object v11, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v12, "Could not find any font assets"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v11, 0x0

    .line 551
    .end local v2    # "assetList":[Ljava/lang/String;
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v10    # "themeCtx":Landroid/content/Context;
    :goto_0
    return v11

    .line 519
    :catch_0
    move-exception v4

    .line 520
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "There was an error getting assets  for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    const/4 v11, 0x0

    goto :goto_0

    .line 529
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "assetList":[Ljava/lang/String;
    .restart local v3    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v10    # "themeCtx":Landroid/content/Context;
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v1, v0, v5

    .line 530
    .local v1, "asset":Ljava/lang/String;
    const/4 v6, 0x0

    .line 531
    .local v6, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 533
    .local v8, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file:///android_asset/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 535
    new-instance v9, Ljava/io/File;

    sget-object v11, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v9, v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v9, "outFile":Ljava/io/File;
    invoke-static {v6, v9}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 537
    const/16 v11, 0x1e7

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v9, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 544
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 529
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 539
    .end local v9    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 540
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v11, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "There was an error installing the new fonts for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    const/4 v11, 0x0

    .line 543
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 544
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 543
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 544
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v11

    .line 550
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "asset":Ljava/lang/String;
    .end local v2    # "assetList":[Ljava/lang/String;
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "i$":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len$":I
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v10    # "themeCtx":Landroid/content/Context;
    :cond_2
    const-string v11, "sys.refresh_theme"

    const-string v12, "1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private updateIcons(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 495
    :try_start_0
    const-string v1, "system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    .line 504
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v2, "Changing icons failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLockscreen(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->setCustomLockScreenWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 649
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 653
    :cond_0
    return v0
.end method

.method private updateNotifications(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 576
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    const-string v1, "notifications"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateProvider(Landroid/content/res/ThemeChangeRequest;J)V
    .locals 10
    .param p1, "request"    # Landroid/content/res/ThemeChangeRequest;
    .param p2, "updateTime"    # J

    .prologue
    const/4 v8, 0x0

    .line 478
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 479
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "update_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v1

    .line 481
    .local v1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    .local v0, "component":Ljava/lang/String;
    const-string v7, "value"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v5, "key=?"

    .line 484
    .local v5, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/ThemesContract$MixnMatchColumns;->componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 485
    .local v3, "selectionArgs":[Ljava/lang/String;
    aget-object v6, v3, v8

    if-eqz v6, :cond_0

    .line 488
    iget-object v6, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4, v5, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 491
    .end local v0    # "component":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateRingtones(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 581
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    const-string v1, "ringtones"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateThemeApi()V
    .locals 4

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "theme_prev_boot_api_level"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 363
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 364
    sget-object v2, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to store latest API level to secure settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    return-void
.end method

.method private updateWallpaper(Ljava/lang/String;)Z
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 676
    const-string v3, "pkg_name= ?"

    .line 677
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 678
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ThemesContract$ThemesColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 681
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 682
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    .line 683
    .local v9, "wm":Landroid/app/WallpaperManager;
    const-string v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    :try_start_0
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    move v0, v11

    .line 712
    :goto_1
    return v0

    .line 686
    :catch_0
    move-exception v7

    .line 689
    .local v7, "e":Ljava/io/IOException;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_1

    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 691
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v9, v0}, Landroid/app/WallpaperManager;->clear(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 697
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 694
    :catch_1
    move-exception v7

    .line 697
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_1

    .end local v7    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 700
    :cond_1
    const/4 v8, 0x0

    .line 702
    .local v8, "in":Ljava/io/InputStream;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/internal/util/cm/ImageUtils;->getCroppedWallpaperStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v8

    .line 703
    if-eqz v8, :cond_2

    .line 704
    invoke-virtual {v9, v8}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 708
    :cond_2
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 709
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 705
    :catch_2
    move-exception v7

    .line 708
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 709
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_1

    .line 708
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 709
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public applyDefaultTheme()V
    .locals 4

    .prologue
    .line 994
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 997
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 998
    iget-object v1, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 999
    return-void
.end method

.method public cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 12
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1020
    .local v6, "token":J
    new-instance v0, Ljava/io/File;

    sget-object v5, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 1022
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    .line 1025
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1026
    .local v3, "outFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1027
    .local v2, "os":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {p1, v5, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1028
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1029
    const/16 v5, 0x1fc

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v3, v5, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 1032
    iget-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    .line 1033
    iget-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    const-wide/32 v10, 0x2000000

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    .line 1034
    invoke-direct {p0}, Lcom/android/server/ThemeService;->purgeIconCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :cond_1
    const/4 v4, 0x1

    .line 1041
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v3    # "outFile":Ljava/io/File;
    .local v4, "success":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1042
    return v4

    .line 1037
    .end local v4    # "success":Z
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1039
    .restart local v4    # "success":Z
    sget-object v5, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to cache icon "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    monitor-enter p0

    .line 1011
    :try_start_0
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    monitor-exit p0

    return v0

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isThemeApplying()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-boolean v0, p0, Lcom/android/server/ThemeService;->mIsThemeApplying:Z

    return v0
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1067
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 6
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1047
    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    iget-object v3, p0, Lcom/android/server/ThemeService;->mResourceProcessingHandler:Lcom/android/server/ThemeService$ResourceProcessingHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2, v2, p1}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1058
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ThemeService;->mResourceProcessingHandler:Lcom/android/server/ThemeService$ResourceProcessingHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1059
    const/4 v2, 0x1

    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return v2

    .line 1051
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public rebuildResourceCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendEmptyMessage(I)Z

    .line 1092
    return-void
.end method

.method public registerThemeProcessingListener(Landroid/content/res/IThemeProcessingListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/res/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/android/server/ThemeService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1077
    return-void
.end method

.method public removeUpdates(Landroid/content/res/IThemeChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/res/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 948
    return-void
.end method

.method public requestThemeChange(Landroid/content/res/ThemeChangeRequest;Z)V
    .locals 10
    .param p1, "request"    # Landroid/content/res/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 953
    iget-object v7, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v7, p0, Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 966
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/ThemeChangeRequest;->getThemeComponentsMap()Ljava/util/Map;

    move-result-object v0

    .line 967
    .local v0, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 968
    .local v2, "key":Ljava/lang/Object;
    const-string v8, "mods_overlays"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "mods_navigation_bar"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "mods_status_bar"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "mods_icons"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 972
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 973
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_0

    .line 974
    iget-object v8, p0, Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 975
    iget-object v8, p0, Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 978
    iget-object v8, p0, Lcom/android/server/ThemeService;->mResourceProcessingHandler:Lcom/android/server/ThemeService$ResourceProcessingHandler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 980
    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/ThemeService;->mResourceProcessingHandler:Lcom/android/server/ThemeService$ResourceProcessingHandler;

    invoke-virtual {v8, v3}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 984
    .end local v0    # "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 986
    .restart local v3    # "msg":Landroid/os/Message;
    iput v5, v3, Landroid/os/Message;->what:I

    .line 987
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 988
    if-eqz p2, :cond_3

    :goto_1
    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 989
    iget-object v5, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 990
    return-void

    :cond_3
    move v5, v6

    .line 988
    goto :goto_1
.end method

.method public requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/res/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 941
    return-void
.end method

.method public systemRunning()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThemeService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThemeService;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;

    .line 248
    invoke-direct {p0}, Lcom/android/server/ThemeService;->processInstalledThemes()V

    .line 250
    invoke-direct {p0}, Lcom/android/server/ThemeService;->isThemeApiUpToDate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    sget-object v1, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v2, "The system has been upgraded to a theme new api, checking if currently set theme is compatible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/android/server/ThemeService;->removeObsoleteThemeOverlayIfExists()V

    .line 254
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateThemeApi()V

    .line 256
    :cond_0
    return-void
.end method

.method public unregisterThemeProcessingListener(Landroid/content/res/IThemeProcessingListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/res/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/android/server/ThemeService;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1085
    return-void
.end method
