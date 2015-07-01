.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$FlymeInjector;,
        Landroid/view/inputmethod/InputMethodManager$MzHandler;,
        Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;,
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$H;
    }
.end annotation


# static fields
.field public static final ID_IME_MEIZU:Ljava/lang/String; = "com.baidu.input_mz/com.meizu.input.MzInputService"

.field static final MSG_VIS_CHANGED:I = 0x8

.field public static final MZ_FLAG_DISABLE_NEXT_ANIMATION:I = 0x1

.field public static final CONTROL_START_INITIAL:I = 0x100

.field public static final CONTROL_WINDOW_FIRST:I = 0x4

.field public static final CONTROL_WINDOW_IS_TEXT_EDITOR:I = 0x2

.field public static final CONTROL_WINDOW_VIEW_HAS_FOCUS:I = 0x1

.field static final DEBUG:Z = false

.field public static final DISPATCH_HANDLED:I = 0x1

.field public static final DISPATCH_IN_PROGRESS:I = -0x1

.field public static final DISPATCH_NOT_HANDLED:I = 0x0

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field static final INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_FLUSH_INPUT_EVENT:I = 0x7

.field static final MSG_SEND_INPUT_EVENT:I = 0x5

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0x9

.field static final MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field static final MSG_UNBIND:I = 0x3

.field private static final NOT_AN_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = -0x1

.field static final PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field private static final REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_IMPLICIT:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static sInstance:Landroid/view/inputmethod/InputMethodManager;


# instance fields
.field mMzHandler:Landroid/view/inputmethod/InputMethodManager$MzHandler;

.field mMzInputShown:Z

.field mMzInputShownChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mMzInputTheme:Ljava/lang/String;

.field mMzPrivateImeOptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMzService:Lcom/android/internal/view/MzIInputMethodManager;

.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurChannel:Landroid/view/InputChannel;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field private mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field mHasBeenInactive:Z

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private mLastSentUserActionNotificationSequenceNumber:I

.field final mMainLooper:Landroid/os/Looper;

.field mNextServedView:Landroid/view/View;

.field private mNextUserActionNotificationSequenceNumber:I

.field final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestUpdateCursorAnchorInfoMonitorMode:I

.field mServedConnecting:Z

.field mServedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTmpCursorRect:Landroid/graphics/Rect;

.field private final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field private final mViewTopLeft:[I


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .locals 4
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 317
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 333
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    .line 339
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 350
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mViewTopLeft:[I

    .line 355
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 362
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 379
    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 381
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v3}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 382
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 555
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 602
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 605
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 606
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 607
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v0, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 608
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v0, p2, v1, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager$FlymeInjector;->initFlymeExtFields(Landroid/view/inputmethod/InputMethodManager;)V

    .line 610
    return-void
.end method

.method static synthetic access$002(Landroid/view/inputmethod/InputMethodManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # I

    .prologue
    .line 205
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return p1
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodManager;ZZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Landroid/view/inputmethod/InputMethodManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # I

    .prologue
    .line 205
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    return p1
.end method

.method static synthetic access$400(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method private checkFocusNoStartInput(ZZ)Z
    .locals 6
    .param p1, "forceNewFocus"    # Z
    .param p2, "finishComposingText"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1360
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    if-nez p1, :cond_0

    .line 1396
    :goto_0
    return v1

    .line 1364
    :cond_0
    const/4 v0, 0x0

    .line 1365
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1366
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_1

    .line 1367
    monitor-exit v3

    goto :goto_0

    .line 1390
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1375
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v4, :cond_2

    .line 1376
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1380
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 1381
    monitor-exit v3

    goto :goto_0

    .line 1384
    :cond_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1386
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 1387
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1388
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1389
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1390
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 1393
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_3
    move v1, v2

    .line 1396
    goto :goto_0
.end method

.method private flushPendingEventsLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 1869
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v6}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 1871
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1872
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1873
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1874
    .local v3, "seq":I
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1875
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1876
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1878
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "seq":I
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 5

    .prologue
    .line 618
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    monitor-enter v3

    .line 619
    :try_start_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_0

    .line 620
    const-string v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 621
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 622
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    sput-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 624
    :cond_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v3

    return-object v2

    .line 625
    .end local v1    # "service":Lcom/android/internal/view/IInputMethodManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private notifyInputConnectionFinished()V
    .locals 2

    .prologue
    .line 838
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 844
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 846
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 849
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1882
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 1883
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_0

    .line 1884
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .end local v0    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$1;)V

    .line 1886
    .restart local v0    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_0
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1887
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 1888
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 1889
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 1890
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 1891
    return-object v0
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 634
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 1
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 1895
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 1896
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1897
    return-void
.end method

.method static scheduleCheckFocusLocked(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1333
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 1336
    :cond_0
    return-void
.end method

.method private showInputMethodPickerLocked()V
    .locals 4

    .prologue
    .line 1907
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :goto_0
    return-void

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public checkFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1353
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    .line 1356
    :cond_0
    return-void
.end method

.method clearBindingLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 775
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 776
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 777
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 778
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 779
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 780
    return-void
.end method

.method clearConnectionLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 801
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 802
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 803
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    .line 805
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    .line 807
    :cond_0
    return-void
.end method

.method closeCurrentInput()V
    .locals 4

    .prologue
    .line 1401
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :goto_0
    return-void

    .line 1402
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 11
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x1

    .line 1757
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    .line 1758
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_2

    .line 1759
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_0

    .line 1760
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v7, v0

    .line 1761
    .local v7, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_0

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1764
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 1765
    monitor-exit v10

    .line 1785
    .end local v7    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return v1

    .line 1771
    :cond_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object v9

    .line 1773
    .local v9, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1775
    invoke-virtual {p0, v9}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    monitor-exit v10

    goto :goto_0

    .line 1784
    .end local v9    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1779
    .restart local v9    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v9}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1780
    .local v8, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1781
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v1, v8}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 1782
    const/4 v1, -0x1

    monitor-exit v10

    goto :goto_0

    .line 1784
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1785
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 866
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 867
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 868
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    :cond_0
    monitor-exit v1

    .line 881
    :goto_0
    return-void

    .line 873
    :cond_1
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 874
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 876
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 877
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2144
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2145
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIInputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasBeenInactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2159
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 2160
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2161
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2165
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextUserActionNotificationSequenceNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastSentUserActionNotificationSequenceNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2176
    return-void

    .line 2163
    :cond_0
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method finishInputLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 813
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    .line 814
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 815
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    .line 820
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->notifyInputConnectionFinished()V

    .line 827
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 828
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 830
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 832
    :cond_1
    return-void

    .line 821
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method finishedInputEvent(IZZ)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .prologue
    .line 1831
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1832
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1833
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1834
    monitor-exit v3

    .line 1850
    :goto_0
    return-void

    .line 1837
    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 1838
    .local v1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1839
    const-wide/16 v4, 0x4

    const-string v2, "aq:imm"

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v4, v5, v2, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1841
    if-eqz p3, :cond_1

    .line 1842
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    invoke-virtual {p0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    goto :goto_0

    .line 1845
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 1847
    .end local v0    # "index":I
    .end local v1    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public focusIn(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1289
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1290
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1291
    monitor-exit v1

    .line 1292
    return-void

    .line 1291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method focusInLocked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1297
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1304
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 1305
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V

    goto :goto_0
.end method

.method public focusOut(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1313
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1317
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 1328
    :cond_0
    monitor-exit v1

    .line 1329
    return-void

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    return-object v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    .prologue
    .line 1934
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1936
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 1939
    :goto_0
    return-object v1

    .line 1937
    :catch_0
    move-exception v0

    .line 1938
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1939
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1941
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 3
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 5

    .prologue
    .line 2035
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2037
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 2040
    :goto_0
    return v1

    .line 2038
    :catch_0
    move-exception v0

    .line 2039
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2040
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2042
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    .prologue
    .line 2133
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2135
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 2138
    :goto_0
    return-object v1

    .line 2136
    :catch_0
    move-exception v0

    .line 2137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2138
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2140
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1999
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 2000
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    .local v5, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :try_start_1
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v3

    .line 2006
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 2007
    .local v6, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 2008
    .local v0, "N":I
    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 2009
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2010
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2011
    .local v4, "o":Ljava/lang/Object;
    instance-of v7, v4, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v7, :cond_3

    .line 2012
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2013
    const-string v7, "InputMethodManager"

    const-string v9, "IMI list already contains the same InputMethod."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2026
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "o":Ljava/lang/Object;
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v5

    .line 2016
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2017
    .restart local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2018
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    if-eqz v6, :cond_2

    instance-of v7, v4, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v7, :cond_2

    .line 2019
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2023
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_0
    move-exception v1

    .line 2024
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IME died: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2027
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1718
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    return-void

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1048
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1049
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 1050
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    :goto_0
    return v0

    .line 1054
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1055
    :catch_0
    move-exception v2

    .line 1057
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 690
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .locals 2
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    .prologue
    .line 1854
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 1855
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1858
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    .line 1866
    :goto_0
    return-void

    .line 1862
    :cond_0
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1863
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public isAcceptingText()Z
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 767
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 755
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 756
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 757
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActive(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 743
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCursorAnchorInfoEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1552
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 1553
    :try_start_0
    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v0, v3

    .line 1555
    .local v0, "isImmediate":Z
    :goto_0
    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v1, v3

    .line 1557
    .local v1, "isMonitoring":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    monitor-exit v4

    return v2

    .end local v0    # "isImmediate":Z
    .end local v1    # "isMonitoring":Z
    :cond_2
    move v0, v2

    .line 1553
    goto :goto_0

    .restart local v0    # "isImmediate":Z
    :cond_3
    move v1, v2

    .line 1555
    goto :goto_1

    .line 1558
    .end local v0    # "isImmediate":Z
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return v0
.end method

.method public isImeShowing()Z
    .locals 2

    .prologue
    .line 1343
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->isImeShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1345
    :goto_0
    return v1

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1542
    const/4 v0, 0x0

    return v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .locals 2
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 722
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyUserAction()V
    .locals 5

    .prologue
    .line 1966
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1967
    :try_start_0
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    if-ne v1, v3, :cond_0

    .line 1976
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    :goto_0
    return-void

    .line 1986
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodManager;->notifyUserAction(I)V

    .line 1987
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1992
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "softInputMode"    # I
    .param p4, "first"    # Z
    .param p5, "windowFlags"    # I

    .prologue
    .line 1412
    const/4 v8, 0x0

    .line 1413
    .local v8, "forceNewFocus":Z
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1418
    :try_start_0
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    if-eqz v0, :cond_0

    .line 1420
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 1421
    const/4 v8, 0x1

    .line 1423
    :cond_0
    if-eqz p2, :cond_3

    move-object v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1424
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    const/4 v3, 0x0

    .line 1427
    .local v3, "controlFlags":I
    if-eqz p2, :cond_1

    .line 1428
    or-int/lit8 v3, v3, 0x1

    .line 1429
    invoke-virtual {p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    or-int/lit8 v3, v3, 0x2

    .line 1433
    :cond_1
    if-eqz p4, :cond_2

    .line 1434
    or-int/lit8 v3, v3, 0x4

    .line 1437
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v8, v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1442
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v3, p3, p5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1458
    :goto_1
    return-void

    .end local v3    # "controlFlags":I
    :cond_3
    move-object v0, p1

    .line 1423
    goto :goto_0

    .line 1424
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1450
    .restart local v3    # "controlFlags":I
    :cond_4
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 1453
    :try_start_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p3

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1457
    :goto_2
    :try_start_3
    monitor-exit v9

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1455
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 2
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    .prologue
    .line 713
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 856
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_0

    .line 857
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 859
    instance-of v0, p1, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v0, :cond_0

    .line 860
    check-cast p1, Landroid/view/inputmethod/BaseInputConnection;

    .end local p1    # "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p1}, Landroid/view/inputmethod/BaseInputConnection;->reportFinish()V

    .line 863
    :cond_0
    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1119
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1120
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1121
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1123
    :cond_0
    monitor-exit v1

    .line 1130
    :goto_0
    return-void

    .line 1126
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto :goto_0

    .line 1127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1655
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1656
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1657
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_2

    .line 1660
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    :goto_0
    return-void

    .line 1664
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 4
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    const/4 v0, 0x1

    .line 1791
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1792
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 1793
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1794
    monitor-exit v3

    .line 1801
    :goto_0
    return-void

    .line 1797
    :cond_0
    if-ne v1, v0, :cond_1

    .line 1798
    .local v0, "handled":Z
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    goto :goto_0

    .line 1797
    .end local v0    # "handled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1798
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .locals 7
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 1805
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_2

    .line 1806
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v3, :cond_0

    .line 1807
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 1810
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1811
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 1812
    .local v2, "seq":I
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1813
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1814
    const-wide/16 v4, 0x4

    const-string v3, "aq:imm"

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v4, v5, v3, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1817
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1818
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1819
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1820
    const/4 v3, -0x1

    .line 1826
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "seq":I
    :goto_0
    return v3

    .line 1823
    .restart local v0    # "event":Landroid/view/InputEvent;
    .restart local v2    # "seq":I
    :cond_1
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send input event to IME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dropping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 5
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2123
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2125
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 2130
    return-void

    .line 2126
    :catch_0
    move-exception v0

    .line 2127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2129
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 5
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 1951
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1953
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 1956
    :goto_0
    return v1

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1956
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1958
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFullscreenMode(Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    .prologue
    .line 707
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 708
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 699
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method setInputChannelLocked(Landroid/view/InputChannel;)V
    .locals 1
    .param p1, "channel"    # Landroid/view/InputChannel;

    .prologue
    .line 783
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, p1, :cond_2

    .line 784
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_0

    .line 785
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    .line 786
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 789
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 792
    :cond_1
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 794
    :cond_2
    return-void
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1681
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    return-void

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 1698
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1702
    return-void

    .line 1699
    :catch_0
    move-exception v0

    .line 1700
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUpdateCursorAnchorInfoMode(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1567
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1568
    :try_start_0
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 1569
    monitor-exit v1

    .line 1570
    return-void

    .line 1569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 2098
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2100
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 2103
    :goto_0
    return v1

    .line 2101
    :catch_0
    move-exception v0

    .line 2102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2103
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2105
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 1919
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1921
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1926
    return-void

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1925
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showInputMethodPicker()V
    .locals 2

    .prologue
    .line 1900
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1901
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 1902
    monitor-exit v1

    .line 1903
    return-void

    .line 1902
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .prologue
    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v0, 0x0

    .line 977
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 978
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 979
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 981
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    :goto_0
    return v0

    .line 985
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 986
    :catch_0
    move-exception v2

    .line 989
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1739
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    return-void

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 996
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 682
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startGettingWindowFocus(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 1462
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1463
    :try_start_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    .line 1464
    monitor-exit v1

    .line 1465
    return-void

    .line 1464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startInputInner(Landroid/os/IBinder;III)Z
    .locals 15
    .param p1, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p2, "controlFlags"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .prologue
    .line 1135
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1136
    :try_start_0
    iget-object v13, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 1140
    .local v13, "view":Landroid/view/View;
    if-nez v13, :cond_0

    .line 1142
    const/4 v1, 0x0

    monitor-exit v2

    .line 1266
    :goto_0
    return v1

    .line 1144
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    invoke-virtual {v13}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 1151
    .local v12, "vh":Landroid/os/Handler;
    if-nez v12, :cond_1

    .line 1157
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 1158
    const/4 v1, 0x0

    goto :goto_0

    .line 1144
    .end local v12    # "vh":Landroid/os/Handler;
    .end local v13    # "view":Landroid/view/View;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1160
    .restart local v12    # "vh":Landroid/os/Handler;
    .restart local v13    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1164
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1170
    const/4 v1, 0x0

    goto :goto_0

    .line 1176
    :cond_2
    new-instance v7, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v7}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1177
    .local v7, "tba":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1178
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v7, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 1179
    invoke-virtual {v13, v7}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 1182
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v14, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v14

    .line 1185
    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v1, v13, :cond_3

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v1, :cond_4

    .line 1190
    :cond_3
    const/4 v1, 0x0

    monitor-exit v14

    goto :goto_0

    .line 1264
    :catchall_1
    move-exception v1

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_5

    move/from16 v0, p2

    or-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    :cond_5
    iput-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager$FlymeInjector;->mzAdjustEditorInfo(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->notifyInputConnectionFinished()V

    iput-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v10, :cond_9

    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    new-instance v8, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v8, v1, v10, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    .line 1217
    .local v8, "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :goto_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v1, :cond_6

    .line 1218
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    .line 1220
    :cond_6
    iput-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1227
    if-eqz p1, :cond_a

    .line 1228
    :try_start_4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v11

    .line 1236
    .local v11, "res":Lcom/android/internal/view/InputBindResult;
    :goto_2
    if-eqz v11, :cond_7

    .line 1237
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1238
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 1239
    iget v1, v11, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1240
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1241
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 1242
    iget v1, v11, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    .line 1255
    :cond_7
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_8

    .line 1257
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1264
    .end local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_8
    :goto_3
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1266
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1215
    .end local v8    # "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    goto :goto_1

    .line 1232
    :cond_a
    :try_start_7
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move/from16 v0, p2

    invoke-interface {v1, v2, v8, v7, v0}, Lcom/android/internal/view/IInputMethodManager;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v11

    .restart local v11    # "res":Lcom/android/internal/view/InputBindResult;
    goto :goto_2

    .line 1245
    :cond_b
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_c

    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v1, v2, :cond_c

    .line 1246
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1248
    :cond_c
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v1, :cond_7

    .line 1251
    const/4 v1, 0x1

    :try_start_8
    monitor-exit v14

    goto/16 :goto_0

    .line 1261
    .end local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :catch_0
    move-exception v9

    .line 1262
    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 1258
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 2055
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2057
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 2060
    :goto_0
    return v1

    .line 2058
    :catch_0
    move-exception v0

    .line 2059
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2060
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2062
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .prologue
    .line 2076
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2078
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 2081
    :goto_0
    return v1

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2083
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 1102
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 1104
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I

    .prologue
    .line 1076
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1077
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1078
    :cond_0
    monitor-exit v1

    .line 1087
    :goto_0
    return-void

    .line 1080
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1082
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1083
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1579
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1580
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1581
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_2

    .line 1584
    :cond_1
    monitor-exit v2

    .line 1600
    :goto_0
    return-void

    .line 1587
    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1588
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 1593
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 1594
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1599
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .prologue
    .line 1607
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1610
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1611
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1612
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_4

    .line 1615
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 1640
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1619
    :cond_4
    :try_start_1
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    .line 1621
    .local v1, "isImmediate":Z
    :goto_1
    if-nez v1, :cond_6

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1628
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1619
    .end local v1    # "isImmediate":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1632
    .restart local v1    # "isImmediate":Z
    :cond_6
    :try_start_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2}, Lcom/android/internal/view/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 1633
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 1635
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1640
    :goto_2
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 884
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 885
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 886
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 888
    :cond_0
    monitor-exit v1

    .line 898
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 893
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 894
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    .prologue
    .line 1480
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1481
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1482
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v0, :cond_2

    .line 1485
    :cond_1
    monitor-exit v8

    .line 1511
    :goto_0
    return-void

    .line 1488
    :cond_2
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, p3, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, p4, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p5, :cond_4

    .line 1495
    :cond_3
    :try_start_1
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1496
    .local v1, "oldSelStart":I
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1500
    .local v2, "oldSelEnd":I
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1501
    iput p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1502
    iput p4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1503
    iput p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 1504
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1510
    .end local v1    # "oldSelStart":I
    .end local v2    # "oldSelEnd":I
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1506
    :catch_0
    move-exception v7

    .line 1507
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public viewClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1517
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    .line 1518
    .local v1, "focusChanged":Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1519
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1520
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_3

    .line 1523
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    :goto_1
    return-void

    .line 1517
    .end local v1    # "focusChanged":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1527
    .restart local v1    # "focusChanged":Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1531
    :goto_2
    :try_start_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "appWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1275
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1276
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1277
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1279
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1281
    :cond_0
    monitor-exit v1

    .line 1282
    return-void

    .line 1281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShownChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShownChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public enableInputWindowNextAnimation(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mMzService:Lcom/android/internal/view/MzIInputMethodManager;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/MzIInputMethodManager;->mzSetFlags(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getCurEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getMzHandler()Landroid/view/inputmethod/InputMethodManager$MzHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mMzHandler:Landroid/view/inputmethod/InputMethodManager$MzHandler;

    return-object v0
.end method

.method public getMzInputTheme()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getMzInputThemeLight()Z
    .locals 2

    .prologue
    const-string v0, "white"

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getPrivateImeOptionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mMzPrivateImeOptionsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getServedView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    return-object v0
.end method

.method public isSoftInputShown()Z
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzService:Lcom/android/internal/view/MzIInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/MzIInputMethodManager;->mzIsShown()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShown:Z

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShownChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInputShown(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShown:Z

    if-eq v2, p1, :cond_0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShown:Z

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShownChangeListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .local v1, "l":Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;
    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;->onInputShownChanged(Z)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setMzInputThemeLight(Z)V
    .locals 2
    .param p1, "light"    # Z

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "white"

    .local v0, "theme":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-void

    .end local v0    # "theme":Ljava/lang/String;
    :cond_0
    const-string v0, "black"

    goto :goto_0

    .restart local v0    # "theme":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_1
.end method
