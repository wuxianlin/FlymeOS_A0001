.class Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "SenderFilter.java"


# static fields
.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field private static final SIGNATURE:Lcom/android/server/firewall/Filter;

.field private static final SYSTEM:Lcom/android/server/firewall/Filter;

.field private static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

.field private static final USER_ID:Lcom/android/server/firewall/Filter;

.field private static final VAL_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VAL_SYSTEM:Ljava/lang/String; = "system"

.field private static final VAL_SYSTEM_OR_SIGNATURE:Ljava/lang/String; = "system|signature"

.field private static final VAL_USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    const-string v1, "sender"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    .line 79
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$2;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 87
    new-instance v0, Lcom/android/server/firewall/SenderFilter$3;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$3;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    .line 95
    new-instance v0, Lcom/android/server/firewall/SenderFilter$4;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$4;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 104
    new-instance v0, Lcom/android/server/firewall/SenderFilter$5;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$5;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/firewall/Filter;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/firewall/Filter;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/firewall/Filter;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/server/firewall/Filter;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static isPrivilegedApp(II)Z
    .locals 6
    .param p0, "callerUid"    # I
    .param p1, "callerPid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v4, 0x3e8

    if-eq p0, v4, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq p1, v4, :cond_0

    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v2

    .line 46
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 48
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getFlagsForUid(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "IntentFirewall"

    const-string v4, "Remote exception while retrieving uid flags"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 54
    goto :goto_0
.end method
