.class public Lcom/google/android/gms/internal/fa;
.super Lcom/google/android/gms/internal/ey;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ex;Z)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ey;-><init>(Lcom/google/android/gms/internal/ex;Z)V

    #@3
    return-void
.end method


# virtual methods
.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/net/URL;

    #@2
    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/net/HttpURLConnection;

    #@b
    const/4 v1, 0x1

    #@c
    :try_start_c
    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/internal/eo;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    #@f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    #@12
    new-instance v1, Ljava/io/InputStreamReader;

    #@14
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@1b
    invoke-static {v1}, Lcom/google/android/gms/internal/eo;->a(Ljava/lang/Readable;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@21
    const-string v3, "UTF-8"

    #@23
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@26
    move-result-object v1

    #@27
    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@2a
    new-instance v1, Landroid/webkit/WebResourceResponse;

    #@2c
    const-string v3, "application/javascript"

    #@2e
    const-string v4, "UTF-8"

    #@30
    invoke-direct {v1, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_37

    #@33
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@36
    return-object v1

    #@37
    :catchall_37
    move-exception v1

    #@38
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@3b
    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 7

    #@0
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    const-string v2, "mraid.js"

    #@7
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_16

    #@11
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ey;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    #@14
    move-result-object v1

    #@15
    :goto_15
    return-object v1

    #@16
    :cond_16
    instance-of v1, p1, Lcom/google/android/gms/internal/ex;

    #@18
    if-nez v1, :cond_24

    #@1a
    const-string v1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    #@1c
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@1f
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ey;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    #@22
    move-result-object v1

    #@23
    goto :goto_15

    #@24
    :cond_24
    move-object v0, p1

    #@25
    check-cast v0, Lcom/google/android/gms/internal/ex;

    #@27
    move-object v1, v0

    #@28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ey;->aS()V

    #@2f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->V()Lcom/google/android/gms/internal/al;

    #@32
    move-result-object v2

    #@33
    iget-boolean v2, v2, Lcom/google/android/gms/internal/al;->mf:Z

    #@35
    if-eqz v2, :cond_4f

    #@37
    const-string v2, "shouldInterceptRequest(http://media.admob.com/mraid/v1/mraid_app_interstitial.js)"

    #@39
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@3c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v1

    #@40
    iget-object v2, p0, Lcom/google/android/gms/internal/fa;->lN:Lcom/google/android/gms/internal/ex;

    #@42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@45
    move-result-object v2

    #@46
    iget-object v2, v2, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@48
    const-string v3, "http://media.admob.com/mraid/v1/mraid_app_interstitial.js"

    #@4a
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/fa;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    #@4d
    move-result-object v1

    #@4e
    goto :goto_15

    #@4f
    :cond_4f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->ce()Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_6d

    #@55
    const-string v2, "shouldInterceptRequest(http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js)"

    #@57
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@5a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@5d
    move-result-object v1

    #@5e
    iget-object v2, p0, Lcom/google/android/gms/internal/fa;->lN:Lcom/google/android/gms/internal/ex;

    #@60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@63
    move-result-object v2

    #@64
    iget-object v2, v2, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@66
    const-string v3, "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js"

    #@68
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/fa;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    #@6b
    move-result-object v1

    #@6c
    goto :goto_15

    #@6d
    :cond_6d
    const-string v2, "shouldInterceptRequest(http://media.admob.com/mraid/v1/mraid_app_banner.js)"

    #@6f
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@75
    move-result-object v1

    #@76
    iget-object v2, p0, Lcom/google/android/gms/internal/fa;->lN:Lcom/google/android/gms/internal/ex;

    #@78
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@7b
    move-result-object v2

    #@7c
    iget-object v2, v2, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@7e
    const-string v3, "http://media.admob.com/mraid/v1/mraid_app_banner.js"

    #@80
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/fa;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_83} :catch_85

    #@83
    move-result-object v1

    #@84
    goto :goto_15

    #@85
    :catch_85
    move-exception v1

    #@86
    new-instance v2, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string v3, "Could not fetching MRAID JS. "

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v1

    #@9d
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@a0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ey;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    #@a3
    move-result-object v1

    #@a4
    goto/16 :goto_15
.end method
