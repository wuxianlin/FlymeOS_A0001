.class final Landroid/graphics/drawable/AnimationDrawable$AnimationState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "AnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimationState"
.end annotation


# instance fields
.field private mDurations:[I

.field private mOneShot:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "owner"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 360
    iget-boolean v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getCapacity()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;[I)[I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p1, "x1"    # [I

    .prologue
    .line 350
    iput-object p1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    return-object p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    .prologue
    .line 350
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p1, "x1"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return p1
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dur"    # I

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 381
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    aput p2, v1, v0

    .line 382
    return-void
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 387
    new-array v0, p2, [I

    .line 388
    .local v0, "newDurations":[I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 389
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 390
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 374
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable$1;)V

    return-object v0
.end method
