.class Lcom/facebook/ads/InterstitialAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/AdRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InterstitialAd;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@3
    # setter for: Lcom/facebook/ads/InterstitialAd;->adResponse:Lcom/facebook/ads/internal/AdResponse;
    invoke-static {v0, p1}, Lcom/facebook/ads/InterstitialAd;->access$002(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/internal/AdResponse;)Lcom/facebook/ads/internal/AdResponse;

    #@6
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_2e

    #@c
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    #@f
    move-result-object v0

    #@10
    instance-of v0, v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@12
    if-eqz v0, :cond_2e

    #@14
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@16
    const/4 v1, 0x1

    #@17
    # setter for: Lcom/facebook/ads/InterstitialAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->access$102(Lcom/facebook/ads/InterstitialAd;Z)Z

    #@1a
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@1c
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_2d

    #@22
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@24
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@2a
    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    #@2d
    :cond_2d
    :goto_2d
    return-void

    #@2e
    :cond_2e
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    #@31
    move-result-object v0

    #@32
    if-nez v0, :cond_5a

    #@34
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@36
    # setter for: Lcom/facebook/ads/InterstitialAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->access$102(Lcom/facebook/ads/InterstitialAd;Z)Z

    #@39
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@3b
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@3e
    move-result-object v0

    #@3f
    if-eqz v0, :cond_2d

    #@41
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@43
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@46
    move-result-object v1

    #@47
    iget-object v2, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@49
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    #@4c
    move-result-object v0

    #@4d
    if-eqz v0, :cond_57

    #@4f
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    #@52
    move-result-object v0

    #@53
    :goto_53
    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@56
    goto :goto_2d

    #@57
    :cond_57
    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@59
    goto :goto_53

    #@5a
    :cond_5a
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@5c
    # setter for: Lcom/facebook/ads/InterstitialAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->access$102(Lcom/facebook/ads/InterstitialAd;Z)Z

    #@5f
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@61
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@64
    move-result-object v0

    #@65
    if-eqz v0, :cond_2d

    #@67
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@69
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@6c
    move-result-object v0

    #@6d
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@6f
    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@71
    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@74
    goto :goto_2d
.end method

.method public onError(Lcom/facebook/ads/AdError;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Lcom/facebook/ads/InterstitialAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->access$102(Lcom/facebook/ads/InterstitialAd;Z)Z

    #@6
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@8
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_19

    #@e
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@10
    # getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #@16
    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@19
    :cond_19
    return-void
.end method
