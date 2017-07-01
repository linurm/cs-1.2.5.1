.class public Lcom/apportable/BK2VerdeOutputStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/BK2VerdeOutputStream$VerdeHostNameVerifier;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDelegate:J

.field private mExpected:I

.field private mWritten:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "BK2VerdeOutputStream"

    #@2
    sput-object v0, Lcom/apportable/BK2VerdeOutputStream;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@4
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@8
    iput v2, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@a
    iput v2, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@c
    iput-wide p1, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@e
    return-void
.end method

.method public constructor <init>(JI)V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@4
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@8
    iput v2, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@a
    iput v2, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@c
    iput-wide p1, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@e
    iput p3, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@10
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/BK2VerdeOutputStream;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static dumpRequestInfo(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 6

    #@0
    :try_start_0
    sget-object v0, Lcom/apportable/BK2VerdeOutputStream;->TAG:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "now making request to: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const-string v1, "POST"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_a7

    #@28
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@2a
    sget-object v0, Lcom/apportable/BK2VerdeOutputStream;->TAG:Ljava/lang/String;

    #@2c
    const-string v1, "=========================================================================="

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@34
    move-result-object v1

    #@35
    const/4 v0, 0x0

    #@36
    :goto_36
    array-length v2, v1

    #@37
    if-ge v0, v2, :cond_6a

    #@39
    sget-object v2, Lcom/apportable/BK2VerdeOutputStream;->TAG:Ljava/lang/String;

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string v4, "HEADER:: "

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    aget-object v4, v1, v0

    #@48
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    const-string v4, " : "

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    aget-object v4, v1, v0

    #@58
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_36

    #@6a
    :cond_6a
    sget-object v0, Lcom/apportable/BK2VerdeOutputStream;->TAG:Ljava/lang/String;

    #@6c
    const-string v1, "=========================================================================="

    #@6e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    sget-object v0, Lcom/apportable/BK2VerdeOutputStream;->TAG:Ljava/lang/String;

    #@73
    new-instance v1, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string v2, "-- request body: "

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    new-instance v2, Ljava/util/Scanner;

    #@80
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@83
    move-result-object v3

    #@84
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@87
    move-result-object v3

    #@88
    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    #@8b
    const-string v3, "\\A"

    #@8d
    invoke-virtual {v2, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v1

    #@9d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    sget-object v0, Lcom/apportable/BK2VerdeOutputStream;->TAG:Ljava/lang/String;

    #@a2
    const-string v1, "=========================================================================="

    #@a4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a7} :catch_a8

    #@a7
    :cond_a7
    :goto_a7
    return-void

    #@a8
    :catch_a8
    move-exception v0

    #@a9
    goto :goto_a7
.end method

.method public static execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;J)Lcom/apportable/BK2VerdeOutputStream;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Lcom/apportable/BK2VerdeOutputStream;",
            ">;J)",
            "Lcom/apportable/BK2VerdeOutputStream;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@3
    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    #@6
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    #@8
    const-string v3, "http"

    #@a
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@d
    move-result-object v4

    #@e
    const/16 v5, 0x50

    #@10
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@13
    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@16
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@19
    move-result-object v2

    #@1a
    new-instance v3, Lcom/apportable/BK2VerdeOutputStream$VerdeHostNameVerifier;

    #@1c
    const-wide/16 v4, 0x0

    #@1e
    invoke-direct {v3, v4, v5}, Lcom/apportable/BK2VerdeOutputStream$VerdeHostNameVerifier;-><init>(J)V

    #@21
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    #@24
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    #@26
    const-string v4, "https"

    #@28
    const/16 v5, 0x1bb

    #@2a
    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@2d
    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@30
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    #@32
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@35
    const-string v3, "http.conn-manager.max-total"

    #@37
    const/16 v4, 0x1e

    #@39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@40
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    #@42
    const/16 v4, 0x1e

    #@44
    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    #@47
    const-string v4, "http.conn-manager.max-per-route"

    #@49
    invoke-interface {v2, v4, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@4c
    const-string v3, "http.protocol.expect-continue"

    #@4e
    const/4 v4, 0x0

    #@4f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@52
    move-result-object v4

    #@53
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@56
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    #@58
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    #@5b
    new-instance v3, Lorg/apache/http/impl/conn/SingleClientConnManager;

    #@5d
    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    #@60
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    #@62
    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@65
    invoke-virtual {v0, p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    #@68
    move-result-object v0

    #@69
    check-cast v0, Lcom/apportable/BK2VerdeOutputStream;
    :try_end_6b
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1 .. :try_end_6b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6b} :catch_76

    #@6b
    :goto_6b
    return-object v0

    #@6c
    :catch_6c
    move-exception v0

    #@6d
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getLocalizedMessage()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-static {p2, p3, v0}, Lcom/apportable/BK2VerdeOutputStream;->nativeError(JLjava/lang/String;)V

    #@74
    move-object v0, v1

    #@75
    goto :goto_6b

    #@76
    :catch_76
    move-exception v0

    #@77
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    if-eqz v2, :cond_86

    #@7d
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    invoke-static {p2, p3, v0}, Lcom/apportable/BK2VerdeOutputStream;->nativeError(JLjava/lang/String;)V

    #@84
    :goto_84
    move-object v0, v1

    #@85
    goto :goto_6b

    #@86
    :cond_86
    const-string v0, "EXCEPTION HAD NO MESSAGE"

    #@88
    invoke-static {p2, p3, v0}, Lcom/apportable/BK2VerdeOutputStream;->nativeError(JLjava/lang/String;)V

    #@8b
    goto :goto_84
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeError(JLjava/lang/String;)V
.end method

.method private static native nativeFlush(J)V
.end method

.method private static native nativeWrite(J[BII)V
.end method


# virtual methods
.method public close()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@3
    invoke-static {v0, v1}, Lcom/apportable/BK2VerdeOutputStream;->nativeClose(J)V

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    :catchall_8
    move-exception v0

    #@9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    #@a
    throw v0
.end method

.method public flush()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@3
    invoke-static {v0, v1}, Lcom/apportable/BK2VerdeOutputStream;->nativeFlush(J)V

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    :catchall_8
    move-exception v0

    #@9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    #@a
    throw v0
.end method

.method public write(I)V
    .registers 7

    #@0
    int-to-byte v0, p1

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    iget v1, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    iput v1, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@8
    iget-wide v2, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [B

    #@d
    const/4 v4, 0x0

    #@e
    aput-byte v0, v1, v4

    #@10
    const/4 v0, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-static {v2, v3, v1, v0, v4}, Lcom/apportable/BK2VerdeOutputStream;->nativeWrite(J[BII)V

    #@15
    iget v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@17
    if-lez v0, :cond_24

    #@19
    iget v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@1b
    iget v1, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@1d
    if-le v0, v1, :cond_24

    #@1f
    iget-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@21
    invoke-static {v0, v1}, Lcom/apportable/BK2VerdeOutputStream;->nativeClose(J)V

    #@24
    :cond_24
    monitor-exit p0

    #@25
    return-void

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_26

    #@28
    throw v0
.end method

.method public write([B)V
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@3
    array-length v1, p1

    #@4
    add-int/2addr v0, v1

    #@5
    iput v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@7
    iget-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@9
    const/4 v2, 0x0

    #@a
    array-length v3, p1

    #@b
    invoke-static {v0, v1, p1, v2, v3}, Lcom/apportable/BK2VerdeOutputStream;->nativeWrite(J[BII)V

    #@e
    iget v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@10
    if-lez v0, :cond_18

    #@12
    iget v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@14
    iget v1, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@16
    if-gt v0, v1, :cond_1b

    #@18
    :cond_18
    array-length v0, p1

    #@19
    if-nez v0, :cond_20

    #@1b
    :cond_1b
    iget-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@1d
    invoke-static {v0, v1}, Lcom/apportable/BK2VerdeOutputStream;->nativeClose(J)V

    #@20
    :cond_20
    monitor-exit p0

    #@21
    return-void

    #@22
    :catchall_22
    move-exception v0

    #@23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    #@24
    throw v0
.end method

.method public write([BII)V
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@3
    add-int/2addr v0, p3

    #@4
    iput v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@6
    iget-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@8
    invoke-static {v0, v1, p1, p2, p3}, Lcom/apportable/BK2VerdeOutputStream;->nativeWrite(J[BII)V

    #@b
    iget v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@d
    if-lez v0, :cond_15

    #@f
    iget v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mExpected:I

    #@11
    iget v1, p0, Lcom/apportable/BK2VerdeOutputStream;->mWritten:I

    #@13
    if-gt v0, v1, :cond_17

    #@15
    :cond_15
    if-nez p3, :cond_1c

    #@17
    :cond_17
    iget-wide v0, p0, Lcom/apportable/BK2VerdeOutputStream;->mDelegate:J

    #@19
    invoke-static {v0, v1}, Lcom/apportable/BK2VerdeOutputStream;->nativeClose(J)V

    #@1c
    :cond_1c
    monitor-exit p0

    #@1d
    return-void

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    #@20
    throw v0
.end method
