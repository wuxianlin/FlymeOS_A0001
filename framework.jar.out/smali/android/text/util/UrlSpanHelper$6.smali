.class final Landroid/text/util/UrlSpanHelper$6;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper;->showWarning(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$openUri:Landroid/net/Uri;

.field final synthetic val$widget:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$6;->val$openUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$6;->val$openUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Landroid/text/util/UrlSpanHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v0}, Landroid/text/util/UrlSpanHelper;->access$700(Landroid/content/Context;Landroid/content/Intent;)V

    .line 535
    return-void
.end method
