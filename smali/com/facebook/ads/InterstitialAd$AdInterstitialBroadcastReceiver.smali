.class Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdInterstitialBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/InterstitialAd;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;-><init>(Lcom/facebook/ads/InterstitialAd;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@2
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    const-string v0, "adInterstitialUniqueId"

    #@b
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@11
    # getter for: Lcom/facebook/ads/InterstitialAd;->uniqueId:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/InterstitialAd;->access$400(Lcom/facebook/ads/InterstitialAd;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_8

    #@1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    const-string v1, "com.facebook.ads.interstitial.clicked"

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_33

    #@27
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@29
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@2f
    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    #@32
    goto :goto_8

    #@33
    :cond_33
    const-string v1, "com.facebook.ads.interstitial.dismissed"

    #@35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_47

    #@3b
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@3d
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@43
    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    #@46
    goto :goto_8

    #@47
    :cond_47
    const-string v1, "com.facebook.ads.interstitial.displayed"

    #@49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_8

    #@4f
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@51
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@54
    move-result-object v0

    #@55
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@57
    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    #@5a
    goto :goto_8
.end method

.method public register()V
    .registers 3

    #@0
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    const-string v1, "com.facebook.ads.interstitial.displayed"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a
    const-string v1, "com.facebook.ads.interstitial.dismissed"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f
    const-string v1, "com.facebook.ads.interstitial.clicked"

    #@11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@16
    # getter for: Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/ads/InterstitialAd;->access$500(Lcom/facebook/ads/InterstitialAd;)Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    #@21
    return-void
.end method

.method public unregister()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@2
    # getter for: Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$500(Lcom/facebook/ads/InterstitialAd;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@d
    return-void
.end method
