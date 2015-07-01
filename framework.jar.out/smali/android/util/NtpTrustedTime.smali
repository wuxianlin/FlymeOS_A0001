.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J

.field private oppoNTPserver:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "cn.pool.ntp.org"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    .line 62
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 63
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 66
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 68
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 75
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x1040036

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "defaultServer":Ljava/lang/String;
    const v7, 0x10e006a

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v2, v7

    .line 80
    .local v2, "defaultTimeout":J
    const-string/jumbo v7, "ntp_server"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 85
    .local v8, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 86
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 88
    sput-object p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    .line 91
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v7

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 85
    goto :goto_0

    .line 71
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 96
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v4

    .line 105
    :cond_1
    new-instance v3, Landroid/net/OppoHttpClient;

    invoke-direct {v3}, Landroid/net/OppoHttpClient;-><init>()V

    .line 106
    .local v3, "oppoHttpClient":Landroid/net/OppoHttpClient;
    sget-object v6, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v3, v6, v4, v7}, Landroid/net/OppoHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v3, v6, v5, v7}, Landroid/net/OppoHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 108
    :cond_2
    const-string v4, "NtpTrustedTime"

    const-string v6, "Use http server algin time success!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 110
    invoke-virtual {v3}, Landroid/net/OppoHttpClient;->getHttpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 111
    invoke-virtual {v3}, Landroid/net/OppoHttpClient;->getHttpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 112
    invoke-virtual {v3}, Landroid/net/OppoHttpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v4, v5

    .line 113
    goto :goto_0

    .line 117
    :cond_3
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 132
    .local v0, "client":Landroid/net/SntpClient;
    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set time out value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 134
    const-string v6, "1"

    const-string/jumbo v7, "sys.ntp.exception"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 135
    .local v2, "isNtpError":Z
    if-eqz v2, :cond_5

    .line 136
    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 133
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_5
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 139
    const-string v4, "NtpTrustedTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mServer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 141
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 142
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 143
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v4, v5

    .line 144
    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 163
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 170
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 172
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
