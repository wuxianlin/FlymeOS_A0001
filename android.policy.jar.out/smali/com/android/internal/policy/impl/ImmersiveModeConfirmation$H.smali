.class final Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$900(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$800(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
