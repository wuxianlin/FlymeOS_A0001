.class final Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public mCachedTimeMillis:J

.field public mEvent:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 878
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .param p1, "x1"    # Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object p1
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 932
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 933
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 934
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 935
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    .line 937
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    .line 938
    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 910
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 911
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 912
    iput p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    .line 913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    .line 914
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 892
    sget-object v2, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 894
    :try_start_0
    sget v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    if-lez v1, :cond_0

    .line 895
    sget v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    .line 896
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 897
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 898
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 899
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z

    .line 903
    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 904
    monitor-exit v2

    return-object v0

    .line 901
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;-><init>()V

    .restart local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    goto :goto_0

    .line 905
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 917
    sget-object v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 918
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z

    if-eqz v0, :cond_0

    .line 919
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 921
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->clear()V

    .line 922
    sget v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 923
    sget v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    .line 924
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 925
    sput-object p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z

    .line 928
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    return-void
.end method
