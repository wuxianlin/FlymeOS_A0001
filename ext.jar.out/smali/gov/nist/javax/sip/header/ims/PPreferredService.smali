.class public Lgov/nist/javax/sip/header/ims/PPreferredService;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "PPreferredService.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private subAppIds:Ljava/lang/String;

.field private subServiceIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "P-Preferred-Service"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "P-Preferred-Service"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PPreferredService;

    .line 112
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PPreferredService;
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, "retval":Ljava/lang/StringBuffer;
    const-string v1, "urn:urn-7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "3gpp-service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->getSubserviceIdentifiers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 63
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "3gpp-application"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->getApplicationIdentifiers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 105
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationIdentifiers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubserviceIdentifiers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    goto :goto_0
.end method

.method public setApplicationIdentifiers(Ljava/lang/String;)V
    .locals 0
    .param p1, "appids"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSubserviceIdentifiers(Ljava/lang/String;)V
    .locals 1
    .param p1, "subservices"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
