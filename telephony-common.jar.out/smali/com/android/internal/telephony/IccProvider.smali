.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN:I = 0x1

.field protected static final ADN_ALL:I = 0x7

.field protected static final ADN_SUB:I = 0x2

.field private static final COLOROS_EMAIL_LEN:I = 0x1c

.field private static final COLOROS_NAME_LEN:I = 0x1a

.field private static final COLOROS_PB_READY:I = 0x1b

.field private static final COLOROS_TOTAL:I = 0x18

.field private static final COLOROS_USED:I = 0x19

.field private static final DBG:Z = true

.field protected static final FDN:I = 0x3

.field protected static final FDN_SUB:I = 0x4

.field protected static final SDN:I = 0x5

.field protected static final SDN_SUB:I = 0x6

.field public static final STR_ANRS:Ljava/lang/String; = "anrs"

.field public static final STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final STR_NEW_ANRS:Ljava/lang/String; = "newAnrs"

.field public static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final STR_NUMBER:Ljava/lang/String; = "number"

.field public static final STR_PIN2:Ljava/lang/String; = "pin2"

.field public static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 49
    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "anrs"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 90
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/subId/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/subId/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/subId/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/adn_all"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "all_space/#"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "used_space/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sim_name_length/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook_ready/#"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "emailLen/#"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getRequestSubId(Landroid/net/Uri;)J
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestSubId url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 632
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 9
    .param p1, "efType"    # I

    .prologue
    .line 148
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v5

    .line 150
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 151
    :cond_0
    const/4 v6, 0x0

    new-array v1, v6, [Landroid/database/Cursor;

    .line 164
    .local v1, "result":[Landroid/database/Cursor;
    :cond_1
    new-instance v6, Landroid/database/MergeCursor;

    invoke-direct {v6, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v6

    .line 153
    .end local v1    # "result":[Landroid/database/Cursor;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 154
    .local v4, "subIdCount":I
    new-array v1, v4, [Landroid/database/Cursor;

    .line 157
    .restart local v1    # "result":[Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 158
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubInfoRecord;

    iget-wide v2, v6, Landroid/telephony/SubInfoRecord;->subId:J

    .line 159
    .local v2, "subId":J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v6

    aput-object v6, v1, v0

    .line 160
    const-string v6, "IccProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADN Records loaded for Subscription ::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadFromEf(IJ)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "efType"    # I
    .param p2, "subId"    # J

    .prologue
    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 521
    const/4 v1, 0x0

    .line 523
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 525
    .local v5, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 526
    invoke-interface {v5, p2, p3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(JI)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 534
    .end local v5    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 536
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 537
    .local v0, "N":I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 538
    .local v2, "cursor":Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 539
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 540
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 539
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 530
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 531
    .local v3, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 528
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 15
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 582
    const/4 v13, 0x5

    new-array v6, v13, [Ljava/lang/Object;

    .line 583
    .local v6, "contact":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 585
    .local v12, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "anrs":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadRecord: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 589
    const/4 v13, 0x0

    aput-object v1, v6, v13

    .line 590
    const/4 v13, 0x1

    aput-object v12, v6, v13

    .line 593
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, "emails":[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 595
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .local v8, "emailString":Ljava/lang/StringBuilder;
    move-object v5, v9

    .local v5, "arr$":[Ljava/lang/String;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v7, v5, v10

    .line 597
    .local v7, "email":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding email:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 601
    .end local v7    # "email":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    .line 604
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "emailString":Ljava/lang/StringBuilder;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_1
    if-eqz v4, :cond_3

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v3, "anrString":Ljava/lang/StringBuilder;
    move-object v5, v4

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v11, v5

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v2, v5, v10

    .line 607
    .local v2, "anr":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding anr:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 613
    .end local v2    # "anr":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    .line 617
    .end local v3    # "anrString":Ljava/lang/StringBuilder;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_3
    const/4 v13, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v13

    .line 620
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 622
    .end local v1    # "alphaTag":Ljava/lang/String;
    .end local v4    # "anrs":[Ljava/lang/String;
    .end local v6    # "contact":[Ljava/lang/Object;
    .end local v9    # "emails":[Ljava/lang/String;
    .end local v12    # "number":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 625
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 302
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 303
    const-string v2, "len of input String is 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 312
    .end local p1    # "inVal":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 306
    .restart local p1    # "inVal":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 308
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 309
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    .line 312
    goto :goto_0
.end method

.method private updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;J)Z
    .locals 8
    .param p1, "efType"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "subId"    # J

    .prologue
    .line 552
    const/4 v7, 0x0

    .line 554
    .local v7, "success":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", values: [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 558
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 560
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move-wide v2, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 561
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsWithContentValuesInEfBySearchUsingSubId(JILandroid/content/ContentValues;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 570
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 571
    return v7

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 320
    const-string v5, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 321
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 322
    .local v16, "match":I
    packed-switch v16, :pswitch_data_0

    .line 344
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot insert into URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 324
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 325
    .local v4, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    .line 349
    .local v2, "subId":J
    :goto_0
    const/16 v23, 0x0

    .line 350
    .local v23, "tag":Ljava/lang/String;
    const/16 v18, 0x0

    .line 351
    .local v18, "number":Ljava/lang/String;
    const/4 v13, 0x0

    .line 352
    .local v13, "emails":Ljava/lang/String;
    const/4 v12, 0x0

    .line 353
    .local v12, "anrs":Ljava/lang/String;
    const/4 v9, 0x0

    .line 357
    .local v9, "pin2":Ljava/lang/String;
    const/4 v14, 0x0

    .line 358
    .local v14, "id":Ljava/lang/String;
    const/16 v19, 0x0

    .line 361
    .local v19, "number2":Ljava/lang/String;
    const-string v5, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 362
    .local v24, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v17, v0

    .line 364
    .local v17, "n":I
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_7

    .line 365
    aget-object v21, v24, v17

    .line 366
    .local v21, "param":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsing \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 368
    const-string v5, "="

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 370
    .local v20, "pair":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 371
    const-string v5, "IccProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolve: bad whereClause parameter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    .end local v9    # "pin2":Ljava/lang/String;
    .end local v12    # "anrs":Ljava/lang/String;
    .end local v13    # "emails":Ljava/lang/String;
    .end local v14    # "id":Ljava/lang/String;
    .end local v17    # "n":I
    .end local v18    # "number":Ljava/lang/String;
    .end local v19    # "number2":Ljava/lang/String;
    .end local v20    # "pair":[Ljava/lang/String;
    .end local v21    # "param":Ljava/lang/String;
    .end local v23    # "tag":Ljava/lang/String;
    .end local v24    # "tokens":[Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x6f3a

    .line 330
    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 331
    .restart local v2    # "subId":J
    goto :goto_0

    .line 334
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    :pswitch_2
    const/16 v4, 0x6f3b

    .line 335
    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    .line 336
    .restart local v2    # "subId":J
    goto :goto_0

    .line 339
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    :pswitch_3
    const/16 v4, 0x6f3b

    .line 340
    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 341
    .restart local v2    # "subId":J
    goto :goto_0

    .line 374
    .restart local v9    # "pin2":Ljava/lang/String;
    .restart local v12    # "anrs":Ljava/lang/String;
    .restart local v13    # "emails":Ljava/lang/String;
    .restart local v14    # "id":Ljava/lang/String;
    .restart local v17    # "n":I
    .restart local v18    # "number":Ljava/lang/String;
    .restart local v19    # "number2":Ljava/lang/String;
    .restart local v20    # "pair":[Ljava/lang/String;
    .restart local v21    # "param":Ljava/lang/String;
    .restart local v23    # "tag":Ljava/lang/String;
    .restart local v24    # "tokens":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v20, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, "key":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 377
    .local v25, "val":Ljava/lang/String;
    const-string v5, "tag"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1

    .line 379
    :cond_2
    const-string v5, "number"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 381
    :cond_3
    const-string v5, "emails"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 383
    :cond_4
    const-string v5, "anrs"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 385
    :cond_5
    const-string v5, "pin2"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 390
    :cond_6
    const-string v5, "id"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 399
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "pair":[Ljava/lang/String;
    .end local v21    # "param":Ljava/lang/String;
    .end local v25    # "val":Ljava/lang/String;
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_9

    .line 400
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .end local v9    # "pin2":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const-string v10, ""

    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSUpdateIccRecordInEfByIdEx(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 402
    const/4 v5, 0x1

    .line 430
    :goto_2
    return v5

    .line 405
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 410
    .restart local v9    # "pin2":Ljava/lang/String;
    :cond_9
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v8, "mValues":Landroid/content/ContentValues;
    const-string v5, "tag"

    move-object/from16 v0, v23

    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v5, "number"

    move-object/from16 v0, v18

    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v5, "emails"

    invoke-virtual {v8, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v5, "anrs"

    invoke-virtual {v8, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v5, "newTag"

    const-string v6, ""

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v5, "newNumber"

    const-string v6, ""

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v5, "newEmails"

    const-string v6, ""

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v5, "newAnrs"

    const-string v6, ""

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 420
    const/4 v5, 0x0

    goto :goto_2

    .line 423
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete mvalues= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v6, p0

    move v7, v4

    move-wide v10, v2

    .line 424
    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;J)Z

    move-result v22

    .line 425
    .local v22, "success":Z
    if-nez v22, :cond_b

    .line 426
    const/4 v5, 0x0

    goto :goto_2

    .line 429
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 430
    const/4 v5, 0x1

    goto :goto_2

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 169
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 18
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 188
    const/4 v9, 0x0

    .line 191
    .local v9, "pin2":Ljava/lang/String;
    const-string v8, "insert"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 193
    sget-object v8, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 194
    .local v14, "match":I
    packed-switch v14, :pswitch_data_0

    .line 218
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot insert into URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 196
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 197
    .local v4, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    .line 222
    .local v2, "subId":J
    :goto_0
    const-string v8, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "tag":Ljava/lang/String;
    const-string v8, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "number":Ljava/lang/String;
    const-string v8, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "emails":Ljava/lang/String;
    const-string v8, "anrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "anrs":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v13, "mValues":Landroid/content/ContentValues;
    const-string v8, "tag"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v8, "number"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v8, "emails"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v8, "anrs"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v8, "newTag"

    invoke-virtual {v13, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v8, "newNumber"

    invoke-virtual {v13, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v8, "newEmails"

    invoke-virtual {v13, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v8, "newAnrs"

    invoke-virtual {v13, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v12, -0x1

    .line 246
    .local v12, "index":I
    if-eqz v11, :cond_0

    .line 247
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v16

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSAddIccRecordToEfEx(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 254
    :goto_1
    const/4 v8, -0x1

    if-ne v12, v8, :cond_1

    .line 255
    const-string v8, "insert fail."

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 256
    const/4 v15, 0x0

    .line 296
    :goto_2
    return-object v15

    .line 201
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "anrs":Ljava/lang/String;
    .end local v11    # "emails":Ljava/lang/String;
    .end local v12    # "index":I
    .end local v13    # "mValues":Landroid/content/ContentValues;
    :pswitch_1
    const/16 v4, 0x6f3a

    .line 202
    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 203
    .restart local v2    # "subId":J
    goto/16 :goto_0

    .line 206
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    :pswitch_2
    const/16 v4, 0x6f3b

    .line 207
    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    .line 208
    .restart local v2    # "subId":J
    const-string v8, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 209
    goto/16 :goto_0

    .line 212
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    :pswitch_3
    const/16 v4, 0x6f3b

    .line 213
    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 214
    .restart local v2    # "subId":J
    const-string v8, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 215
    goto/16 :goto_0

    .line 251
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "anrs":Ljava/lang/String;
    .restart local v11    # "emails":Ljava/lang/String;
    .restart local v12    # "index":I
    .restart local v13    # "mValues":Landroid/content/ContentValues;
    :cond_0
    const/4 v8, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSAddIccRecordToEfEx(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 260
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v8, "content://icc/"

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v10, "buf":Ljava/lang/StringBuilder;
    packed-switch v14, :pswitch_data_1

    .line 284
    :goto_3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 289
    .local v15, "resultUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 263
    .end local v15    # "resultUri":Landroid/net/Uri;
    :pswitch_4
    const-string v8, "adn/"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 267
    :pswitch_5
    const-string v8, "adn/subId/"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 271
    :pswitch_6
    const-string v8, "fdn/"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 275
    :pswitch_7
    const-string v8, "fdn/subId/"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 261
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x6f49

    const/16 v3, 0x6f3b

    const/16 v2, 0x6f3a

    .line 116
    const-string v0, "query"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 123
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IJ)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 435
    const/4 v13, 0x0

    .line 439
    .local v13, "pin2":Ljava/lang/String;
    const-string v5, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 441
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 442
    .local v19, "match":I
    packed-switch v19, :pswitch_data_0

    .line 466
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 444
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 445
    .local v4, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    .line 470
    .local v2, "subId":J
    :goto_0
    const-string v5, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 471
    .local v23, "tag":Ljava/lang/String;
    const-string v5, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 472
    .local v21, "number":Ljava/lang/String;
    const/16 v17, 0x0

    .line 473
    .local v17, "emails":[Ljava/lang/String;
    const-string v5, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "newTag":Ljava/lang/String;
    const-string v5, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "newNumber":Ljava/lang/String;
    const/16 v20, 0x0

    .line 479
    .local v20, "newEmails":[Ljava/lang/String;
    const-string v5, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 480
    .local v16, "email":Ljava/lang/String;
    const-string v5, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 481
    .local v8, "number2":Ljava/lang/String;
    const-string v5, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 483
    .local v18, "id":Ljava/lang/Long;
    if-nez v6, :cond_0

    .line 484
    const-string v6, ""

    .line 486
    :cond_0
    if-nez v7, :cond_1

    .line 487
    const-string v7, ""

    .line 490
    :cond_1
    if-eqz v18, :cond_4

    .line 491
    if-eqz v16, :cond_2

    .line 492
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->intValue()I

    move-result v5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSUpdateIccRecordInEfByIdEx(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 494
    const/4 v5, 0x1

    .line 515
    :goto_1
    return v5

    .line 449
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    .end local v6    # "newTag":Ljava/lang/String;
    .end local v7    # "newNumber":Ljava/lang/String;
    .end local v8    # "number2":Ljava/lang/String;
    .end local v16    # "email":Ljava/lang/String;
    .end local v17    # "emails":[Ljava/lang/String;
    .end local v18    # "id":Ljava/lang/Long;
    .end local v20    # "newEmails":[Ljava/lang/String;
    .end local v21    # "number":Ljava/lang/String;
    .end local v23    # "tag":Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x6f3a

    .line 450
    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 451
    .restart local v2    # "subId":J
    goto :goto_0

    .line 454
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    :pswitch_2
    const/16 v4, 0x6f3b

    .line 455
    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    .line 456
    .restart local v2    # "subId":J
    const-string v5, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 457
    goto :goto_0

    .line 460
    .end local v2    # "subId":J
    .end local v4    # "efType":I
    :pswitch_3
    const/16 v4, 0x6f3b

    .line 461
    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 462
    .restart local v2    # "subId":J
    const-string v5, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 463
    goto/16 :goto_0

    .line 498
    .restart local v6    # "newTag":Ljava/lang/String;
    .restart local v7    # "newNumber":Ljava/lang/String;
    .restart local v8    # "number2":Ljava/lang/String;
    .restart local v16    # "email":Ljava/lang/String;
    .restart local v17    # "emails":[Ljava/lang/String;
    .restart local v18    # "id":Ljava/lang/Long;
    .restart local v20    # "newEmails":[Ljava/lang/String;
    .restart local v21    # "number":Ljava/lang/String;
    .restart local v23    # "tag":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->intValue()I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSUpdateIccRecordInEfByIdEx(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 500
    const/4 v5, 0x1

    goto :goto_1

    .line 503
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v10, p0

    move v11, v4

    move-object/from16 v12, p2

    move-wide v14, v2

    .line 508
    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;J)Z

    move-result v22

    .line 510
    .local v22, "success":Z
    if-nez v22, :cond_5

    .line 511
    const/4 v5, 0x0

    goto :goto_1

    .line 514
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 515
    const/4 v5, 0x1

    goto :goto_1

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
