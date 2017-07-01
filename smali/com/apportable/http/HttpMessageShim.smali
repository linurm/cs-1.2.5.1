.class public Lcom/apportable/http/HttpMessageShim;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpMessageShim"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAllHeaders(Lorg/apache/http/HttpMessage;)Ljava/util/HashMap;
    .registers 7

    #@0
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    #@8
    move-result-object v2

    #@9
    array-length v3, v2

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-ge v0, v3, :cond_1d

    #@d
    aget-object v4, v2, v0

    #@f
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_b

    #@1d
    :cond_1d
    return-object v1
.end method
