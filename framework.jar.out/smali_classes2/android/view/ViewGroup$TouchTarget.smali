.class final Landroid/view/ViewGroup$TouchTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


# static fields
.field public static final ALL_POINTER_IDS:I = -0x1

.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public child:Landroid/view/View;

.field public next:Landroid/view/ViewGroup$TouchTarget;

.field public pointerIdBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6959
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6975
    return-void
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "pointerIdBits"    # I

    .prologue
    .line 6979
    sget-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6980
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    if-nez v1, :cond_0

    .line 6981
    new-instance v0, Landroid/view/ViewGroup$TouchTarget;

    invoke-direct {v0}, Landroid/view/ViewGroup$TouchTarget;-><init>()V

    .line 6988
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6989
    iput-object p0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 6990
    iput p1, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 6991
    return-object v0

    .line 6983
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 6984
    .restart local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    sput-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 6985
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 6986
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 6988
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 6995
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6996
    :try_start_0
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 6997
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 6998
    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 6999
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 7003
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 7004
    monitor-exit v1

    .line 7005
    return-void

    .line 7001
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 7004
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
