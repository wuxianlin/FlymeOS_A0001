.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 530
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    .line 535
    const/4 v5, 0x0

    .line 536
    .local v5, "retryCount":I
    const-string v6, "rild"

    .line 539
    .local v6, "rilSocket":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 542
    .local v7, "s":Landroid/net/LocalSocket;
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_1

    .line 543
    :cond_0
    sget-object v10, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v6, v10, v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 549
    :goto_1
    :try_start_1
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 550
    .end local v7    # "s":Landroid/net/LocalSocket;
    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v6, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 552
    .local v2, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v8, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 585
    const/4 v5, 0x0

    .line 587
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v8, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 588
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connected to \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 590
    const/4 v3, 0x0

    .line 592
    .local v3, "length":I
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 597
    .local v1, "is":Ljava/io/InputStream;
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v1, v10}, Lcom/android/internal/telephony/RIL;->access$500(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    .line 599
    if-gez v3, :cond_5

    .line 621
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disconnected from \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v11, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 627
    :try_start_6
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 631
    :goto_4
    :try_start_7
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 632
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 635
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x1

    const/4 v12, 0x0

    # invokes: Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 636
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 637
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    .local v9, "tr":Ljava/lang/Throwable;
    :goto_5
    const-string v10, "RILJ"

    const-string v11, "Uncaught exception"

    invoke-static {v10, v11, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, -0x1

    # invokes: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;I)V

    .line 642
    return-void

    .line 545
    .end local v9    # "tr":Ljava/lang/Throwable;
    :cond_1
    :try_start_8
    sget-object v10, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v6, v10, v11
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 553
    :catch_1
    move-exception v0

    .line 555
    .local v0, "ex":Ljava/io/IOException;
    :goto_6
    if-eqz v7, :cond_2

    .line 556
    :try_start_9
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 565
    :cond_2
    :goto_7
    if-ne v5, v13, :cond_4

    .line 566
    :try_start_a
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket after "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " times, continuing to retry silently"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 577
    :cond_3
    :goto_8
    const-wide/16 v10, 0xfa0

    :try_start_b
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 581
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 582
    goto/16 :goto_0

    .line 570
    :cond_4
    if-lez v5, :cond_3

    if-ge v5, v13, :cond_3

    .line 571
    :try_start_c
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket; retrying after timeout"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    .line 636
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_5

    .line 604
    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local v3    # "length":I
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_5
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 605
    .local v4, "p":Landroid/os/Parcel;
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 606
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 610
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v10, v4}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 611
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_2

    .line 613
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "p":Landroid/os/Parcel;
    :catch_3
    move-exception v0

    .line 614
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket closed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 616
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 617
    .restart local v9    # "tr":Ljava/lang/Throwable;
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Uncaught exception read length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_3

    .line 558
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    .end local v8    # "s":Landroid/net/LocalSocket;
    .end local v9    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/io/IOException;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :catch_5
    move-exception v10

    goto/16 :goto_7

    .line 578
    :catch_6
    move-exception v10

    goto/16 :goto_9

    .line 628
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local v3    # "length":I
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v10

    goto/16 :goto_4

    .line 553
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    :catch_8
    move-exception v0

    move-object v7, v8

    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_6
.end method
