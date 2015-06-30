.class public Landroid/content/res/ThemeConfig$JsonSerializer;
.super Ljava/lang/Object;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonSerializer"
.end annotation


# static fields
.field private static final NAME_FONT_PKG:Ljava/lang/String; = "mFontPkgName"

.field private static final NAME_ICON_PKG:Ljava/lang/String; = "mIconPkgName"

.field private static final NAME_OVERLAY_PKG:Ljava/lang/String; = "mOverlayPkgName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Landroid/util/JsonReader;)V
    .locals 1
    .param p0, "reader"    # Landroid/util/JsonReader;

    .prologue
    .line 562
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static closeQuietly(Landroid/util/JsonWriter;)V
    .locals 1
    .param p0, "writer"    # Landroid/util/JsonWriter;

    .prologue
    .line 576
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 555
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;

    .prologue
    .line 569
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;
    .locals 11
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 507
    if-nez p0, :cond_0

    const/4 v8, 0x0

    .line 527
    :goto_0
    return-object v8

    .line 508
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 509
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    const/4 v6, 0x0

    .line 510
    .local v6, "reader":Ljava/io/StringReader;
    const/4 v3, 0x0

    .line 512
    .local v3, "jsonReader":Landroid/util/JsonReader;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    .end local v6    # "reader":Ljava/io/StringReader;
    .local v7, "reader":Ljava/io/StringReader;
    :try_start_1
    new-instance v4, Landroid/util/JsonReader;

    invoke-direct {v4, v7}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 514
    .end local v3    # "jsonReader":Landroid/util/JsonReader;
    .local v4, "jsonReader":Landroid/util/JsonReader;
    :try_start_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 515
    :goto_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 516
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/ThemeConfig$JsonSerializer;->readAppTheme(Landroid/util/JsonReader;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v1

    .line 518
    .local v1, "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 521
    .end local v0    # "appPkgName":Ljava/lang/String;
    .end local v1    # "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "jsonReader":Landroid/util/JsonReader;
    .restart local v3    # "jsonReader":Landroid/util/JsonReader;
    move-object v6, v7

    .line 522
    .end local v7    # "reader":Ljava/io/StringReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v6    # "reader":Ljava/io/StringReader;
    :goto_2
    :try_start_3
    sget-object v8, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse ThemeConfig from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    invoke-static {v6}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Reader;)V

    .line 525
    invoke-static {v3}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonReader;)V

    .line 527
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    new-instance v8, Landroid/content/res/ThemeConfig;

    invoke-direct {v8, v5}, Landroid/content/res/ThemeConfig;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 520
    .end local v3    # "jsonReader":Landroid/util/JsonReader;
    .end local v6    # "reader":Ljava/io/StringReader;
    .restart local v4    # "jsonReader":Landroid/util/JsonReader;
    .restart local v7    # "reader":Ljava/io/StringReader;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 524
    invoke-static {v7}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Reader;)V

    .line 525
    invoke-static {v4}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonReader;)V

    move-object v3, v4

    .end local v4    # "jsonReader":Landroid/util/JsonReader;
    .restart local v3    # "jsonReader":Landroid/util/JsonReader;
    move-object v6, v7

    .line 526
    .end local v7    # "reader":Ljava/io/StringReader;
    .restart local v6    # "reader":Ljava/io/StringReader;
    goto :goto_3

    .line 524
    :catchall_0
    move-exception v8

    :goto_4
    invoke-static {v6}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Reader;)V

    .line 525
    invoke-static {v3}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonReader;)V

    throw v8

    .line 524
    .end local v6    # "reader":Ljava/io/StringReader;
    .restart local v7    # "reader":Ljava/io/StringReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/StringReader;
    .restart local v6    # "reader":Ljava/io/StringReader;
    goto :goto_4

    .end local v3    # "jsonReader":Landroid/util/JsonReader;
    .end local v6    # "reader":Ljava/io/StringReader;
    .restart local v4    # "jsonReader":Landroid/util/JsonReader;
    .restart local v7    # "reader":Ljava/io/StringReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "jsonReader":Landroid/util/JsonReader;
    .restart local v3    # "jsonReader":Landroid/util/JsonReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/StringReader;
    .restart local v6    # "reader":Ljava/io/StringReader;
    goto :goto_4

    .line 521
    :catch_1
    move-exception v2

    goto :goto_2

    .end local v6    # "reader":Ljava/io/StringReader;
    .restart local v7    # "reader":Ljava/io/StringReader;
    :catch_2
    move-exception v2

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/StringReader;
    .restart local v6    # "reader":Ljava/io/StringReader;
    goto :goto_2
.end method

.method private static readAppTheme(Landroid/util/JsonReader;)Landroid/content/res/ThemeConfig$AppTheme;
    .locals 6
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    const/4 v3, 0x0

    .line 532
    .local v3, "overlay":Ljava/lang/String;
    const/4 v1, 0x0

    .line 533
    .local v1, "icon":Ljava/lang/String;
    const/4 v0, 0x0

    .line 535
    .local v0, "font":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 536
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 537
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "name":Ljava/lang/String;
    const-string v4, "mOverlayPkgName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_0

    .line 539
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 540
    :cond_0
    const-string v4, "mIconPkgName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1

    .line 541
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 542
    :cond_1
    const-string v4, "mFontPkgName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2

    .line 543
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 548
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 550
    new-instance v4, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-direct {v4, v3, v1, v0}, Landroid/content/res/ThemeConfig$AppTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static toJson(Landroid/content/res/ThemeConfig;)Ljava/lang/String;
    .locals 8
    .param p0, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 469
    const/4 v1, 0x0

    .line 470
    .local v1, "json":Ljava/lang/String;
    const/4 v4, 0x0

    .line 471
    .local v4, "writer":Ljava/io/Writer;
    const/4 v2, 0x0

    .line 473
    .local v2, "jsonWriter":Landroid/util/JsonWriter;
    :try_start_0
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v4    # "writer":Ljava/io/Writer;
    .local v5, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v3, Landroid/util/JsonWriter;

    invoke-direct {v3, v5}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 475
    .end local v2    # "jsonWriter":Landroid/util/JsonWriter;
    .local v3, "jsonWriter":Landroid/util/JsonWriter;
    :try_start_2
    invoke-static {v3, p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->writeTheme(Landroid/util/JsonWriter;Landroid/content/res/ThemeConfig;)V

    .line 476
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 480
    invoke-static {v5}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Writer;)V

    .line 481
    invoke-static {v3}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonWriter;)V

    move-object v2, v3

    .end local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local v2    # "jsonWriter":Landroid/util/JsonWriter;
    move-object v4, v5

    .line 483
    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v4    # "writer":Ljava/io/Writer;
    :goto_0
    return-object v1

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v6, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    const-string v7, "Could not write theme mapping"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 480
    invoke-static {v4}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Writer;)V

    .line 481
    invoke-static {v2}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonWriter;)V

    goto :goto_0

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v4}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Writer;)V

    .line 481
    invoke-static {v2}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonWriter;)V

    throw v6

    .line 480
    .end local v4    # "writer":Ljava/io/Writer;
    .restart local v5    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v4    # "writer":Ljava/io/Writer;
    goto :goto_2

    .end local v2    # "jsonWriter":Landroid/util/JsonWriter;
    .end local v4    # "writer":Ljava/io/Writer;
    .restart local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local v5    # "writer":Ljava/io/Writer;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local v2    # "jsonWriter":Landroid/util/JsonWriter;
    move-object v4, v5

    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v4    # "writer":Ljava/io/Writer;
    goto :goto_2

    .line 477
    .end local v4    # "writer":Ljava/io/Writer;
    .restart local v5    # "writer":Ljava/io/Writer;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v4    # "writer":Ljava/io/Writer;
    goto :goto_1

    .end local v2    # "jsonWriter":Landroid/util/JsonWriter;
    .end local v4    # "writer":Ljava/io/Writer;
    .restart local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local v5    # "writer":Ljava/io/Writer;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local v2    # "jsonWriter":Landroid/util/JsonWriter;
    move-object v4, v5

    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v4    # "writer":Ljava/io/Writer;
    goto :goto_1
.end method

.method private static writeAppTheme(Landroid/util/JsonWriter;Landroid/content/res/ThemeConfig$AppTheme;)V
    .locals 2
    .param p0, "writer"    # Landroid/util/JsonWriter;
    .param p1, "appTheme"    # Landroid/content/res/ThemeConfig$AppTheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 500
    const-string v0, "mOverlayPkgName"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 501
    const-string v0, "mIconPkgName"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 502
    const-string v0, "mFontPkgName"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 503
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 504
    return-void
.end method

.method private static writeTheme(Landroid/util/JsonWriter;Landroid/content/res/ThemeConfig;)V
    .locals 5
    .param p0, "writer"    # Landroid/util/JsonWriter;
    .param p1, "theme"    # Landroid/content/res/ThemeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 489
    iget-object v4, p1, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 490
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ThemeConfig$AppTheme;

    .line 492
    .local v1, "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 493
    invoke-static {p0, v1}, Landroid/content/res/ThemeConfig$JsonSerializer;->writeAppTheme(Landroid/util/JsonWriter;Landroid/content/res/ThemeConfig$AppTheme;)V

    goto :goto_0

    .line 495
    .end local v0    # "appPkgName":Ljava/lang/String;
    .end local v1    # "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 496
    return-void
.end method
