.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private mAlwaysReset:Z

.field private mFactoryReset:Z

.field private mIsFormatSuccess:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReason:Ljava/lang/String;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 54
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 58
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 62
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z

    .line 65
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method


# virtual methods
.method fail(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 162
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 163
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const-string v1, "android.intent.extra.REASON"

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 170
    return-void
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 337
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 338
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 339
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 344
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 341
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 137
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 138
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 139
    .local v4, "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, "extStoragePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_1

    .line 142
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 143
    const v6, 0x1040576

    invoke-virtual {p0, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 159
    return-void

    .line 145
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    .restart local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 146
    .local v3, "physicalVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 155
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v3    # "physicalVol":Landroid/os/storage/StorageVolume;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Failed talking with mount service"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    .restart local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 79
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 80
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 84
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 125
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 126
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    .line 91
    const-string v0, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 94
    :cond_0
    const-string v0, "always_reset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 98
    :cond_1
    const-string v0, "android.intent.extra.REASON"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "storage_volume"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 101
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    .line 102
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 103
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 106
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    .line 110
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 113
    :cond_3
    const/4 v0, 0x3

    return v0
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 326
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method updateProgressState()V
    .locals 10

    .prologue
    .line 175
    const/4 v5, 0x0

    .line 176
    .local v5, "status":Ljava/lang/String;
    const/4 v1, 0x0

    .line 179
    .local v1, "extStoragePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 180
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 181
    .local v6, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 183
    .local v4, "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_3

    .line 184
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 185
    const v7, 0x1040576

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 321
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    .restart local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 189
    .local v3, "physicalVol":Landroid/os/storage/StorageVolume;
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 200
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v3    # "physicalVol":Landroid/os/storage/StorageVolume;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    const-string/jumbo v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "mounted_ro"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 202
    :cond_2
    const v7, 0x1040575

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 204
    :try_start_1
    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z

    if-nez v7, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 206
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 207
    .restart local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 209
    .restart local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_5

    .line 210
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 211
    const v7, 0x1040576

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Failed talking with mount service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    .restart local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_1

    .line 197
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .line 198
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Failed talking with mount service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    .restart local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_4
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 215
    .restart local v3    # "physicalVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "physicalVol : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 222
    .end local v3    # "physicalVol":Landroid/os/storage/StorageVolume;
    :cond_5
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 223
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 230
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_6
    const-string/jumbo v7, "nofs"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "unmounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "unmountable"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 233
    :cond_7
    const v7, 0x1040577

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 235
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_8

    .line 236
    new-instance v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;)V

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->start()V

    goto/16 :goto_0

    .line 306
    :cond_8
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Unable to locate IMountService"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_9
    const-string v7, "bad_removal"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 309
    const v7, 0x1040579

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 310
    :cond_a
    const-string v7, "checking"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 311
    const v7, 0x104057a

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 312
    :cond_b
    const-string/jumbo v7, "removed"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 313
    const v7, 0x104057b

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 314
    :cond_c
    const-string/jumbo v7, "shared"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 315
    const v7, 0x104057c

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 317
    :cond_d
    const v7, 0x104057d

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    .line 318
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown storage state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_0
.end method
