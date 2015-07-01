.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field private static final CHECK_PARCEL_SIZE:Z = false

.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field static final TAG:Ljava/lang/String; = "Binder"

.field private static sDumpDisabled:Ljava/lang/String;


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mObject:J

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-direct {p0}, Landroid/os/Binder;->init()V

    .line 203
    return-void
.end method

.method static checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .locals 0
    .param p0, "obj"    # Landroid/os/IBinder;
    .param p1, "code"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 429
    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method private final native destroy()V
.end method

.method private execTransact(IJJI)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "dataObj"    # J
    .param p4, "replyObj"    # J
    .param p6, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 437
    invoke-static {p2, p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v0

    .line 438
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {p4, p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v3

    .line 446
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p0, p1, v0, v3, p6}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 471
    .local v4, "res":Z
    :goto_0
    const-string v5, "Unreasonably large binder reply buffer"

    invoke-static {p0, p1, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 482
    return v4

    .line 447
    .end local v4    # "res":Z
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Landroid/os/RemoteException;
    and-int/lit8 v5, p6, 0x1

    if-eqz v5, :cond_0

    .line 449
    const-string v5, "Binder"

    const-string v6, "Binder call failed."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    :goto_1
    const/4 v4, 0x1

    .line 470
    .restart local v4    # "res":Z
    goto :goto_0

    .line 451
    .end local v4    # "res":Z
    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 452
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 455
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/RuntimeException;
    and-int/lit8 v5, p6, 0x1

    if-eqz v5, :cond_1

    .line 457
    const-string v5, "Binder"

    const-string v6, "Caught a RuntimeException from the binder stub implementation."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    :goto_2
    const/4 v4, 0x1

    .line 470
    .restart local v4    # "res":Z
    goto :goto_0

    .line 459
    .end local v4    # "res":Z
    :cond_1
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 460
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 463
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "Binder"

    const-string v6, "Caught an OutOfMemoryError from the binder stub implementation."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "Out of memory"

    invoke-direct {v2, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    .local v2, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 468
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 469
    const/4 v4, 0x1

    .restart local v4    # "res":Z
    goto :goto_0
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static final native getThreadStrictModePolicy()I
.end method

.method private final native init()V
.end method

.method public static final isProxy(Landroid/os/IInterface;)Z
    .locals 1
    .param p0, "iface"    # Landroid/os/IInterface;

    .prologue
    .line 186
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final native joinThreadPool()V
.end method

.method public static final native restoreCallingIdentity(J)V
.end method

.method public static setDumpDisabled(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 264
    const-class v1, Landroid/os/Binder;

    monitor-enter v1

    .line 265
    :try_start_0
    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final native setThreadStrictModePolicy(I)V
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Landroid/os/IInterface;
    .param p2, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 213
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 214
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 368
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 310
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 311
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 314
    .local v3, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-class v5, Landroid/os/Binder;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    :try_start_1
    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 316
    .local v0, "disabled":Ljava/lang/String;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    if-nez v0, :cond_0

    .line 319
    :try_start_2
    invoke-virtual {p0, p1, v3, p2}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    :goto_0
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 338
    return-void

    .line 316
    .end local v0    # "disabled":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 336
    :catchall_1
    move-exception v4

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    throw v4

    .line 320
    .restart local v0    # "disabled":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    throw v1

    .line 323
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 329
    const-string v4, "Exception occurred while dumping:"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 333
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    sget-object v4, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 345
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 346
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v4, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 347
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/os/Binder$1;

    const-string v2, "Binder.dumpAsync"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 356
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 357
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 402
    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 406
    return-void

    .line 404
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 391
    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 277
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    :goto_0
    return v2

    .line 280
    :cond_0
    const v3, 0x5f444d50

    if-ne p1, v3, :cond_3

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 282
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "args":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 285
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v2

    .line 288
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    :goto_2
    throw v2

    .line 298
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    goto :goto_0

    .line 302
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 289
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 377
    if-eqz p2, :cond_0

    .line 378
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 380
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 381
    .local v0, "r":Z
    if-eqz p3, :cond_1

    .line 382
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 384
    :cond_1
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method
