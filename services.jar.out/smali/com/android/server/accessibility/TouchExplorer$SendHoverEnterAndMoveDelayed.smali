.class Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverEnterAndMoveDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 1

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    const-string v0, "SendHoverEnterAndMoveDelayed"

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    .line 1348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 1378
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    .line 1379
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1380
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1381
    .local v0, "eventCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1382
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1381
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1384
    :cond_0
    return-void
.end method

.method private isPending()Z
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1369
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    .line 1371
    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->run()V

    .line 1389
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1391
    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;ZII)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "touchExplorationInProgress"    # Z
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1356
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 1357
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    .line 1358
    iput p4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1359
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$2700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1360
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1395
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/16 v3, 0x200

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V
    invoke-static {v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1900(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1397
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1399
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    const/16 v4, 0x9

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v6, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/accessibility/TouchExplorer;->access$2800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1407
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1408
    .local v0, "eventCount":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1409
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    const/4 v4, 0x7

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v6, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/accessibility/TouchExplorer;->access$2800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1417
    .end local v0    # "eventCount":I
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    .line 1418
    return-void
.end method
