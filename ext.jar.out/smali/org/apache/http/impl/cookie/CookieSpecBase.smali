.class public abstract Lorg/apache/http/impl/cookie/CookieSpecBase;
.super Lorg/apache/http/impl/cookie/AbstractCookieSpec;
.source "CookieSpecBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;-><init>()V

    return-void
.end method

.method protected static getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 3
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "defaultPath":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 57
    .local v1, "lastSlashIndex":I
    if-ltz v1, :cond_1

    .line 58
    if-nez v1, :cond_0

    .line 60
    const/4 v1, 0x1

    .line 62
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_1
    return-object v0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieAttributeHandler;

    .line 124
    .local v0, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    const/4 v2, 0x0

    .line 128
    .end local v0    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 16
    .param p1, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v5, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    move-object/from16 v1, p1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_4

    aget-object v7, v1, v8

    .line 75
    .local v7, "headerelement":Lorg/apache/http/HeaderElement;
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "name":Ljava/lang/String;
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "value":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    .line 78
    :cond_0
    new-instance v14, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v15, "Cookie name may not be empty"

    invoke-direct {v14, v15}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 81
    :cond_1
    new-instance v4, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v4, v11, v13}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v4, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 83
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 86
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v3

    .line 87
    .local v3, "attribs":[Lorg/apache/http/NameValuePair;
    array-length v14, v3

    add-int/lit8 v9, v14, -0x1

    .local v9, "j":I
    :goto_1
    if-ltz v9, :cond_3

    .line 88
    aget-object v2, v3, v9

    .line 89
    .local v2, "attrib":Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, "s":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v12, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/http/impl/cookie/CookieSpecBase;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v6

    .line 94
    .local v6, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    if-eqz v6, :cond_2

    .line 95
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v4, v14}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    .line 87
    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 98
    .end local v2    # "attrib":Lorg/apache/http/NameValuePair;
    .end local v6    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    .end local v12    # "s":Ljava/lang/String;
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "attribs":[Lorg/apache/http/NameValuePair;
    .end local v4    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v7    # "headerelement":Lorg/apache/http/HeaderElement;
    .end local v9    # "j":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_4
    return-object v5
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    if-nez p2, :cond_1

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieAttributeHandler;

    .line 112
    .local v0, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_0

    .line 114
    .end local v0    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    :cond_2
    return-void
.end method
