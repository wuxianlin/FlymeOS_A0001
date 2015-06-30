.class Lcom/android/internal/policy/impl/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->registerSwipeCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ALPHA_DECREASE:F = 0.5f


# instance fields
.field private mIsTranslucent:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 1

    .prologue
    .line 4190
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->mIsTranslucent:Z

    return-void
.end method


# virtual methods
.method public onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 4
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 4212
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4213
    .local v0, "newParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4214
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4215
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4216
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/16 v2, 0x400

    const/16 v3, 0x600

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 4217
    return-void
.end method

.method public onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V
    .locals 4
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;
    .param p2, "progress"    # F
    .param p3, "translate"    # F

    .prologue
    .line 4196
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 4197
    .local v1, "newParams":Landroid/view/WindowManager$LayoutParams;
    float-to-int v2, p3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4198
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4199
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4201
    const/4 v0, 0x0

    .line 4202
    .local v0, "flags":I
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    .line 4203
    const/16 v0, 0x400

    .line 4207
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/16 v3, 0x600

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 4208
    return-void

    .line 4205
    :cond_0
    const/16 v0, 0x200

    goto :goto_0
.end method
