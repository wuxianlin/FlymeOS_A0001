.class public interface abstract Lorg/apache/http/client/RequestDirector;
.super Ljava/lang/Object;
.source "RequestDirector.java"


# virtual methods
.method public abstract execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
