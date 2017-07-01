.class Lcom/facebook/ads/AdView$AdWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/AdView;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/AdView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #@2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdView$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView$AdWebViewClient;-><init>(Lcom/facebook/ads/AdView;)V

    #@3
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #@2
    # getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$400(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->activateAd()V

    #@9
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #@2
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_13

    #@8
    iget-object v0, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #@a
    # getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #@10
    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    #@13
    :cond_13
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #@19
    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/action/AdActionFactory;->getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;

    #@20
    move-result-object v0

    #@21
    if-eqz v0, :cond_26

    #@23
    :try_start_23
    invoke-interface {v0}, Lcom/facebook/ads/internal/action/AdAction;->execute()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_28

    #@26
    :cond_26
    :goto_26
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    :catch_28
    move-exception v0

    #@29
    # getter for: Lcom/facebook/ads/AdView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/ads/AdView;->access$700()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    const-string v2, "Error executing action"

    #@2f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    goto :goto_26
.end method
