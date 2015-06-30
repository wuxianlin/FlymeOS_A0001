.class Lcom/android/internal/app/ActionBarImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 156
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mContentAnimations-d8408d(Lcom/android/internal/app/ActionBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mContentView-9bc73f(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mContentView-9bc73f(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mContainerView-e32795(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mContainerView-e32795(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->setAlpha(F)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mSplitView-7b188e(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzSplitActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mContextDisplayMode-a02407(Lcom/android/internal/app/ActionBarImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mOverlayLayout-84c855(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mOverlayLayout-84c855(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mSplitView-7b188e(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzSplitActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setVisibility(I)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mContainerView-e32795(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzActionBarContainer;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mContainerView-e32795(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->setTransitioning(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->access$iput-mCurrentShowAnim-ef88aa(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 185
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->completeDeferredDestroyActionMode()V

    .line 186
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mOverlayLayout-84c855(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$iget-mOverlayLayout-84c855(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    .line 189
    :cond_3
    return-void
.end method
