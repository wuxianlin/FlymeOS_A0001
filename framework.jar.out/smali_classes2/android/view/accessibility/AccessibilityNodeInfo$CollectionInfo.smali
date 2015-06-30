.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field public static final SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final SELECTION_MODE_NONE:I = 0x0

.field public static final SELECTION_MODE_SINGLE:I = 0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColumnCount:I

.field private mHierarchical:Z

.field private mRowCount:I

.field private mSelectionMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3522
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(IIZI)V
    .locals 0
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    .prologue
    .line 3589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3590
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    .line 3591
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    .line 3592
    iput-boolean p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    .line 3593
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    .line 3594
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3646
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    .line 3647
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    .line 3648
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    .line 3649
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    .line 3650
    return-void
.end method

.method public static obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z

    .prologue
    .line 3550
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 2
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z
    .param p3, "selectionMode"    # I

    .prologue
    .line 3568
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 3569
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    if-nez v0, :cond_0

    .line 3570
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    .line 3577
    :goto_0
    return-object v0

    .line 3573
    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    :cond_0
    iput p0, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    .line 3574
    iput p1, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    .line 3575
    iput-boolean p2, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    .line 3576
    iput p3, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    goto :goto_0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 4
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .prologue
    .line 3537
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 3611
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 3602
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    return v0
.end method

.method public getSelectionMode()I
    .locals 1

    .prologue
    .line 3634
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return v0
.end method

.method public isHierarchical()Z
    .locals 1

    .prologue
    .line 3620
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    return v0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 3641
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->clear()V

    .line 3642
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 3643
    return-void
.end method
