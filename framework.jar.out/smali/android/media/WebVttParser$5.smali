.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 837
    const-class v0, Landroid/media/WebVttParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/WebVttParser$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 18
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 840
    const-string v15, "-->"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 841
    .local v3, "arrowAt":I
    if-gez v3, :cond_0

    .line 842
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const/16 v16, 0x0

    # setter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v15 .. v16}, Landroid/media/WebVttParser;->access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    .line 843
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v16, v0

    # getter for: Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v16 .. v16}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v16

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v15 .. v16}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 936
    :goto_0
    return-void

    .line 847
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 849
    .local v13, "start":Ljava/lang/String;
    add-int/lit8 v15, v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "^\\s+"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "\\s+"

    const-string v17, " "

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 851
    .local v10, "rest":Ljava/lang/String;
    const/16 v15, 0x20

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 852
    .local v12, "spaceAt":I
    if-lez v12, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 853
    .local v6, "end":Ljava/lang/String;
    :goto_1
    if-lez v12, :cond_3

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 855
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v13}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 856
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v6}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 857
    const-string v15, " +"

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v8, :cond_14

    aget-object v11, v2, v7

    .line 858
    .local v11, "setting":Ljava/lang/String;
    const/16 v15, 0x3a

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 859
    .local v4, "colonAt":I
    if-lez v4, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v4, v15, :cond_4

    .line 857
    :cond_1
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "colonAt":I
    .end local v6    # "end":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "setting":Ljava/lang/String;
    :cond_2
    move-object v6, v10

    .line 852
    goto :goto_1

    .line 853
    .restart local v6    # "end":Ljava/lang/String;
    :cond_3
    const-string v10, ""

    goto :goto_2

    .line 862
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "colonAt":I
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v11    # "setting":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 863
    .local v9, "name":Ljava/lang/String;
    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 865
    .local v14, "value":Ljava/lang/String;
    const-string/jumbo v15, "region"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 866
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iput-object v14, v15, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    goto :goto_4

    .line 867
    :cond_5
    const-string/jumbo v15, "vertical"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 868
    const-string/jumbo v15, "rl"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 869
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x65

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_4

    .line 871
    :cond_6
    const-string v15, "lr"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 872
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x66

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_4

    .line 875
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 877
    :cond_8
    const-string v15, "line"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 880
    :try_start_0
    sget-boolean v15, Landroid/media/WebVttParser$5;->$assertionsDisabled:Z

    if-nez v15, :cond_9

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_9

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :catch_0
    move-exception v5

    .line 892
    .local v5, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 881
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_1
    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 882
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 883
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 884
    :cond_a
    const-string v15, ".*[^0-9].*"

    invoke-virtual {v14, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 885
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "contains an invalid character"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 888
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 889
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 896
    :cond_c
    const-string/jumbo v15, "position"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 898
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 899
    :catch_1
    move-exception v5

    .line 900
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 903
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const-string/jumbo v15, "size"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 905
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mSize:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 906
    :catch_2
    move-exception v5

    .line 907
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 910
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string v15, "align"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 911
    const-string/jumbo v15, "start"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 912
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xc9

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 913
    :cond_f
    const-string/jumbo v15, "middle"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 914
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 915
    :cond_10
    const-string v15, "end"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 916
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xca

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 917
    :cond_11
    const-string v15, "left"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 918
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xcb

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 919
    :cond_12
    const-string/jumbo v15, "right"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 920
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xcc

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 922
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 928
    .end local v4    # "colonAt":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "setting":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iget-object v15, v15, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iget v15, v15, Landroid/media/TextTrackCue;->mSize:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iget v15, v15, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-eq v15, v0, :cond_16

    .line 932
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const-string v16, ""

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 935
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v16, v0

    # getter for: Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v16 .. v16}, Landroid/media/WebVttParser;->access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v16

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v15 .. v16}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    goto/16 :goto_0
.end method
