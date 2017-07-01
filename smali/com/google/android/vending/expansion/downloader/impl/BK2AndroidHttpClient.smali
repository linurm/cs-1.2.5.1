.class public final Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$CurlLogger;,
        Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J = 0x0L

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "BK2AndroidHttpClient"

.field static sSslSessionCacheClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private volatile curlConfiguration:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/client/HttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    :try_start_0
    const-string v0, "android.net.SSLSessionCache"

    #@2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->sSslSessionCacheClass:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_14

    #@8
    :goto_8
    const-wide/16 v0, 0x100

    #@a
    sput-wide v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    #@c
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$1;

    #@e
    invoke-direct {v0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$1;-><init>()V

    #@11
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    #@13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    goto :goto_8
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "BK2AndroidHttpClient created and never closed"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@c
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$2;

    #@e
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$2;-><init>(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@11
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@13
    return-void
.end method

.method static synthetic access$000()Lorg/apache/http/HttpRequestInterceptor;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;)Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->curlConfiguration:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    array-length v0, p0

    #@1
    int-to-long v0, v0

    #@2
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    #@5
    move-result-wide v2

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gez v0, :cond_10

    #@a
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    #@c
    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    #@f
    :goto_f
    return-object v0

    #@10
    :cond_10
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@12
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@15
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    #@17
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1a
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    #@1d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@20
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    #@22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    #@29
    const-string v1, "gzip"

    #@2b
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    #@2e
    goto :goto_f
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .registers 3

    #@0
    sget-wide v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    #@2
    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    :cond_6
    :goto_6
    return-object v0

    #@7
    :cond_7
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_6

    #@d
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_6

    #@13
    const-string v2, "gzip"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_6

    #@1b
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    #@1d
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    #@20
    move-object v0, v1

    #@21
    goto :goto_6
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .registers 3

    #@0
    const-string v0, "Accept-Encoding"

    #@2
    const-string v1, "gzip"

    #@4
    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;
    .registers 11

    #@0
    const v0, 0xea60

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    #@7
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@a
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    #@d
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@10
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@13
    const/16 v0, 0x2000

    #@15
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    #@18
    invoke-static {v2, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    #@1b
    if-eqz p1, :cond_be

    #@1d
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->sSslSessionCacheClass:Ljava/lang/Class;

    #@1f
    if-eqz v0, :cond_be

    #@21
    :try_start_21
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->sSslSessionCacheClass:Ljava/lang/Class;

    #@23
    const/4 v3, 0x1

    #@24
    new-array v3, v3, [Ljava/lang/Class;

    #@26
    const/4 v4, 0x0

    #@27
    const-class v5, Landroid/content/Context;

    #@29
    aput-object v5, v3, v4

    #@2b
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@2e
    move-result-object v0

    #@2f
    const/4 v3, 0x1

    #@30
    new-array v3, v3, [Ljava/lang/Object;

    #@32
    const/4 v4, 0x0

    #@33
    aput-object p1, v3, v4

    #@35
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_38} :catch_9c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_38} :catch_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_38} :catch_a8
    .catch Ljava/lang/InstantiationException; {:try_start_21 .. :try_end_38} :catch_ae
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_38} :catch_b4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_38} :catch_ba

    #@38
    move-result-object v0

    #@39
    :goto_39
    invoke-static {v2, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    #@3c
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@3e
    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    #@41
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    #@43
    const-string v5, "http"

    #@45
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@48
    move-result-object v6

    #@49
    const/16 v7, 0x50

    #@4b
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@4e
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@51
    if-eqz v0, :cond_dd

    #@53
    :try_start_53
    const-class v4, Landroid/net/SSLCertificateSocketFactory;

    #@55
    const-string v5, "getHttpSocketFactory"

    #@57
    const/4 v6, 0x2

    #@58
    new-array v6, v6, [Ljava/lang/Class;

    #@5a
    const/4 v7, 0x0

    #@5b
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@5d
    aput-object v8, v6, v7

    #@5f
    const/4 v7, 0x1

    #@60
    sget-object v8, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->sSslSessionCacheClass:Ljava/lang/Class;

    #@62
    aput-object v8, v6, v7

    #@64
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@67
    move-result-object v4

    #@68
    const/4 v5, 0x0

    #@69
    const/4 v6, 0x2

    #@6a
    new-array v6, v6, [Ljava/lang/Object;

    #@6c
    const/4 v7, 0x0

    #@6d
    const v8, 0xea60

    #@70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v8

    #@74
    aput-object v8, v6, v7

    #@76
    const/4 v7, 0x1

    #@77
    aput-object v0, v6, v7

    #@79
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Lorg/apache/http/conn/scheme/SocketFactory;
    :try_end_7f
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_7f} :catch_c1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_53 .. :try_end_7f} :catch_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_7f} :catch_cd
    .catch Ljava/lang/IllegalAccessException; {:try_start_53 .. :try_end_7f} :catch_d3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_53 .. :try_end_7f} :catch_d9

    #@7f
    :goto_7f
    if-nez v0, :cond_85

    #@81
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@84
    move-result-object v0

    #@85
    :cond_85
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    #@87
    const-string v4, "https"

    #@89
    const/16 v5, 0x1bb

    #@8b
    invoke-direct {v1, v4, v0, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@8e
    invoke-virtual {v3, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@91
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;

    #@93
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    #@95
    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    #@98
    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@9b
    return-object v0

    #@9c
    :catch_9c
    move-exception v0

    #@9d
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    #@a0
    move-object v0, v1

    #@a1
    goto :goto_39

    #@a2
    :catch_a2
    move-exception v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@a6
    move-object v0, v1

    #@a7
    goto :goto_39

    #@a8
    :catch_a8
    move-exception v0

    #@a9
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    #@ac
    move-object v0, v1

    #@ad
    goto :goto_39

    #@ae
    :catch_ae
    move-exception v0

    #@af
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    #@b2
    move-object v0, v1

    #@b3
    goto :goto_39

    #@b4
    :catch_b4
    move-exception v0

    #@b5
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@b8
    move-object v0, v1

    #@b9
    goto :goto_39

    #@ba
    :catch_ba
    move-exception v0

    #@bb
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@be
    :cond_be
    move-object v0, v1

    #@bf
    goto/16 :goto_39

    #@c1
    :catch_c1
    move-exception v0

    #@c2
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    #@c5
    move-object v0, v1

    #@c6
    goto :goto_7f

    #@c7
    :catch_c7
    move-exception v0

    #@c8
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@cb
    move-object v0, v1

    #@cc
    goto :goto_7f

    #@cd
    :catch_cd
    move-exception v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    #@d1
    move-object v0, v1

    #@d2
    goto :goto_7f

    #@d3
    :catch_d3
    move-exception v0

    #@d4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@d7
    move-object v0, v1

    #@d8
    goto :goto_7f

    #@d9
    :catch_d9
    move-exception v0

    #@da
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@dd
    :cond_dd
    move-object v0, v1

    #@de
    goto :goto_7f
.end method

.method public static parseDate(Ljava/lang/String;)J
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/HttpDateTime;->parse(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v0, "curl "

    #@7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@d
    move-result-object v1

    #@e
    array-length v3, v1

    #@f
    const/4 v0, 0x0

    #@10
    :goto_10
    if-ge v0, v3, :cond_47

    #@12
    aget-object v4, v1, v0

    #@14
    if-nez p1, :cond_31

    #@16
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    const-string v6, "Authorization"

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-nez v5, :cond_2e

    #@22
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    const-string v6, "Cookie"

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_31

    #@2e
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_10

    #@31
    :cond_31
    const-string v5, "--header \""

    #@33
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    const-string v4, "\" "

    #@43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    goto :goto_2e

    #@47
    :cond_47
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@4a
    move-result-object v1

    #@4b
    instance-of v0, p0, Lorg/apache/http/impl/client/RequestWrapper;

    #@4d
    if-eqz v0, :cond_af

    #@4f
    move-object v0, p0

    #@50
    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    #@52
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    #@55
    move-result-object v0

    #@56
    instance-of v3, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    #@58
    if-eqz v3, :cond_af

    #@5a
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    #@5c
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@5f
    move-result-object v0

    #@60
    :goto_60
    const-string v1, "\""

    #@62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    const-string v0, "\""

    #@6a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@6f
    if-eqz v0, :cond_a4

    #@71
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@73
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@76
    move-result-object v0

    #@77
    if-eqz v0, :cond_a4

    #@79
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    #@7c
    move-result v1

    #@7d
    if-eqz v1, :cond_a4

    #@7f
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@82
    move-result-wide v4

    #@83
    const-wide/16 v6, 0x400

    #@85
    cmp-long v1, v4, v6

    #@87
    if-gez v1, :cond_a9

    #@89
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@8b
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8e
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    #@91
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    const-string v1, " --data-ascii \""

    #@97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    const-string v1, "\""

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    :cond_a4
    :goto_a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    return-object v0

    #@a9
    :cond_a9
    const-string v0, " [TOO MUCH DATA TO INCLUDE]"

    #@ab
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    goto :goto_a4

    #@af
    :cond_af
    move-object v0, v1

    #@b0
    goto :goto_60
.end method


# virtual methods
.method public close()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@2
    if-eqz v0, :cond_e

    #@4
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    #@b
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@e
    :cond_e
    return-void
.end method

.method public disableCurlLogging()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->curlConfiguration:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;

    #@3
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .registers 5

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "name"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    const/4 v0, 0x2

    #@b
    if-lt p2, v0, :cond_10

    #@d
    const/4 v0, 0x7

    #@e
    if-le p2, v0, :cond_18

    #@10
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "Level is out of range [2..7]"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$1;)V

    #@1e
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->curlConfiguration:Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;

    #@20
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@3
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@5
    if-eqz v0, :cond_13

    #@7
    const-string v0, "BK2AndroidHttpClient"

    #@9
    const-string v1, "Leak found"

    #@b
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@d
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@13
    :cond_13
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
