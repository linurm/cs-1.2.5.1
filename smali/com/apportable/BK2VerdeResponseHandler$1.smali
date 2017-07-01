.class Lcom/apportable/BK2VerdeResponseHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/BK2VerdeResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/apportable/BK2VerdeOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/BK2VerdeResponseHandler;

.field final synthetic val$entity:Lorg/apache/http/HttpEntity;

.field final synthetic val$mStream:Lcom/apportable/BK2VerdeOutputStream;

.field final synthetic val$response:Lorg/apache/http/HttpResponse;


# direct methods
.method constructor <init>(Lcom/apportable/BK2VerdeResponseHandler;Lorg/apache/http/HttpResponse;Lcom/apportable/BK2VerdeOutputStream;Lorg/apache/http/HttpEntity;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->this$0:Lcom/apportable/BK2VerdeResponseHandler;

    #@2
    iput-object p2, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$response:Lorg/apache/http/HttpResponse;

    #@4
    iput-object p3, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$mStream:Lcom/apportable/BK2VerdeOutputStream;

    #@6
    iput-object p4, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$entity:Lorg/apache/http/HttpEntity;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$response:Lorg/apache/http/HttpResponse;

    #@2
    const-string v1, "Content-Encoding"

    #@4
    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_3e

    #@a
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string v1, "gzip"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_3e

    #@16
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    #@18
    iget-object v1, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$response:Lorg/apache/http/HttpResponse;

    #@1a
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    #@25
    const/16 v1, 0x400

    #@27
    new-array v1, v1, [B

    #@29
    :goto_29
    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    #@2c
    move-result v2

    #@2d
    const/4 v3, -0x1

    #@2e
    if-eq v2, v3, :cond_38

    #@30
    iget-object v3, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$mStream:Lcom/apportable/BK2VerdeOutputStream;

    #@32
    const/4 v4, 0x0

    #@33
    invoke-virtual {v3, v1, v4, v2}, Lcom/apportable/BK2VerdeOutputStream;->write([BII)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_37

    #@36
    goto :goto_29

    #@37
    :catch_37
    move-exception v0

    #@38
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$mStream:Lcom/apportable/BK2VerdeOutputStream;

    #@3a
    invoke-virtual {v0}, Lcom/apportable/BK2VerdeOutputStream;->close()V

    #@3d
    return-void

    #@3e
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$entity:Lorg/apache/http/HttpEntity;

    #@40
    iget-object v1, p0, Lcom/apportable/BK2VerdeResponseHandler$1;->val$mStream:Lcom/apportable/BK2VerdeOutputStream;

    #@42
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_37

    #@45
    goto :goto_38
.end method
