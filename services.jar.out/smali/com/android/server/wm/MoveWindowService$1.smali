.class Lcom/android/server/wm/MoveWindowService$1;
.super Ljava/lang/Object;
.source "MoveWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MoveWindowService;->moveWindow(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MoveWindowService;

.field final synthetic val$cmd:I

.field final synthetic val$durationTime:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/MoveWindowService;II)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    iput p2, p0, Lcom/android/server/wm/MoveWindowService$1;->val$cmd:I

    iput p3, p0, Lcom/android/server/wm/MoveWindowService$1;->val$durationTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/wm/MoveWindowService$1;->val$cmd:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->isMovingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget v1, p0, Lcom/android/server/wm/MoveWindowService$1;->val$durationTime:I

    # invokes: Lcom/android/server/wm/MoveWindowService;->moveWinNormal(I)V
    invoke-static {v0, v1}, Lcom/android/server/wm/MoveWindowService;->access$100(Lcom/android/server/wm/MoveWindowService;I)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->isMovingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$1;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget v1, p0, Lcom/android/server/wm/MoveWindowService$1;->val$durationTime:I

    # invokes: Lcom/android/server/wm/MoveWindowService;->moveWinDown(I)V
    invoke-static {v0, v1}, Lcom/android/server/wm/MoveWindowService;->access$200(Lcom/android/server/wm/MoveWindowService;I)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
