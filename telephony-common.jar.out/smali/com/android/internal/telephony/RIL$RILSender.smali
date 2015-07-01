.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 330
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 331
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 347
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v10

    check-cast v8, Lcom/android/internal/telephony/RILRequest;

    .line 348
    .local v8, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v7, 0x0

    .line 350
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 355
    :pswitch_0
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 357
    .local v9, "s":Landroid/net/LocalSocket;
    if-nez v9, :cond_1

    .line 358
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 359
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 360
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 389
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 390
    .local v4, "ex":Ljava/io/IOException;
    const-string v10, "RILJ"

    const-string v11, "IOException"

    invoke-static {v10, v11, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 394
    if-eqz v7, :cond_0

    .line 395
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 396
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 397
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)V

    goto :goto_0

    .line 364
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v12, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v10, v12, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 366
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    :try_start_3
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 371
    .local v2, "data":[B
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 372
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 374
    array-length v10, v2

    const/16 v11, 0x2000

    if-le v10, v11, :cond_2

    .line 375
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parcel larger than max bytes allowed! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 399
    .end local v2    # "data":[B
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 400
    .local v5, "exc":Ljava/lang/RuntimeException;
    const-string v10, "RILJ"

    const-string v11, "Uncaught exception "

    invoke-static {v10, v11, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 404
    if-eqz v7, :cond_0

    .line 405
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 406
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 407
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)V

    goto/16 :goto_0

    .line 366
    .end local v5    # "exc":Ljava/lang/RuntimeException;
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v10

    .line 381
    .restart local v2    # "data":[B
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    aput-byte v14, v10, v11

    .line 382
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x2

    array-length v12, v2

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 383
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x3

    array-length v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 387
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 388
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 425
    .end local v2    # "data":[B
    .end local v9    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v11

    .line 426
    :try_start_6
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->clearWakeLock()Z
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 428
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 429
    .local v1, "count":I
    const-string v10, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 432
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v0

    .line 435
    if-nez v8, :cond_4

    .line 460
    .end local v1    # "count":I
    .end local v6    # "i":I
    :cond_3
    monitor-exit v11

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v10

    .line 439
    .restart local v1    # "count":I
    .restart local v6    # "i":I
    :cond_4
    :try_start_7
    const-string v10, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v13}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/16 v10, 0x1b

    iget v12, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    if-ne v10, v12, :cond_5

    .line 446
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 448
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 451
    .local v3, "dataCallRsp":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    const/16 v10, 0x9

    iput v10, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 452
    const/4 v10, -0x3

    iput v10, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 454
    const/4 v10, 0x2

    invoke-virtual {v8, v10, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 431
    .end local v3    # "dataCallRsp":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method
