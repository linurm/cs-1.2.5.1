.class public Lcom/facebook/ads/internal/HtmlAdHandler;
.super Lcom/facebook/ads/internal/AdHandler;


# instance fields
.field private volatile adActivated:Z

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;J)V
    .registers 6

    #@0
    invoke-direct {p0, p2, p3, p4}, Lcom/facebook/ads/internal/AdHandler;-><init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;J)V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;

    #@5
    return-void
.end method


# virtual methods
.method public activateAd()V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adActivated:Z

    #@3
    if-nez v0, :cond_9

    #@5
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3c

    #@7
    if-nez v0, :cond_b

    #@9
    :cond_9
    :goto_9
    monitor-exit p0

    #@a
    return-void

    #@b
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    #@d
    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@f
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getActivationCommand()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_35

    #@19
    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string v3, "javascript:"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getActivationCommand()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@35
    :cond_35
    invoke-virtual {p0}, Lcom/facebook/ads/internal/HtmlAdHandler;->scheduleImpressionRetry()V

    #@38
    const/4 v0, 0x1

    #@39
    iput-boolean v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adActivated:Z
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_3c

    #@3b
    goto :goto_9

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    monitor-exit p0

    #@3e
    throw v0
.end method

.method protected sendImpression()V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    #@3
    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@5
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getSendImpressionCommand()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_2b

    #@f
    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v3, "javascript:"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getSendImpressionCommand()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@2b
    :cond_2b
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    #@2d
    if-eqz v0, :cond_34

    #@2f
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    #@31
    invoke-interface {v0}, Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;->afterImpressionSent()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    #@34
    :cond_34
    monitor-exit p0

    #@35
    return-void

    #@36
    :catchall_36
    move-exception v0

    #@37
    monitor-exit p0

    #@38
    throw v0
.end method

.method public setAdDataModel(Lcom/facebook/ads/internal/HtmlAdDataModel;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/AdHandler;->setAdDataModel(Lcom/facebook/ads/internal/AdDataModel;)V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adActivated:Z

    #@6
    return-void
.end method
