.class Lcom/android/internal/telephony/test/LineReader;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field mBuffer:[B

.field mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    .line 56
    return-void
.end method


# virtual methods
.method getNextLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextLine(Z)Ljava/lang/String;
    .locals 9
    .param p1, "ctrlZ"    # Z

    .prologue
    const/4 v4, 0x0

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 86
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 88
    .local v3, "result":I
    if-gez v3, :cond_0

    move v1, v2

    .line 115
    .end local v2    # "i":I
    .end local v3    # "result":I
    .restart local v1    # "i":I
    :goto_1
    return-object v4

    .line 92
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v3    # "result":I
    :cond_0
    if-eqz p1, :cond_2

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_2

    :cond_1
    move v1, v2

    .line 112
    .end local v2    # "i":I
    .end local v3    # "result":I
    .restart local v1    # "i":I
    :goto_2
    :try_start_1
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    const/4 v7, 0x0

    const-string v8, "US-ASCII"

    invoke-direct {v5, v6, v7, v1, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    goto :goto_1

    .line 94
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v3    # "result":I
    :cond_2
    const/16 v5, 0xd

    if-eq v3, v5, :cond_3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_4

    .line 95
    :cond_3
    if-nez v2, :cond_1

    goto :goto_0

    .line 103
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    int-to-byte v6, v3

    :try_start_3
    aput-byte v6, v5, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    move v2, v1

    .line 104
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 105
    .end local v3    # "result":I
    :catch_0
    move-exception v0

    move v1, v2

    .line 106
    .end local v2    # "i":I
    .local v0, "ex":Ljava/io/IOException;
    .restart local v1    # "i":I
    :goto_3
    goto :goto_1

    .line 107
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :catch_1
    move-exception v0

    move v1, v2

    .line 108
    .end local v2    # "i":I
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "i":I
    :goto_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "ATChannel: buffer overflow"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 113
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "ATChannel: implausable UnsupportedEncodingException"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "result":I
    :catch_3
    move-exception v0

    goto :goto_4

    .line 105
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method getNextLineCtrlZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
