.class Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$2;->this$0:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;

    #@2
    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@5
    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 4

    #@0
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    #@5
    const-string v1, "http.authscheme-registry"

    #@7
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@e
    const-string v1, "http.cookiespec-registry"

    #@10
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@17
    const-string v1, "http.auth.credentials-provider"

    #@19
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@20
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 5

    #@0
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    #@3
    move-result-object v0

    #@4
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->access$000()Lorg/apache/http/HttpRequestInterceptor;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@b
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$CurlLogger;

    #@d
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$2;->this$0:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$CurlLogger;-><init>(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$1;)V

    #@13
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@16
    return-object v0
.end method
