.class Lcom/google/android/gms/tagmanager/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/da$a;
    }
.end annotation


# instance fields
.field private final ahK:Landroid/content/Context;

.field private final aib:Ljava/lang/String;

.field private final aic:Lorg/apache/http/client/HttpClient;

.field private aid:Lcom/google/android/gms/tagmanager/da$a;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/google/android/gms/tagmanager/da$a;)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/da;->ahK:Landroid/content/Context;

    #@9
    const-string v1, "GoogleTagManager"

    #@b
    const-string v2, "4.00"

    #@d
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/da;->c(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@19
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    #@1b
    move-object v0, p0

    #@1c
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/da;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/da;->aib:Ljava/lang/String;

    #@22
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/da;->aic:Lorg/apache/http/client/HttpClient;

    #@24
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/da;->aid:Lcom/google/android/gms/tagmanager/da$a;

    #@26
    return-void
.end method

.method private a(Ljava/net/URL;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .registers 7

    #@0
    :try_start_0
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    #@2
    const-string v1, "GET"

    #@4
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_f} :catch_17

    #@f
    :try_start_f
    const-string v1, "User-Agent"

    #@11
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/da;->aib:Ljava/lang/String;

    #@13
    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_16} :catch_42

    #@16
    :goto_16
    return-object v0

    #@17
    :catch_17
    move-exception v0

    #@18
    const/4 v1, 0x0

    #@19
    move-object v4, v0

    #@1a
    move-object v0, v1

    #@1b
    move-object v1, v4

    #@1c
    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string v3, "Exception sending hit: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@3a
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@41
    goto :goto_16

    #@42
    :catch_42
    move-exception v1

    #@43
    goto :goto_1c
.end method

.method private a(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 8

    #@0
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@8
    move-result-object v2

    #@9
    array-length v3, v2

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-ge v0, v3, :cond_1f

    #@d
    aget-object v4, v2, v0

    #@f
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    move-result-object v4

    #@17
    const-string v5, "\n"

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_b

    #@1f
    :cond_1f
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v0

    #@2b
    const-string v2, "\n"

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@33
    move-result-object v0

    #@34
    if-eqz v0, :cond_5e

    #@36
    :try_start_36
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@39
    move-result-object v0

    #@3a
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@3d
    move-result-object v0

    #@3e
    if-eqz v0, :cond_5e

    #@40
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@43
    move-result v2

    #@44
    if-lez v2, :cond_5e

    #@46
    new-array v2, v2, [B

    #@48
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    #@4b
    const-string v0, "POST:\n"

    #@4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    new-instance v0, Ljava/lang/String;

    #@52
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    #@55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    move-result-object v0

    #@59
    const-string v2, "\n"

    #@5b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_5e} :catch_66

    #@5e
    :cond_5e
    :goto_5e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@65
    return-void

    #@66
    :catch_66
    move-exception v0

    #@67
    const-string v0, "Error Writing hit to log..."

    #@69
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@6c
    goto :goto_5e
.end method

.method static c(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :cond_3
    :goto_3
    return-object v0

    #@4
    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_3

    #@a
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_3

    #@14
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    if-eqz v1, :cond_45

    #@2a
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_45

    #@34
    const-string v1, "-"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    goto :goto_3
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    #@0
    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    #@2
    const/4 v1, 0x6

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p1, v1, v2

    #@8
    const/4 v2, 0x1

    #@9
    aput-object p2, v1, v2

    #@b
    const/4 v2, 0x2

    #@c
    aput-object p3, v1, v2

    #@e
    const/4 v2, 0x3

    #@f
    aput-object p4, v1, v2

    #@11
    const/4 v2, 0x4

    #@12
    aput-object p5, v1, v2

    #@14
    const/4 v2, 0x5

    #@15
    aput-object p6, v1, v2

    #@17
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public cC()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/da;->ahK:Landroid/content/Context;

    #@2
    const-string v1, "connectivity"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/ConnectivityManager;

    #@a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_16

    #@10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1d

    #@16
    :cond_16
    const-string v0, "...no network connectivity"

    #@18
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@1b
    const/4 v0, 0x0

    #@1c
    :goto_1c
    return v0

    #@1d
    :cond_1d
    const/4 v0, 0x1

    #@1e
    goto :goto_1c
.end method

.method d(Lcom/google/android/gms/tagmanager/ap;)Ljava/net/URL;
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->lO()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    :try_start_4
    new-instance v0, Ljava/net/URL;

    #@6
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_9} :catch_a

    #@9
    :goto_9
    return-object v0

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v0, "Error trying to parse the GTM url."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@10
    const/4 v0, 0x0

    #@11
    goto :goto_9
.end method

.method public g(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/ap;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v0

    #@5
    const/16 v1, 0x28

    #@7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@a
    move-result v5

    #@b
    const/4 v1, 0x1

    #@c
    move v4, v2

    #@d
    :goto_d
    if-ge v4, v5, :cond_d9

    #@f
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/tagmanager/ap;

    #@15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/da;->d(Lcom/google/android/gms/tagmanager/ap;)Ljava/net/URL;

    #@18
    move-result-object v3

    #@19
    if-nez v3, :cond_29

    #@1b
    const-string v3, "No destination: discarding hit."

    #@1d
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@20
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/da;->aid:Lcom/google/android/gms/tagmanager/da$a;

    #@22
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/da$a;->b(Lcom/google/android/gms/tagmanager/ap;)V

    #@25
    :goto_25
    add-int/lit8 v0, v4, 0x1

    #@27
    move v4, v0

    #@28
    goto :goto_d

    #@29
    :cond_29
    invoke-direct {p0, v3}, Lcom/google/android/gms/tagmanager/da;->a(Ljava/net/URL;)Lorg/apache/http/HttpEntityEnclosingRequest;

    #@2c
    move-result-object v6

    #@2d
    if-nez v6, :cond_35

    #@2f
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/da;->aid:Lcom/google/android/gms/tagmanager/da$a;

    #@31
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/da$a;->b(Lcom/google/android/gms/tagmanager/ap;)V

    #@34
    goto :goto_25

    #@35
    :cond_35
    new-instance v7, Lorg/apache/http/HttpHost;

    #@37
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    #@3e
    move-result v9

    #@3f
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v7, v8, v9, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@46
    const-string v3, "Host"

    #@48
    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    invoke-interface {v6, v3, v8}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    invoke-direct {p0, v6}, Lcom/google/android/gms/tagmanager/da;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    #@52
    if-eqz v1, :cond_5a

    #@54
    :try_start_54
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/da;->ahK:Landroid/content/Context;

    #@56
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bn;->w(Landroid/content/Context;)V

    #@59
    move v1, v2

    #@5a
    :cond_5a
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/da;->aic:Lorg/apache/http/client/HttpClient;

    #@5c
    invoke-interface {v3, v7, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    #@5f
    move-result-object v3

    #@60
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@63
    move-result-object v6

    #@64
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@67
    move-result v6

    #@68
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@6b
    move-result-object v7

    #@6c
    if-eqz v7, :cond_71

    #@6e
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    #@71
    :cond_71
    const/16 v7, 0xc8

    #@73
    if-eq v6, v7, :cond_a5

    #@75
    new-instance v6, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string v7, "Bad response: "

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@83
    move-result-object v3

    #@84
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@87
    move-result v3

    #@88
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@93
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/da;->aid:Lcom/google/android/gms/tagmanager/da$a;

    #@95
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/da$a;->c(Lcom/google/android/gms/tagmanager/ap;)V
    :try_end_98
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_54 .. :try_end_98} :catch_99
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_98} :catch_ac

    #@98
    goto :goto_25

    #@99
    :catch_99
    move-exception v3

    #@9a
    const-string v3, "ClientProtocolException sending hit; discarding hit..."

    #@9c
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@9f
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/da;->aid:Lcom/google/android/gms/tagmanager/da$a;

    #@a1
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/da$a;->b(Lcom/google/android/gms/tagmanager/ap;)V

    #@a4
    goto :goto_25

    #@a5
    :cond_a5
    :try_start_a5
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/da;->aid:Lcom/google/android/gms/tagmanager/da$a;

    #@a7
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/da$a;->a(Lcom/google/android/gms/tagmanager/ap;)V
    :try_end_aa
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a5 .. :try_end_aa} :catch_99
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_aa} :catch_ac

    #@aa
    goto/16 :goto_25

    #@ac
    :catch_ac
    move-exception v3

    #@ad
    new-instance v6, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string v7, "Exception sending hit: "

    #@b4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v6

    #@b8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v6

    #@c8
    invoke-static {v6}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@cb
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@d2
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/da;->aid:Lcom/google/android/gms/tagmanager/da$a;

    #@d4
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/da$a;->c(Lcom/google/android/gms/tagmanager/ap;)V

    #@d7
    goto/16 :goto_25

    #@d9
    :cond_d9
    return-void
.end method
