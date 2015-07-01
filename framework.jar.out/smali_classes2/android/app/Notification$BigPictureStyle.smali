.class public Landroid/app/Notification$BigPictureStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field private mIsMeizuBigPictureTemplate:Z

.field private mBigLargeIcon:Landroid/graphics/Bitmap;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3635
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 3633
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 3636
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 3638
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 3633
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 3639
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 3640
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 3677
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1200(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Notification$BigPictureStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3679
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$BigPictureStyle;->mzMakeBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v2, #android:id@big_picture#t

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3681
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 3683
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$800(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1300(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 3684
    .local v1, "twoTextLines":Z
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v1, :cond_1

    const v2, #android:id@profile_badge_line2#t

    :goto_1
    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v3, v0, v2}, Landroid/app/Notification$Builder;->access$1400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V

    .line 3686
    return-object v0

    .line 3683
    .end local v1    # "twoTextLines":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3684
    .restart local v1    # "twoTextLines":Z
    :cond_1
    const v2, #android:id@profile_badge_line3#t

    goto :goto_1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3693
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 3695
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v0, :cond_0

    .line 3696
    const-string v0, "android.largeIcon.big"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3698
    :cond_0
    const-string v0, "android.picture"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3699
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3671
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 3672
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    .line 3673
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3663
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 3664
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3719
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$BigPictureStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1500(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3720
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3706
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 3708
    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3709
    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    .line 3711
    :cond_0
    const-string v0, "android.picture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 3712
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 3647
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 3648
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 3655
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 3656
    return-object p0
.end method

.method private mzMakeBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mIsMeizuBigPictureTemplate:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/flyme/internal/R$layout;->mz_notification_template_big_picture:I

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mIsMeizuBigPictureTemplate:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flyme/internal/R$id;->big_picture:I

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v0, Lcom/flyme/internal/R$id;->status_bar_latest_event_content:I

    const-string v1, "setBackgroundResource"

    sget v2, Lcom/flyme/internal/R$drawable;->mz_notification_bg_opaque:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setMeizuBigPictureTemplate()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mIsMeizuBigPictureTemplate:Z

    return-void
.end method
