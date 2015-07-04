.class public Lcom/android/server/pm/UpdateAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final INSTALL_FAILED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UpdateAppsReceiver"

.field private static final TAG_DEFAULT_OP:Ljava/lang/String; = "DefaultOp"

.field private static final TAG_PACKAGE_STATE:Ljava/lang/String; = "PackageState"

.field private static final TAG_UPDATE_APPS:Ljava/lang/String; = "UpdateApps"

.field private static final UPDATE_INSTALL_COMPLETE:I = 0x67

.field private static final UPDATE_INSTALL_FAILED:I = 0x68

.field private static final UPDATE_INSTALL_PATH:Ljava/lang/String; = "/custom/"

.field private static final UPDATE_INSTALL_READY:I = 0x65

.field private static final UPDATE_INSTALL_START:I = 0x66

.field private static final UPDATE_VERIIFY_PATH:Ljava/lang/String; = "/data/app/.need_init"

.field public static limitServiceComponentName:Landroid/content/ComponentName;

.field private static mIndex:I

.field private static mInstallApk:Ljava/io/File;

.field private static mInstalledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstalledListSize:I

.field private static mLenght:I

.field private static mMediaShared:Z

.field private static mPm:Landroid/content/pm/PackageManager;

.field private static mUpdateInstallApks:[Ljava/io/File;


# instance fields
.field dataDir:Ljava/io/File;

.field private firstBootAlreadyDefaultOp:Z

.field private firstBootAlreadyUpdateApps:Z

.field public limitPackageName:Ljava/lang/String;

.field public limitPackageName2:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mLocked:Ljava/lang/Object;

.field private mVerifyFileExist:Z

.field private final packageValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    .line 50
    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    .line 51
    sput-boolean v0, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    .line 66
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.qihoo360.contacts"

    const-string v2, "com.qihoo360.contacts.service.PEService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    .line 68
    const-string v0, "com.tencent.pb"

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    .line 69
    const-string v0, "com.qihoo360.contacts"

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UpdateAppsReceiver$2;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    .line 429
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UpdateAppsReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    return p1
.end method

.method static synthetic access$100()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallReady()V

    return-void
.end method

.method static synthetic access$102(Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .locals 0
    .param p0, "x0"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 38
    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallStart()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->udpateInstallComplete()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/UpdateAppsReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallFailed(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 38
    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 38
    sput p0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->setPackageStateFirstTime(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkPackageState(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$702([Ljava/io/File;)[Ljava/io/File;
    .locals 0
    .param p0, "x0"    # [Ljava/io/File;

    .prologue
    .line 38
    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 38
    sput p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkAppsOp(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 383
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 385
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 389
    :goto_0
    if-eqz v7, :cond_0

    .line 390
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    iget v4, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UpdateAppsReceiver;->setAppOpsPermission(Landroid/content/Context;ILjava/lang/String;II)V

    .line 393
    :cond_0
    return-void

    .line 386
    :catch_0
    move-exception v6

    .line 387
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkAppsPermission(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 397
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 399
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 403
    :goto_0
    if-eqz v1, :cond_0

    .line 404
    const/4 v3, 0x0

    .line 406
    .local v3, "serv":Landroid/content/pm/ServiceInfo;
    :try_start_1
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 409
    :goto_1
    if-eqz v3, :cond_1

    .line 410
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 416
    .end local v3    # "serv":Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_2
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "serv":Landroid/content/pm/ServiceInfo;
    :cond_1
    const-string v4, "UpdateAppsReceiver"

    const-string v5, "service info is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 407
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private checkDefaultOpForBootCompleted(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->getFirstBootAlreadyOfOp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->setFirstBootAlreadyForOp()V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsPermission(Landroid/content/Context;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsOp(Landroid/content/Context;)V

    .line 154
    :cond_0
    return-void
.end method

.method private checkDefaultOpForPackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsOp(Landroid/content/Context;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsPermission(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private checkPackageState(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 366
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 370
    .local v3, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 371
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UpdateAppsReceiver;->getPackageState(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 372
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pakcageName :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is aleady uninstalled by user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v3    # "pkInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v2
.end method

.method private isValidApk(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "apkFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    sget-object v2, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 281
    .local v0, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 282
    goto :goto_0
.end method

.method private readXml()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 477
    iget-object v10, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    if-eqz v10, :cond_0

    .line 478
    iget-object v10, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 480
    :cond_0
    iput-boolean v11, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 481
    iput-boolean v11, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 483
    new-instance v3, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    const-string v11, "system/updateapps.xml"

    invoke-direct {v3, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    .local v3, "newxmlfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 521
    :goto_0
    return-void

    .line 488
    :cond_1
    const/4 v6, 0x0

    .line 490
    .local v6, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    .end local v6    # "str":Ljava/io/FileInputStream;
    .local v7, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 492
    .local v4, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 493
    .local v9, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v9, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 495
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 497
    .local v1, "eventType":I
    :goto_1
    const/4 v10, 0x1

    if-eq v1, v10, :cond_5

    .line 498
    packed-switch v1, :pswitch_data_0

    .line 515
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 502
    :pswitch_1
    const-string v10, "UpdateApps"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 503
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 518
    .end local v1    # "eventType":I
    .end local v4    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 519
    .end local v7    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v4    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    .restart local v9    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_2
    const-string v10, "DefaultOp"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 506
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 507
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    goto :goto_2

    .line 508
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    const-string v10, "PackageState"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 509
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "key":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, "set":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 517
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "set":Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 520
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 518
    .end local v1    # "eventType":I
    .end local v4    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scanAllFiles(Ljava/io/File;)Ljava/util/List;
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 166
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 167
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v0, v3

    .line 168
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    invoke-direct {p0, v1}, Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;

    .line 167
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 172
    .local v5, "lastDot":I
    if-ltz v5, :cond_0

    .line 175
    const-string v7, "APK"

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 177
    .local v4, "isApk":Z
    if-eqz v4, :cond_0

    .line 178
    iget-object v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v7, "UpdateAppsReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "isApk":Z
    .end local v5    # "lastDot":I
    .end local v6    # "len$":I
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    return-object v7
.end method

.method private setAppOpsPermission(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "mode"    # I

    .prologue
    .line 420
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 422
    .local v0, "mAppOps":Landroid/app/AppOpsManager;
    invoke-virtual {v0, p2, p4, p3, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 423
    return-void
.end method

.method private setPackageStateFirstTime(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 350
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    sget-object v3, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 354
    .local v2, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 355
    const-string v3, "UpdateAppsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " this is upgrade first time by clear userdadta and  mVerifyFileExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v3, "UpdateAppsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pakcageName :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set state  true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/UpdateAppsReceiver;->setPackageState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 361
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "pkInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method private udpateInstallComplete()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    return-void
.end method

.method private updateCustomAppsIfNeeded(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver$1;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/pm/UpdateAppsReceiver$1;->start()V

    .line 146
    return-void
.end method

.method private updateInstallFailed(I)V
    .locals 3
    .param p1, "returnCode"    # I

    .prologue
    .line 256
    const-string v0, "UpdateAppsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInstallFailed: returnCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method private updateInstallReady()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    return-void
.end method

.method private updateInstallStart()V
    .locals 9

    .prologue
    .line 213
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInstallStart :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mLenght :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mPm:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMediaShared : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    if-eqz v5, :cond_0

    sget v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    if-ge v5, v6, :cond_0

    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    if-nez v5, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-boolean v5, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    if-nez v5, :cond_0

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    aget-object v5, v5, v6

    sput-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    .line 222
    sget v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    .line 223
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 225
    .local v4, "packageURI":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->isValidApk(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 226
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 227
    .local v1, "installFlags":I
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInstallStart :  mInstallApk.getPath() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " packageInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz v3, :cond_3

    .line 229
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/UpdateAppsReceiver;->isPackageAlreadyInstalled(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 231
    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x68

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    monitor-exit p0

    goto :goto_0

    .line 248
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "installFlags":I
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageURI":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 235
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "installFlags":I
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "packageURI":Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInstallStart :  pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  NSTALL_REPLACE_EXISTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    or-int/lit8 v1, v1, 0x2

    .line 244
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    new-instance v6, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;Lcom/android/server/pm/UpdateAppsReceiver$1;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v1, v7}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "installNumber":Ljava/lang/String;
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start install apk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    monitor-exit p0

    goto/16 :goto_0

    .line 239
    .end local v2    # "installNumber":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x68

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getFirstBootAlreadyOfOp()Z
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 319
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    monitor-exit v1

    return v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFirstBootAlreadyOfUpdate()Z
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 304
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    monitor-exit v1

    return v0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackageState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v2

    .line 342
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 343
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    .local v0, "strValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "strValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPackageAlreadyInstalled(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I

    if-ge v0, v2, :cond_1

    .line 262
    sget-object v2, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 263
    .local v1, "tmp":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "UpdateAppsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageAlreadyInstalled :  pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " versionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " versionName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newVersionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v2, p2, :cond_0

    .line 268
    const/4 v2, 0x1

    .line 272
    .end local v1    # "tmp":Landroid/content/pm/PackageInfo;
    :goto_1
    return v2

    .line 261
    .restart local v1    # "tmp":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "tmp":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->updateCustomAppsIfNeeded(Landroid/content/Context;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkDefaultOpForBootCompleted(Landroid/content/Context;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UpdateAppsReceiver;->setPackageState(Ljava/lang/String;Z)V

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->checkDefaultOpForPackageAdded(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UpdateAppsReceiver;->setPackageState(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setFirstBootAlreadyForOp()V
    .locals 2

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFirstBootAlreadyForUpdate()V
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V

    .line 313
    monitor-exit v1

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPackageState(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "install"    # Z

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V

    .line 337
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeXml()V
    .locals 12

    .prologue
    .line 431
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    const-string v10, "system/updateapps.xml"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    .local v5, "newxmlfile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 434
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 440
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 441
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 442
    .local v6, "out":Ljava/io/BufferedOutputStream;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 443
    .local v7, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v7, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 444
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 446
    const/4 v9, 0x0

    const-string v10, "UpdateApps"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    const/4 v9, 0x0

    const-string v10, "value"

    iget-boolean v11, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const/4 v9, 0x0

    const-string v10, "UpdateApps"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const/4 v9, 0x0

    const-string v10, "DefaultOp"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const/4 v9, 0x0

    const-string v10, "value"

    iget-boolean v11, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    const/4 v9, 0x0

    const-string v10, "DefaultOp"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    iget-object v9, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 455
    .local v3, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 456
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 457
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 458
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 459
    .local v8, "val":Ljava/lang/Object;
    const/4 v9, 0x0

    const-string v10, "PackageState"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const/4 v9, 0x0

    const-string v10, "name"

    check-cast v4, Ljava/lang/String;

    .end local v4    # "key":Ljava/lang/Object;
    invoke-interface {v7, v9, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    const/4 v9, 0x0

    const-string v10, "value"

    check-cast v8, Ljava/lang/String;

    .end local v8    # "val":Ljava/lang/Object;
    invoke-interface {v7, v9, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    const/4 v9, 0x0

    const-string v10, "PackageState"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 471
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 435
    :catch_1
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "iter":Ljava/util/Iterator;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 466
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 467
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 468
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 469
    iget-object v9, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
