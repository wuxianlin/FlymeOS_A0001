.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayMagnifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    }
.end annotation


# static fields
.field private static final DEBUG_LAYERS:Z = false

.field private static final DEBUG_RECTANGLE_REQUESTED:Z = false

.field private static final DEBUG_ROTATION:Z = false

.field private static final DEBUG_VIEWPORT_WINDOW:Z = false

.field private static final DEBUG_WINDOW_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DisplayMagnifier"


# instance fields
.field private final mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempRegion2:Landroid/graphics/Region;

.field private final mTempRegion3:Landroid/graphics/Region;

.field private final mTempRegion4:Landroid/graphics/Region;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 229
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    .line 230
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    .line 231
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 232
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    .line 245
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    .line 246
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 247
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .line 248
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    .line 249
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    return-wide v0
.end method


# virtual methods
.method public destroyLocked()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->destroyWindow()V

    .line 388
    return-void
.end method

.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->drawWindowIfNeededLocked()V

    .line 393
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 5
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    .line 371
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 372
    .local v1, "spec":Landroid/view/MagnificationSpec;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 374
    .local v0, "policy":Landroid/view/WindowManagerPolicy;
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 375
    .local v2, "windowType":I
    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->isTopLevelWindow(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v3

    .line 383
    .end local v0    # "policy":Landroid/view/WindowManagerPolicy;
    .end local v1    # "spec":Landroid/view/MagnificationSpec;
    .end local v2    # "windowType":I
    :cond_0
    :goto_0
    return-object v1

    .line 379
    .restart local v0    # "policy":Landroid/view/WindowManagerPolicy;
    .restart local v1    # "spec":Landroid/view/MagnificationSpec;
    .restart local v2    # "windowType":I
    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v0, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 380
    goto :goto_0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    .line 305
    .local v0, "magnifying":Z
    if-eqz v0, :cond_0

    .line 306
    packed-switch p2, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 313
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 268
    .local v1, "magnifiedRegionBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 269
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 273
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 274
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 275
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 276
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 277
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->onRotationChangedLocked()V

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method

.method public onWindowLayersChangedLocked()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 287
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 9
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 325
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v1

    .line 326
    .local v1, "magnifying":Z
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 327
    .local v3, "type":I
    packed-switch p2, :pswitch_data_0

    .line 368
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 330
    :pswitch_1
    if-eqz v1, :cond_0

    .line 333
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 351
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 352
    .local v0, "magnifiedRegionBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 354
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 355
    .local v2, "touchableRegionBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 356
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {v4, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 357
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 358
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7da -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7ec -> :sswitch_0
    .end sparse-switch
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 258
    return-void
.end method
