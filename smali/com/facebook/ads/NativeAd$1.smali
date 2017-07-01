.class Lcom/facebook/ads/NativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/AdRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_25

    #@7
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    #@a
    move-result-object v0

    #@b
    instance-of v0, v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    #@d
    if-nez v0, :cond_25

    #@f
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@11
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_24

    #@17
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@19
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@1f
    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@21
    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@24
    :cond_24
    :goto_24
    return-void

    #@25
    :cond_25
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@27
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    #@2d
    # setter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v1, v0}, Lcom/facebook/ads/NativeAd;->access$202(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/NativeAdDataModel;)Lcom/facebook/ads/internal/NativeAdDataModel;

    #@30
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@32
    # getter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$200(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_5e

    #@38
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@3a
    # getter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$200(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->isValid()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5e

    #@44
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@46
    const/4 v1, 0x1

    #@47
    # setter for: Lcom/facebook/ads/NativeAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd;->access$302(Lcom/facebook/ads/NativeAd;Z)Z

    #@4a
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@4c
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@4f
    move-result-object v0

    #@50
    if-eqz v0, :cond_24

    #@52
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@54
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@57
    move-result-object v0

    #@58
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@5a
    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    #@5d
    goto :goto_24

    #@5e
    :cond_5e
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@60
    # getter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$200(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;

    #@63
    move-result-object v0

    #@64
    if-nez v0, :cond_8c

    #@66
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@68
    # setter for: Lcom/facebook/ads/NativeAd;->adLoaded:Z
    invoke-static {v0, v2}, Lcom/facebook/ads/NativeAd;->access$302(Lcom/facebook/ads/NativeAd;Z)Z

    #@6b
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@6d
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@70
    move-result-object v0

    #@71
    if-eqz v0, :cond_24

    #@73
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@75
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@78
    move-result-object v1

    #@79
    iget-object v2, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@7b
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    #@7e
    move-result-object v0

    #@7f
    if-eqz v0, :cond_89

    #@81
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    #@84
    move-result-object v0

    #@85
    :goto_85
    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@88
    goto :goto_24

    #@89
    :cond_89
    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@8b
    goto :goto_85

    #@8c
    :cond_8c
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@8e
    # setter for: Lcom/facebook/ads/NativeAd;->adLoaded:Z
    invoke-static {v0, v2}, Lcom/facebook/ads/NativeAd;->access$302(Lcom/facebook/ads/NativeAd;Z)Z

    #@91
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@93
    const/4 v1, 0x0

    #@94
    # setter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd;->access$202(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/NativeAdDataModel;)Lcom/facebook/ads/internal/NativeAdDataModel;

    #@97
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@99
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@9c
    move-result-object v0

    #@9d
    if-eqz v0, :cond_24

    #@9f
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@a1
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@a4
    move-result-object v0

    #@a5
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@a7
    sget-object v2, Lcom/facebook/ads/AdError;->MISSING_PROPERTIES:Lcom/facebook/ads/AdError;

    #@a9
    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@ac
    goto/16 :goto_24
.end method

.method public onError(Lcom/facebook/ads/AdError;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Lcom/facebook/ads/NativeAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd;->access$302(Lcom/facebook/ads/NativeAd;Z)Z

    #@6
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@8
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_19

    #@e
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@10
    # getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #@16
    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@19
    :cond_19
    return-void
.end method
