.class public abstract Landroid/telecom/Call$Listener;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 383
    return-void
.end method

.method public onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    return-void
.end method

.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    return-void
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 342
    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "parent"    # Landroid/telecom/Call;

    .prologue
    .line 326
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 363
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "state"    # I

    .prologue
    .line 318
    return-void
.end method

.method public onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 372
    return-void
.end method
