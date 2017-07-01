.class public Lcom/apportable/BK2VerdeResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lcom/apportable/BK2VerdeOutputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDelegate:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "BK2VerdeResponseHandler"

    #@2
    sput-object v0, Lcom/apportable/BK2VerdeResponseHandler;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/BK2VerdeResponseHandler;->mDelegate:J

    #@5
    return-void
.end method

.method private static native nativeAddHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeStatus(JILjava/lang/String;)V
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Lcom/apportable/BK2VerdeOutputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@4
    move-result-object v0

    #@5
    iget-wide v2, p0, Lcom/apportable/BK2VerdeResponseHandler;->mDelegate:J

    #@7
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@a
    move-result v4

    #@b
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-static {v2, v3, v4, v5}, Lcom/apportable/BK2VerdeResponseHandler;->nativeStatus(JILjava/lang/String;)V

    #@12
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@15
    move-result v0

    #@16
    const/16 v2, 0x12c

    #@18
    if-lt v0, v2, :cond_1c

    #@1a
    move-object v0, v1

    #@1b
    :goto_1b
    return-object v0

    #@1c
    :cond_1c
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    #@1f
    move-result-object v2

    #@20
    const/4 v0, 0x0

    #@21
    :goto_21
    array-length v3, v2

    #@22
    if-ge v0, v3, :cond_38

    #@24
    iget-wide v4, p0, Lcom/apportable/BK2VerdeResponseHandler;->mDelegate:J

    #@26
    aget-object v3, v2, v0

    #@28
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    aget-object v6, v2, v0

    #@2e
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-static {v4, v5, v3, v6}, Lcom/apportable/BK2VerdeResponseHandler;->nativeAddHeader(JLjava/lang/String;Ljava/lang/String;)V

    #@35
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_21

    #@38
    :cond_38
    new-instance v0, Lcom/apportable/BK2VerdeOutputStream;

    #@3a
    iget-wide v2, p0, Lcom/apportable/BK2VerdeResponseHandler;->mDelegate:J

    #@3c
    invoke-direct {v0, v2, v3}, Lcom/apportable/BK2VerdeOutputStream;-><init>(J)V

    #@3f
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@42
    move-result-object v2

    #@43
    if-nez v2, :cond_47

    #@45
    move-object v0, v1

    #@46
    goto :goto_1b

    #@47
    :cond_47
    new-instance v1, Ljava/lang/Thread;

    #@49
    new-instance v3, Lcom/apportable/BK2VerdeResponseHandler$1;

    #@4b
    invoke-direct {v3, p0, p1, v0, v2}, Lcom/apportable/BK2VerdeResponseHandler$1;-><init>(Lcom/apportable/BK2VerdeResponseHandler;Lorg/apache/http/HttpResponse;Lcom/apportable/BK2VerdeOutputStream;Lorg/apache/http/HttpEntity;)V

    #@4e
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@51
    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    #@54
    goto :goto_1b
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lcom/apportable/BK2VerdeResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/apportable/BK2VerdeOutputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
