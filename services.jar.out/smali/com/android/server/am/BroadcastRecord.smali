.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4


# instance fields
.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field dispatchClockTime:J

.field dispatchTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field nextReceiver:I

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final requiredPermission:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V
    .locals 2
    .param p1, "_queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "_callerPackage"    # Ljava/lang/String;
    .param p5, "_callingPid"    # I
    .param p6, "_callingUid"    # I
    .param p7, "_resolvedType"    # Ljava/lang/String;
    .param p8, "_requiredPermission"    # Ljava/lang/String;
    .param p9, "_appOp"    # I
    .param p10, "_receivers"    # Ljava/util/List;
    .param p11, "_resultTo"    # Landroid/content/IIntentReceiver;
    .param p12, "_resultCode"    # I
    .param p13, "_resultData"    # Ljava/lang/String;
    .param p14, "_resultExtras"    # Landroid/os/Bundle;
    .param p15, "_serialized"    # Z
    .param p16, "_sticky"    # Z
    .param p17, "_initialSticky"    # Z
    .param p18, "_userId"    # I

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 183
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 185
    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 186
    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 187
    iput p5, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 188
    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 189
    iput-object p7, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 190
    iput-object p8, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    .line 191
    iput p9, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 192
    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 193
    iput-object p11, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 194
    iput p12, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 195
    iput-object p13, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 196
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 197
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 198
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 199
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 200
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 201
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 202
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 203
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 88
    .local v6, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, " to user "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 89
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eq v11, v12, :cond_0

    .line 91
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  targetComp: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 94
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 95
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  extras: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "caller="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    const-string v11, " pid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 100
    const-string v11, " uid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 102
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "requiredPermission="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    const-string v11, "  appOp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 105
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "dispatchClockTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    new-instance v11, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 107
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "dispatchTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 109
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_12

    .line 110
    const-string v11, " finishTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 114
    :goto_1
    const-string v11, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v11, :cond_4

    .line 116
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "anrCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 118
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 119
    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "resultTo="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 120
    const-string v11, " resultCode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 121
    const-string v11, " resultData="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v11, :cond_7

    .line 124
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "resultExtras="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 126
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v11, :cond_9

    .line 127
    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "resultAbort="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 128
    const-string v11, " ordered="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 129
    const-string v11, " sticky="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 130
    const-string v11, " initialSticky="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 132
    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v11, :cond_b

    .line 133
    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "nextReceiver="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 134
    const-string v11, " receiver="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 136
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v11, :cond_c

    .line 137
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "curFilter="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 139
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_d

    .line 140
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "curReceiver="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 142
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_e

    .line 143
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "curApp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 144
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "curComponent="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_e

    .line 147
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "curSourceDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v11, :cond_f

    .line 152
    const-string v10, " (?)"

    .line 153
    .local v10, "stateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    packed-switch v11, :pswitch_data_0

    .line 159
    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "state="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    .end local v10    # "stateStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    .line 162
    .local v2, "N":I
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "p2":Ljava/lang/String;
    new-instance v9, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 164
    .local v9, "printer":Landroid/util/PrintWriterPrinter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v2, :cond_16

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 166
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Receiver #"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 167
    const-string v11, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 168
    instance-of v11, v5, Lcom/android/server/am/BroadcastFilter;

    if-eqz v11, :cond_15

    .line 169
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .end local v5    # "o":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 164
    :cond_10
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 98
    .end local v2    # "N":I
    .end local v4    # "i":I
    .end local v8    # "p2":Ljava/lang/String;
    .end local v9    # "printer":Landroid/util/PrintWriterPrinter;
    :cond_11
    const-string v11, "null"

    goto/16 :goto_0

    .line 112
    :cond_12
    const-string v11, " receiverTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_1

    .line 145
    :cond_13
    const-string v11, "--"

    goto/16 :goto_2

    .line 154
    .restart local v10    # "stateStr":Ljava/lang/String;
    :pswitch_0
    const-string v10, " (APP_RECEIVE)"

    goto/16 :goto_3

    .line 155
    :pswitch_1
    const-string v10, " (CALL_IN_RECEIVE)"

    goto/16 :goto_3

    .line 156
    :pswitch_2
    const-string v10, " (CALL_DONE_RECEIVE)"

    goto/16 :goto_3

    .line 157
    :pswitch_3
    const-string v10, " (WAITING_SERVICES)"

    goto/16 :goto_3

    .line 161
    .end local v10    # "stateStr":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    goto :goto_4

    .line 170
    .restart local v2    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v8    # "p2":Ljava/lang/String;
    .restart local v9    # "printer":Landroid/util/PrintWriterPrinter;
    :cond_15
    instance-of v11, v5, Landroid/content/pm/ResolveInfo;

    if-eqz v11, :cond_10

    .line 171
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v5, v9, v8}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_6

    .line 173
    :cond_16
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
