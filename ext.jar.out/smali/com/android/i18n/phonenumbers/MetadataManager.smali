.class Lcom/android/i18n/phonenumbers/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# static fields
.field private static final ALTERNATE_FORMATS_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final SHORT_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/ShortNumberMetadataProto"

.field private static final callingCodeToAlternateFormatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final countryCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final regionCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final regionCodeToShortNumberMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/i18n/phonenumbers/MetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    .line 54
    invoke-static {}, Lcom/android/i18n/phonenumbers/AlternateFormatsCountryCodeSet;->getCountryCodeSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    .line 59
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumbersRegionCodeSet;->getRegionCodeSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getAlternateFormatsForCountry(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p0, "countryCallingCode"    # I

    .prologue
    .line 93
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 96
    :cond_0
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/MetadataManager;->loadAlternateFormatsMetadataFromFile(I)V

    .line 100
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2
    .param p0, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/MetadataManager;->loadShortNumberMetadataFromFile(Ljava/lang/String;)V

    .line 135
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getShortNumberMetadataSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    return-object v0
.end method

.method private static loadAlternateFormatsMetadataFromFile(I)V
    .locals 10
    .param p0, "countryCallingCode"    # I

    .prologue
    .line 75
    const-class v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 77
    .local v6, "source":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 79
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 81
    .local v0, "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v0, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 83
    .local v5, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 85
    .end local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 86
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 88
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    :cond_0
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 89
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 88
    .end local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    throw v7

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 85
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static loadShortNumberMetadataFromFile(Ljava/lang/String;)V
    .locals 10
    .param p0, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/com/android/i18n/phonenumbers/data/ShortNumberMetadataProto_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 107
    .local v6, "source":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 109
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v5, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 111
    .local v5, "shortNumberMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v5, v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 112
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 113
    .local v4, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v7, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 115
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "shortNumberMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 116
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 118
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v5    # "shortNumberMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :cond_0
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 119
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 118
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "shortNumberMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    throw v7

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 115
    :catch_1
    move-exception v0

    goto :goto_1
.end method
