.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$1;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final ATTRIBUTE_ITEM_NAME:Ljava/lang/String; = "name"

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final ICON_PATH:Ljava/lang/String; = "assets/icons/"

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field private static final OVERLAY_PATH:Ljava/lang/String; = "assets/overlays/"

.field private static final PACKAGE_REDIRECTIONS_XML:Ljava/lang/String; = "res/xml/redirections.xml"

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x100

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_PRIVILEGED:I = 0x80

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_ON_SDCARD:I = 0x20

.field public static final PARSE_TRUSTED_OVERLAY:I = 0x200

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE_REDIRECTIONS:Ljava/lang/String; = "package-redirections"

.field private static final TAG_RESOURCE_REDIRECTIONS:Ljava/lang/String; = "resource-redirections"

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    new-array v0, v7, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v3, v5

    const/16 v4, 0x2711

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v2, "android.permission.READ_CONTACTS"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "android.permission.READ_CALL_LOG"

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v2, "android.permission.WRITE_CONTACTS"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_CALL_LOG"

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v7

    sput-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 207
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 211
    sput-boolean v6, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 638
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$1;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    .line 5194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 358
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 359
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 360
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;
    .param p5, "x5"    # [Ljava/lang/String;

    .prologue
    .line 109
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x2e

    const/4 v6, 0x0

    .line 2105
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 2106
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty class name in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v6

    .line 2124
    :goto_0
    return-object v3

    .line 2109
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2110
    .local v2, "cls":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2111
    .local v1, "c":C
    if-ne v1, v5, :cond_2

    .line 2112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2114
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2116
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2120
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v4, 0x61

    if-lt v1, v4, :cond_4

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_4

    .line 2121
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2123
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad class name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v6

    goto :goto_0
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2129
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2130
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2131
    .local v0, "c":C
    if-eqz p0, :cond_2

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_2

    .line 2132
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 2133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": must be at least two characters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v7

    .line 2152
    :goto_0
    return-object v4

    .line 2137
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2138
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2139
    .local v1, "nameError":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v7

    goto :goto_0

    .line 2144
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2146
    .end local v1    # "nameError":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2147
    .restart local v1    # "nameError":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "system"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v7

    goto/16 :goto_0

    .line 2152
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .prologue
    .line 2158
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    const-string v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2159
    if-eqz p1, :cond_1

    .line 2172
    .end local p1    # "defProc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defProc":Ljava/lang/String;
    :cond_1
    move-object p1, p0

    .line 2159
    goto :goto_0

    .line 2161
    :cond_2
    if-eqz p4, :cond_5

    .line 2162
    array-length v2, p4

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 2163
    aget-object v1, p4, v0

    .line 2164
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p1, p0

    .line 2165
    goto :goto_0

    .line 2162
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2169
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2172
    const-string v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .prologue
    .line 2177
    if-nez p2, :cond_0

    .line 2183
    .end local p1    # "defProc":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 2180
    .restart local p1    # "defProc":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2181
    const/4 p1, 0x0

    goto :goto_0

    .line 2183
    :cond_1
    const-string v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 416
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_1

    :cond_0
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Ljava/util/jar/StrictJarFile;

    .prologue
    .line 5213
    if-eqz p0, :cond_0

    .line 5215
    :try_start_0
    invoke-virtual {p0}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5219
    :cond_0
    :goto_0
    return-void

    .line 5216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    .locals 17
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1149
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1151
    .local v1, "apkPath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1153
    .local v9, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_0
    new-instance v10, Ljava/util/jar/StrictJarFile;

    invoke-direct {v10, v1}, Ljava/util/jar/StrictJarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    .end local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    .local v10, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_1
    const-string v13, "AndroidManifest.xml"

    invoke-virtual {v10, v13}, Ljava/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 1157
    .local v11, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v11, :cond_0

    .line 1158
    new-instance v13, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v14, -0x65

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has no manifest"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1207
    .end local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    move-object v9, v10

    .line 1208
    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .local v2, "e":Ljava/security/GeneralSecurityException;
    .restart local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    :goto_0
    :try_start_2
    new-instance v13, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v14, -0x69

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to collect certificates from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1214
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v13

    :goto_1
    invoke-static {v9}, Landroid/content/pm/PackageParser;->closeQuietly(Ljava/util/jar/StrictJarFile;)V

    throw v13

    .line 1162
    .end local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v12, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    and-int/lit8 v13, p2, 0x1

    if-nez v13, :cond_2

    .line 1167
    invoke-virtual {v10}, Ljava/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1168
    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1169
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 1171
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1172
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "META-INF/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1173
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "AndroidManifest.xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1175
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1210
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_1
    move-exception v13

    move-object v9, v10

    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    :goto_3
    move-object v2, v13

    .line 1211
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    new-instance v13, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v14, -0x67

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to collect certificates from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1182
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_2
    :try_start_5
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 1183
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    invoke-static {v10, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 1184
    .local v4, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1185
    new-instance v13, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v14, -0x67

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has no certificates at entry "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v13

    .line 1210
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_2
    move-exception v13

    move-object v9, v10

    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    :goto_5
    move-object v2, v13

    goto :goto_4

    .line 1189
    .end local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryCerts":[[Ljava/security/cert/Certificate;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_4
    invoke-static {v4}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v5

    .line 1191
    .local v5, "entrySignatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    if-nez v13, :cond_5

    .line 1192
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1193
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1194
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1195
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    array-length v13, v4

    if-ge v6, v13, :cond_3

    .line 1196
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    aget-object v14, v4, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1195
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1199
    .end local v6    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v13, v5}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1200
    new-instance v13, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v14, -0x68

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has mismatched certificates at entry "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v13
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1214
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v5    # "entrySignatures":[Landroid/content/pm/Signature;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    goto/16 :goto_1

    .end local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_6
    invoke-static {v10}, Landroid/content/pm/PackageParser;->closeQuietly(Ljava/util/jar/StrictJarFile;)V

    .line 1216
    return-void

    .line 1210
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .end local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v9    # "jarFile":Ljava/util/jar/StrictJarFile;
    :catch_3
    move-exception v13

    goto :goto_5

    :catch_4
    move-exception v13

    goto/16 :goto_3

    .line 1207
    :catch_5
    move-exception v2

    goto/16 :goto_0
.end method

.method private static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1220
    array-length v2, p0

    new-array v1, v2, [Landroid/content/pm/Signature;

    .line 1221
    .local v1, "res":[Landroid/content/pm/Signature;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1222
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v1, v0

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1224
    :cond_0
    return-object v1
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 5
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4785
    if-eqz p4, :cond_1

    .line 4816
    :cond_0
    :goto_0
    return v2

    .line 4790
    :cond_1
    iget v4, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v4, :cond_2

    .line 4791
    iget v4, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v4, v2, :cond_6

    move v0, v2

    .line 4792
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-ne v4, v0, :cond_0

    .line 4796
    .end local v0    # "enabled":Z
    :cond_2
    iget-boolean v4, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-nez v4, :cond_0

    .line 4799
    iget-boolean v4, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-nez v4, :cond_0

    .line 4802
    and-int/lit16 v4, p0, 0x80

    if-eqz v4, :cond_3

    if-nez p3, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 4806
    :cond_3
    and-int/lit16 v4, p0, 0x400

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 4810
    :cond_4
    iget-object v4, p2, Landroid/content/pm/PackageUserState;->protectedComponents:Ljava/util/HashSet;

    if-eqz v4, :cond_5

    .line 4811
    iget-object v4, p2, Landroid/content/pm/PackageUserState;->protectedComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_7

    move v1, v2

    .line 4812
    .local v1, "protect":Z
    :goto_2
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->protect:Z

    if-ne v4, v1, :cond_0

    .end local v1    # "protect":Z
    :cond_5
    move v2, v3

    .line 4816
    goto :goto_0

    :cond_6
    move v0, v3

    .line 4791
    goto :goto_1

    :cond_7
    move v1, v3

    .line 4811
    goto :goto_2
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 4982
    if-nez p0, :cond_1

    .line 4990
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 4983
    .restart local p0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4988
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 4989
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 4966
    if-nez p0, :cond_1

    .line 4977
    :cond_0
    :goto_0
    return-object v0

    .line 4967
    :cond_1
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4970
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4971
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 4974
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 4975
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 4976
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 4897
    if-nez p0, :cond_1

    .line 4914
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 4898
    .restart local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4903
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 4904
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz p3, :cond_2

    .line 4905
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4906
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/content/pm/PackageManager;->getDataDirForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4908
    :cond_2
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_3

    .line 4909
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4913
    :goto_1
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    goto :goto_0

    .line 4911
    :cond_3
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 4821
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 4856
    if-nez p0, :cond_1

    .line 4892
    :cond_0
    :goto_0
    return-object v0

    .line 4857
    :cond_1
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4860
    invoke-static {p1, p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 4870
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 4871
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 4875
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 4876
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz p3, :cond_4

    .line 4877
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4878
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/content/pm/PackageManager;->getDataDirForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4880
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_5

    .line 4881
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 4883
    :cond_5
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_6

    .line 4884
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 4886
    :cond_6
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_7

    .line 4887
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4891
    :goto_1
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    goto :goto_0

    .line 4889
    :cond_7
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .prologue
    .line 5114
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 5120
    :goto_0
    return-object v0

    .line 5115
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 5116
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    goto :goto_0

    .line 5118
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 5119
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/HashSet;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 11
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 407
    .local p7, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/HashSet;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/HashSet;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 19
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 428
    .local p7, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 429
    const/4 v11, 0x0

    .line 607
    :cond_0
    :goto_0
    return-object v11

    .line 431
    :cond_1
    new-instance v11, Landroid/content/pm/PackageInfo;

    invoke-direct {v11}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 432
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 434
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v14, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 437
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v14, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 438
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    .line 439
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->hasIconPack:Z

    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->hasIconPack:Z

    .line 440
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->mIsLegacyIconPackApk:Z

    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    .line 442
    iget-boolean v14, v11, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-eqz v14, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTargets:Ljava/util/ArrayList;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    .line 444
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mThemeInfo:Landroid/content/pm/ThemeInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->themeInfo:Landroid/content/pm/ThemeInfo;

    .line 446
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 447
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v14, v11, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 448
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 449
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_3

    iget-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_4

    .line 451
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 453
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 456
    move-wide/from16 v0, p3

    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 457
    move-wide/from16 v0, p5

    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 458
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_5

    .line 459
    move-object/from16 v0, p1

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->gids:[I

    .line 461
    :cond_5
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_8

    .line 462
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 463
    .local v4, "N":I
    :goto_1
    if-lez v4, :cond_6

    .line 464
    new-array v14, v4, [Landroid/content/pm/ConfigurationInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 465
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 467
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 468
    :goto_2
    if-lez v4, :cond_7

    .line 469
    new-array v14, v4, [Landroid/content/pm/FeatureInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 472
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 473
    :goto_3
    if-lez v4, :cond_8

    .line 474
    new-array v14, v4, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 478
    .end local v4    # "N":I
    :cond_8
    and-int/lit8 v14, p2, 0x1

    if-eqz v14, :cond_10

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 480
    .restart local v4    # "N":I
    if-lez v4, :cond_10

    .line 481
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_d

    .line 482
    new-array v14, v4, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 490
    :goto_4
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    move v8, v7

    .end local v7    # "j":I
    .local v8, "j":I
    :goto_5
    if-ge v6, v4, :cond_10

    .line 491
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 492
    .local v5, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v14, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v14, :cond_9

    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_29

    .line 494
    :cond_9
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v15, v8

    .line 490
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_5

    .line 462
    .end local v4    # "N":I
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 467
    .restart local v4    # "N":I
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 472
    :cond_c
    const/4 v4, 0x0

    goto :goto_3

    .line 484
    :cond_d
    const/4 v9, 0x0

    .line 485
    .local v9, "num":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v4, :cond_f

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v14, :cond_e

    add-int/lit8 v9, v9, 0x1

    .line 485
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 488
    :cond_f
    new-array v14, v9, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_4

    .line 500
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "num":I
    :cond_10
    and-int/lit8 v14, p2, 0x2

    if-eqz v14, :cond_15

    .line 501
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 502
    .restart local v4    # "N":I
    if-lez v4, :cond_15

    .line 503
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_12

    .line 504
    new-array v14, v4, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 512
    :goto_8
    const/4 v6, 0x0

    .restart local v6    # "i":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_9
    if-ge v6, v4, :cond_15

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 514
    .restart local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v14, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v14, :cond_11

    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_28

    .line 516
    :cond_11
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v15, v8

    .line 512
    :goto_a
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_9

    .line 506
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_12
    const/4 v9, 0x0

    .line 507
    .restart local v9    # "num":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v4, :cond_14

    .line 508
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v14, :cond_13

    add-int/lit8 v9, v9, 0x1

    .line 507
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 510
    :cond_14
    new-array v14, v9, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    goto :goto_8

    .line 522
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "num":I
    :cond_15
    and-int/lit8 v14, p2, 0x4

    if-eqz v14, :cond_1a

    .line 523
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 524
    .restart local v4    # "N":I
    if-lez v4, :cond_1a

    .line 525
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_17

    .line 526
    new-array v14, v4, [Landroid/content/pm/ServiceInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 534
    :goto_c
    const/4 v6, 0x0

    .restart local v6    # "i":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_d
    if-ge v6, v4, :cond_1a

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Service;

    .line 536
    .local v13, "service":Landroid/content/pm/PackageParser$Service;
    iget-object v14, v13, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v14, v14, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez v14, :cond_16

    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_27

    .line 538
    :cond_16
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Service;

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v14

    aput-object v14, v15, v8

    .line 534
    :goto_e
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_d

    .line 528
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v13    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_17
    const/4 v9, 0x0

    .line 529
    .restart local v9    # "num":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_f
    if-ge v6, v4, :cond_19

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Service;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v14, v14, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v14, :cond_18

    add-int/lit8 v9, v9, 0x1

    .line 529
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 532
    :cond_19
    new-array v14, v9, [Landroid/content/pm/ServiceInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    goto :goto_c

    .line 544
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "num":I
    :cond_1a
    and-int/lit8 v14, p2, 0x8

    if-eqz v14, :cond_1f

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 546
    .restart local v4    # "N":I
    if-lez v4, :cond_1f

    .line 547
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_1c

    .line 548
    new-array v14, v4, [Landroid/content/pm/ProviderInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 556
    :goto_10
    const/4 v6, 0x0

    .restart local v6    # "i":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_11
    if-ge v6, v4, :cond_1f

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Provider;

    .line 558
    .local v12, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v14, v12, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v14, v14, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v14, :cond_1b

    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_26

    .line 560
    :cond_1b
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Provider;

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    aput-object v14, v15, v8

    .line 556
    :goto_12
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_11

    .line 550
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_1c
    const/4 v9, 0x0

    .line 551
    .restart local v9    # "num":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_13
    if-ge v6, v4, :cond_1e

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Provider;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v14, v14, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v14, :cond_1d

    add-int/lit8 v9, v9, 0x1

    .line 551
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 554
    :cond_1e
    new-array v14, v9, [Landroid/content/pm/ProviderInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_10

    .line 566
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "num":I
    :cond_1f
    and-int/lit8 v14, p2, 0x10

    if-eqz v14, :cond_20

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 568
    .restart local v4    # "N":I
    if-lez v4, :cond_20

    .line 569
    new-array v14, v4, [Landroid/content/pm/InstrumentationInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 570
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_14
    if-ge v6, v4, :cond_20

    .line 571
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Instrumentation;

    move/from16 v0, p2

    invoke-static {v14, v0}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v14

    aput-object v14, v15, v6

    .line 570
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 576
    .end local v4    # "N":I
    .end local v6    # "i":I
    :cond_20
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_24

    .line 577
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 578
    .restart local v4    # "N":I
    if-lez v4, :cond_21

    .line 579
    new-array v14, v4, [Landroid/content/pm/PermissionInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 580
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_15
    if-ge v6, v4, :cond_21

    .line 581
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    move/from16 v0, p2

    invoke-static {v14, v0}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    aput-object v14, v15, v6

    .line 580
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 584
    .end local v6    # "i":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 585
    if-lez v4, :cond_24

    .line 586
    new-array v14, v4, [Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 587
    new-array v14, v4, [I

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 588
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_16
    if-ge v6, v4, :cond_24

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 590
    .local v10, "perm":Ljava/lang/String;
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v10, v14, v6

    .line 591
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_22

    .line 592
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v6

    or-int/lit8 v15, v15, 0x1

    aput v15, v14, v6

    .line 594
    :cond_22
    if-eqz p7, :cond_23

    move-object/from16 v0, p7

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 595
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v6

    or-int/lit8 v15, v15, 0x2

    aput v15, v14, v6

    .line 588
    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 600
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v10    # "perm":Ljava/lang/String;
    :cond_24
    and-int/lit8 v14, p2, 0x40

    if-eqz v14, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v14, :cond_25

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v4, v14

    .line 602
    .restart local v4    # "N":I
    :goto_17
    if-lez v4, :cond_0

    .line 603
    new-array v14, v4, [Landroid/content/pm/Signature;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 601
    .end local v4    # "N":I
    :cond_25
    const/4 v4, 0x0

    goto :goto_17

    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v8    # "j":I
    .restart local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_26
    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_12

    .end local v7    # "j":I
    .end local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    .restart local v8    # "j":I
    .restart local v13    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_27
    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_e

    .end local v7    # "j":I
    .end local v13    # "service":Landroid/content/pm/PackageParser$Service;
    .restart local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .restart local v8    # "j":I
    :cond_28
    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_a

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :cond_29
    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_6
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .prologue
    .line 4930
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 4936
    :goto_0
    return-object v0

    .line 4931
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 4932
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    goto :goto_0

    .line 4934
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 4935
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .prologue
    .line 4919
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 4925
    :goto_0
    return-object v0

    .line 4920
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 4921
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    goto :goto_0

    .line 4923
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 4924
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5069
    if-nez p0, :cond_0

    move-object v0, v1

    .line 5085
    :goto_0
    return-object v0

    .line 5070
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 5071
    goto :goto_0

    .line 5073
    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v2, p2, v3, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v2

    if-nez v2, :cond_3

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v2, :cond_3

    .line 5076
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    goto :goto_0

    .line 5079
    :cond_3
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 5080
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 5081
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_4

    .line 5082
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5084
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 5020
    if-nez p0, :cond_1

    .line 5031
    :cond_0
    :goto_0
    return-object v0

    .line 5021
    :cond_1
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5024
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5025
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 5028
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 5029
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 5030
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 1
    .param p0, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v0

    return v0
.end method

.method private static isLegacyIconPack(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1437
    const-string v9, "action"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1438
    .local v3, "isAction":Z
    const-string v9, "category"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1439
    .local v4, "isCategory":Z
    if-eqz v3, :cond_0

    sget-object v6, Landroid/content/pm/ThemeUtils;->sSupportedActions:[Ljava/lang/String;

    .line 1442
    .local v6, "items":[Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_4

    .line 1443
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 1444
    const-string v9, "name"

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1445
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 1446
    .local v8, "value":Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v7, :cond_3

    aget-object v5, v0, v2

    .line 1447
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1448
    const/4 v9, 0x1

    .line 1454
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v5    # "item":Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v8    # "value":Ljava/lang/String;
    :goto_3
    return v9

    .line 1439
    .end local v6    # "items":[Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    sget-object v6, Landroid/content/pm/ThemeUtils;->sSupportedCategories:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1446
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "i$":I
    .restart local v5    # "item":Ljava/lang/String;
    .restart local v6    # "items":[Ljava/lang/String;
    .restart local v7    # "len$":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1443
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "item":Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1454
    .end local v1    # "i":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 5
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 862
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 870
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    .line 871
    .local v0, "cookie":I
    if-nez v0, :cond_1

    .line 872
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 875
    :cond_1
    return v0
.end method

.method private static loadCertificates(Ljava/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 6
    .param p0, "jarFile"    # Ljava/util/jar/StrictJarFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v1, 0x0

    .line 616
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 617
    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    .line 618
    invoke-virtual {p0, p1}, Ljava/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 623
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    .line 619
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 619
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_0
.end method

.method private packageHasIconPack(Ljava/io/File;)Z
    .locals 8
    .param p1, "originalFile"    # Ljava/io/File;

    .prologue
    .line 1076
    const/4 v1, 0x0

    .line 1078
    .local v1, "privateZip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    .end local v1    # "privateZip":Ljava/util/zip/ZipFile;
    .local v2, "privateZip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 1080
    .local v3, "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1081
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 1082
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1084
    .local v5, "zipEntryName":Ljava/lang/String;
    const-string v6, "assets/icons/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "assets/icons/"

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-le v6, v7, :cond_0

    .line 1086
    const/4 v6, 0x1

    .line 1092
    if-eqz v2, :cond_1

    .line 1094
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .line 1100
    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .end local v3    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "zipEntryName":Ljava/lang/String;
    .restart local v1    # "privateZip":Ljava/util/zip/ZipFile;
    :goto_1
    return v6

    .line 1092
    .end local v1    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_2
    if-eqz v2, :cond_5

    .line 1094
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v2

    .line 1100
    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .end local v3    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v1    # "privateZip":Ljava/util/zip/ZipFile;
    :cond_3
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1095
    .end local v1    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 1097
    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "privateZip":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 1089
    .end local v3    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catch_1
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v6, "PackageParser"

    const-string v7, "Could not read zip entries while checking if apk has icon pack"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1092
    if-eqz v1, :cond_3

    .line 1094
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1095
    :catch_2
    move-exception v6

    goto :goto_2

    .line 1092
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_4

    .line 1094
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1097
    :cond_4
    :goto_5
    throw v6

    .line 1095
    .end local v1    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "zipEntryName":Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_0

    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .end local v3    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "zipEntryName":Ljava/lang/String;
    .restart local v1    # "privateZip":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v7

    goto :goto_5

    .line 1092
    .end local v1    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "privateZip":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 1089
    .end local v1    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "privateZip":Ljava/util/zip/ZipFile;
    goto :goto_3

    .end local v1    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_5
    move-object v1, v2

    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "privateZip":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .param p7, "receiver"    # Z
    .param p8, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3106
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v23

    .line 3109
    .local v23, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_0

    .line 3110
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x17

    const/16 v9, 0x1e

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v11, 0x7

    const/16 v12, 0x11

    const/4 v13, 0x5

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3122
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_2

    const-string v2, "<receiver>"

    :goto_0
    iput-object v2, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v23

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3124
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3126
    new-instance v14, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v14, v2, v3}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 3127
    .local v14, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_3

    .line 3128
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 3129
    const/4 v14, 0x0

    .line 3424
    .end local v14    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    :goto_1
    return-object v14

    .line 3122
    :cond_2
    const-string v2, "<activity>"

    goto :goto_0

    .line 3132
    .restart local v14    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    const/4 v2, 0x6

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    .line 3134
    .local v24, "setExported":Z
    if-eqz v24, :cond_4

    .line 3135
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3139
    :cond_4
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->theme:I

    .line 3142
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x1a

    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 3146
    const/16 v2, 0x1b

    const/16 v3, 0x400

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 3149
    .local v22, "parentName":Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 3150
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p6

    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3151
    .local v21, "parentClassName":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-nez v2, :cond_19

    .line 3152
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3161
    .end local v21    # "parentClassName":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 3163
    .local v25, "str":Ljava/lang/String;
    if-nez v25, :cond_1a

    .line 3164
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 3169
    :goto_3
    const/16 v2, 0x8

    const/16 v3, 0x400

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 3172
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-static {v3, v4, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3175
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3176
    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3179
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3182
    :cond_6
    const/16 v2, 0xa

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3185
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3188
    :cond_7
    const/16 v2, 0xb

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3191
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3194
    :cond_8
    const/16 v2, 0x15

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3197
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3200
    :cond_9
    const/16 v2, 0x12

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3203
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3206
    :cond_a
    const/16 v2, 0xc

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3209
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3212
    :cond_b
    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3215
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3218
    :cond_c
    const/16 v3, 0x13

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3221
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3224
    :cond_d
    const/16 v2, 0x16

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3227
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3230
    :cond_e
    const/16 v2, 0x1d

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3233
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3236
    :cond_f
    const/16 v2, 0x18

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3239
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3242
    :cond_10
    if-nez p7, :cond_1d

    .line 3243
    const/16 v2, 0x19

    move-object/from16 v0, v23

    move/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3246
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3249
    :cond_11
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0xe

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3252
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x21

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 3255
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x22

    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 3258
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0xf

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 3261
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x10

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3264
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 3268
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x20

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 3272
    const/16 v2, 0x1f

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3275
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3278
    :cond_12
    const/16 v2, 0x23

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3281
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3284
    :cond_13
    const/16 v2, 0x24

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3287
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3290
    :cond_14
    const/16 v2, 0x25

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3293
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3300
    :cond_15
    :goto_5
    if-eqz p7, :cond_17

    .line 3301
    const/16 v2, 0x1c

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3304
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3305
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_16

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_16

    .line 3306
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity exported request ignored due to singleUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3310
    const/16 v24, 0x1

    .line 3313
    :cond_16
    const/16 v2, 0x26

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3316
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3320
    :cond_17
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 3322
    if-eqz p7, :cond_18

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    .line 3325
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_18

    .line 3326
    const/4 v2, 0x0

    const-string v3, "Heavy-weight applications can not have receivers in main process"

    aput-object v3, p6, v2

    .line 3330
    :cond_18
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_1e

    .line 3331
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3154
    .end local v25    # "str":Ljava/lang/String;
    .restart local v21    # "parentClassName":Ljava/lang/String;
    :cond_19
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " specified invalid parentActivityName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, p6, v2

    goto/16 :goto_2

    .line 3166
    .end local v21    # "parentClassName":Ljava/lang/String;
    .restart local v25    # "str":Ljava/lang/String;
    :cond_1a
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_6
    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1b
    const/4 v2, 0x0

    goto :goto_6

    .line 3218
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 3296
    :cond_1d
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3297
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto/16 :goto_5

    .line 3334
    :cond_1e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    .line 3337
    .local v20, "outerDepth":I
    :cond_1f
    :goto_7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, "type":I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_20

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_2e

    .line 3339
    :cond_20
    const/4 v2, 0x3

    move/from16 v0, v26

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x4

    move/from16 v0, v26

    if-eq v0, v2, :cond_1f

    .line 3343
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3344
    new-instance v7, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v7, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3345
    .local v7, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 3346
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3350
    :cond_21
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsLegacyIconPackApk:Z

    if-nez v2, :cond_22

    .line 3351
    sget-object v16, Landroid/content/pm/ThemeUtils;->sSupportedActions:[Ljava/lang/String;

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_22

    aget-object v15, v16, v18

    .line 3352
    .local v15, "action":Ljava/lang/String;
    invoke-virtual {v7, v15}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3353
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsLegacyIconPackApk:Z

    .line 3359
    .end local v15    # "action":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_22
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsLegacyIconPackApk:Z

    if-nez v2, :cond_23

    .line 3360
    sget-object v16, Landroid/content/pm/ThemeUtils;->sSupportedCategories:[Ljava/lang/String;

    .restart local v16    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    .restart local v19    # "len$":I
    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_9
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_23

    aget-object v17, v16, v18

    .line 3361
    .local v17, "category":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3362
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsLegacyIconPackApk:Z

    .line 3368
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v17    # "category":Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_23
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_26

    .line 3369
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3351
    .restart local v15    # "action":Ljava/lang/String;
    .restart local v16    # "arr$":[Ljava/lang/String;
    .restart local v18    # "i$":I
    .restart local v19    # "len$":I
    :cond_24
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 3360
    .end local v15    # "action":Ljava/lang/String;
    .restart local v17    # "category":Ljava/lang/String;
    :cond_25
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 3373
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v17    # "category":Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_26
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 3375
    .end local v7    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_27
    if-nez p7, :cond_2b

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preferred"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3376
    new-instance v7, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v7, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3377
    .restart local v7    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 3378
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3380
    :cond_28
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_29

    .line 3381
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in preferred at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3385
    :cond_29
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v2, :cond_2a

    .line 3386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3388
    :cond_2a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 3390
    .end local v7    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2b
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3391
    iget-object v12, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1f

    .line 3393
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3397
    :cond_2c
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    if-eqz p7, :cond_2d

    .line 3399
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <receiver>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    :goto_a
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 3403
    :cond_2d
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3420
    :cond_2e
    if-nez v24, :cond_1

    .line 3421
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    const/4 v2, 0x1

    :goto_b
    iput-boolean v2, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    goto/16 :goto_1

    :cond_2f
    const/4 v2, 0x0

    goto :goto_b
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 28
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3430
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 3433
    .local v21, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    const/16 v3, 0x400

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    .line 3436
    .local v26, "targetActivity":Ljava/lang/String;
    if-nez v26, :cond_1

    .line 3437
    const/4 v2, 0x0

    const-string v3, "<activity-alias> does not specify android:targetActivity"

    aput-object v3, p6, v2

    .line 3438
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3439
    const/4 v15, 0x0

    .line 3590
    :cond_0
    :goto_0
    return-object v15

    .line 3442
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, p6

    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3444
    if-nez v26, :cond_2

    .line 3445
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3446
    const/4 v15, 0x0

    goto :goto_0

    .line 3449
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_3

    .line 3450
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/16 v9, 0xa

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x4

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v3, "<activity-alias>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3463
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3464
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3466
    const/16 v25, 0x0

    .line 3468
    .local v25, "target":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3469
    .local v14, "NA":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v14, :cond_4

    .line 3470
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageParser$Activity;

    .line 3471
    .local v24, "t":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3472
    move-object/from16 v25, v24

    .line 3477
    .end local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    if-nez v25, :cond_6

    .line 3478
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<activity-alias> target activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p6, v2

    .line 3480
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3481
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3469
    .restart local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 3484
    .end local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    :cond_6
    new-instance v17, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v17 .. v17}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 3485
    .local v17, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 3486
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3487
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3488
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->icon:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 3489
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->logo:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->logo:I

    .line 3490
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->banner:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->banner:I

    .line 3491
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 3492
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3493
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3494
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3495
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v2, :cond_7

    .line 3496
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 3498
    :cond_7
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 3499
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3500
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 3501
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 3502
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 3503
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3504
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 3506
    new-instance v15, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v17

    invoke-direct {v15, v2, v0}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 3507
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_8

    .line 3508
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3509
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3512
    :cond_8
    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    .line 3514
    .local v22, "setExported":Z
    if-eqz v22, :cond_9

    .line 3515
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3520
    :cond_9
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 3522
    .local v23, "str":Ljava/lang/String;
    if-eqz v23, :cond_a

    .line 3523
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 3526
    :cond_a
    const/16 v2, 0x9

    const/16 v3, 0x400

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 3529
    .local v20, "parentName":Ljava/lang/String;
    if-eqz v20, :cond_b

    .line 3530
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3531
    .local v19, "parentClassName":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-nez v2, :cond_d

    .line 3532
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3540
    .end local v19    # "parentClassName":Ljava/lang/String;
    :cond_b
    :goto_3
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3542
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_e

    .line 3543
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3523
    .end local v20    # "parentName":Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 3534
    .restart local v19    # "parentClassName":Ljava/lang/String;
    .restart local v20    # "parentName":Ljava/lang/String;
    :cond_d
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " specified invalid parentActivityName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, p6, v2

    goto :goto_3

    .line 3546
    .end local v19    # "parentClassName":Ljava/lang/String;
    :cond_e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 3549
    .local v18, "outerDepth":I
    :cond_f
    :goto_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v2, 0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    move/from16 v0, v27

    if-ne v0, v2, :cond_10

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_15

    .line 3551
    :cond_10
    const/4 v2, 0x3

    move/from16 v0, v27

    if-eq v0, v2, :cond_f

    const/4 v2, 0x4

    move/from16 v0, v27

    if-eq v0, v2, :cond_f

    .line 3555
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3556
    new-instance v7, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v7, v15}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3557
    .local v7, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 3558
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3560
    :cond_11
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_12

    .line 3561
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3565
    :cond_12
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3567
    .end local v7    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_13
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3568
    iget-object v12, v15, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_f

    .line 3570
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3574
    :cond_14
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity-alias>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 3586
    :cond_15
    if-nez v22, :cond_0

    .line 3587
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$Component;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4025
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 4028
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_3

    .line 4030
    :cond_1
    const/4 v0, 0x3

    if-eq v7, v0, :cond_0

    const/4 v0, 0x4

    if-eq v7, v0, :cond_0

    .line 4034
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4035
    iget-object v4, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 4037
    const/4 v0, 0x0

    .line 4052
    :goto_1
    return v0

    .line 4041
    :cond_2
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4052
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 27
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1237
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 1239
    .local v20, "apkPath":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1240
    .local v21, "assets":Landroid/content/res/AssetManager;
    const/16 v25, 0x0

    .line 1242
    .local v25, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1243
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .local v2, "assets":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_1
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1246
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v22

    .line 1247
    .local v22, "cookie":I
    if-nez v22, :cond_0

    .line 1248
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v7, -0x64

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v7, v9}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1271
    .end local v22    # "cookie":I
    :catch_0
    move-exception v3

    move-object/from16 v5, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    move-object/from16 v23, v3

    .line 1272
    .local v23, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v7, -0x66

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-direct {v3, v7, v9, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1275
    .end local v23    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1276
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 1252
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "cookie":I
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    new-instance v24, Landroid/util/DisplayMetrics;

    invoke-direct/range {v24 .. v24}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1253
    .local v24, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v24 .. v24}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1255
    new-instance v4, Landroid/content/res/Resources;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v4, v2, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1256
    .local v4, "res":Landroid/content/res/Resources;
    const-string v3, "AndroidManifest.xml"

    move/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    .line 1259
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_1

    .line 1261
    :try_start_4
    new-instance v26, Landroid/content/pm/PackageParser$Package;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v26, "tempPkg":Landroid/content/pm/PackageParser$Package;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-static {v0, v1, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 1263
    move-object/from16 v0, v26

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1268
    .end local v26    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .local v8, "signatures":[Landroid/content/pm/Signature;
    :goto_3
    move-object v6, v5

    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v3, v20

    move/from16 v7, p1

    .line 1269
    invoke-static/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 1275
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1276
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    .line 1265
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "signatures":[Landroid/content/pm/Signature;
    goto :goto_3

    .line 1271
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v22    # "cookie":I
    .end local v24    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v3

    move-object/from16 v5, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    :goto_4
    move-object/from16 v23, v3

    goto :goto_1

    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v3

    move-object/from16 v5, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    :goto_5
    move-object/from16 v23, v3

    goto :goto_1

    .line 1275
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v3

    move-object/from16 v5, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto :goto_2

    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_2
    move-exception v3

    move-object/from16 v5, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_2

    .line 1271
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_3
    move-exception v3

    move-object/from16 v5, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_5

    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v22    # "cookie":I
    .restart local v24    # "metrics":Landroid/util/DisplayMetrics;
    :catch_4
    move-exception v3

    goto :goto_5

    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v22    # "cookie":I
    .end local v24    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_5
    move-exception v3

    move-object/from16 v5, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_4

    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v22    # "cookie":I
    .restart local v24    # "metrics":Landroid/util/DisplayMetrics;
    :catch_6
    move-exception v3

    goto :goto_4

    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v22    # "cookie":I
    .end local v24    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_7
    move-exception v3

    move-object/from16 v5, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto/16 :goto_0

    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v22    # "cookie":I
    .restart local v24    # "metrics":Landroid/util/DisplayMetrics;
    :catch_8
    move-exception v3

    goto/16 :goto_0
.end method

.method private static parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 20
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "flags"    # I
    .param p5, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1353
    invoke-static/range {p2 .. p4}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    move-result-object v16

    .line 1355
    .local v16, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 1356
    .local v6, "installLocation":I
    const/4 v5, 0x0

    .line 1357
    .local v5, "versionCode":I
    const/4 v9, 0x0

    .line 1358
    .local v9, "coreApp":Z
    const/4 v10, 0x0

    .line 1360
    .local v10, "multiArch":Z
    const/4 v15, 0x0

    .line 1361
    .local v15, "numFound":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 1362
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    .line 1363
    .local v12, "attr":Ljava/lang/String;
    const-string v1, "installLocation"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1364
    const/4 v1, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    .line 1366
    add-int/lit8 v15, v15, 0x1

    .line 1374
    :cond_0
    :goto_1
    const/4 v1, 0x3

    if-lt v15, v1, :cond_a

    .line 1381
    .end local v12    # "attr":Ljava/lang/String;
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v17, v1, 0x1

    .line 1383
    .local v17, "searchDepth":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v14, v1, 0x4

    .line 1384
    .local v14, "iconPackSearchDepth":I
    const/4 v11, 0x0

    .line 1386
    .local v11, "isTheme":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1388
    .local v7, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_2
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move/from16 v0, v17

    if-lt v1, v0, :cond_d

    .line 1389
    :cond_3
    const/4 v1, 0x3

    move/from16 v0, v18

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    move/from16 v0, v18

    if-eq v0, v1, :cond_2

    .line 1393
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move/from16 v0, v17

    if-ne v1, v0, :cond_4

    const-string v1, "package-verifier"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1394
    invoke-static/range {p1 .. p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;

    move-result-object v19

    .line 1395
    .local v19, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v19, :cond_4

    .line 1396
    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    .end local v19    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move/from16 v0, v17

    if-ne v1, v0, :cond_5

    const-string v1, "application"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1401
    const/4 v13, 0x0

    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-ge v13, v1, :cond_5

    .line 1402
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    .line 1403
    .restart local v12    # "attr":Ljava/lang/String;
    const-string v1, "multiArch"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1404
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    .line 1410
    .end local v12    # "attr":Ljava/lang/String;
    :cond_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move/from16 v0, v17

    if-ne v1, v0, :cond_6

    const-string v1, "meta-data"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1411
    const/4 v13, 0x0

    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v13, v1, :cond_6

    .line 1412
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "org.cyanogenmod.theme.name"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1414
    const/4 v11, 0x1

    .line 1415
    const/4 v6, 0x1

    .line 1421
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move/from16 v0, v17

    if-ne v1, v0, :cond_7

    const-string v1, "theme"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1422
    const/4 v11, 0x1

    .line 1423
    const/4 v6, 0x1

    .line 1426
    :cond_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ne v1, v14, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/content/pm/PackageParser;->isLegacyIconPack(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1427
    const/4 v11, 0x1

    .line 1428
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1367
    .end local v7    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v11    # "isTheme":Z
    .end local v14    # "iconPackSearchDepth":I
    .end local v17    # "searchDepth":I
    .end local v18    # "type":I
    .restart local v12    # "attr":Ljava/lang/String;
    :cond_8
    const-string v1, "versionCode"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1368
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v5

    .line 1369
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1370
    :cond_9
    const-string v1, "coreApp"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    .line 1372
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1361
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1401
    .restart local v7    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v11    # "isTheme":Z
    .restart local v14    # "iconPackSearchDepth":I
    .restart local v17    # "searchDepth":I
    .restart local v18    # "type":I
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1411
    .end local v12    # "attr":Ljava/lang/String;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1432
    :cond_d
    new-instance v1, Landroid/content/pm/PackageParser$ApkLite;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;[Landroid/content/pm/Signature;ZZZ)V

    return-object v1
.end method

.method private parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 62
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "flags"    # I
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1477
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_1

    const/16 v59, 0x1

    .line 1479
    .local v59, "trustedOverlay":Z
    :goto_0
    move-object/from16 v6, p2

    .line 1481
    .local v6, "attrs":Landroid/util/AttributeSet;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1482
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1483
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1484
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1489
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v6, v1}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    move-result-object v44

    .line 1490
    .local v44, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .line 1491
    .local v46, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    .local v50, "splitName":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1500
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected base APK, but found split "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    .line 1501
    const/16 v2, -0x6a

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1502
    const/4 v3, 0x0

    .line 2031
    .end local v44    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v46    # "pkgName":Ljava/lang/String;
    .end local v50    # "splitName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 1477
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v59    # "trustedOverlay":Z
    :cond_1
    const/16 v59, 0x0

    goto :goto_0

    .line 1492
    .restart local v6    # "attrs":Landroid/util/AttributeSet;
    .restart local v59    # "trustedOverlay":Z
    :catch_0
    move-exception v21

    .line 1493
    .local v21, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/16 v2, -0x6a

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1494
    const/4 v3, 0x0

    goto :goto_1

    .line 1505
    .end local v21    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v44    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v46    # "pkgName":Ljava/lang/String;
    .restart local v50    # "splitName":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, v46

    invoke-direct {v3, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1506
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v36, Landroid/os/Bundle;

    invoke-direct/range {v36 .. v36}, Landroid/os/Bundle;-><init>()V

    .line 1508
    .local v36, "metaDataBundle":Landroid/os/Bundle;
    const/16 v25, 0x0

    .line 1510
    .local v25, "foundApp":Z
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v48

    .line 1512
    .local v48, "sa":Landroid/content/res/TypedArray;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v4, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1514
    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1516
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1517
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1519
    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v51

    .line 1521
    .local v51, "str":Ljava/lang/String;
    if-eqz v51, :cond_5

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1522
    const/4 v2, 0x1

    move-object/from16 v0, v51

    invoke-static {v0, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v40

    .line 1523
    .local v40, "nameError":Ljava/lang/String;
    if-eqz v40, :cond_4

    const-string v2, "android"

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1524
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    .line 1526
    const/16 v2, -0x6b

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1527
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1529
    :cond_4
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 1530
    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v3, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 1534
    .end local v40    # "nameError":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x4

    const/4 v4, -0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v3, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 1537
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1539
    const/4 v2, 0x0

    const-string v4, "coreApp"

    const/4 v5, 0x0

    invoke-interface {v6, v2, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1541
    invoke-virtual/range {v48 .. v48}, Landroid/content/res/TypedArray;->recycle()V

    .line 1544
    and-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_6

    .line 1545
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x20000000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1549
    :cond_6
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_7

    .line 1550
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1554
    :cond_7
    const/16 v54, 0x1

    .line 1555
    .local v54, "supportsSmallScreens":I
    const/16 v53, 0x1

    .line 1556
    .local v53, "supportsNormalScreens":I
    const/16 v52, 0x1

    .line 1557
    .local v52, "supportsLargeScreens":I
    const/16 v55, 0x1

    .line 1558
    .local v55, "supportsXLargeScreens":I
    const/16 v47, 0x1

    .line 1559
    .local v47, "resizeable":I
    const/16 v17, 0x1

    .line 1561
    .local v17, "anyDensity":I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v43

    .line 1563
    .local v43, "outerDepth":I
    :cond_8
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v60

    .local v60, "type":I
    const/4 v2, 0x1

    move/from16 v0, v60

    if-eq v0, v2, :cond_40

    const/4 v2, 0x3

    move/from16 v0, v60

    if-ne v0, v2, :cond_9

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v43

    if-le v2, v0, :cond_40

    .line 1564
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, v60

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    move/from16 v0, v60

    if-eq v0, v2, :cond_8

    .line 1568
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1569
    .local v56, "tagName":Ljava/lang/String;
    const-string v2, "application"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1570
    if-eqz v25, :cond_a

    .line 1576
    const-string v2, "PackageParser"

    const-string v4, "<manifest> has more than one <application>"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1582
    :cond_a
    const/16 v25, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 1583
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1584
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1586
    :cond_b
    const-string v2, "overlay"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1587
    move/from16 v0, v59

    iput-boolean v0, v3, Landroid/content/pm/PackageParser$Package;->mTrustedOverlay:Z

    .line 1589
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v48

    .line 1591
    const/4 v2, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 1593
    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 1596
    invoke-virtual/range {v48 .. v48}, Landroid/content/res/TypedArray;->recycle()V

    .line 1598
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 1599
    const/4 v2, 0x0

    const-string v4, "<overlay> does not specify a target package"

    aput-object v4, p4, v2

    .line 1600
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1601
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1603
    :cond_c
    iget v2, v3, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v2, :cond_d

    iget v2, v3, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v4, 0x270f

    if-le v2, v4, :cond_e

    .line 1604
    :cond_d
    const/4 v2, 0x0

    const-string v4, "<overlay> priority must be between 0 and 9999"

    aput-object v4, p4, v2

    .line 1605
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1607
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1609
    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1611
    :cond_f
    const-string v2, "key-sets"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    .line 1612
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1613
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1615
    :cond_10
    const-string v2, "permission-group"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v6

    move-object/from16 v13, p4

    .line 1616
    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1617
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1619
    :cond_11
    const-string v2, "permission"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    .line 1620
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1621
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1623
    :cond_12
    const-string v2, "permission-tree"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    .line 1624
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1625
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1627
    :cond_13
    const-string v2, "uses-permission"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    .line 1628
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1629
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1631
    :cond_14
    const-string v2, "uses-configuration"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1632
    new-instance v19, Landroid/content/pm/ConfigurationInfo;

    invoke-direct/range {v19 .. v19}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1633
    .local v19, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v48

    .line 1635
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1638
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1641
    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1644
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1646
    :cond_15
    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1649
    const/4 v2, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1652
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1654
    :cond_16
    invoke-virtual/range {v48 .. v48}, Landroid/content/res/TypedArray;->recycle()V

    .line 1655
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 1657
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1659
    .end local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_17
    const-string v2, "uses-feature"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1660
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v24

    .line 1661
    .local v24, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 1663
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 1664
    new-instance v19, Landroid/content/pm/ConfigurationInfo;

    invoke-direct/range {v19 .. v19}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1665
    .restart local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1666
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 1669
    .end local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_18
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1671
    .end local v24    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_19
    const-string v2, "feature-group"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1672
    new-instance v26, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct/range {v26 .. v26}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1673
    .local v26, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v23, 0x0

    .line 1674
    .local v23, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v31

    .line 1676
    .local v31, "innerDepth":I
    :cond_1a
    :goto_3
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v60

    const/4 v2, 0x1

    move/from16 v0, v60

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x3

    move/from16 v0, v60

    if-ne v0, v2, :cond_1b

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v31

    if-le v2, v0, :cond_1d

    .line 1677
    :cond_1b
    const/4 v2, 0x3

    move/from16 v0, v60

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x4

    move/from16 v0, v60

    if-eq v0, v2, :cond_1a

    .line 1681
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v32

    .line 1682
    .local v32, "innerTagName":Ljava/lang/String;
    const-string v2, "uses-feature"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v22

    .line 1686
    .local v22, "featureInfo":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v22

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1687
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v23

    .line 1693
    .end local v22    # "featureInfo":Landroid/content/pm/FeatureInfo;
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 1689
    :cond_1c
    const-string v2, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <feature-group>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1696
    .end local v32    # "innerTagName":Ljava/lang/String;
    :cond_1d
    if-eqz v23, :cond_1e

    .line 1697
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v26

    iput-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1698
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v26

    iput-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1700
    :cond_1e
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 1702
    .end local v23    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .end local v26    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v31    # "innerDepth":I
    :cond_1f
    const-string v2, "uses-sdk"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1703
    sget v2, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v2, :cond_2d

    .line 1704
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v48

    .line 1707
    const/16 v38, 0x0

    .line 1708
    .local v38, "minVers":I
    const/16 v37, 0x0

    .line 1709
    .local v37, "minCode":Ljava/lang/String;
    const/16 v58, 0x0

    .line 1710
    .local v58, "targetVers":I
    const/16 v57, 0x0

    .line 1712
    .local v57, "targetCode":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v61

    .line 1714
    .local v61, "val":Landroid/util/TypedValue;
    if-eqz v61, :cond_20

    .line 1715
    move-object/from16 v0, v61

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_23

    move-object/from16 v0, v61

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_23

    .line 1716
    move-object/from16 v0, v61

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v57, v37

    .line 1723
    :cond_20
    :goto_5
    const/4 v2, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v61

    .line 1725
    if-eqz v61, :cond_21

    .line 1726
    move-object/from16 v0, v61

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_24

    move-object/from16 v0, v61

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_24

    .line 1727
    move-object/from16 v0, v61

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v57, v37

    .line 1734
    :cond_21
    :goto_6
    invoke-virtual/range {v48 .. v48}, Landroid/content/res/TypedArray;->recycle()V

    .line 1736
    if-eqz v37, :cond_27

    .line 1737
    const/16 v16, 0x0

    .line 1738
    .local v16, "allowedCodename":Z
    sget-object v18, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .local v18, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_7
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_22

    aget-object v20, v18, v28

    .line 1739
    .local v20, "codename":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1740
    const/16 v16, 0x1

    .line 1744
    .end local v20    # "codename":Ljava/lang/String;
    :cond_22
    if-nez v16, :cond_28

    .line 1745
    sget-object v2, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_26

    .line 1746
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requires development platform "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (current platform is any of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    .line 1753
    :goto_8
    const/16 v2, -0xc

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1754
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1719
    .end local v16    # "allowedCodename":Z
    .end local v18    # "arr$":[Ljava/lang/String;
    .end local v28    # "i$":I
    .end local v35    # "len$":I
    :cond_23
    move-object/from16 v0, v61

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v38, v0

    move/from16 v58, v38

    goto/16 :goto_5

    .line 1730
    :cond_24
    move-object/from16 v0, v61

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v58, v0

    goto :goto_6

    .line 1738
    .restart local v16    # "allowedCodename":Z
    .restart local v18    # "arr$":[Ljava/lang/String;
    .restart local v20    # "codename":Ljava/lang/String;
    .restart local v28    # "i$":I
    .restart local v35    # "len$":I
    :cond_25
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 1750
    .end local v20    # "codename":Ljava/lang/String;
    :cond_26
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requires development platform "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but this is a release platform."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    goto :goto_8

    .line 1756
    .end local v16    # "allowedCodename":Z
    .end local v18    # "arr$":[Ljava/lang/String;
    .end local v28    # "i$":I
    .end local v35    # "len$":I
    :cond_27
    sget v2, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move/from16 v0, v38

    if-le v0, v2, :cond_28

    .line 1757
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requires newer sdk version #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (current version is #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    .line 1759
    const/16 v2, -0xc

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1760
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1763
    :cond_28
    if-eqz v57, :cond_2e

    .line 1764
    const/16 v16, 0x0

    .line 1765
    .restart local v16    # "allowedCodename":Z
    sget-object v18, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .restart local v18    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v35, v0

    .restart local v35    # "len$":I
    const/16 v28, 0x0

    .restart local v28    # "i$":I
    :goto_9
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_29

    aget-object v20, v18, v28

    .line 1766
    .restart local v20    # "codename":Ljava/lang/String;
    move-object/from16 v0, v57

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1767
    const/16 v16, 0x1

    .line 1771
    .end local v20    # "codename":Ljava/lang/String;
    :cond_29
    if-nez v16, :cond_2c

    .line 1772
    sget-object v2, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2b

    .line 1773
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requires development platform "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (current platform is any of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    .line 1780
    :goto_a
    const/16 v2, -0xc

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1781
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1765
    .restart local v20    # "codename":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 1777
    .end local v20    # "codename":Ljava/lang/String;
    :cond_2b
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requires development platform "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but this is a release platform."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    goto :goto_a

    .line 1784
    :cond_2c
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v4, 0x2710

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1791
    .end local v16    # "allowedCodename":Z
    .end local v18    # "arr$":[Ljava/lang/String;
    .end local v28    # "i$":I
    .end local v35    # "len$":I
    .end local v37    # "minCode":Ljava/lang/String;
    .end local v38    # "minVers":I
    .end local v57    # "targetCode":Ljava/lang/String;
    .end local v58    # "targetVers":I
    .end local v61    # "val":Landroid/util/TypedValue;
    :cond_2d
    :goto_b
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1787
    .restart local v37    # "minCode":Ljava/lang/String;
    .restart local v38    # "minVers":I
    .restart local v57    # "targetCode":Ljava/lang/String;
    .restart local v58    # "targetVers":I
    .restart local v61    # "val":Landroid/util/TypedValue;
    :cond_2e
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v58

    iput v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_b

    .line 1793
    .end local v37    # "minCode":Ljava/lang/String;
    .end local v38    # "minVers":I
    .end local v57    # "targetCode":Ljava/lang/String;
    .end local v58    # "targetVers":I
    .end local v61    # "val":Landroid/util/TypedValue;
    :cond_2f
    const-string v2, "supports-screens"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1794
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v48

    .line 1797
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 1800
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1803
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1809
    const/4 v2, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v54

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v54

    .line 1812
    const/4 v2, 0x2

    move-object/from16 v0, v48

    move/from16 v1, v53

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v53

    .line 1815
    const/4 v2, 0x3

    move-object/from16 v0, v48

    move/from16 v1, v52

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v52

    .line 1818
    const/4 v2, 0x5

    move-object/from16 v0, v48

    move/from16 v1, v55

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v55

    .line 1821
    const/4 v2, 0x4

    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v47

    .line 1824
    const/4 v2, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v17

    .line 1828
    invoke-virtual/range {v48 .. v48}, Landroid/content/res/TypedArray;->recycle()V

    .line 1830
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1832
    :cond_30
    const-string v2, "protected-broadcast"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1833
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v48

    .line 1838
    const/4 v2, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v39

    .line 1841
    .local v39, "name":Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Landroid/content/res/TypedArray;->recycle()V

    .line 1843
    if-eqz v39, :cond_32

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_32

    .line 1844
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v2, :cond_31

    .line 1845
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 1847
    :cond_31
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1848
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    :cond_32
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1854
    .end local v39    # "name":Ljava/lang/String;
    :cond_33
    const-string v2, "instrumentation"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    .line 1855
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1856
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1859
    :cond_34
    const-string v2, "original-package"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1860
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v48

    .line 1863
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v42

    .line 1865
    .local v42, "orig":Ljava/lang/String;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1866
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v2, :cond_35

    .line 1867
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 1868
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 1870
    :cond_35
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    :cond_36
    invoke-virtual/range {v48 .. v48}, Landroid/content/res/TypedArray;->recycle()V

    .line 1875
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1877
    .end local v42    # "orig":Ljava/lang/String;
    :cond_37
    const-string v2, "adopt-permissions"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1878
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v48

    .line 1881
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v39

    .line 1884
    .restart local v39    # "name":Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Landroid/content/res/TypedArray;->recycle()V

    .line 1886
    if-eqz v39, :cond_39

    .line 1887
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v2, :cond_38

    .line 1888
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 1890
    :cond_38
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    :cond_39
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1895
    .end local v39    # "name":Ljava/lang/String;
    :cond_3a
    const-string v2, "uses-gl-texture"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1897
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1900
    :cond_3b
    const-string v2, "compatible-screens"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1902
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1904
    :cond_3c
    const-string v2, "supports-input"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1905
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1908
    :cond_3d
    const-string v2, "eat-comment"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1910
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1913
    :cond_3e
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "meta-data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v6

    move-object/from16 v11, v36

    move-object/from16 v12, p4

    .line 1914
    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v36

    if-nez v36, :cond_8

    .line 1916
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1925
    :cond_3f
    const-string v2, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <manifest>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1933
    .end local v56    # "tagName":Ljava/lang/String;
    :cond_40
    if-nez v25, :cond_41

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_41

    .line 1934
    const/4 v2, 0x0

    const-string v4, "<manifest> does not contain an <application> or <instrumentation>"

    aput-object v4, p4, v2

    .line 1935
    const/16 v2, -0x6d

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1938
    :cond_41
    sget-object v2, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v14, v2

    .line 1939
    .local v14, "NP":I
    const/16 v29, 0x0

    .line 1940
    .local v29, "implicitPerms":Ljava/lang/StringBuilder;
    const/16 v33, 0x0

    .local v33, "ip":I
    :goto_c
    move/from16 v0, v33

    if-ge v0, v14, :cond_42

    .line 1941
    sget-object v2, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v41, v2, v33

    .line 1943
    .local v41, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v41

    iget v4, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v2, v4, :cond_45

    .line 1959
    .end local v41    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_42
    if-eqz v29, :cond_43

    .line 1960
    const-string v2, "PackageParser"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :cond_43
    sget-object v2, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v15, v2

    .line 1964
    .local v15, "NS":I
    const/16 v34, 0x0

    .local v34, "is":I
    :goto_d
    move/from16 v0, v34

    if-ge v0, v15, :cond_4a

    .line 1965
    sget-object v2, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    aget-object v49, v2, v34

    .line 1967
    .local v49, "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v49

    iget v4, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v2, v4, :cond_44

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 1964
    :cond_44
    add-int/lit8 v34, v34, 0x1

    goto :goto_d

    .line 1946
    .end local v15    # "NS":I
    .end local v34    # "is":I
    .end local v49    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    .restart local v41    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_45
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 1947
    if-nez v29, :cond_47

    .line 1948
    new-instance v29, Ljava/lang/StringBuilder;

    .end local v29    # "implicitPerms":Ljava/lang/StringBuilder;
    const/16 v2, 0x80

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1949
    .restart local v29    # "implicitPerms":Ljava/lang/StringBuilder;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    const-string v2, ": compat added "

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    :goto_e
    move-object/from16 v0, v41

    iget-object v2, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1956
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    :cond_46
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_c

    .line 1952
    :cond_47
    const/16 v2, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1971
    .end local v41    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    .restart local v15    # "NS":I
    .restart local v34    # "is":I
    .restart local v49    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_48
    const/16 v30, 0x0

    .local v30, "in":I
    :goto_f
    move-object/from16 v0, v49

    iget-object v2, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_44

    .line 1972
    move-object/from16 v0, v49

    iget-object v2, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    aget-object v45, v2, v30

    .line 1973
    .local v45, "perm":Ljava/lang/String;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 1974
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1975
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    :cond_49
    add-int/lit8 v30, v30, 0x1

    goto :goto_f

    .line 1980
    .end local v30    # "in":I
    .end local v45    # "perm":Ljava/lang/String;
    .end local v49    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4a
    if-ltz v54, :cond_4b

    if-lez v54, :cond_4c

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_4c

    .line 1983
    :cond_4b
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1985
    :cond_4c
    if-eqz v53, :cond_4d

    .line 1986
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1988
    :cond_4d
    if-ltz v52, :cond_4e

    if-lez v52, :cond_4f

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_4f

    .line 1991
    :cond_4e
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1993
    :cond_4f
    if-ltz v55, :cond_50

    if-lez v55, :cond_51

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x9

    if-lt v2, v4, :cond_51

    .line 1996
    :cond_50
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1998
    :cond_51
    if-ltz v47, :cond_52

    if-lez v47, :cond_53

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_53

    .line 2001
    :cond_52
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2003
    :cond_53
    if-ltz v17, :cond_54

    if-lez v17, :cond_55

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_55

    .line 2006
    :cond_54
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2008
    :cond_55
    iget-boolean v2, v3, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-nez v2, :cond_56

    iget-boolean v2, v3, Landroid/content/pm/PackageParser$Package;->mIsLegacyIconPackApk:Z

    if-eqz v2, :cond_57

    .line 2009
    :cond_56
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/content/pm/ApplicationInfo;->isThemeable:Z

    .line 2017
    :cond_57
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x12

    if-ge v2, v4, :cond_58

    .line 2018
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_10
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_58

    .line 2019
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v0, v27

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2018
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    .line 2024
    .end local v27    # "i":I
    :cond_58
    const-string v2, "org.cyanogenmod.theme.name"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2025
    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    .line 2026
    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/content/pm/PackageParser$Package;->mTrustedOverlay:Z

    .line 2027
    const/4 v2, 0x1

    iput v2, v3, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 2028
    new-instance v2, Landroid/content/pm/ThemeInfo;

    move-object/from16 v0, v36

    invoke-direct {v2, v0}, Landroid/content/pm/ThemeInfo;-><init>(Landroid/os/Bundle;)V

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mThemeInfo:Landroid/content/pm/ThemeInfo;

    goto/16 :goto_1
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 34
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    .line 882
    .local v23, "apkPath":Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 883
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 887
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v24

    .line 889
    .local v24, "cookie":I
    const/16 v32, 0x0

    .line 890
    .local v32, "res":Landroid/content/res/Resources;
    const/16 v30, 0x0

    .line 892
    .local v30, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v33, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v33, "res":Landroid/content/res/Resources;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_1
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 895
    const-string v5, "AndroidManifest.xml"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    .line 897
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 898
    .local v27, "outError":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    move/from16 v3, p3

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 899
    .local v31, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v31, :cond_0

    .line 900
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v27, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 921
    .end local v27    # "outError":[Ljava/lang/String;
    .end local v31    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v25

    move-object/from16 v32, v33

    .line 922
    .end local v33    # "res":Landroid/content/res/Resources;
    .local v25, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_2
    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 927
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 904
    .end local v32    # "res":Landroid/content/res/Resources;
    .restart local v27    # "outError":[Ljava/lang/String;
    .restart local v31    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v33    # "res":Landroid/content/res/Resources;
    :cond_0
    :try_start_3
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 905
    const/4 v5, 0x0

    move-object/from16 v0, v31

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 909
    move-object/from16 v0, v31

    iget-boolean v5, v0, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v5, :cond_2

    .line 911
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->scanPackageOverlays(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v29

    .line 912
    .local v29, "overlayTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 913
    .local v28, "overlay":Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTargets:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 923
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v27    # "outError":[Ljava/lang/String;
    .end local v28    # "overlay":Ljava/lang/String;
    .end local v29    # "overlayTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_1
    move-exception v25

    move-object/from16 v32, v33

    .line 924
    .end local v33    # "res":Landroid/content/res/Resources;
    .local v25, "e":Ljava/lang/Exception;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :goto_3
    :try_start_4
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v6, -0x66

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read manifest from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-direct {v5, v6, v7, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 916
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v32    # "res":Landroid/content/res/Resources;
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v27    # "outError":[Ljava/lang/String;
    .restart local v29    # "overlayTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v31    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v33    # "res":Landroid/content/res/Resources;
    :cond_1
    :try_start_5
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->packageHasIconPack(Ljava/io/File;)Z

    move-result v5

    move-object/from16 v0, v31

    iput-boolean v5, v0, Landroid/content/pm/PackageParser$Package;->hasIconPack:Z
    :try_end_5
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 927
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v29    # "overlayTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v31

    .end local v27    # "outError":[Ljava/lang/String;
    .end local v31    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v5

    move-object/from16 v32, v33

    .end local v33    # "res":Landroid/content/res/Resources;
    .restart local v32    # "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 923
    :catch_2
    move-exception v25

    goto :goto_3

    .line 921
    :catch_3
    move-exception v25

    goto :goto_0
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .locals 34
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2556
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    .line 2557
    .local v16, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2560
    .local v24, "pkgName":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->isThemeable:Z

    .line 2562
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v29

    .line 2565
    .local v29, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2567
    .local v22, "name":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 2568
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2569
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2570
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 2571
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2572
    const/4 v3, 0x0

    .line 2919
    :goto_0
    return v3

    .line 2576
    :cond_0
    const/4 v3, 0x4

    const/16 v4, 0x400

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 2579
    .local v21, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 2580
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2584
    :cond_1
    const/16 v3, 0x11

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 2586
    .local v17, "allowBackup":Z
    if-eqz v17, :cond_4

    .line 2587
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v4, 0x8000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2591
    const/16 v3, 0x10

    const/16 v4, 0x400

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 2594
    .local v18, "backupAgent":Ljava/lang/String;
    if-eqz v18, :cond_4

    .line 2595
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2601
    const/16 v3, 0x12

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2604
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2606
    :cond_2
    const/16 v3, 0x15

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2609
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2611
    :cond_3
    const/16 v3, 0x20

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2614
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2619
    .end local v18    # "backupAgent":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v33

    .line 2621
    .local v33, "v":Landroid/util/TypedValue;
    if-eqz v33, :cond_5

    move-object/from16 v0, v33

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v3, :cond_5

    .line 2622
    invoke-virtual/range {v33 .. v33}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2625
    :cond_5
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 2627
    const/16 v3, 0x16

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 2629
    const/16 v3, 0x1e

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 2631
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2633
    const/16 v3, 0xd

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2636
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_6

    .line 2637
    const/16 v3, 0x8

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2640
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2644
    :cond_6
    const/16 v3, 0x1b

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2647
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 2650
    :cond_7
    const/16 v3, 0x1c

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 2652
    .local v27, "restrictedAccountType":Ljava/lang/String;
    if-eqz v27, :cond_8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 2653
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 2656
    :cond_8
    const/16 v3, 0x1d

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2658
    .local v26, "requiredAccountType":Ljava/lang/String;
    if-eqz v26, :cond_9

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 2659
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 2662
    :cond_9
    const/16 v3, 0xa

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2665
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2668
    :cond_a
    const/16 v3, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2671
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2674
    :cond_b
    const/16 v4, 0x17

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xe

    if-lt v3, v6, :cond_14

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 2678
    const/4 v3, 0x7

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2681
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2684
    :cond_c
    const/16 v3, 0xe

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2687
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2690
    :cond_d
    const/4 v3, 0x5

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2693
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2696
    :cond_e
    const/16 v3, 0xf

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2699
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2702
    :cond_f
    const/16 v3, 0x18

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2705
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2708
    :cond_10
    const/16 v3, 0x1a

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2711
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x400000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2714
    :cond_11
    const/16 v3, 0x21

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2717
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2721
    :cond_12
    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v30

    .line 2723
    .local v30, "str":Ljava/lang/String;
    if-eqz v30, :cond_15

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 2725
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_16

    .line 2726
    const/16 v3, 0xc

    const/16 v4, 0x400

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v30

    .line 2736
    :goto_3
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-static {v3, v4, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 2739
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-nez v3, :cond_13

    .line 2741
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_17

    .line 2742
    const/16 v3, 0xb

    const/16 v4, 0x400

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2752
    .local v5, "pname":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2755
    const/16 v3, 0x9

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, v16

    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 2758
    const/16 v3, 0x1f

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2760
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x2000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2778
    .end local v5    # "pname":Ljava/lang/CharSequence;
    :cond_13
    const/16 v3, 0x19

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 2781
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 2783
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_18

    .line 2784
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2785
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2674
    .end local v30    # "str":Ljava/lang/String;
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2723
    .restart local v30    # "str":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2733
    :cond_16
    const/16 v3, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_3

    .line 2749
    :cond_17
    const/16 v3, 0xb

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "pname":Ljava/lang/CharSequence;
    goto :goto_4

    .line 2788
    .end local v5    # "pname":Ljava/lang/CharSequence;
    :cond_18
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 2791
    .local v19, "innerDepth":I
    :cond_19
    :goto_5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, "type":I
    const/4 v3, 0x1

    move/from16 v0, v32

    if-eq v0, v3, :cond_2c

    const/4 v3, 0x3

    move/from16 v0, v32

    if-ne v0, v3, :cond_1a

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_2c

    .line 2792
    :cond_1a
    const/4 v3, 0x3

    move/from16 v0, v32

    if-eq v0, v3, :cond_19

    const/4 v3, 0x4

    move/from16 v0, v32

    if-eq v0, v3, :cond_19

    .line 2796
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    .line 2797
    .local v31, "tagName":Ljava/lang/String;
    const-string v3, "activity"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2798
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 2800
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_1b

    .line 2801
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2802
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2805
    :cond_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2807
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1c
    const-string v3, "receiver"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2808
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 2809
    .restart local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_1d

    .line 2810
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2811
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2814
    :cond_1d
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2816
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1e
    const-string v3, "service"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2817
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v28

    .line 2818
    .local v28, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v28, :cond_1f

    .line 2819
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2820
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2823
    :cond_1f
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2825
    .end local v28    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_20
    const-string v3, "provider"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2826
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v23

    .line 2827
    .local v23, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v23, :cond_21

    .line 2828
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2829
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2832
    :cond_21
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2834
    .end local v23    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_22
    const-string v3, "activity-alias"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2835
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 2836
    .restart local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_23

    .line 2837
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2838
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2841
    :cond_23
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2843
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_24
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2847
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v6 .. v11}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_19

    .line 2849
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2850
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2853
    :cond_25
    const-string v3, "library"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2854
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v29

    .line 2859
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 2862
    .local v20, "lname":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 2864
    if-eqz v20, :cond_26

    .line 2865
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 2866
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2867
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 2871
    :cond_26
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 2873
    .end local v20    # "lname":Ljava/lang/String;
    :cond_27
    const-string v3, "uses-library"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2874
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v29

    .line 2879
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 2881
    .restart local v20    # "lname":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 2885
    .local v25, "req":Z
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 2887
    if-eqz v20, :cond_28

    .line 2888
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 2889
    if-eqz v25, :cond_29

    .line 2890
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 2897
    :cond_28
    :goto_6
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 2892
    :cond_29
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_6

    .line 2899
    .end local v20    # "lname":Ljava/lang/String;
    .end local v25    # "req":Z
    :cond_2a
    const-string v3, "uses-package"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2902
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 2906
    :cond_2b
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 2919
    .end local v31    # "tagName":Ljava/lang/String;
    :cond_2c
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 15
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 786
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v7

    .line 788
    .local v7, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v11, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v11, :cond_0

    iget-boolean v11, v7, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-nez v11, :cond_0

    .line 789
    new-instance v11, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v12, -0x6c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not a coreApp: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v11

    .line 793
    :cond_0
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 797
    .local v2, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    iget-object v11, v7, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    move/from16 v0, p2

    invoke-static {v2, v11, v0}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 799
    iget-object v11, v7, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 800
    iget-object v1, v7, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v9, v1, v5

    .line 801
    .local v9, "path":Ljava/lang/String;
    move/from16 v0, p2

    invoke-static {v2, v9, v0}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 800
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 805
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "path":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v11, v7, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 806
    .local v3, "baseApk":Ljava/io/File;
    move/from16 v0, p2

    invoke-direct {p0, v3, v2, v0}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 807
    .local v10, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_2

    .line 808
    new-instance v11, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v12, -0x64

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse base APK: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    .end local v3    # "baseApk":Ljava/io/File;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v11

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11

    .line 812
    .restart local v3    # "baseApk":Ljava/io/File;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :try_start_1
    iget-object v11, v7, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 813
    iget-object v11, v7, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v8, v11

    .line 814
    .local v8, "num":I
    iget-object v11, v7, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v11, v10, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 815
    iget-object v11, v7, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v11, v10, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 816
    new-array v11, v8, [I

    iput-object v11, v10, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 818
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 819
    move/from16 v0, p2

    invoke-direct {p0, v10, v4, v2, v0}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 818
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 823
    .end local v4    # "i":I
    .end local v8    # "num":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v10
.end method

.method private static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 21
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 687
    .local v7, "files":[Ljava/io/File;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 688
    new-instance v17, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v18, -0x64

    const-string v19, "No packages found in split"

    invoke-direct/range {v17 .. v19}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 692
    :cond_0
    const/4 v12, 0x0

    .line 693
    .local v12, "packageName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 695
    .local v16, "versionCode":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 696
    .local v2, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    move-object v3, v7

    .local v3, "arr$":[Ljava/io/File;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_5

    aget-object v6, v3, v9

    .line 697
    .local v6, "file":Ljava/io/File;
    invoke-static {v6}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 698
    move/from16 v0, p1

    invoke-static {v6, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v11

    .line 702
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v12, :cond_2

    .line 703
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 704
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v16, v0

    .line 719
    :cond_1
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 720
    new-instance v17, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v18, -0x65

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Split name "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " defined more than once; most recent was "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 706
    :cond_2
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 707
    new-instance v17, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v18, -0x65

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inconsistent package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; expected "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 711
    :cond_3
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 712
    new-instance v17, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v18, -0x65

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inconsistent version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; expected "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 696
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 727
    .end local v6    # "file":Ljava/io/File;
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ApkLite;

    .line 728
    .local v4, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v4, :cond_6

    .line 729
    new-instance v17, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v18, -0x65

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing base APK in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 734
    :cond_6
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 736
    .local v13, "size":I
    const/4 v15, 0x0

    .line 737
    .local v15, "splitNames":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 738
    .local v14, "splitCodePaths":[Ljava/lang/String;
    if-lez v13, :cond_7

    .line 739
    new-array v15, v13, [Ljava/lang/String;

    .line 740
    new-array v14, v13, [Ljava/lang/String;

    .line 742
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "splitNames":[Ljava/lang/String;
    check-cast v15, [Ljava/lang/String;

    .line 743
    .restart local v15    # "splitNames":[Ljava/lang/String;
    sget-object v17, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 745
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v13, :cond_7

    .line 746
    aget-object v17, v15, v8

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$ApkLite;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v14, v8

    .line 745
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 750
    .end local v8    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "codePath":Ljava/lang/String;
    new-instance v17, Landroid/content/pm/PackageParser$PackageLite;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v4, v15, v14}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v17
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 10
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2489
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2492
    .local v8, "sa":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    .line 2493
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x7

    move-object v1, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v7}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2499
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2502
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2504
    new-instance v5, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v5, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 2506
    .local v5, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p5, v0

    if-eqz v0, :cond_1

    .line 2507
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2508
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2509
    const/4 v5, 0x0

    .line 2543
    .end local v5    # "a":Landroid/content/pm/PackageParser$Instrumentation;
    :goto_0
    return-object v5

    .line 2515
    .restart local v5    # "a":Landroid/content/pm/PackageParser$Instrumentation;
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 2517
    .local v9, "str":Ljava/lang/String;
    iget-object v1, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 2519
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 2523
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 2527
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2529
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2530
    const/4 v0, 0x0

    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p5, v0

    .line 2531
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2532
    const/4 v5, 0x0

    goto :goto_0

    .line 2517
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2535
    :cond_3
    const-string v4, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2537
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2538
    const/4 v5, 0x0

    goto :goto_0

    .line 2541
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "allowGlobs"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4194
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 4197
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4199
    .local v7, "priority":I
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 4201
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 4203
    .local v11, "v":Landroid/util/TypedValue;
    if-eqz v11, :cond_0

    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p5

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v13, :cond_0

    .line 4204
    invoke-virtual {v11}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p5

    iput-object v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4207
    :cond_0
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 4210
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 4213
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p5

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 4216
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 4218
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 4221
    .local v5, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v13, 0x1

    if-eq v10, v13, :cond_15

    const/4 v13, 0x3

    if-ne v10, v13, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_15

    .line 4222
    :cond_2
    const/4 v13, 0x3

    if-eq v10, v13, :cond_1

    const/4 v13, 0x4

    if-eq v10, v13, :cond_1

    .line 4226
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4227
    .local v4, "nodeName":Ljava/lang/String;
    const-string v13, "action"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 4228
    const-string v13, "http://schemas.android.com/apk/res/android"

    const-string v14, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4230
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_3

    const-string v13, ""

    if-ne v12, v13, :cond_4

    .line 4231
    :cond_3
    const/4 v13, 0x0

    const-string v14, "No value supplied for <android:name>"

    aput-object v14, p6, v13

    .line 4232
    const/4 v13, 0x0

    .line 4352
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :goto_1
    return v13

    .line 4234
    .restart local v4    # "nodeName":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4236
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 4237
    .end local v12    # "value":Ljava/lang/String;
    :cond_5
    const-string v13, "category"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 4238
    const-string v13, "http://schemas.android.com/apk/res/android"

    const-string v14, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4240
    .restart local v12    # "value":Ljava/lang/String;
    if-eqz v12, :cond_6

    const-string v13, ""

    if-ne v12, v13, :cond_7

    .line 4241
    :cond_6
    const/4 v13, 0x0

    const-string v14, "No value supplied for <android:name>"

    aput-object v14, p6, v13

    .line 4242
    const/4 v13, 0x0

    goto :goto_1

    .line 4244
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4246
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 4248
    .end local v12    # "value":Ljava/lang/String;
    :cond_8
    const-string v13, "data"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 4249
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 4252
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4254
    .local v9, "str":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 4256
    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4264
    :cond_9
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4266
    if-eqz v9, :cond_a

    .line 4267
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 4270
    :cond_a
    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4272
    if-eqz v9, :cond_b

    .line 4273
    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4276
    :cond_b
    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4278
    if-eqz v9, :cond_c

    .line 4279
    const/4 v13, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4282
    :cond_c
    const/16 v13, 0x9

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4284
    if-eqz v9, :cond_e

    .line 4285
    if-nez p4, :cond_d

    .line 4286
    const/4 v13, 0x0

    const-string v14, "sspPattern not allowed here; ssp must be literal"

    aput-object v14, p6, v13

    .line 4287
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 4257
    :catch_0
    move-exception v2

    .line 4258
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v13, 0x0

    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, p6, v13

    .line 4259
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 4260
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 4289
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_d
    const/4 v13, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4292
    :cond_e
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 4294
    .local v3, "host":Ljava/lang/String;
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 4296
    .local v6, "port":Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 4297
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 4300
    :cond_f
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4302
    if-eqz v9, :cond_10

    .line 4303
    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4306
    :cond_10
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4308
    if-eqz v9, :cond_11

    .line 4309
    const/4 v13, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4312
    :cond_11
    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4314
    if-eqz v9, :cond_13

    .line 4315
    if-nez p4, :cond_12

    .line 4316
    const/4 v13, 0x0

    const-string v14, "pathPattern not allowed here; path must be literal"

    aput-object v14, p6, v13

    .line 4317
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 4319
    :cond_12
    const/4 v13, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4322
    :cond_13
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 4323
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4325
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :cond_14
    const-string v13, "PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown element under <intent-filter>: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4335
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_15
    const-string v13, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p5

    iput-boolean v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 4352
    const/4 v13, 0x1

    goto/16 :goto_1
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z
    .locals 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2192
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 2193
    .local v15, "outerDepth":I
    const/4 v5, -0x1

    .line 2195
    .local v5, "currentKeySetDepth":I
    const/4 v4, 0x0

    .line 2196
    .local v4, "currentKeySet":Ljava/lang/String;
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    .line 2197
    .local v18, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v23, Landroid/util/ArraySet;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    .line 2198
    .local v23, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 2199
    .local v6, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 2201
    .local v11, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v15, :cond_d

    .line 2202
    :cond_1
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2203
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-ne v0, v5, :cond_0

    .line 2204
    const/4 v4, 0x0

    .line 2205
    const/4 v5, -0x1

    goto :goto_0

    .line 2209
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 2210
    .local v21, "tagName":Ljava/lang/String;
    const-string v24, "key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 2211
    if-eqz v4, :cond_3

    .line 2212
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    const/16 v24, 0x0

    .line 2321
    .end local v21    # "tagName":Ljava/lang/String;
    :goto_1
    return v24

    .line 2216
    .restart local v21    # "tagName":Ljava/lang/String;
    :cond_3
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2218
    .local v20, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 2220
    .local v13, "keysetName":Ljava/lang/String;
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v6, v13, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    move-object v4, v13

    .line 2222
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 2223
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 2224
    .end local v13    # "keysetName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_4
    const-string v24, "public-key"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 2225
    if-nez v4, :cond_5

    .line 2226
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Improperly nested \'public-key\' tag at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/16 v24, 0x0

    goto :goto_1

    .line 2230
    :cond_5
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2232
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v16

    .line 2234
    .local v16, "publicKeyName":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 2236
    .local v8, "encodedKey":Ljava/lang/String;
    if-nez v8, :cond_6

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_6

    .line 2237
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "\'public-key\' "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " must define a public-key value"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " on first use at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2240
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 2241
    :cond_6
    if-eqz v8, :cond_9

    .line 2242
    invoke-static {v8}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 2243
    .local v3, "currentKey":Ljava/security/PublicKey;
    if-nez v3, :cond_7

    .line 2244
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " key-set "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " will not be added to the package\'s defined key-sets."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2248
    invoke-virtual {v11, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2249
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2252
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_8

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/security/PublicKey;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 2256
    :cond_8
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_9
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2266
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2267
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2258
    .restart local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_a
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Value of \'public-key\' "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " conflicts with previously defined value at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2262
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 2268
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    .end local v8    # "encodedKey":Ljava/lang/String;
    .end local v16    # "publicKeyName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    const-string v24, "upgrade-key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 2269
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2271
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 2273
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2274
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2275
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2282
    .end local v14    # "name":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_c
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown element under <key-sets>: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2289
    .end local v21    # "tagName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v17

    .line 2290
    .local v17, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 2291
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 2295
    :cond_e
    new-instance v24, Landroid/util/ArrayMap;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 2296
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2297
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2298
    .local v12, "keySetName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArraySet;->size()I

    move-result v24

    if-nez v24, :cond_10

    .line 2299
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'key-set\' "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " has no valid associated \'public-key\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " Not including in package\'s defined key-sets."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2303
    :cond_10
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 2304
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'key-set\' "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " contained improper \'public-key\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " tags. Not including in package\'s defined key-sets."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2309
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2311
    .local v19, "s":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v18 .. v19}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2314
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "keySetName":Ljava/lang/String;
    .end local v19    # "s":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 2315
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 2321
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 2317
    :cond_13
    const-string v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "does not define all \'upgrade-key-set\'s ."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    const/16 v24, 0x0

    goto/16 :goto_1
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "data"    # Landroid/os/Bundle;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4060
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 4063
    .local v2, "sa":Landroid/content/res/TypedArray;
    if-nez p4, :cond_0

    .line 4064
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "data":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 4067
    .restart local p4    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4069
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4070
    const-string v5, "<meta-data> requires an android:name attribute"

    aput-object v5, p5, v6

    .line 4071
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4117
    :goto_0
    return-object v4

    .line 4075
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4077
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4079
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_2

    .line 4081
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4113
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4115
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, p4

    .line 4117
    goto :goto_0

    .line 4083
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4086
    if-eqz v3, :cond_9

    .line 4087
    iget v7, v3, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 4088
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4089
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4090
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    .line 4091
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_2

    .line 4092
    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7

    .line 4094
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 4095
    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 4096
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 4099
    :cond_8
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4108
    :cond_9
    const-string v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p5, v6

    .line 4109
    const/4 p4, 0x0

    goto/16 :goto_1
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 4
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 679
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    .line 680
    .local v0, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "packagePath":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser$PackageLite;

    invoke-direct {v2, v1, v0, v3, v3}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z
    .locals 9
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "sa"    # Landroid/content/res/TypedArray;
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "logoRes"    # I
    .param p10, "bannerRes"    # I

    .prologue
    .line 3064
    const/4 v6, 0x0

    invoke-virtual {p5, p6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 3065
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 3066
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not specify android:name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p3, v6

    .line 3067
    const/4 v6, 0x0

    .line 3099
    :goto_0
    return v6

    .line 3070
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v4, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 3072
    iget-object v6, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 3073
    const/4 v6, 0x0

    goto :goto_0

    .line 3076
    :cond_1
    const/4 v6, 0x0

    move/from16 v0, p8

    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3077
    .local v2, "iconVal":I
    if-eqz v2, :cond_2

    .line 3078
    iput v2, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 3079
    const/4 v6, 0x0

    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3082
    :cond_2
    const/4 v6, 0x0

    move/from16 v0, p9

    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 3083
    .local v3, "logoVal":I
    if-eqz v3, :cond_3

    .line 3084
    iput v3, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 3087
    :cond_3
    const/4 v6, 0x0

    move/from16 v0, p10

    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3088
    .local v1, "bannerVal":I
    if-eqz v1, :cond_4

    .line 3089
    iput v1, p2, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 3092
    :cond_4
    move/from16 v0, p7

    invoke-virtual {p5, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 3093
    .local v5, "v":Landroid/util/TypedValue;
    if-eqz v5, :cond_5

    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    iput v6, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v6, :cond_5

    .line 3094
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3097
    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3099
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    goto :goto_0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/16 v7, -0x6a

    const/16 v6, -0x6c

    .line 1312
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    if-eq v3, v4, :cond_1

    if-ne v3, v8, :cond_0

    .line 1315
    :cond_1
    if-eq v3, v4, :cond_2

    .line 1316
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v5, "No start tag found"

    invoke-direct {v4, v6, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1319
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1320
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v5, "No <manifest> tag"

    invoke-direct {v4, v6, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1324
    :cond_3
    const-string v4, "package"

    invoke-interface {p1, v9, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    .local v1, "packageName":Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1326
    invoke-static {v1, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1328
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1333
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    const-string v4, "split"

    invoke-interface {p1, v9, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1335
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 1336
    const/4 v2, 0x0

    .line 1346
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "splitName":Ljava/lang/String;
    :cond_6
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 1338
    .restart local v2    # "splitName":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1339
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1340
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest split: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2371
    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2373
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2376
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v6, "<permission>"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x6

    const/16 v12, 0x8

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2383
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2384
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2385
    const/4 v13, 0x0

    .line 2435
    .end local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    :goto_0
    return-object v13

    .line 2390
    .restart local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    :cond_0
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 2392
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2393
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 2396
    :cond_1
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 2400
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2404
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->flags:I

    .line 2407
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2409
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 2410
    const/4 v2, 0x0

    const-string v3, "<permission> does not specify protectionLevel"

    aput-object v3, p5, v2

    .line 2411
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2412
    const/4 v13, 0x0

    goto :goto_0

    .line 2415
    :cond_2
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2417
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v2, v2, 0xf0

    if-eqz v2, :cond_3

    .line 2418
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 2420
    const/4 v2, 0x0

    const-string v3, "<permission>  protectionLevel specifies a flag but is not based on signature type"

    aput-object v3, p5, v2

    .line 2422
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2423
    const/4 v13, 0x0

    goto :goto_0

    .line 2427
    :cond_3
    const-string v12, "<permission>"

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2429
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2430
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2433
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2327
    new-instance v13, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2329
    .local v13, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2332
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v6, "<permission-group>"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x5

    const/4 v12, 0x7

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2339
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2340
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2341
    const/4 v13, 0x0

    .line 2365
    .end local v13    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    :goto_0
    return-object v13

    .line 2344
    .restart local v13    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    :cond_0
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 2347
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 2349
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 2351
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget v2, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    if-lez v2, :cond_1

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    .line 2352
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 2355
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2357
    const-string v12, "<permission-group>"

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2359
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2360
    const/4 v13, 0x0

    goto :goto_0

    .line 2363
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2441
    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2443
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2446
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v6, "<permission-tree>"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2453
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2454
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2455
    const/4 v13, 0x0

    .line 2483
    .end local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    :goto_0
    return-object v13

    .line 2458
    .restart local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2460
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 2461
    .local v15, "index":I
    if-lez v15, :cond_1

    .line 2462
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 2464
    :cond_1
    if-gez v15, :cond_2

    .line 2465
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<permission-tree> name has less than three segments: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v2

    .line 2467
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2468
    const/4 v13, 0x0

    goto :goto_0

    .line 2471
    :cond_2
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 2472
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2473
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 2475
    const-string v12, "<permission-tree>"

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2477
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2478
    const/4 v13, 0x0

    goto :goto_0

    .line 2481
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 19
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3596
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 3599
    .local v17, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_0

    .line 3600
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xf

    const/16 v9, 0x11

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v11, 0x8

    const/16 v12, 0xe

    const/4 v13, 0x6

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3610
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v3, "<provider>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3613
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3614
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3616
    new-instance v6, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ProviderInfo;

    invoke-direct {v3}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v6, v2, v3}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 3617
    .local v6, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_2

    .line 3618
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 3619
    const/4 v6, 0x0

    .line 3714
    .end local v6    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_1
    :goto_0
    return-object v6

    .line 3622
    .restart local v6    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_2
    const/16 v16, 0x0

    .line 3624
    .local v16, "providerExportedDefault":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_3

    .line 3628
    const/16 v16, 0x1

    .line 3631
    :cond_3
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 3635
    const/16 v2, 0xa

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 3638
    .local v14, "cpname":Ljava/lang/String;
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 3642
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 3644
    .local v15, "permission":Ljava/lang/String;
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 3646
    .local v18, "str":Ljava/lang/String;
    if-nez v18, :cond_4

    .line 3647
    move-object/from16 v18, v15

    .line 3649
    :cond_4
    if-nez v18, :cond_7

    .line 3650
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 3655
    :goto_1
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 3657
    if-nez v18, :cond_5

    .line 3658
    move-object/from16 v18, v15

    .line 3660
    :cond_5
    if-nez v18, :cond_9

    .line 3661
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 3667
    :goto_2
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xd

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 3671
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x9

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 3675
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 3679
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 3681
    const/16 v2, 0x10

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3684
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 3685
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v2, :cond_6

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_6

    .line 3686
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider exported request ignored due to singleUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 3693
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 3695
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 3698
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_b

    .line 3699
    const/4 v2, 0x0

    const-string v3, "Heavy-weight applications can not have providers in main process"

    aput-object v3, p6, v2

    .line 3700
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3652
    :cond_7
    iget-object v3, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 3663
    :cond_9
    iget-object v3, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 3704
    :cond_b
    if-nez v14, :cond_c

    .line 3705
    const/4 v2, 0x0

    const-string v3, "<provider> does not include authorities attribute"

    aput-object v3, p6, v2

    .line 3706
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3708
    :cond_c
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    .line 3710
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3711
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 28
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3721
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 3724
    .local v19, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, "type":I
    const/4 v4, 0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_16

    const/4 v4, 0x3

    move/from16 v0, v26

    if-ne v0, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_16

    .line 3726
    :cond_1
    const/4 v4, 0x3

    move/from16 v0, v26

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    move/from16 v0, v26

    if-eq v0, v4, :cond_0

    .line 3730
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3731
    new-instance v9, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 3732
    .local v9, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3733
    const/4 v4, 0x0

    .line 3897
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :goto_1
    return v4

    .line 3735
    .restart local v9    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_2
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3737
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3738
    move-object/from16 v0, p4

    iget-object v14, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v15, p5

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 3740
    const/4 v4, 0x0

    goto :goto_1

    .line 3743
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "grant-uri-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3744
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 3747
    .local v24, "sa":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    .line 3749
    .local v20, "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 3751
    .local v25, "str":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 3752
    new-instance v20, Landroid/os/PatternMatcher;

    .end local v20    # "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 3755
    .restart local v20    # "pa":Landroid/os/PatternMatcher;
    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 3757
    if-eqz v25, :cond_6

    .line 3758
    new-instance v20, Landroid/os/PatternMatcher;

    .end local v20    # "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 3761
    .restart local v20    # "pa":Landroid/os/PatternMatcher;
    :cond_6
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 3763
    if-eqz v25, :cond_7

    .line 3764
    new-instance v20, Landroid/os/PatternMatcher;

    .end local v20    # "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 3767
    .restart local v20    # "pa":Landroid/os/PatternMatcher;
    :cond_7
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3769
    if-eqz v20, :cond_9

    .line 3770
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v4, :cond_8

    .line 3771
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/os/PatternMatcher;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 3772
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    .line 3780
    :goto_2
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 3793
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3774
    :cond_8
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v0, v4

    move/from16 v16, v0

    .line 3775
    .local v16, "N":I
    add-int/lit8 v4, v16, 0x1

    new-array v0, v4, [Landroid/os/PatternMatcher;

    move-object/from16 v18, v0

    .line 3776
    .local v18, "newp":[Landroid/os/PatternMatcher;
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3777
    aput-object v20, v18, v16

    .line 3778
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_2

    .line 3783
    .end local v16    # "N":I
    .end local v18    # "newp":[Landroid/os/PatternMatcher;
    :cond_9
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3795
    .end local v20    # "pa":Landroid/os/PatternMatcher;
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "str":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "path-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3796
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 3799
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    .line 3801
    .local v20, "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 3803
    .local v22, "permission":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 3805
    .local v23, "readPermission":Ljava/lang/String;
    if-nez v23, :cond_b

    .line 3806
    move-object/from16 v23, v22

    .line 3808
    :cond_b
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v27

    .line 3810
    .local v27, "writePermission":Ljava/lang/String;
    if-nez v27, :cond_c

    .line 3811
    move-object/from16 v27, v22

    .line 3814
    :cond_c
    const/16 v17, 0x0

    .line 3815
    .local v17, "havePerm":Z
    if-eqz v23, :cond_d

    .line 3816
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v23

    .line 3817
    const/16 v17, 0x1

    .line 3819
    :cond_d
    if-eqz v27, :cond_e

    .line 3820
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v27

    .line 3821
    const/16 v17, 0x1

    .line 3824
    :cond_e
    if-nez v17, :cond_f

    .line 3826
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3837
    :cond_f
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 3839
    .local v21, "path":Ljava/lang/String;
    if-eqz v21, :cond_10

    .line 3840
    new-instance v20, Landroid/content/pm/PathPermission;

    .end local v20    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3844
    .restart local v20    # "pa":Landroid/content/pm/PathPermission;
    :cond_10
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 3846
    if-eqz v21, :cond_11

    .line 3847
    new-instance v20, Landroid/content/pm/PathPermission;

    .end local v20    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3851
    .restart local v20    # "pa":Landroid/content/pm/PathPermission;
    :cond_11
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 3853
    if-eqz v21, :cond_12

    .line 3854
    new-instance v20, Landroid/content/pm/PathPermission;

    .end local v20    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3858
    .restart local v20    # "pa":Landroid/content/pm/PathPermission;
    :cond_12
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3860
    if-eqz v20, :cond_14

    .line 3861
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v4, :cond_13

    .line 3862
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 3863
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    .line 3882
    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3865
    :cond_13
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v0, v4

    move/from16 v16, v0

    .line 3866
    .restart local v16    # "N":I
    add-int/lit8 v4, v16, 0x1

    new-array v0, v4, [Landroid/content/pm/PathPermission;

    move-object/from16 v18, v0

    .line 3867
    .local v18, "newp":[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3868
    aput-object v20, v18, v16

    .line 3869
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_3

    .line 3873
    .end local v16    # "N":I
    .end local v18    # "newp":[Landroid/content/pm/PathPermission;
    :cond_14
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3886
    .end local v17    # "havePerm":Z
    .end local v20    # "pa":Landroid/content/pm/PathPermission;
    .end local v21    # "path":Ljava/lang/String;
    .end local v22    # "permission":Ljava/lang/String;
    .end local v23    # "readPermission":Ljava/lang/String;
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v27    # "writePermission":Ljava/lang/String;
    :cond_15
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <provider>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3897
    :cond_16
    const/4 v4, 0x1

    goto/16 :goto_1
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 7
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4148
    if-nez p0, :cond_0

    .line 4149
    const-string v5, "PackageParser"

    const-string v6, "Could not parse null public key"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    :goto_0
    return-object v4

    .line 4155
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 4156
    .local v1, "encoded":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4164
    .local v3, "keySpec":Ljava/security/spec/EncodedKeySpec;
    :try_start_1
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 4165
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 4157
    .end local v1    # "encoded":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 4158
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "PackageParser"

    const-string v6, "Could not parse verifier public key; invalid Base64"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4166
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "encoded":[B
    .restart local v3    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_1
    move-exception v0

    .line 4167
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "PackageParser"

    const-string v6, "Could not parse public key because RSA isn\'t included in build"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4169
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v5

    .line 4175
    :try_start_2
    const-string v5, "DSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 4176
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v4

    goto :goto_0

    .line 4177
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_3
    move-exception v0

    .line 4178
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "PackageParser"

    const-string v6, "Could not parse public key because DSA isn\'t included in build"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4180
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v5

    goto :goto_0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3903
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 3906
    .local v16, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_0

    .line 3907
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/16 v9, 0xc

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v11, 0x6

    const/4 v12, 0x7

    const/4 v13, 0x4

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3917
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v3, "<service>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3920
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3921
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3923
    new-instance v15, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v3}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v15, v2, v3}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 3924
    .local v15, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_2

    .line 3925
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3926
    const/4 v15, 0x0

    .line 4018
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_1
    :goto_0
    return-object v15

    .line 3929
    .restart local v15    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_2
    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    .line 3931
    .local v17, "setExported":Z
    if-eqz v17, :cond_3

    .line 3932
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 3936
    :cond_3
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 3938
    .local v18, "str":Ljava/lang/String;
    if-nez v18, :cond_7

    .line 3939
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 3944
    :goto_1
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 3945
    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3948
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 3950
    :cond_4
    const/16 v2, 0xa

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3953
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 3955
    :cond_5
    const/16 v2, 0xb

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3958
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 3959
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v2, :cond_6

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_6

    .line 3960
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service exported request ignored due to singleUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 3964
    const/16 v17, 0x1

    .line 3968
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3970
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 3973
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_9

    .line 3974
    const/4 v2, 0x0

    const-string v3, "Heavy-weight applications can not have services in main process"

    aput-object v3, p6, v2

    .line 3975
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3941
    :cond_7
    iget-object v3, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 3979
    :cond_9
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 3982
    .local v14, "outerDepth":I
    :cond_a
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v14, :cond_f

    .line 3984
    :cond_b
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_a

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_a

    .line 3988
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3989
    new-instance v7, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v7, v15}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 3990
    .local v7, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 3991
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3994
    :cond_c
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3995
    .end local v7    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3996
    iget-object v12, v15, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_a

    .line 3998
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 4002
    :cond_e
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <service>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 4014
    :cond_f
    if-nez v17, :cond_1

    .line 4015
    iget-object v3, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 978
    move-object/from16 v6, p3

    .line 981
    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v6, v1}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    .line 983
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 984
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 985
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 986
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 990
    const/4 v10, 0x0

    .line 992
    .local v10, "foundApp":Z
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 994
    .local v11, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v2, 0x1

    if-eq v13, v2, :cond_5

    const/4 v2, 0x3

    if-ne v13, v2, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_5

    .line 995
    :cond_1
    const/4 v2, 0x3

    if-eq v13, v2, :cond_0

    const/4 v2, 0x4

    if-eq v13, v2, :cond_0

    .line 999
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1000
    .local v12, "tagName":Ljava/lang/String;
    const-string v2, "application"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1001
    if-eqz v10, :cond_2

    .line 1007
    const-string v2, "PackageParser"

    const-string v3, "<manifest> has more than one <application>"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1013
    :cond_2
    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 1014
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1015
    const/4 p1, 0x0

    .line 1038
    .end local v12    # "tagName":Ljava/lang/String;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    :goto_1
    return-object p1

    .line 1025
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <manifest>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1033
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_5
    if-nez v10, :cond_3

    .line 1034
    const/4 v2, 0x0

    const-string v3, "<manifest> does not contain an <application>"

    aput-object v3, p6, v2

    .line 1035
    const/16 v2, -0x6d

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 28
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 933
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v22, v3, p2

    .line 934
    .local v22, "apkPath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    .local v21, "apkFile":Ljava/io/File;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 937
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 941
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v23

    .line 943
    .local v23, "cookie":I
    const/16 v26, 0x0

    .line 944
    .local v26, "res":Landroid/content/res/Resources;
    const/16 v25, 0x0

    .line 946
    .local v25, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v27, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 947
    .end local v26    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :try_start_1
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 949
    const-string v3, "AndroidManifest.xml"

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 951
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x1

    :try_start_2
    new-array v9, v3, [Ljava/lang/String;

    .local v9, "outError":[Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v27

    move/from16 v7, p4

    move/from16 v8, p2

    .line 952
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    .line 953
    if-nez p1, :cond_0

    .line 954
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v9, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 958
    .end local v9    # "outError":[Ljava/lang/String;
    :catch_0
    move-exception v24

    move-object/from16 v26, v27

    .line 959
    .end local v27    # "res":Landroid/content/res/Resources;
    .local v24, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v26    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_3
    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 964
    .end local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v9    # "outError":[Ljava/lang/String;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 966
    return-void

    .line 960
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "outError":[Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v24

    move-object/from16 v6, v25

    .line 961
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .local v24, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read manifest from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v3, v4, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 964
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v3

    move-object/from16 v6, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_2
    move-exception v3

    move-object/from16 v6, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_1

    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_3
    move-exception v3

    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 960
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v24

    move-object/from16 v6, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_2

    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v24

    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_2

    .line 958
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_4
    move-exception v24

    move-object/from16 v6, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_5
    move-exception v24

    move-object/from16 v6, v25

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;II[Ljava/lang/String;)Z
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .param p7, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2933
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 2936
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2938
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v3, v2, p6

    or-int/lit8 v3, v3, 0x4

    aput v3, v2, p6

    .line 2941
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 2944
    .local v12, "innerDepth":I
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_12

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v12, :cond_12

    .line 2945
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 2949
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 2950
    .local v18, "tagName":Ljava/lang/String;
    const-string v2, "activity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2951
    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-boolean v10, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v11

    .line 2953
    .local v11, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_3

    .line 2954
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2955
    const/4 v2, 0x0

    .line 3058
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v18    # "tagName":Ljava/lang/String;
    :goto_1
    return v2

    .line 2958
    .restart local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    .restart local v18    # "tagName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2960
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    const-string v2, "receiver"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2961
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v11

    .line 2962
    .restart local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_5

    .line 2963
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2964
    const/4 v2, 0x0

    goto :goto_1

    .line 2967
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2969
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_6
    const-string v2, "service"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    .line 2970
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v16

    .line 2971
    .local v16, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v16, :cond_7

    .line 2972
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2973
    const/4 v2, 0x0

    goto :goto_1

    .line 2976
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2978
    .end local v16    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_8
    const-string v2, "provider"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    .line 2979
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v14

    .line 2980
    .local v14, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v14, :cond_9

    .line 2981
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2982
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2985
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2987
    .end local v14    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_a
    const-string v2, "activity-alias"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    .line 2988
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v11

    .line 2989
    .restart local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_b

    .line 2990
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2991
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2994
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2996
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3000
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 3002
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3003
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3006
    :cond_d
    const-string v2, "uses-library"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3007
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 3012
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 3014
    .local v13, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 3018
    .local v15, "req":Z
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 3020
    if-eqz v13, :cond_e

    .line 3021
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 3022
    if-eqz v15, :cond_f

    .line 3024
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3025
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3036
    :cond_e
    :goto_2
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3029
    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 3030
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_2

    .line 3038
    .end local v13    # "lname":Ljava/lang/String;
    .end local v15    # "req":Z
    :cond_10
    const-string v2, "uses-package"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3041
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3045
    :cond_11
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <application>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3058
    .end local v18    # "tagName":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2036
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2037
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2041
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2043
    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2044
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2048
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2050
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2052
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2053
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2059
    sget-object v6, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2064
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2070
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x1

    .line 2072
    .local v3, "required":Z
    const/4 v1, 0x0

    .line 2073
    .local v1, "maxSdkVersion":I
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 2075
    .local v5, "val":Landroid/util/TypedValue;
    if-eqz v5, :cond_0

    .line 2076
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x10

    if-lt v6, v9, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v6, v9, :cond_0

    .line 2077
    iget v1, v5, Landroid/util/TypedValue;->data:I

    .line 2081
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2083
    if-eqz v1, :cond_1

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v1, v6, :cond_2

    .line 2084
    :cond_1
    if-eqz v2, :cond_2

    .line 2085
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2086
    .local v0, "index":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 2087
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2099
    .end local v0    # "index":I
    :cond_2
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v6, v7

    .line 2100
    :goto_1
    return v6

    .line 2088
    .restart local v0    # "index":I
    :cond_3
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2090
    :cond_4
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v6, v3, :cond_2

    .line 2091
    const-string v6, "conflicting <uses-permission> entries"

    aput-object v6, p5, v8

    .line 2092
    const/16 v6, -0x6c

    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    move v6, v8

    .line 2093
    goto :goto_1
.end method

.method private static parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 4122
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestPackageVerifier:[I

    invoke-virtual {p0, p2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4125
    .local v3, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 4128
    .local v1, "packageName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 4131
    .local v0, "encodedPublicKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 4133
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 4134
    :cond_0
    const-string v5, "PackageParser"

    const-string v6, "verifier package name was null; skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    :goto_0
    return-object v4

    .line 4138
    :cond_1
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 4139
    .local v2, "publicKey":Ljava/security/PublicKey;
    if-nez v2, :cond_2

    .line 4140
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse verifier public key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4144
    :cond_2
    new-instance v4, Landroid/content/pm/VerifierInfo;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    goto :goto_0
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5197
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 5198
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 5199
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 5202
    :cond_0
    const/4 v2, 0x0

    .line 5203
    .local v2, "n":I
    const/4 v1, 0x0

    .line 5204
    .local v1, "count":I
    :goto_0
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 5205
    add-int/2addr v1, v2

    goto :goto_0

    .line 5208
    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5209
    int-to-long v4, v1

    return-wide v4
.end method

.method private scanPackageOverlays(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "originalFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1044
    .local v1, "overlayTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1046
    .local v3, "privateZip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    .end local v3    # "privateZip":Ljava/util/zip/ZipFile;
    .local v4, "privateZip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 1048
    .local v5, "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1049
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 1050
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1052
    .local v8, "zipEntryName":Ljava/lang/String;
    const-string v9, "assets/overlays/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x10

    if-le v9, v10, :cond_0

    .line 1053
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1054
    .local v6, "subdirs":[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1057
    .end local v5    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "subdirs":[Ljava/lang/String;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v8    # "zipEntryName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 1058
    .end local v4    # "privateZip":Ljava/util/zip/ZipFile;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "privateZip":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1059
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1061
    if-eqz v3, :cond_1

    .line 1063
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1070
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    .local v2, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1072
    return-object v2

    .line 1061
    .end local v2    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v4    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v5    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_2
    if-eqz v4, :cond_4

    .line 1063
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 1066
    .end local v4    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "privateZip":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 1064
    .end local v3    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v4    # "privateZip":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v9

    move-object v3, v4

    .line 1066
    .end local v4    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "privateZip":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 1061
    .end local v5    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v3, :cond_3

    .line 1063
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1066
    :cond_3
    :goto_4
    throw v9

    .line 1064
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    goto :goto_4

    .line 1061
    .end local v3    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v4    # "privateZip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "privateZip":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 1057
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v3    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v4    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v5    # "privateZipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_4
    move-object v3, v4

    .end local v4    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "privateZip":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    .prologue
    .line 5191
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 5192
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1462
    .local v0, "N":I
    new-array v2, v0, [B

    .line 1463
    .local v2, "sig":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1464
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1466
    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4827
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 4828
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 4830
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_3

    .line 4831
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4835
    :goto_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_4

    .line 4836
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8000000

    or-int/2addr v0, v3

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4840
    :goto_1
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v0, v1, :cond_5

    .line 4841
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 4848
    :cond_1
    :goto_2
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 4849
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->protectedComponents:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 4850
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->protectedComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_9

    :goto_3
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->protect:Z

    .line 4852
    :cond_2
    return-void

    .line 4833
    :cond_3
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x800001

    and-int/2addr v0, v3

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 4838
    :cond_4
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x8000001

    and-int/2addr v0, v3

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 4842
    :cond_5
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 4843
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_4

    .line 4844
    :cond_7
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 4846
    :cond_8
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_2

    :cond_9
    move v1, v2

    .line 4850
    goto :goto_3
.end method

.method private static validateName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requiresSeparator"    # Z

    .prologue
    .line 1281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1282
    .local v0, "N":I
    const/4 v3, 0x0

    .line 1283
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .line 1284
    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 1285
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1286
    .local v1, "c":C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_0

    const/16 v5, 0x7a

    if-le v1, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v1, v5, :cond_3

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_3

    .line 1287
    :cond_1
    const/4 v2, 0x0

    .line 1284
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1290
    :cond_3
    if-nez v2, :cond_5

    .line 1291
    const/16 v5, 0x30

    if-lt v1, v5, :cond_4

    const/16 v5, 0x39

    if-le v1, v5, :cond_2

    :cond_4
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_2

    .line 1295
    :cond_5
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_6

    .line 1296
    const/4 v3, 0x1

    .line 1297
    const/4 v2, 0x1

    .line 1298
    goto :goto_1

    .line 1300
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1302
    .end local v1    # "c":C
    :goto_2
    return-object v5

    :cond_7
    if-nez v3, :cond_8

    if-nez p1, :cond_9

    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    const-string v5, "must have at least one \'.\' separator"

    goto :goto_2
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1134
    move-object v4, v5

    check-cast v4, [[Ljava/security/cert/Certificate;

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1135
    iput-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1136
    iput-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1138
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 1140
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1141
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1142
    .local v3, "splitCodePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 1141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1145
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "splitCodePath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public collectManifestDigest(Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v3, 0x0

    iput-object v3, p1, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 1113
    :try_start_0
    new-instance v1, Ljava/util/jar/StrictJarFile;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/jar/StrictJarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1115
    .local v1, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_1
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v1, v3}, Ljava/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1116
    .local v2, "je":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_0

    .line 1117
    invoke-virtual {v1, v2}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/ManifestDigest;->fromInputStream(Ljava/io/InputStream;)Landroid/content/pm/ManifestDigest;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V

    .line 1126
    return-void

    .line 1120
    .end local v2    # "je":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1122
    .end local v1    # "jarFile":Ljava/util/jar/StrictJarFile;
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x6c

    const-string v5, "Failed to collect manifest digest"

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1122
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 842
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v3, :cond_0

    .line 843
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 844
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-nez v3, :cond_0

    .line 845
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x6c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a coreApp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 850
    .end local v1    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 852
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 853
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_0
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 376
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 377
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 373
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 364
    return-void
.end method
