.class Lcom/google/android/gms/analytics/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/n;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private ul:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final xa:Ljava/lang/String;

.field private final xb:Lorg/apache/http/client/HttpClient;

.field private xc:Ljava/net/URL;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-static {p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/analytics/ah;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/content/Context;)V

    #@7
    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/content/Context;)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/analytics/ah;->mContext:Landroid/content/Context;

    #@9
    const-string v1, "GoogleAnalytics"

    #@b
    const-string v2, "3.0"

    #@d
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@19
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    #@1b
    move-object v0, p0

    #@1c
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/analytics/ah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/google/android/gms/analytics/ah;->xa:Ljava/lang/String;

    #@22
    iput-object p1, p0, Lcom/google/android/gms/analytics/ah;->xb:Lorg/apache/http/client/HttpClient;

    #@24
    iput-object p2, p0, Lcom/google/android/gms/analytics/ah;->ul:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@26
    return-void
.end method

.method private a(Lcom/google/android/gms/analytics/ab;Ljava/net/URL;Z)V
    .registers 8

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/ab;->dq()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_10

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ah;->dx()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    :cond_10
    :goto_10
    return-void

    #@11
    :cond_11
    if-nez p2, :cond_19

    #@13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->xc:Ljava/net/URL;

    #@15
    if-eqz v0, :cond_93

    #@17
    iget-object p2, p0, Lcom/google/android/gms/analytics/ah;->xc:Ljava/net/URL;
    :try_end_19
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_19} :catch_9c

    #@19
    :cond_19
    :goto_19
    new-instance v0, Lorg/apache/http/HttpHost;

    #@1b
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    #@22
    move-result v2

    #@23
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@2a
    :try_start_2a
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/ab;->dq()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/analytics/ah;->e(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    #@35
    move-result-object v1

    #@36
    if-eqz v1, :cond_10

    #@38
    const-string v2, "Host"

    #@3a
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-interface {v1, v2, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->dp()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_4a

    #@47
    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/ah;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    #@4a
    :cond_4a
    if-eqz p3, :cond_51

    #@4c
    iget-object v2, p0, Lcom/google/android/gms/analytics/ah;->mContext:Landroid/content/Context;

    #@4e
    invoke-static {v2}, Lcom/google/android/gms/analytics/q;->w(Landroid/content/Context;)V

    #@51
    :cond_51
    iget-object v2, p0, Lcom/google/android/gms/analytics/ah;->xb:Lorg/apache/http/client/HttpClient;

    #@53
    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    #@56
    move-result-object v0

    #@57
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@5a
    move-result-object v1

    #@5b
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@5e
    move-result v1

    #@5f
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@62
    move-result-object v2

    #@63
    if-eqz v2, :cond_68

    #@65
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    #@68
    :cond_68
    const/16 v2, 0xc8

    #@6a
    if-eq v1, v2, :cond_10

    #@6c
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string v2, "Bad response: "

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@7a
    move-result-object v0

    #@7b
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@7e
    move-result v0

    #@7f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_8a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2a .. :try_end_8a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_8a} :catch_9f

    #@8a
    goto :goto_10

    #@8b
    :catch_8b
    move-exception v0

    #@8c
    const-string v0, "ClientProtocolException sending monitoring hit."

    #@8e
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@91
    goto/16 :goto_10

    #@93
    :cond_93
    :try_start_93
    new-instance p2, Ljava/net/URL;

    #@95
    const-string v0, "https://ssl.google-analytics.com/collect"

    #@97
    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/net/MalformedURLException; {:try_start_93 .. :try_end_9a} :catch_9c

    #@9a
    goto/16 :goto_19

    #@9c
    :catch_9c
    move-exception v0

    #@9d
    goto/16 :goto_10

    #@9f
    :catch_9f
    move-exception v0

    #@a0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string v2, "Exception sending monitoring hit: "

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v1

    #@bb
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@be
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@c1
    move-result-object v0

    #@c2
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@c5
    goto/16 :goto_10
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
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@65
    return-void

    #@66
    :catch_66
    move-exception v0

    #@67
    const-string v0, "Error Writing hit to log..."

    #@69
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@6c
    goto :goto_5e
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_e

    #@7
    const-string v0, "Empty hit, discarding."

    #@9
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@c
    move-object v0, v1

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v2, "?"

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@28
    move-result v0

    #@29
    const/16 v3, 0x7f4

    #@2b
    if-ge v0, v3, :cond_3c

    #@2d
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    #@2f
    const-string v1, "GET"

    #@31
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    :goto_34
    const-string v1, "User-Agent"

    #@36
    iget-object v2, p0, Lcom/google/android/gms/analytics/ah;->xa:Ljava/lang/String;

    #@38
    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    goto :goto_d

    #@3c
    :cond_3c
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    #@3e
    const-string v2, "POST"

    #@40
    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    :try_start_43
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    #@45
    invoke-direct {v2, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    #@48
    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_4b} :catch_4c

    #@4b
    goto :goto_34

    #@4c
    :catch_4c
    move-exception v0

    #@4d
    const-string v0, "Encoding error, discarding hit"

    #@4f
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@52
    move-object v0, v1

    #@53
    goto :goto_d
.end method


# virtual methods
.method public M(Ljava/lang/String;)V
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    #@2
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Lcom/google/android/gms/analytics/ah;->xc:Ljava/net/URL;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/analytics/ah;->xc:Ljava/net/URL;

    #@c
    goto :goto_7
.end method

.method public a(Ljava/util/List;Lcom/google/android/gms/analytics/ab;Z)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/x;",
            ">;",
            "Lcom/google/android/gms/analytics/ab;",
            "Z)I"
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@4
    move-result v2

    #@5
    const/16 v3, 0x28

    #@7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@a
    move-result v9

    #@b
    const-string v2, "_hr"

    #@d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@10
    move-result v3

    #@11
    move-object/from16 v0, p2

    #@13
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/ab;->c(Ljava/lang/String;I)V

    #@16
    const/4 v6, 0x0

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v5, 0x1

    #@19
    const/4 v2, 0x0

    #@1a
    move v7, v4

    #@1b
    move v8, v2

    #@1c
    :goto_1c
    if-ge v8, v9, :cond_18c

    #@1e
    move-object/from16 v0, p1

    #@20
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Lcom/google/android/gms/analytics/x;

    #@26
    move-object/from16 v0, p0

    #@28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/ah;->a(Lcom/google/android/gms/analytics/x;)Ljava/net/URL;

    #@2b
    move-result-object v4

    #@2c
    if-nez v4, :cond_65

    #@2e
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->dp()Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_5f

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string v10, "No destination: discarding hit: "

    #@3b
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/x;->dk()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@4e
    :goto_4e
    add-int/lit8 v4, v6, 0x1

    #@50
    add-int/lit8 v2, v7, 0x1

    #@52
    move-object v14, v3

    #@53
    move v3, v5

    #@54
    move v5, v4

    #@55
    move v4, v2

    #@56
    move-object v2, v14

    #@57
    :goto_57
    add-int/lit8 v6, v8, 0x1

    #@59
    move v7, v4

    #@5a
    move v8, v6

    #@5b
    move v6, v5

    #@5c
    move v5, v3

    #@5d
    move-object v3, v2

    #@5e
    goto :goto_1c

    #@5f
    :cond_5f
    const-string v2, "No destination: discarding hit."

    #@61
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@64
    goto :goto_4e

    #@65
    :cond_65
    new-instance v10, Lorg/apache/http/HttpHost;

    #@67
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    #@6e
    move-result v11

    #@6f
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@72
    move-result-object v12

    #@73
    invoke-direct {v10, v3, v11, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@76
    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/x;->dk()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_9a

    #@84
    const-string v2, ""

    #@86
    move-object v3, v2

    #@87
    :goto_87
    move-object/from16 v0, p0

    #@89
    invoke-direct {v0, v3, v11}, Lcom/google/android/gms/analytics/ah;->e(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    #@8c
    move-result-object v2

    #@8d
    if-nez v2, :cond_a4

    #@8f
    add-int/lit8 v3, v6, 0x1

    #@91
    add-int/lit8 v2, v7, 0x1

    #@93
    move-object v14, v4

    #@94
    move v4, v2

    #@95
    move-object v2, v14

    #@96
    move v15, v5

    #@97
    move v5, v3

    #@98
    move v3, v15

    #@99
    goto :goto_57

    #@9a
    :cond_9a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9d
    move-result-wide v12

    #@9e
    invoke-static {v2, v12, v13}, Lcom/google/android/gms/analytics/y;->a(Lcom/google/android/gms/analytics/x;J)Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    move-object v3, v2

    #@a3
    goto :goto_87

    #@a4
    :cond_a4
    const-string v11, "Host"

    #@a6
    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    #@a9
    move-result-object v12

    #@aa
    invoke-interface {v2, v11, v12}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@ad
    invoke-static {}, Lcom/google/android/gms/analytics/aa;->dp()Z

    #@b0
    move-result v11

    #@b1
    if-eqz v11, :cond_b8

    #@b3
    move-object/from16 v0, p0

    #@b5
    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/ah;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    #@b8
    :cond_b8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@bb
    move-result v11

    #@bc
    const/16 v12, 0x2000

    #@be
    if-le v11, v12, :cond_de

    #@c0
    const-string v2, "Hit too long (> 8192 bytes)--not sent"

    #@c2
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@c5
    add-int/lit8 v2, v6, 0x1

    #@c7
    move v14, v5

    #@c8
    move v5, v2

    #@c9
    move v2, v14

    #@ca
    :goto_ca
    const-string v6, "_td"

    #@cc
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@cf
    move-result-object v3

    #@d0
    array-length v3, v3

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v6, v3}, Lcom/google/android/gms/analytics/ab;->c(Ljava/lang/String;I)V

    #@d6
    add-int/lit8 v3, v7, 0x1

    #@d8
    move-object v14, v4

    #@d9
    move v4, v3

    #@da
    move v3, v2

    #@db
    move-object v2, v14

    #@dc
    goto/16 :goto_57

    #@de
    :cond_de
    move-object/from16 v0, p0

    #@e0
    iget-object v11, v0, Lcom/google/android/gms/analytics/ah;->ul:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@e2
    invoke-virtual {v11}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    #@e5
    move-result v11

    #@e6
    if-eqz v11, :cond_f0

    #@e8
    const-string v2, "Dry run enabled. Hit not actually sent."

    #@ea
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V

    #@ed
    move v2, v5

    #@ee
    move v5, v6

    #@ef
    goto :goto_ca

    #@f0
    :cond_f0
    if-eqz v5, :cond_fa

    #@f2
    :try_start_f2
    move-object/from16 v0, p0

    #@f4
    iget-object v11, v0, Lcom/google/android/gms/analytics/ah;->mContext:Landroid/content/Context;

    #@f6
    invoke-static {v11}, Lcom/google/android/gms/analytics/q;->w(Landroid/content/Context;)V

    #@f9
    const/4 v5, 0x0

    #@fa
    :cond_fa
    move-object/from16 v0, p0

    #@fc
    iget-object v11, v0, Lcom/google/android/gms/analytics/ah;->xb:Lorg/apache/http/client/HttpClient;

    #@fe
    invoke-interface {v11, v10, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    #@101
    move-result-object v2

    #@102
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@105
    move-result-object v10

    #@106
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@109
    move-result v10

    #@10a
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@10d
    move-result-object v11

    #@10e
    if-eqz v11, :cond_113

    #@110
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    #@113
    :cond_113
    const/16 v11, 0xc8

    #@115
    if-eq v10, v11, :cond_1a4

    #@117
    new-instance v10, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string v11, "Bad response: "

    #@11e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v10

    #@122
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@125
    move-result-object v2

    #@126
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@129
    move-result v2

    #@12a
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v2

    #@12e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v2

    #@132
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_135
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f2 .. :try_end_135} :catch_138
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_135} :catch_148

    #@135
    move v2, v5

    #@136
    move v5, v6

    #@137
    goto :goto_ca

    #@138
    :catch_138
    move-exception v2

    #@139
    const-string v2, "ClientProtocolException sending hit; discarding hit..."

    #@13b
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@13e
    const-string v2, "_hd"

    #@140
    move-object/from16 v0, p2

    #@142
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/analytics/ab;->c(Ljava/lang/String;I)V

    #@145
    move v2, v5

    #@146
    move v5, v6

    #@147
    goto :goto_ca

    #@148
    :catch_148
    move-exception v2

    #@149
    new-instance v3, Ljava/lang/StringBuilder;

    #@14b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14e
    const-string v8, "Exception sending hit: "

    #@150
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v3

    #@154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@157
    move-result-object v8

    #@158
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@15b
    move-result-object v8

    #@15c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v3

    #@160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v3

    #@164
    invoke-static {v3}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@167
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@16a
    move-result-object v2

    #@16b
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@16e
    const-string v2, "_de"

    #@170
    const/4 v3, 0x1

    #@171
    move-object/from16 v0, p2

    #@173
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/ab;->c(Ljava/lang/String;I)V

    #@176
    const-string v2, "_hd"

    #@178
    move-object/from16 v0, p2

    #@17a
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/analytics/ab;->c(Ljava/lang/String;I)V

    #@17d
    const-string v2, "_hs"

    #@17f
    move-object/from16 v0, p2

    #@181
    invoke-virtual {v0, v2, v7}, Lcom/google/android/gms/analytics/ab;->c(Ljava/lang/String;I)V

    #@184
    move-object/from16 v0, p0

    #@186
    move-object/from16 v1, p2

    #@188
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/analytics/ah;->a(Lcom/google/android/gms/analytics/ab;Ljava/net/URL;Z)V

    #@18b
    :cond_18b
    :goto_18b
    return v7

    #@18c
    :cond_18c
    const-string v2, "_hd"

    #@18e
    move-object/from16 v0, p2

    #@190
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/analytics/ab;->c(Ljava/lang/String;I)V

    #@193
    const-string v2, "_hs"

    #@195
    move-object/from16 v0, p2

    #@197
    invoke-virtual {v0, v2, v7}, Lcom/google/android/gms/analytics/ab;->c(Ljava/lang/String;I)V

    #@19a
    if-eqz p3, :cond_18b

    #@19c
    move-object/from16 v0, p0

    #@19e
    move-object/from16 v1, p2

    #@1a0
    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/gms/analytics/ah;->a(Lcom/google/android/gms/analytics/ab;Ljava/net/URL;Z)V

    #@1a3
    goto :goto_18b

    #@1a4
    :cond_1a4
    move v2, v5

    #@1a5
    move v5, v6

    #@1a6
    goto/16 :goto_ca
.end method

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

.method a(Lcom/google/android/gms/analytics/x;)Ljava/net/URL;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->xc:Ljava/net/URL;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->xc:Ljava/net/URL;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/x;->dn()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    :try_start_b
    new-instance v0, Ljava/net/URL;

    #@d
    const-string v2, "http:"

    #@f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_12} :catch_1b

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_23

    #@15
    const-string v1, "http://www.google-analytics.com/collect"

    #@17
    :goto_17
    :try_start_17
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_1a} :catch_1b

    #@1a
    goto :goto_6

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    const-string v0, "Error trying to parse the hardcoded host url. This really shouldn\'t happen."

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@21
    const/4 v0, 0x0

    #@22
    goto :goto_6

    #@23
    :cond_23
    const-string v1, "https://ssl.google-analytics.com/collect"

    #@25
    goto :goto_17
.end method

.method public cC()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->mContext:Landroid/content/Context;

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
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

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

.method dx()Z
    .registers 5

    #@0
    invoke-static {}, Ljava/lang/Math;->random()D

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    #@6
    mul-double/2addr v0, v2

    #@7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@9
    cmpg-double v0, v0, v2

    #@b
    if-gtz v0, :cond_f

    #@d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_e
.end method
