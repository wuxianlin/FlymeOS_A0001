.class Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlymeShowBootMessage"
.end annotation


# instance fields
.field always:Z

.field msg:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/CharSequence;
    .param p3, "always"    # Z

    .prologue
    .line 6343
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6344
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->msg:Ljava/lang/CharSequence;

    .line 6345
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->always:Z

    .line 6346
    return-void
.end method

.method private showFlymeBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 14
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 6355
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "showFlymeBootMessage: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6356
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6357
    .local v6, "msgText":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 6358
    .local v7, "showProcessBar":Z
    const/4 v3, 0x0

    .line 6359
    .local v3, "dex_opt":I
    const/4 v8, 0x0

    .line 6360
    .local v8, "total_size":I
    if-eqz v6, :cond_3

    const-string v11, "flymeTrain"

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 6362
    :try_start_0
    const-string v11, "flymeTrain"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6363
    .local v0, "arry1":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v6, v0, v11

    .line 6364
    const/4 v11, 0x1

    aget-object v2, v0, v11

    .line 6365
    .local v2, "dexText":Ljava/lang/String;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6366
    const-string v11, "processTrain"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6367
    .local v1, "arry2":[Ljava/lang/String;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6368
    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6369
    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 6371
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6372
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6373
    const/4 v7, 0x1

    .line 6384
    .end local v0    # "arry1":[Ljava/lang/String;
    .end local v1    # "arry2":[Ljava/lang/String;
    .end local v2    # "dexText":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    if-nez v11, :cond_1

    .line 6385
    const-string v11, "WindowManager"

    const-string v12, "mFlymeBootMsgText == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6386
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 6387
    .local v5, "inflater":Landroid/view/LayoutInflater;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    sget v12, Lcom/flyme/internal/R$layout;->android_upgrading_layout:I

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    .line 6389
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v13, Lcom/flyme/internal/R$id;->dex_opt_title:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    .line 6390
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    sget v12, Lcom/flyme/internal/R$string;->dexopt_apps_title:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 6391
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v13, Lcom/flyme/internal/R$id;->dex_opt_message:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    .line 6392
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v13, Lcom/flyme/internal/R$id;->dex_opt_progressbar:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    iput-object v11, v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    .line 6394
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 6395
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 6397
    .local v10, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v11, 0x5

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 6398
    const/16 v11, 0x7e5

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6400
    const/16 v11, 0x11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 6401
    const/4 v11, -0x1

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6402
    const/4 v11, -0x1

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6404
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6405
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6407
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    invoke-interface {v9, v11, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6408
    const-string v11, "WindowManager"

    const-string v12, "mFlymeBootMsgText == null addView"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6411
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "wm":Landroid/view/WindowManager;
    .end local v10    # "wmParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setText : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6412
    if-eqz v7, :cond_4

    .line 6413
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 6414
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    mul-int/lit8 v12, v3, 0x64

    div-int/2addr v12, v8

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6418
    :goto_2
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "showProcessBar"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6420
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6421
    return-void

    .line 6356
    .end local v3    # "dex_opt":I
    .end local v6    # "msgText":Ljava/lang/String;
    .end local v7    # "showProcessBar":Z
    .end local v8    # "total_size":I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 6374
    .restart local v3    # "dex_opt":I
    .restart local v6    # "msgText":Ljava/lang/String;
    .restart local v7    # "showProcessBar":Z
    .restart local v8    # "total_size":I
    :catch_0
    move-exception v4

    .line 6375
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "showFlymeBootMessage"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6378
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 6379
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6380
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    const v12, #android:string@android_upgrading_title#t

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 6416
    :cond_4
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6350
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->msg:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->always:Z

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;->showFlymeBootMessage(Ljava/lang/CharSequence;Z)V

    .line 6351
    return-void
.end method
