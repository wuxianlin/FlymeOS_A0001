.class Landroid/media/MediaCodec$MediaImage$MediaPlane;
.super Landroid/media/Image$Plane;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$MediaImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlane"
.end annotation


# instance fields
.field private final mColInc:I

.field private final mData:Ljava/nio/ByteBuffer;

.field private final mRowInc:I

.field final synthetic this$0:Landroid/media/MediaCodec$MediaImage;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "rowInc"    # I
    .param p4, "colInc"    # I

    .prologue
    .line 1841
    iput-object p1, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 1842
    iput-object p2, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mData:Ljava/nio/ByteBuffer;

    .line 1843
    iput p3, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mRowInc:I

    .line 1844
    iput p4, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mColInc:I

    .line 1845
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    # invokes: Landroid/media/MediaCodec$MediaImage;->checkValid()V
    invoke-static {v0}, Landroid/media/MediaCodec$MediaImage;->access$800(Landroid/media/MediaCodec$MediaImage;)V

    .line 1862
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    # invokes: Landroid/media/MediaCodec$MediaImage;->checkValid()V
    invoke-static {v0}, Landroid/media/MediaCodec$MediaImage;->access$800(Landroid/media/MediaCodec$MediaImage;)V

    .line 1856
    iget v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mColInc:I

    return v0
.end method

.method public getRowStride()I
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    # invokes: Landroid/media/MediaCodec$MediaImage;->checkValid()V
    invoke-static {v0}, Landroid/media/MediaCodec$MediaImage;->access$800(Landroid/media/MediaCodec$MediaImage;)V

    .line 1850
    iget v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mRowInc:I

    return v0
.end method
