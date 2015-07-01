.class public Lcom/oneplus/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/DeviceKeyHandler$EventHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GESTURE_CIRCLE_SCANCODE:I = 0xfa

.field private static final GESTURE_GTR_SCANCODE:I = 0xfe

.field private static final GESTURE_LTR_SCANCODE:I = 0xfd

.field private static final GESTURE_REQUEST:I = 0x1

.field private static final GESTURE_SWIPE_DOWN_SCANCODE:I = 0xfb

.field private static final GESTURE_V_SCANCODE:I = 0xfc

.field private static final GESTURE_WAKELOCK_DURATION:I = 0xbb8

.field private static final KEY_DOUBLE_TAP:I = 0xf9

.field private static final TAG:Ljava/lang/String;

.field private static final sSupportedGestures:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;

.field mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/oneplus/DeviceKeyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/DeviceKeyHandler;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/DeviceKeyHandler;->sSupportedGestures:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xf9
        0xfa
        0xfb
        0xfc
        0xfd
        0xfe
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/oneplus/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 93
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 94
    new-instance v0, Lcom/oneplus/DeviceKeyHandler$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/DeviceKeyHandler$EventHandler;-><init>(Lcom/oneplus/DeviceKeyHandler;Lcom/oneplus/DeviceKeyHandler$1;)V

    iput-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;

    .line 95
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 96
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 97
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ProximityWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GestureWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/DeviceKeyHandler;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oneplus/DeviceKeyHandler;->ensureKeyguardManager()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/DeviceKeyHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/DeviceKeyHandler;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/DeviceKeyHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/DeviceKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/DeviceKeyHandler;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/DeviceKeyHandler;)Lcom/oneplus/DeviceKeyHandler$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/DeviceKeyHandler;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/DeviceKeyHandler;Landroid/view/KeyEvent;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/DeviceKeyHandler;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/DeviceKeyHandler;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 10
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 207
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/oneplus/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 209
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 210
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 212
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 213
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 220
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method private ensureKeyguardManager()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 107
    :cond_0
    return-void
.end method

.method private getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    return-object v0
.end method

.method private processEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v1, Lcom/oneplus/DeviceKeyHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/DeviceKeyHandler$1;-><init>(Lcom/oneplus/DeviceKeyHandler;Landroid/view/KeyEvent;)V

    iget-object v2, p0, Lcom/oneplus/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 204
    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    const/high16 v1, 0x34000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 229
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/oneplus/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "user":Landroid/os/UserHandle;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v0, 0x0

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    sget-object v3, Lcom/oneplus/DeviceKeyHandler;->sSupportedGestures:[I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 160
    .local v0, "isKeySupported":Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;

    invoke-virtual {v3, v2}, Lcom/oneplus/DeviceKeyHandler$EventHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    const/16 v4, 0xf9

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oneplus/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/oneplus/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUpWithProximityCheck(J)V

    move v0, v2

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/DeviceKeyHandler;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v1, v4, v5}, Lcom/oneplus/DeviceKeyHandler$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 168
    invoke-direct {p0, p1}, Lcom/oneplus/DeviceKeyHandler;->processEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/oneplus/DeviceKeyHandler;->mEventHandler:Lcom/oneplus/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/oneplus/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
