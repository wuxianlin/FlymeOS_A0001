.class Landroid/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 1938
    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 1941
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result v0

    .line 1942
    .local v0, "index":I
    iget-object v2, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return-void

    .line 1945
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;

    move-result-object v2

    aget-object v1, v2, v0

    .line 1946
    .local v1, "track":Landroid/media/SubtitleTrack;
    if-eqz v1, :cond_0

    .line 1947
    invoke-virtual {v1, p2}, Landroid/media/SubtitleTrack;->onData(Landroid/media/SubtitleData;)V

    goto :goto_0
.end method
