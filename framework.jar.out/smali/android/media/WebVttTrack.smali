.class Landroid/media/WebVttTrack;
.super Landroid/media/SubtitleTrack;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttCueListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttTrack"


# instance fields
.field private mCurrentRunID:Ljava/lang/Long;

.field private final mExtractor:Landroid/media/UnstyledTextExtractor;

.field private final mParser:Landroid/media/WebVttParser;

.field private final mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/TextTrackRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderingWidget:Landroid/media/WebVttRenderingWidget;

.field private final mTimestamps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenizer:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 993
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 981
    new-instance v0, Landroid/media/WebVttParser;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser;-><init>(Landroid/media/WebVttCueListener;)V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 982
    new-instance v0, Landroid/media/UnstyledTextExtractor;

    invoke-direct {v0}, Landroid/media/UnstyledTextExtractor;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    .line 984
    new-instance v0, Landroid/media/Tokenizer;

    iget-object v1, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-direct {v0, v1}, Landroid/media/Tokenizer;-><init>(Landroid/media/Tokenizer$OnTokenListener;)V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    .line 985
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    .line 995
    iput-object p1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 996
    return-void
.end method


# virtual methods
.method public bridge synthetic getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    .prologue
    .line 978
    invoke-virtual {p0}, Landroid/media/WebVttTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingWidget()Landroid/media/WebVttRenderingWidget;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    return-object v0
.end method

.method public onCueParsed(Landroid/media/TextTrackCue;)V
    .locals 18
    .param p1, "cue"    # Landroid/media/TextTrackCue;

    .prologue
    .line 1031
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v13

    .line 1033
    :try_start_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 1034
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/TextTrackRegion;

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1037
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "WebVttTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adding cue "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v12}, Landroid/media/Tokenizer;->reset()V

    .line 1041
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v10, v2, v4

    .line 1042
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v12, v10}, Landroid/media/Tokenizer;->tokenize(Ljava/lang/String;)V

    .line 1041
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1044
    .end local v10    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-virtual {v12}, Landroid/media/UnstyledTextExtractor;->getText()[[Landroid/media/TextTrackCueSpan;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "WebVttTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " simplified to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/media/TextTrackCue;->appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .local v2, "arr$":[[Landroid/media/TextTrackCueSpan;
    array-length v7, v2

    const/4 v4, 0x0

    move v5, v4

    .end local v2    # "arr$":[[Landroid/media/TextTrackCueSpan;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v9, v2, v5

    .line 1052
    .local v9, "line":[Landroid/media/TextTrackCueSpan;
    move-object v3, v9

    .local v3, "arr$":[Landroid/media/TextTrackCueSpan;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v8, :cond_5

    aget-object v11, v3, v4

    .line 1053
    .local v11, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v14, v11, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-lez v12, :cond_4

    iget-wide v14, v11, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-gez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v14, v11, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1056
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v14, v11, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1051
    .end local v11    # "span":Landroid/media/TextTrackCueSpan;
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 1061
    .end local v3    # "arr$":[Landroid/media/TextTrackCueSpan;
    .end local v8    # "len$":I
    .end local v9    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 1062
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v12, v12, [J

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    .line 1063
    const/4 v6, 0x0

    .local v6, "ix":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v6, v12, :cond_7

    .line 1064
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    aput-wide v16, v14, v6

    .line 1063
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1066
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    .line 1071
    .end local v6    # "ix":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Landroid/media/TextTrackCue;->mRunID:J

    .line 1072
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-virtual/range {p0 .. p1}, Landroid/media/WebVttTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    .line 1075
    return-void

    .line 1068
    :cond_8
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    goto :goto_4

    .line 1072
    .end local v5    # "i$":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12
.end method

.method public onData([BZJ)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 1006
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1009
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :try_start_1
    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, p3, v4

    if-eqz v2, :cond_0

    .line 1011
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Run #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in progress.  Cannot process run #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1023
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1024
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "WebVttTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void

    .line 1015
    .restart local v1    # "str":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 1016
    iget-object v2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v2, v1}, Landroid/media/WebVttParser;->parse(Ljava/lang/String;)V

    .line 1017
    if-eqz p2, :cond_1

    .line 1018
    invoke-virtual {p0, p3, p4}, Landroid/media/WebVttTrack;->finishedRun(J)V

    .line 1019
    iget-object v2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v2}, Landroid/media/WebVttParser;->eos()V

    .line 1020
    iget-object v2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1021
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 1023
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onRegionParsed(Landroid/media/TextTrackRegion;)V
    .locals 3
    .param p1, "region"    # Landroid/media/TextTrackRegion;

    .prologue
    .line 1079
    iget-object v1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v1

    .line 1080
    :try_start_0
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    iget-object v2, p1, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    monitor-exit v1

    .line 1082
    return-void

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1086
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->mVisible:Z

    if-nez v1, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_2

    .line 1093
    :try_start_0
    const-string v1, "WebVttTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms the active cues are:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-virtual {v1, p1}, Landroid/media/WebVttRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    goto :goto_0

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "WebVttTrack"

    const-string v2, "at (illegal state) the active cues are:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
