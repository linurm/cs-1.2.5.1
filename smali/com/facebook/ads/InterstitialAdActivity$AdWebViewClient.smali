.class Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/InterstitialAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebViewClient"
.end annotation


# static fields
.field private static final FBAD_CLOSE:Ljava/lang/String; = "close"


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/InterstitialAdActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    #@2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/InterstitialAdActivity$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    #@3
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    #@2
    # getter for: Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAdActivity;->access$100(Lcom/facebook/ads/InterstitialAdActivity;)Lcom/facebook/ads/internal/HtmlAdHandler;

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
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    const-string v1, "fbad"

    #@6
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_23

    #@10
    const-string v1, "close"

    #@12
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_23

    #@1c
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    #@1e
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAdActivity;->finish()V

    #@21
    :cond_21
    :goto_21
    const/4 v0, 0x1

    #@22
    return v0

    #@23
    :cond_23
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    #@25
    const-string v2, "com.facebook.ads.interstitial.clicked"

    #@27
    # invokes: Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/facebook/ads/InterstitialAdActivity;->access$200(Lcom/facebook/ads/InterstitialAdActivity;Ljava/lang/String;)V

    #@2a
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    #@2c
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/action/AdActionFactory;->getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;

    #@2f
    move-result-object v0

    #@30
    if-eqz v0, :cond_21

    #@32
    :try_start_32
    invoke-interface {v0}, Lcom/facebook/ads/internal/action/AdAction;->execute()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    #@35
    goto :goto_21

    #@36
    :catch_36
    move-exception v0

    #@37
    # getter for: Lcom/facebook/ads/InterstitialAdActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/ads/InterstitialAdActivity;->access$300()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    const-string v2, "Error executing action"

    #@3d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    goto :goto_21
.end method
