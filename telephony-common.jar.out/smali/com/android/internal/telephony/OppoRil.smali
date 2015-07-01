.class public Lcom/android/internal/telephony/OppoRil;
.super Ljava/lang/Object;
.source "OppoRil.java"


# static fields
.field public static final DEFAULT_RELEASE_LOCK_TIMEOUT:I = 0x7d0

.field public static final EVENT_RELEASE_LOCK_TIMEOUT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static oppoWritePin(Ljava/lang/String;)V
    .locals 3
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/modeminfo/pin_info"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 40
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 42
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method
