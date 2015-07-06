.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$OnScrollListener;,
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mLastScrollState:I

.field private mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:attr@galleryStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    iput v7, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 84
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 121
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 127
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 152
    iput-boolean v6, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 157
    iput-boolean v6, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 183
    iput-boolean v6, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 206
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 207
    iget-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 209
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 213
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 214
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 217
    :cond_0
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 219
    .local v1, "animationDuration":I
    if-lez v1, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 223
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 225
    .local v3, "spacing":I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 227
    const/4 v5, 0x3

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .local v4, "unselectedAlpha":F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/Gallery;->initExtFlymeFields()V

    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Gallery;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Gallery;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/Gallery;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/Gallery;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/Gallery;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 63
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 937
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Gallery;->getMeasuredHeight()I

    move-result v3

    .line 938
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 940
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 942
    .local v2, "childTop":I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 955
    :goto_2
    return v2

    .line 937
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 938
    .restart local v3    # "myHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 944
    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 945
    goto :goto_2

    .line 947
    :sswitch_1
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 949
    .local v0, "availableSpace":I
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 950
    goto :goto_2

    .line 952
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 942
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v7

    .line 487
    .local v7, "numChildren":I
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 488
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .line 489
    .local v8, "start":I
    const/4 v1, 0x0

    .line 491
    .local v1, "count":I
    if-eqz p1, :cond_5

    .line 492
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 493
    .local v3, "galleryLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 494
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 495
    .local v6, "n":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_4

    .line 504
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v9, :cond_1

    .line 505
    const/4 v8, 0x0

    .line 525
    .end local v3    # "galleryLeft":I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    .line 527
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    .line 528
    iget v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 530
    :cond_2
    return-void

    .restart local v3    # "galleryLeft":I
    :cond_3
    move v6, v5

    .line 494
    goto :goto_1

    .line 499
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_4
    move v8, v6

    .line 500
    add-int/lit8 v1, v1, 0x1

    .line 501
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 493
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 508
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 509
    .local v4, "galleryRight":I
    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_6

    .line 510
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_7

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 511
    .restart local v6    # "n":I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 512
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v4, :cond_8

    .line 520
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_1

    .line 521
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    move v6, v5

    .line 510
    goto :goto_4

    .line 515
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_8
    move v8, v6

    .line 516
    add-int/lit8 v1, v1, 0x1

    .line 517
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 509
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1179
    const/4 v6, 0x0

    .line 1181
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1186
    :cond_0
    if-nez v6, :cond_1

    .line 1187
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1188
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1191
    :cond_1
    if-eqz v6, :cond_2

    .line 1192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1195
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1115
    if-eqz p1, :cond_0

    .line 1116
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1119
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1120
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1124
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1125
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1124
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1128
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1129
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 694
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    .line 698
    :goto_0
    return-void

    .line 696
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 732
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 733
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 736
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 740
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 741
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 742
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 750
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 751
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 755
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 758
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 759
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 745
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .line 746
    .restart local v0    # "curPosition":I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 747
    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 761
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    .prologue
    .line 701
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 702
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 703
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 704
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 707
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 711
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 712
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v0, v7, v4

    .line 713
    .local v0, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 721
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v0, v7, :cond_1

    .line 722
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v0, v7

    const/4 v8, 0x0

    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 726
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0    # "curPosition":I
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 717
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 718
    .restart local v1    # "curRightEdge":I
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 729
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 765
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 803
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 804
    .local v3, "itemSpacing":I
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 805
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 806
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 809
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 813
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 814
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 815
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 822
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 823
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 827
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 818
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 819
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 830
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 772
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 773
    .local v3, "itemSpacing":I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 776
    .local v2, "galleryRight":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 780
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 781
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 782
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 789
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 790
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 794
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 797
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 798
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 784
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    const/4 v1, 0x0

    .line 785
    .restart local v1    # "curPosition":I
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 786
    .restart local v0    # "curLeftEdge":I
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 800
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 469
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 850
    iget-boolean v3, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 851
    iget-object v3, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 857
    .local v2, "childLeft":I
    iget v3, p0, Landroid/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 859
    iget v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 862
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 874
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 869
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 872
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 874
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 461
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 460
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 553
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 556
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 558
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 559
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 560
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/Gallery;->mzScrollIntoSlots1()V

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .local v1, "selectedCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .local v0, "scrollAmount":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Gallery;->mzScrollIntoSlots2()V

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .param p1, "childPosition"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-direct/range {p0 .. p1}, Landroid/widget/Gallery;->mzScrollToChild(I)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .local v1, "distance":I
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    const/4 v2, 0x1

    .end local v1    # "distance":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    :cond_2
    const v2, 0x7fffffff

    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    move v6, v4

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v5, v8, v6

    .local v5, "newPos":I
    iget v8, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    goto :goto_0

    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    move v2, v1

    move v6, v4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .local v6, "lp":Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .restart local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    :cond_0
    iget-boolean v8, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p4, v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v6, v9}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    iget v8, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .local v7, "width":I
    if-eqz p4, :cond_3

    move v2, p3

    .local v2, "childLeft":I
    add-int v3, v2, v7

    .local v3, "childRight":I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void

    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "width":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_3
    sub-int v2, p3, v7

    .restart local v2    # "childLeft":I
    move v3, p3

    .restart local v3    # "childRight":I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .local v0, "selectedIndex":I
    if-gez v0, :cond_1

    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    iget-boolean v6, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v6, :cond_1

    iget v6, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .local v3, "extremeItemPosition":I
    :goto_0
    iget v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    :cond_0
    :goto_1
    return v5

    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_1
    move v3, v5

    goto :goto_0

    .restart local v1    # "extremeChild":Landroid/view/View;
    .restart local v3    # "extremeItemPosition":I
    :cond_2
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    .local v4, "galleryCenter":I
    if-eqz p1, :cond_4

    if-le v2, v4, :cond_0

    :cond_3
    sub-int v0, v4, v2

    .local v0, "centerDifference":I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .end local v0    # "centerDifference":I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .restart local v0    # "centerDifference":I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .local v0, "childrenLeft":I
    iget v4, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .local v1, "childrenWidth":I
    iget-boolean v4, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    :cond_0
    iget v4, p0, Landroid/widget/Gallery;->mItemCount:I

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    :goto_0
    return-void

    :cond_1
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    add-int v3, v4, v5

    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    iget-object v4, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    iput-boolean v6, p0, Landroid/widget/Gallery;->mDataChanged:Z

    iput-boolean v6, p0, Landroid/widget/Gallery;->mNeedSync:Z

    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/Gallery;->mzOnDown()V

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Gallery;->mzReportScrollStateChange()V

    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Landroid/widget/Gallery;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->playSoundEffect(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :sswitch_2
    iput-boolean v0, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Gallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .end local v0    # "selectedIndex":I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    iput-boolean v1, p0, Landroid/widget/Gallery;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .local v0, "id":J
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Gallery;->mzOnScroll()V

    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    return v1

    :cond_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    # getter for: Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .local v0, "currentChildIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .end local v0    # "currentChildIndex":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v2, :cond_0

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .restart local v0    # "currentChildIndex":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .param p1, "unselectedAlpha"    # F

    .prologue
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v4, v5}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .local v2, "longPressPosition":I
    if-gez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_3

    const/4 v5, 0x1

    .local v5, "toLeft":Z
    :goto_1
    invoke-virtual {p0, v5, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v3

    .local v3, "limitedDeltaX":I
    if-eq v3, p1, :cond_1

    iget-object v7, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    # invokes: Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v7, v6}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    invoke-direct {p0, v5}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    if-eqz v5, :cond_4

    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    :goto_2
    iget-object v7, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    iget-object v4, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .local v4, "selChild":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .local v1, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .local v0, "childCenter":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .local v2, "galleryCenter":I
    add-int v7, v1, v0

    sub-int/2addr v7, v2

    iput v7, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .end local v0    # "childCenter":I
    .end local v1    # "childLeft":I
    .end local v2    # "galleryCenter":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v3    # "limitedDeltaX":I
    .end local v4    # "selChild":Landroid/view/View;
    .end local v5    # "toLeft":Z
    :cond_3
    move v5, v6

    goto :goto_1

    .restart local v3    # "limitedDeltaX":I
    .restart local v5    # "toLeft":Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method

.method private initExtFlymeFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery;->mLastScrollState:I

    return-void
.end method

.method private mzOnDown()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/Gallery;->mLastScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method private mzOnScroll()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method private mzReportScrollStateChange()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    return-void
.end method

.method private mzScrollIntoSlots1()V
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    :cond_1
    return-void
.end method

.method private mzScrollIntoSlots2()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .local v1, "selectedCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .local v0, "scrollAmount":I
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget v3, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method private mzScrollToChild(I)V
    .locals 2
    .param p1, "childPosition"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/Gallery$OnScrollListener;->onScroll(Landroid/widget/Gallery;III)V

    :cond_0
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    iget v0, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/Gallery;->mLastScrollState:I

    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/Gallery$OnScrollListener;->onScrollStateChanged(Landroid/widget/Gallery;I)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/Gallery$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/Gallery$OnScrollListener;

    .prologue
    iput-object p1, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    .line 1380
    return-void
.end method
