.class public final Landroid/os/OppoManager;
.super Ljava/lang/Object;
.source "OppoManager.java"


# static fields
.field public static final ANDROID_PANIC_TAG:Ljava/lang/String; = "SYSTEM_SERVER"

.field public static final ANDROID_PANIC_TAG_BEGIN:Ljava/lang/String; = "<android-panic-begin>\n"

.field public static final ANDROID_PANIC_TAG_END:Ljava/lang/String; = "<android-panic-end>\n"

.field private static DATA_SIZE:I = 0x0

.field private static final DEBUG:Z = false

.field public static final ENGINEERINGMODE_TEST_BEGIN:Ljava/lang/String; = "<engineeringmode-test-begin>\n"

.field public static final ENGINEERINGMODE_TEST_END:Ljava/lang/String; = "<engineeringmode-test-end>\n"

.field public static final ENGINEERINGMODE_TEST_TAG:Ljava/lang/String; = "ENGINEERINGMODE_TEST"

.field private static final INIT_TRY_TIMES:I = 0x3

.field public static final KERNEL_PANIC_TAG:Ljava/lang/String; = "SYSTEM_LAST_KMSG"

.field public static final KERNEL_PANIC_TAG_BEGIN:Ljava/lang/String; = "<kernel-panic-begin>\n"

.field public static final KERNEL_PANIC_TAG_END:Ljava/lang/String; = "<kernel-panic-end>\n"

.field public static final SERVICE_NAME:Ljava/lang/String; = "OPPO"

.field public static final SHUTDOWN_TAG:Ljava/lang/String; = "SYSTEM_SHUTDOWN"

.field public static final SHUTDOWN_TAG_BEGIN:Ljava/lang/String; = "<shutdown-begin>\n"

.field public static final SHUTDOWN_TAG_END:Ljava/lang/String; = "<shutdown-end>\n"

.field public static final TAG:Ljava/lang/String; = "OnePlusManager"

.field public static TYPE_LOGSIZE:I

.field public static TYPE_PANIC:I

.field public static TYPE_REBOOT:I

.field public static TYPE_SHUTDOWN:I

.field private static sService:Landroid/os/IOppoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Landroid/os/OppoManager;->TYPE_PANIC:I

    .line 45
    const/4 v0, 0x1

    sput v0, Landroid/os/OppoManager;->TYPE_SHUTDOWN:I

    .line 46
    const/4 v0, 0x2

    sput v0, Landroid/os/OppoManager;->TYPE_REBOOT:I

    .line 47
    const/4 v0, 0x3

    sput v0, Landroid/os/OppoManager;->TYPE_LOGSIZE:I

    .line 49
    const/16 v0, 0x10

    sput v0, Landroid/os/OppoManager;->DATA_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpShutdownMsg(Ljava/lang/String;)V
    .locals 10
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .local v5, "sf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v8, "ro.build.kernel.id"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "kid":Ljava/lang/String;
    if-nez p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 81
    :cond_0
    const-string/jumbo v8, "shutdown reason:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "kernel id["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    .line 87
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 88
    .local v0, "e":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v0

    if-ge v1, v8, :cond_2

    .line 90
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "msg":Ljava/lang/String;
    const-string v8, "SYSTEM_SHUTDOWN"

    invoke-static {v3, v8}, Landroid/os/OppoManager;->writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, "size":I
    sget v8, Landroid/os/OppoManager;->TYPE_SHUTDOWN:I

    invoke-static {v8}, Landroid/os/OppoManager;->incrementCriticalData(I)I

    move-result v8

    if-gez v8, :cond_3

    .line 105
    const-string v8, "OnePlusManager"

    const-string v9, "increment normal shutdown times failed!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    return-void
.end method

.method public static incrementCriticalData(I)I
    .locals 7
    .param p0, "type"    # I

    .prologue
    .line 140
    const/4 v1, -0x1

    .line 141
    .local v1, "res":I
    if-gez p0, :cond_0

    move v2, v1

    .line 154
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 145
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_0
    sget v5, Landroid/os/OppoManager;->DATA_SIZE:I

    invoke-static {p0, v5}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "timesString":Ljava/lang/String;
    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v3, 0x0

    .line 149
    .local v3, "times":I
    :goto_1
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v1

    .end local v3    # "times":I
    :goto_2
    move v2, v1

    .line 154
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 147
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "OnePlusManager"

    const-string v6, "increment critical data failed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static final init()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 28
    sget-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-eqz v2, :cond_1

    .line 39
    .local v0, "times":I
    :cond_0
    :goto_0
    return v1

    .line 31
    .end local v0    # "times":I
    :cond_1
    const/4 v0, 0x3

    .line 34
    .restart local v0    # "times":I
    :cond_2
    const-string v2, "OPPO"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOppoService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoService;

    move-result-object v2

    sput-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    .line 35
    sget-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v2, :cond_0

    .line 38
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    .line 39
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readCriticalData(I)I
    .locals 6
    .param p0, "type"    # I

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "res":I
    sget v4, Landroid/os/OppoManager;->DATA_SIZE:I

    invoke-static {p0, v4}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    .line 169
    .end local v2    # "res":I
    .local v3, "res":I
    :goto_0
    return v3

    .line 164
    .end local v3    # "res":I
    .restart local v2    # "res":I
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 169
    .end local v2    # "res":I
    .restart local v3    # "res":I
    goto :goto_0

    .line 165
    .end local v3    # "res":I
    .restart local v2    # "res":I
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "OnePlusManager"

    const-string/jumbo v5, "read critical data failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static readCriticalData(II)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # I
    .param p1, "size"    # I

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "res":Ljava/lang/String;
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 213
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 208
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0, p1}, Landroid/os/IOppoService;->readCriticalData(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 213
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OnePlusManager"

    const-string/jumbo v4, "read Critical Data exception!\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static readRawPartition(II)Ljava/lang/String;
    .locals 5
    .param p0, "offset"    # I
    .param p1, "size"    # I

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "res":Ljava/lang/String;
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 120
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 115
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0, p1}, Landroid/os/IOppoService;->readRawPartition(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 120
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OnePlusManager"

    const-string/jumbo v4, "read Raw Partition exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static writeCriticalData(ILjava/lang/String;)I
    .locals 5
    .param p0, "id"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v1, -0x1

    .line 218
    .local v1, "res":I
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 227
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 222
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0, p1}, Landroid/os/IOppoService;->writeCriticalData(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 227
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 223
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OnePlusManager"

    const-string/jumbo v4, "write Critical Data exception!\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "logstring"    # Ljava/lang/String;
    .param p1, "tagString"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v1, -0x1

    .line 174
    .local v1, "res":I
    if-nez p0, :cond_0

    .line 193
    .end local v1    # "res":I
    :goto_0
    return v1

    .line 177
    .restart local v1    # "res":I
    :cond_0
    const-string v2, ""

    .line 178
    .local v2, "tagbegin":Ljava/lang/String;
    const-string v3, ""

    .line 179
    .local v3, "tagend":Ljava/lang/String;
    const-string v4, "SYSTEM_SHUTDOWN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    const-string v2, "<shutdown-begin>\n"

    .line 181
    const-string v3, "<shutdown-end>\n"

    .line 192
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "log":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/OppoManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 182
    .end local v0    # "log":Ljava/lang/String;
    :cond_2
    const-string v4, "SYSTEM_LAST_KMSG"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    const-string v2, "<kernel-panic-begin>\n"

    .line 184
    const-string v3, "<kernel-panic-end>\n"

    goto :goto_1

    .line 185
    :cond_3
    const-string v4, "SYSTEM_SERVER"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    const-string v2, "<android-panic-begin>\n"

    .line 187
    const-string v3, "<android-panic-end>\n"

    goto :goto_1

    .line 188
    :cond_4
    const-string v4, "ENGINEERINGMODE_TEST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    const-string v2, "<engineeringmode-test-begin>\n"

    .line 190
    const-string v3, "<engineeringmode-test-end>\n"

    goto :goto_1
.end method

.method public static writeRawPartition(Ljava/lang/String;)I
    .locals 5
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v1, -0x1

    .line 125
    .local v1, "res":I
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 134
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 129
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0}, Landroid/os/IOppoService;->writeRawPartition(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 134
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 130
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OnePlusManager"

    const-string/jumbo v4, "write Raw Partition exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
