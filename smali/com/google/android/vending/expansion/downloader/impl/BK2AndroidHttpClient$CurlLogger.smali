.class Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$CurlLogger;->this$0:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$CurlLogger;-><init>(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;)V

    #@3
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$CurlLogger;->this$0:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;

    #@2
    # getter for: Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->curlConfiguration:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->access$300(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;)Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1c

    #@8
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->isLoggable()Z
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1c

    #@e
    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #@10
    if-eqz v1, :cond_1c

    #@12
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #@14
    const/4 v1, 0x0

    #@15
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    #@1c
    :cond_1c
    return-void
.end method
