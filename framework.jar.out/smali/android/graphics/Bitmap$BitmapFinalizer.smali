.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private final mNativeAllocationByteCount:I

.field private final mNativeBitmap:J


# direct methods
.method constructor <init>(JI)V
    .locals 3
    .param p1, "nativeBitmap"    # J
    .param p3, "nativeAllocationByteCount"    # I

    .prologue
    .line 1585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1586
    iput-wide p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    .line 1587
    iput p3, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    .line 1589
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_0

    .line 1590
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1592
    :cond_0
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 4

    .prologue
    .line 1597
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_0

    .line 1602
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 1604
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->access$100(J)V

    .line 1606
    :goto_0
    return-void

    .line 1598
    :catch_0
    move-exception v0

    .line 1601
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_1

    .line 1602
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 1604
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->access$100(J)V

    goto :goto_0

    .line 1601
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v1, :cond_2

    .line 1602
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 1604
    :cond_2
    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->access$100(J)V

    throw v0
.end method
