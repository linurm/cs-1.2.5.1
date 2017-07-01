.class public Lcom/google/android/gms/internal/ex;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ex$a;
    }
.end annotation


# instance fields
.field private final lC:Landroid/view/WindowManager;

.field private final ls:Ljava/lang/Object;

.field private nF:Lcom/google/android/gms/internal/al;

.field private final nG:Lcom/google/android/gms/internal/ev;

.field private final pA:Lcom/google/android/gms/internal/k;

.field private final sA:Lcom/google/android/gms/internal/ey;

.field private final sB:Lcom/google/android/gms/internal/ex$a;

.field private sC:Lcom/google/android/gms/internal/cf;

.field private sD:Z

.field private sE:Z

.field private sF:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ex$a;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ev;)V
    .registers 12

    #@0
    const/4 v4, 0x0

    #@1
    const/16 v3, 0xb

    #@3
    const/4 v2, 0x1

    #@4
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@7
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@e
    iput-object p1, p0, Lcom/google/android/gms/internal/ex;->sB:Lcom/google/android/gms/internal/ex$a;

    #@10
    iput-object p2, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@12
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ex;->sD:Z

    #@14
    iput-object p5, p0, Lcom/google/android/gms/internal/ex;->pA:Lcom/google/android/gms/internal/k;

    #@16
    iput-object p6, p0, Lcom/google/android/gms/internal/ex;->nG:Lcom/google/android/gms/internal/ev;

    #@18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "window"

    #@1e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/view/WindowManager;

    #@24
    iput-object v0, p0, Lcom/google/android/gms/internal/ex;->lC:Landroid/view/WindowManager;

    #@26
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ex;->setBackgroundColor(I)V

    #@29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->getSettings()Landroid/webkit/WebSettings;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    #@30
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    #@33
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    #@36
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    #@39
    iget-object v1, p6, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@3b
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/eo;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    #@3e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@40
    const/16 v2, 0x11

    #@42
    if-lt v1, v2, :cond_70

    #@44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@47
    move-result-object v1

    #@48
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    #@4b
    :cond_4b
    :goto_4b
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ex;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    #@4e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@50
    if-lt v0, v3, :cond_7c

    #@52
    new-instance v0, Lcom/google/android/gms/internal/fa;

    #@54
    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/fa;-><init>(Lcom/google/android/gms/internal/ex;Z)V

    #@57
    iput-object v0, p0, Lcom/google/android/gms/internal/ex;->sA:Lcom/google/android/gms/internal/ey;

    #@59
    :goto_59
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->sA:Lcom/google/android/gms/internal/ey;

    #@5b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ex;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@5e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@60
    const/16 v1, 0xe

    #@62
    if-lt v0, v1, :cond_84

    #@64
    new-instance v0, Lcom/google/android/gms/internal/fb;

    #@66
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fb;-><init>(Lcom/google/android/gms/internal/ex;)V

    #@69
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ex;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    #@6c
    :cond_6c
    :goto_6c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ex;->cg()V

    #@6f
    return-void

    #@70
    :cond_70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@72
    if-lt v1, v3, :cond_4b

    #@74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@77
    move-result-object v1

    #@78
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eq;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    #@7b
    goto :goto_4b

    #@7c
    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/ey;

    #@7e
    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/ey;-><init>(Lcom/google/android/gms/internal/ex;Z)V

    #@81
    iput-object v0, p0, Lcom/google/android/gms/internal/ex;->sA:Lcom/google/android/gms/internal/ey;

    #@83
    goto :goto_59

    #@84
    :cond_84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@86
    if-lt v0, v3, :cond_6c

    #@88
    new-instance v0, Lcom/google/android/gms/internal/ez;

    #@8a
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ez;-><init>(Lcom/google/android/gms/internal/ex;)V

    #@8d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ex;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    #@90
    goto :goto_6c
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ev;)Lcom/google/android/gms/internal/ex;
    .registers 13

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ex;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/ex$a;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ex$a;-><init>(Landroid/content/Context;)V

    #@7
    move-object v2, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move-object v5, p4

    #@b
    move-object v6, p5

    #@c
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ex;-><init>(Lcom/google/android/gms/internal/ex$a;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ev;)V

    #@f
    return-object v0
.end method

.method private cg()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sD:Z

    #@5
    if-nez v0, :cond_d

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@9
    iget-boolean v0, v0, Lcom/google/android/gms/internal/al;->mf:Z

    #@b
    if-eqz v0, :cond_29

    #@d
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@f
    const/16 v2, 0xe

    #@11
    if-ge v0, v2, :cond_1d

    #@13
    const-string v0, "Disabling hardware acceleration on an overlay."

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ex;->ch()V

    #@1b
    :goto_1b
    monitor-exit v1

    #@1c
    return-void

    #@1d
    :cond_1d
    const-string v0, "Enabling hardware acceleration on an overlay."

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@22
    invoke-direct {p0}, Lcom/google/android/gms/internal/ex;->ci()V

    #@25
    goto :goto_1b

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    #@28
    throw v0

    #@29
    :cond_29
    :try_start_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2b
    const/16 v2, 0x12

    #@2d
    if-ge v0, v2, :cond_38

    #@2f
    const-string v0, "Disabling hardware acceleration on an AdView."

    #@31
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ex;->ch()V

    #@37
    goto :goto_1b

    #@38
    :cond_38
    const-string v0, "Enabling hardware acceleration on an AdView."

    #@3a
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@3d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ex;->ci()V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_26

    #@40
    goto :goto_1b
.end method

.method private ch()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sE:Z

    #@5
    if-nez v0, :cond_10

    #@7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v2, 0xb

    #@b
    if-lt v0, v2, :cond_10

    #@d
    invoke-static {p0}, Lcom/google/android/gms/internal/eq;->d(Landroid/view/View;)V

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sE:Z

    #@13
    monitor-exit v1

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method

.method private ci()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sE:Z

    #@5
    if-eqz v0, :cond_10

    #@7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v2, 0xb

    #@b
    if-lt v0, v2, :cond_10

    #@d
    invoke-static {p0}, Lcom/google/android/gms/internal/eq;->e(Landroid/view/View;)V

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sE:Z

    #@13
    monitor-exit v1

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method


# virtual methods
.method protected E(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->isDestroyed()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_e

    #@9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ex;->loadUrl(Ljava/lang/String;)V

    #@c
    :goto_c
    monitor-exit v1

    #@d
    return-void

    #@e
    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    #@10
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@13
    goto :goto_c

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method public V()Lcom/google/android/gms/internal/al;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/al;)V
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->sB:Lcom/google/android/gms/internal/ex$a;

    #@5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ex$a;->setBaseContext(Landroid/content/Context;)V

    #@8
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/ex;->sC:Lcom/google/android/gms/internal/cf;

    #@b
    iput-object p2, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@d
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sD:Z

    #@10
    invoke-static {p0}, Lcom/google/android/gms/internal/eo;->b(Landroid/webkit/WebView;)V

    #@13
    const-string v0, "about:blank"

    #@15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ex;->loadUrl(Ljava/lang/String;)V

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->sA:Lcom/google/android/gms/internal/ey;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->reset()V

    #@1d
    monitor-exit v1

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    #@21
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/al;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->requestLayout()V

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/cf;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ex;->sC:Lcom/google/android/gms/internal/cf;

    #@5
    monitor-exit v1

    #@6
    return-void

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/eo;->o(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_8

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ex;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    const-string v0, "Could not convert parameters to JSON."

    #@b
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@e
    goto :goto_7
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    #@0
    if-nez p2, :cond_7

    #@2
    new-instance p2, Lorg/json/JSONObject;

    #@4
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    #@7
    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v3, "javascript:"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string v3, "("

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    const-string v0, ");"

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ex;->E(Ljava/lang/String;)V

    #@3b
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    #@0
    if-nez p2, :cond_7

    #@2
    new-instance p2, Lorg/json/JSONObject;

    #@4
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    #@7
    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "javascript:AFMA_ReceiveMessage(\'"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    const-string v2, "\'"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    const-string v2, ","

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    const-string v0, ");"

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string v2, "Dispatching AFMA event: "

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ex;->E(Ljava/lang/String;)V

    #@47
    return-void
.end method

.method public bX()V
    .registers 9

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->cj()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    :goto_a
    return-void

    #@b
    :cond_b
    new-instance v0, Landroid/util/DisplayMetrics;

    #@d
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@10
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->lC:Landroid/view/WindowManager;

    #@12
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v2}, Lcom/google/android/gms/internal/eo;->p(Landroid/content/Context;)I

    #@20
    move-result v2

    #@21
    const/high16 v3, 0x43200000    # 160.0f

    #@23
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@25
    int-to-float v4, v4

    #@26
    div-float/2addr v3, v4

    #@27
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@29
    int-to-float v4, v4

    #@2a
    mul-float/2addr v4, v3

    #@2b
    float-to-int v4, v4

    #@2c
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@2e
    sub-int v2, v5, v2

    #@30
    int-to-float v2, v2

    #@31
    mul-float/2addr v2, v3

    #@32
    float-to-int v2, v2

    #@33
    :try_start_33
    new-instance v3, Lorg/json/JSONObject;

    #@35
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    #@38
    const-string v5, "onScreenInfoChanged"

    #@3a
    const-string v6, "width"

    #@3c
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@3f
    move-result-object v3

    #@40
    const-string v4, "height"

    #@42
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@45
    move-result-object v2

    #@46
    const-string v3, "density"

    #@48
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@4a
    float-to-double v6, v0

    #@4b
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@4e
    move-result-object v0

    #@4f
    const-string v2, "rotation"

    #@51
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    #@54
    move-result v1

    #@55
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/ex;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_5c} :catch_5d

    #@5c
    goto :goto_a

    #@5d
    :catch_5d
    move-exception v0

    #@5e
    const-string v1, "Error occured while obtaining screen information."

    #@60
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    goto :goto_a
.end method

.method public bY()V
    .registers 4

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@6
    const-string v1, "version"

    #@8
    iget-object v2, p0, Lcom/google/android/gms/internal/ex;->nG:Lcom/google/android/gms/internal/ev;

    #@a
    iget-object v2, v2, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    const-string v1, "onhide"

    #@11
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ex;->a(Ljava/lang/String;Ljava/util/Map;)V

    #@14
    return-void
.end method

.method public bZ()V
    .registers 4

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@6
    const-string v1, "version"

    #@8
    iget-object v2, p0, Lcom/google/android/gms/internal/ex;->nG:Lcom/google/android/gms/internal/ev;

    #@a
    iget-object v2, v2, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    const-string v1, "onshow"

    #@11
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ex;->a(Ljava/lang/String;Ljava/util/Map;)V

    #@14
    return-void
.end method

.method public ca()Lcom/google/android/gms/internal/cf;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->sC:Lcom/google/android/gms/internal/cf;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public cb()Lcom/google/android/gms/internal/ey;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->sA:Lcom/google/android/gms/internal/ey;

    #@2
    return-object v0
.end method

.method public cc()Lcom/google/android/gms/internal/k;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->pA:Lcom/google/android/gms/internal/k;

    #@2
    return-object v0
.end method

.method public cd()Lcom/google/android/gms/internal/ev;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->nG:Lcom/google/android/gms/internal/ev;

    #@2
    return-object v0
.end method

.method public ce()Z
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sD:Z

    #@5
    monitor-exit v1

    #@6
    return v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public cf()Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->sB:Lcom/google/android/gms/internal/ex$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex$a;->cf()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public destroy()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    #@6
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sF:Z

    #@9
    monitor-exit v1

    #@a
    return-void

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public isDestroyed()Z
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ex;->sF:Z

    #@5
    monitor-exit v1

    #@6
    return v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    #@0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.VIEW"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    #@15
    :goto_15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string v1, " / "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@37
    goto :goto_15
.end method

.method protected onMeasure(II)V
    .registers 12

    #@0
    const v0, 0x7fffffff

    #@3
    const/high16 v8, 0x40000000    # 2.0f

    #@5
    const/16 v7, 0x8

    #@7
    const/high16 v6, -0x80000000

    #@9
    iget-object v4, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@b
    monitor-enter v4

    #@c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->isInEditMode()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_16

    #@12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ex;->sD:Z

    #@14
    if-eqz v1, :cond_1b

    #@16
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    #@19
    monitor-exit v4

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1e
    move-result v2

    #@1f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@22
    move-result v3

    #@23
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@26
    move-result v5

    #@27
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@2a
    move-result v1

    #@2b
    if-eq v2, v6, :cond_2f

    #@2d
    if-ne v2, v8, :cond_c7

    #@2f
    :cond_2f
    move v2, v3

    #@30
    :goto_30
    if-eq v5, v6, :cond_34

    #@32
    if-ne v5, v8, :cond_35

    #@34
    :cond_34
    move v0, v1

    #@35
    :cond_35
    iget-object v5, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@37
    iget v5, v5, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@39
    if-gt v5, v2, :cond_41

    #@3b
    iget-object v2, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@3d
    iget v2, v2, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@3f
    if-le v2, v0, :cond_b1

    #@41
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->sB:Lcom/google/android/gms/internal/ex$a;

    #@43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex$a;->getResources()Landroid/content/res/Resources;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@4a
    move-result-object v0

    #@4b
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string v5, "Not enough space to show ad. Needs "

    #@54
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    iget-object v5, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@5a
    iget v5, v5, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@5c
    int-to-float v5, v5

    #@5d
    div-float/2addr v5, v0

    #@5e
    float-to-int v5, v5

    #@5f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    const-string v5, "x"

    #@65
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    iget-object v5, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@6b
    iget v5, v5, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@6d
    int-to-float v5, v5

    #@6e
    div-float/2addr v5, v0

    #@6f
    float-to-int v5, v5

    #@70
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    const-string v5, " dp, but only has "

    #@76
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    int-to-float v3, v3

    #@7b
    div-float/2addr v3, v0

    #@7c
    float-to-int v3, v3

    #@7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    const-string v3, "x"

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    int-to-float v1, v1

    #@88
    div-float v0, v1, v0

    #@8a
    float-to-int v0, v0

    #@8b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    const-string v1, " dp."

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@9c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->getVisibility()I

    #@9f
    move-result v0

    #@a0
    if-eq v0, v7, :cond_a6

    #@a2
    const/4 v0, 0x4

    #@a3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ex;->setVisibility(I)V

    #@a6
    :cond_a6
    const/4 v0, 0x0

    #@a7
    const/4 v1, 0x0

    #@a8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ex;->setMeasuredDimension(II)V

    #@ab
    :goto_ab
    monitor-exit v4

    #@ac
    goto/16 :goto_1a

    #@ae
    :catchall_ae
    move-exception v0

    #@af
    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_c .. :try_end_b0} :catchall_ae

    #@b0
    throw v0

    #@b1
    :cond_b1
    :try_start_b1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ex;->getVisibility()I

    #@b4
    move-result v0

    #@b5
    if-eq v0, v7, :cond_bb

    #@b7
    const/4 v0, 0x0

    #@b8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ex;->setVisibility(I)V

    #@bb
    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@bd
    iget v0, v0, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@bf
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->nF:Lcom/google/android/gms/internal/al;

    #@c1
    iget v1, v1, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@c3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ex;->setMeasuredDimension(II)V
    :try_end_c6
    .catchall {:try_start_b1 .. :try_end_c6} :catchall_ae

    #@c6
    goto :goto_ab

    #@c7
    :cond_c7
    move v2, v0

    #@c8
    goto/16 :goto_30
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->pA:Lcom/google/android/gms/internal/k;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->pA:Lcom/google/android/gms/internal/k;

    #@6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/k;->a(Landroid/view/MotionEvent;)V

    #@9
    :cond_9
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public q(Z)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ex;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ex;->sD:Z

    #@5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ex;->cg()V

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ex;->sB:Lcom/google/android/gms/internal/ex$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ex$a;->setBaseContext(Landroid/content/Context;)V

    #@5
    return-void
.end method
