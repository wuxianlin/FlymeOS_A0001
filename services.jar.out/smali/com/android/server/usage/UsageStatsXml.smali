.class public Lcom/android/server/usage/UsageStatsXml;
.super Ljava/lang/Object;
.source "UsageStatsXml.java"


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsageStatsXml"

.field private static final USAGESTATS_TAG:Ljava/lang/String; = "usagestats"

.field private static final VERSION_ATTR:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBeginTime(Landroid/util/AtomicFile;)J
    .locals 2
    .param p0, "file"    # Landroid/util/AtomicFile;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 4
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 49
    invoke-static {v1, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 50
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :goto_0
    return-void

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 56
    :goto_1
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 58
    .end local v1    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "UsageStatsXml"

    const-string v3, "UsageStats Xml"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    throw v0

    .line 54
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 79
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v3, "utf-8"

    invoke-interface {v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    const-string v3, "usagestats"

    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    const-string v4, "version"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 83
    .local v2, "versionStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 89
    const-string v3, "UsageStatsXml"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v3, "UsageStatsXml"

    const-string v4, "Bad version"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "versionStr":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "UsageStatsXml"

    const-string v4, "Failed to parse Xml"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 85
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "versionStr":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    invoke-static {v1, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    .line 100
    return-void

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 2
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 67
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 68
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v1
.end method

.method private static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 104
    .local v0, "xml":Lcom/android/internal/util/FastXmlSerializer;
    const-string v1, "utf-8"

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 105
    const-string v1, "utf-8"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 107
    const-string v1, "usagestats"

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const-string v1, "version"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V

    .line 112
    const-string v1, "usagestats"

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 114
    return-void
.end method
