.class Landroid/widget/TextView$Marquee$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .locals 0

    .prologue
    .line 9299
    iput-object p1, p0, Landroid/widget/TextView$Marquee$1;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 9302
    iget-object v0, p0, Landroid/widget/TextView$Marquee$1;->this$0:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    .line 9303
    return-void
.end method
