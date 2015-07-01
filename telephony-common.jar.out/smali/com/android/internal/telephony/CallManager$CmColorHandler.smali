.class public Lcom/android/internal/telephony/CallManager$CmColorHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CmColorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    .line 2341
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CmColorHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2345
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2352
    :goto_0
    return-void

    .line 2348
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CmColorHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager;->mCallCdmaInfoRecRegistrants:Landroid/os/RegistrantList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2345
    :pswitch_data_0
    .packed-switch 0x7a
        :pswitch_0
    .end packed-switch
.end method
