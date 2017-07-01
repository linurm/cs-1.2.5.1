.class public Lcom/google/android/gms/internal/fc;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final lN:Lcom/google/android/gms/internal/ex;

.field private final sT:Ljava/lang/String;

.field private sU:Z

.field private final sV:Lcom/google/android/gms/internal/do;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/ex;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@3
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/fc;->G(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/internal/fc;->sT:Ljava/lang/String;

    #@9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fc;->sU:Z

    #@c
    iput-object p2, p0, Lcom/google/android/gms/internal/fc;->lN:Lcom/google/android/gms/internal/ex;

    #@e
    iput-object p1, p0, Lcom/google/android/gms/internal/fc;->sV:Lcom/google/android/gms/internal/do;

    #@10
    return-void
.end method

.method private G(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    :cond_6
    :goto_6
    return-object p1

    #@7
    :cond_7
    :try_start_7
    const-string v0, "/"

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_6

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    add-int/lit8 v1, v1, -0x1

    #@16
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_19} :catch_1b

    #@19
    move-result-object p1

    #@1a
    goto :goto_6

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V

    #@23
    goto :goto_6
.end method


# virtual methods
.method protected F(Ljava/lang/String;)Z
    .registers 8

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fc;->G(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_d

    #@c
    :cond_c
    :goto_c
    return v0

    #@d
    :cond_d
    :try_start_d
    new-instance v3, Ljava/net/URI;

    #@f
    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@12
    const-string v2, "passback"

    #@14
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2a

    #@1e
    const-string v2, "Passback received"

    #@20
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@23
    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->sV:Lcom/google/android/gms/internal/do;

    #@25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/do;->bp()V

    #@28
    move v0, v1

    #@29
    goto :goto_c

    #@2a
    :cond_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->sT:Ljava/lang/String;

    #@2c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_c

    #@32
    new-instance v2, Ljava/net/URI;

    #@34
    iget-object v4, p0, Lcom/google/android/gms/internal/fc;->sT:Ljava/lang/String;

    #@36
    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_c

    #@4f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_c

    #@55
    const-string v2, "Passback received"

    #@57
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5a
    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->sV:Lcom/google/android/gms/internal/do;

    #@5c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/do;->bp()V
    :try_end_5f
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_5f} :catch_61

    #@5f
    move v0, v1

    #@60
    goto :goto_c

    #@61
    :catch_61
    move-exception v1

    #@62
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V

    #@69
    goto :goto_c
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "JavascriptAdWebViewClient::onLoadResource: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/fc;->F(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_27

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->lN:Lcom/google/android/gms/internal/ex;

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@21
    move-result-object v0

    #@22
    iget-object v1, p0, Lcom/google/android/gms/internal/fc;->lN:Lcom/google/android/gms/internal/ex;

    #@24
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ey;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    #@27
    :cond_27
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "JavascriptAdWebViewClient::onPageFinished: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fc;->sU:Z

    #@18
    if-nez v0, :cond_22

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->sV:Lcom/google/android/gms/internal/do;

    #@1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/do;->bo()V

    #@1f
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fc;->sU:Z

    #@22
    :cond_22
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "JavascriptAdWebViewClient::shouldOverrideUrlLoading: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/fc;->F(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_23

    #@1c
    const-string v0, "shouldOverrideUrlLoading: received passback url"

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@21
    const/4 v0, 0x1

    #@22
    :goto_22
    return v0

    #@23
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->lN:Lcom/google/android/gms/internal/ex;

    #@25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/google/android/gms/internal/fc;->lN:Lcom/google/android/gms/internal/ex;

    #@2b
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ey;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    #@2e
    move-result v0

    #@2f
    goto :goto_22
.end method
