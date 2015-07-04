.class public Lcom/android/internal/app/RecommendActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;,
        Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;,
        Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    }
.end annotation


# static fields
.field public static final COLUMNS_ALL:[Ljava/lang/String;

.field private static final DECODE_IMAGE_TIMES:I = 0x3

.field public static final FIELD_APP_ID:Ljava/lang/String; = "appId"

.field public static final FIELD_DOC_TYPE:Ljava/lang/String; = "doc_type"

.field public static final FIELD_ICON:Ljava/lang/String; = "icon"

.field public static final FIELD_LOCAL_ICON:Ljava/lang/String; = "local_icon"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_SCHEME:Ljava/lang/String; = "app_scheme"

.field public static final FIELD_URL:Ljava/lang/String; = "url"

.field public static final SCHEME_CONTENT:I = 0x2

.field public static final SCHEME_FILE:I = 0x1

.field public static final SCHEME_FILE_CONTENT:I = 0x3

.field public static final SCHEME_NAME_CONTENT:Ljava/lang/String; = "content"

.field public static final SCHEME_NAME_FILE:Ljava/lang/String; = "file"

.field public static final SCHEME_NONE:I = -0x1

.field public static final SCHEME_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecommendActivity"


# instance fields
.field private final GOOGLE_PALY_PKG_NAME:Ljava/lang/String;

.field private hasGooglePaly:Z

.field private isInternational:Z

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mFileEx:Ljava/lang/String;

.field private mGrid:Landroid/widget/GridView;

.field private mMimeType:Ljava/lang/String;

.field private mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

.field private mPlayStoreName:Ljava/lang/String;

.field private mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

.field private mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "doc_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "appId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "app_scheme"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "local_icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/RecommendActivity;->COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 87
    const-string v0, "com.android.vending"

    iput-object v0, p0, Lcom/android/internal/app/RecommendActivity;->GOOGLE_PALY_PKG_NAME:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z

    .line 90
    const-string v0, "Play Store"

    iput-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mPlayStoreName:Ljava/lang/String;

    .line 751
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/RecommendActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/RecommendActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/content/pm/ResolveInfo;
    .param p3, "x3"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/RecommendActivity;->clearAndSetDefalutApp(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/RecommendActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/RecommendActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mFileEx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/RecommendActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/RecommendActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/RecommendActivity;->launchGooglePlaySearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkScheme(Ljava/lang/String;)Z
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "bAvailable":Z
    if-nez p1, :cond_0

    move v1, v0

    .line 182
    .end local v0    # "bAvailable":Z
    .local v1, "bAvailable":I
    :goto_0
    return v1

    .line 178
    .end local v1    # "bAvailable":I
    .restart local v0    # "bAvailable":Z
    :cond_0
    const-string v2, "file"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "content"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 182
    .restart local v1    # "bAvailable":I
    goto :goto_0
.end method

.method private clearAndSetDefalutApp(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "bSetDefault"    # Z

    .prologue
    .line 399
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 401
    .local v11, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 405
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 406
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 407
    .local v7, "cat":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v7    # "cat":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v21, "android.intent.category.DEFAULT"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v21, v0

    const/high16 v22, 0xfff0000

    and-int v7, v21, v22

    .line 413
    .local v7, "cat":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 414
    .local v9, "data":Landroid/net/Uri;
    const/high16 v21, 0x600000

    move/from16 v0, v21

    if-ne v7, v0, :cond_2

    .line 415
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 416
    .local v14, "mimeType":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 418
    :try_start_0
    invoke-virtual {v11, v14}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v14    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 429
    const/high16 v21, 0x600000

    move/from16 v0, v21

    if-ne v7, v0, :cond_3

    const-string v21, "file"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "content"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 432
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 438
    .local v5, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_5

    .line 439
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 440
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 441
    .local v4, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v21

    if-ltz v21, :cond_4

    .line 442
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v18

    .line 443
    .local v18, "port":I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v22

    if-ltz v18, :cond_9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v18    # "port":I
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v16

    .line 450
    .local v16, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v16, :cond_7

    .line 451
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 452
    .local v17, "path":Ljava/lang/String;
    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 453
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PatternMatcher;

    .line 454
    .local v15, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 455
    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getType()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 463
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v15    # "p":Landroid/os/PatternMatcher;
    .end local v16    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v17    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_b

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v3

    .line 465
    .local v3, "N":I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 466
    .local v20, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 467
    .local v6, "bestMatch":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_a

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 469
    .local v19, "r":Landroid/content/pm/ResolveInfo;
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v20, v12

    .line 471
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v6, :cond_8

    .line 472
    move-object/from16 v0, v19

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 467
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 419
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v12    # "i":I
    .end local v19    # "r":Landroid/content/pm/ResolveInfo;
    .end local v20    # "set":[Landroid/content/ComponentName;
    .restart local v14    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 420
    .local v10, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v21, "OpenFileSelectActivity"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 443
    .end local v10    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v14    # "mimeType":Ljava/lang/String;
    .restart local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v18    # "port":I
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 485
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v18    # "port":I
    .restart local v3    # "N":I
    .restart local v6    # "bestMatch":I
    .restart local v12    # "i":I
    .restart local v20    # "set":[Landroid/content/ComponentName;
    :cond_a
    if-eqz p3, :cond_b

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 490
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v12    # "i":I
    .end local v20    # "set":[Landroid/content/ComponentName;
    :cond_b
    return-void
.end method

.method private findRecommendApp(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    .locals 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doc_type=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "selection":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "file"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and (app_scheme=1 or app_scheme=3)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 313
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "content://com.meizu.flyme.appcenter.recommend"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 314
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/android/internal/app/RecommendActivity;->COLUMNS_ALL:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 315
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 316
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    .line 319
    .local v7, "count":I
    const-string/jumbo v3, "name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 320
    .local v10, "index":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 321
    .local v13, "name":Ljava/lang/String;
    const-string v3, "doc_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 322
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, "docType":Ljava/lang/String;
    const-string v3, "local_icon"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 324
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 325
    .local v12, "localIcon":Ljava/lang/String;
    const-string/jumbo v3, "url"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 326
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, "url":Ljava/lang/String;
    new-instance v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    invoke-direct {v11, p0}, Lcom/android/internal/app/RecommendActivity$RecommendInfo;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    .line 329
    .local v11, "info":Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    iput-object v13, v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->name:Ljava/lang/String;

    .line 330
    iput-object v9, v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->type:Ljava/lang/String;

    .line 331
    iput-object v12, v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->localIcon:Ljava/lang/String;

    .line 332
    iput-object v14, v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->url:Ljava/lang/String;

    .line 334
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    .end local v7    # "count":I
    .end local v9    # "docType":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "info":Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    .end local v12    # "localIcon":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :goto_1
    return-object v11

    .line 305
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v3, "content"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and (app_scheme=2 or app_scheme=3)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 310
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and app_scheme=-1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 337
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_4
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 273
    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-object v1

    .line 277
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "dotPosition":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 279
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initHeaderView()Landroid/view/View;
    .locals 5

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$layout;->mz_recommend_header:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 250
    .local v0, "headerLayout":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->initMstoreItemView()Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->initRecommendAppItemView()Landroid/view/View;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    :cond_1
    return-object v0
.end method

.method private initMstoreItemView()Landroid/view/View;
    .locals 8

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$layout;->mz_recommend_header_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 555
    .local v3, "itemView":Landroid/view/View;
    sget v4, Lcom/flyme/internal/R$id;->recommend_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 556
    .local v0, "appImage":Landroid/widget/ImageView;
    sget v4, Lcom/flyme/internal/R$id;->recommend_app_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 557
    .local v2, "appTitle":Landroid/widget/TextView;
    sget v4, Lcom/flyme/internal/R$id;->recommend_app_summary:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 558
    .local v1, "appSummary":Landroid/widget/TextView;
    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 559
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->loadMstoreIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->isInternational()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 562
    sget v4, Lcom/flyme/internal/R$string;->recommend_search_gooleplay:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mPlayStoreName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/RecommendActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    new-instance v4, Lcom/android/internal/app/RecommendActivity$4;

    invoke-direct {v4, p0}, Lcom/android/internal/app/RecommendActivity$4;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    return-object v3

    .line 564
    :cond_0
    sget v4, Lcom/flyme/internal/R$string;->recommend_search_mstore:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initRecommendAppItemView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 493
    iget-object v8, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    if-eqz v8, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-object v6

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/flyme/internal/R$layout;->mz_recommend_header_item:I

    invoke-virtual {v8, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 504
    .local v6, "itemView":Landroid/view/View;
    sget v8, Lcom/flyme/internal/R$id;->recommend_icon:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 505
    .local v0, "appImage":Landroid/widget/ImageView;
    sget v8, Lcom/flyme/internal/R$id;->recommend_app_title:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 506
    .local v2, "appTitle":Landroid/widget/TextView;
    sget v8, Lcom/flyme/internal/R$id;->recommend_app_summary:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 509
    .local v1, "appSummary":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 512
    .local v7, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 514
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://com.meizu.flyme.appcenter.recommend/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    iget-object v9, v9, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->localIcon:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 516
    .local v5, "in":Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 518
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 525
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 532
    :goto_2
    iget-object v8, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    iget-object v8, v8, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    sget v8, Lcom/flyme/internal/R$string;->recommend_recommend:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 534
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    new-instance v8, Lcom/android/internal/app/RecommendActivity$3;

    invoke-direct {v8, p0}, Lcom/android/internal/app/RecommendActivity$3;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 519
    :catch_0
    move-exception v4

    .line 521
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 527
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/flyme/internal/R$drawable;->mz_ic_list_app_small:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private isInternational()Z
    .locals 2

    .prologue
    .line 589
    const-string/jumbo v0, "ro.product.locale.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product.locale.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    .line 593
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    if-eqz v0, :cond_2

    .line 594
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RecommendActivity;->isApkAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z

    .line 597
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    return v0
.end method

.method private launchGooglePlaySearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "tail"    # Ljava/lang/String;

    .prologue
    .line 679
    const-string/jumbo v1, "market://search?q="

    .line 680
    .local v1, "uri":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 684
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 691
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V

    .line 693
    return-void

    .line 687
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private loadMstoreIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 626
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->isInternational()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z

    if-eqz v3, :cond_0

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 629
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 646
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 631
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RecommendActivity"

    const-string v4, "load google play app icon error!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 639
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 640
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.meizu.mstore"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 641
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 642
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 643
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RecommendActivity"

    const-string v4, "load mstore app icon error!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;)V
    .locals 6
    .param p1, "ap"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$layout;->mz_recommend_grid:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 188
    new-instance v0, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;-><init>(Lcom/android/internal/app/RecommendActivity;Lcom/android/internal/app/RecommendActivity$1;)V

    .line 189
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    iget-object v3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v4, Lcom/flyme/internal/R$id;->mz_recommend_apps_grid:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    .line 190
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->resizeGrid()V

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/android/internal/app/RecommendActivity$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/RecommendActivity$1;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 224
    iget-object v3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v4, Lcom/flyme/internal/R$id;->mz_recommend_check_bar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 226
    .local v2, "checkBar":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v4, Lcom/flyme/internal/R$id;->mz_recommend_alwaysUse:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 229
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    const/4 v4, 0x2

    const-string v5, "alwaysUse"

    invoke-static {v4, v5}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 234
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lcom/android/internal/app/RecommendActivity$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/RecommendActivity$2;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    return-void

    .line 231
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public isApkAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 603
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 605
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 606
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mPlayStoreName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 614
    const/4 v2, 0x0

    .line 616
    :cond_1
    return v2

    .line 609
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0
.end method

.method public launchAppCenterSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "tail"    # Ljava/lang/String;

    .prologue
    .line 703
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 704
    .local v1, "mstoreIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 705
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.meizu.mstore"

    const-string v4, "com.meizu.flyme.appcenter.activitys.AppMainTabActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 706
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 709
    const-string v2, "ExtraMime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .line 726
    return-void

    .line 711
    :cond_0
    const-string v2, "ExtraMime"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 715
    :cond_1
    const-string v2, "ExtraSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 722
    sget v2, Lcom/flyme/internal/R$string;->recommend_open_mstore_faile:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1006
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onContentChanged()V

    .line 1007
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->onAlertContentChanged()V

    .line 1008
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    sget v7, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    invoke-virtual {p0, v7}, Lcom/android/internal/app/RecommendActivity;->setTheme(I)V

    .line 119
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iget-object v1, p0, Lcom/android/internal/app/RecommendActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 123
    .local v1, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 124
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 128
    .local v4, "extras":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 131
    .local v3, "extraIntent":Landroid/content/Intent;
    if-eqz v4, :cond_1

    :try_start_0
    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    .line 133
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;

    .line 135
    invoke-direct {p0, v5}, Lcom/android/internal/app/RecommendActivity;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mFileEx:Ljava/lang/String;

    .line 136
    invoke-virtual {v3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    .line 138
    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/app/RecommendActivity;->checkScheme(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mFileEx:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 141
    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/internal/app/RecommendActivity;->findRecommendApp(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v5    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    new-instance v7, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-direct {v7, p0, p0, v3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;-><init>(Lcom/android/internal/app/RecommendActivity;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :goto_1
    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/app/RecommendActivity;->checkScheme(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-virtual {v7}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .line 169
    :goto_2
    return-void

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    goto :goto_0

    .line 155
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->initHeaderView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 165
    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/RecommendActivity;->setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->setupAlert()V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_2
.end method

.method public openAppDetail(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.flyme.appcenter.app.detail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "detail_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0, v0}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .line 676
    return-void
.end method

.method resizeGrid()V
    .locals 6

    .prologue
    .line 729
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v0

    .line 730
    .local v0, "itemCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v2, 0x9

    .line 731
    .local v2, "numPreRow":I
    :goto_0
    if-le v0, v2, :cond_1

    .line 733
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 734
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_item_gap_between_columns_small:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 735
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v3, v3, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_width_large:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AlertControllerExt;->setWidth(I)V

    .line 743
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    if-eqz v3, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$dimen;->mz_recommend_window_port_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 748
    .local v1, "mMaxHeight":I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v3, v3, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/AlertControllerExt;->setMaxHeight(I)V

    .line 749
    return-void

    .line 730
    .end local v1    # "mMaxHeight":I
    .end local v2    # "numPreRow":I
    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    .line 737
    .restart local v2    # "numPreRow":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 738
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_item_gap_between_columns:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 739
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v3, v3, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AlertControllerExt;->setWidth(I)V

    goto :goto_1

    .line 746
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$dimen;->mz_recommend_window_on_recommend_port_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1    # "mMaxHeight":I
    goto :goto_2
.end method

.method protected setupAlert()V
    .locals 1

    .prologue
    .line 1000
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 1001
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->applyMeizuStyle()V

    .line 1002
    return-void
.end method

.method public final tryDecodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmapFile"    # Ljava/lang/String;

    .prologue
    .line 650
    const/4 v0, 0x0

    .line 652
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    if-nez v0, :cond_0

    .line 653
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "RecommendActivity"

    const-string/jumbo v4, "tryDecodeBitmap exception:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 658
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 663
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_1
    return-object v0

    .line 659
    :catch_1
    move-exception v1

    .line 660
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RecommendActivity"

    const-string/jumbo v4, "tryDecodeBitmap exception:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
