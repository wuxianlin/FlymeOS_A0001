.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fd3:Ljava/io/FileDescriptor;

.field final synthetic val$length2:J

.field final synthetic val$offset2:J

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .locals 1

    .prologue
    .line 2223
    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 14

    .prologue
    .line 2225
    const/4 v5, 0x0

    .line 2226
    .local v5, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2228
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v9, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    iget-wide v10, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    sget v12, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v8, v9, v10, v11, v12}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2229
    const/16 v8, 0x1000

    new-array v1, v8, [B

    .line 2230
    .local v1, "buffer":[B
    const-wide/16 v6, 0x0

    .local v6, "total":J
    :goto_0
    iget-wide v8, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_0

    .line 2231
    array-length v8, v1

    int-to-long v8, v8

    iget-wide v10, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    sub-long/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    .line 2232
    .local v3, "bytesToRead":I
    iget-object v8, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    const/4 v9, 0x0

    invoke-static {v8, v1, v9, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    .line 2233
    .local v2, "bytes":I
    if-gez v2, :cond_2

    .line 2240
    .end local v2    # "bytes":I
    .end local v3    # "bytesToRead":I
    :cond_0
    iget-object v8, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x1

    const-wide/16 v12, -0x1

    invoke-virtual {v8, v9, v10, v12, v13}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2241
    const/16 v8, 0x323

    .line 2246
    if-eqz v5, :cond_1

    .line 2248
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2251
    .end local v1    # "buffer":[B
    .end local v6    # "total":J
    :cond_1
    :goto_1
    return v8

    .line 2236
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytes":I
    .restart local v3    # "bytesToRead":I
    .restart local v6    # "total":J
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2237
    int-to-long v8, v2

    add-long/2addr v6, v8

    .line 2239
    goto :goto_0

    .line 2249
    .end local v2    # "bytes":I
    .end local v3    # "bytesToRead":I
    :catch_0
    move-exception v4

    .line 2250
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "MediaPlayer"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2242
    .end local v1    # "buffer":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "total":J
    :catch_1
    move-exception v4

    .line 2243
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "MediaPlayer"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2244
    const/16 v8, 0x384

    .line 2246
    if-eqz v5, :cond_1

    .line 2248
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2249
    :catch_2
    move-exception v4

    .line 2250
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "MediaPlayer"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2246
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_3

    .line 2248
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2251
    :cond_3
    :goto_2
    throw v8

    .line 2249
    :catch_3
    move-exception v4

    .line 2250
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v9, "MediaPlayer"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2257
    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    move-result v1

    .line 2258
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2259
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2260
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2262
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 2263
    return-void
.end method
