.class Lcom/google/android/gms/tagmanager/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/bl;


# instance fields
.field private afO:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0xc8

    #@a
    if-ne v0, v1, :cond_1a

    #@c
    const-string v0, "Success response"

    #@e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@11
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v2, "Bad response: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    const/16 v2, 0x194

    #@2f
    if-ne v0, v2, :cond_37

    #@31
    new-instance v0, Ljava/io/FileNotFoundException;

    #@33
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    new-instance v0, Ljava/io/IOException;

    #@39
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
.end method

.method private a(Lorg/apache/http/client/HttpClient;)V
    .registers 3

    #@0
    if-eqz p1, :cond_f

    #@2
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_f

    #@8
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    #@f
    :cond_f
    return-void
.end method


# virtual methods
.method public bV(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/av;->lP()Lorg/apache/http/client/HttpClient;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/av;->afO:Lorg/apache/http/client/HttpClient;

    #@6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/av;->afO:Lorg/apache/http/client/HttpClient;

    #@8
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    #@a
    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    #@d
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/av;->afO:Lorg/apache/http/client/HttpClient;

    #@13
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/tagmanager/av;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public close()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/av;->afO:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/av;->a(Lorg/apache/http/client/HttpClient;)V

    #@5
    return-void
.end method

.method lP()Lorg/apache/http/client/HttpClient;
    .registers 3

    #@0
    const/16 v1, 0x4e20

    #@2
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    #@4
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@7
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@a
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@d
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    #@f
    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    #@12
    return-object v1
.end method
