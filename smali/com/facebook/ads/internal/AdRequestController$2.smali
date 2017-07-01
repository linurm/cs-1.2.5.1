.class Lcom/facebook/ads/internal/AdRequestController$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/AdRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/AdRequestController;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdRequestController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/AdRequestController;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getRefreshIntervalMillis()I

    #@5
    move-result v1

    #@6
    # setter for: Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$402(Lcom/facebook/ads/internal/AdRequestController;I)I

    #@9
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@b
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getRefreshThresholdMillis()I

    #@e
    move-result v1

    #@f
    # setter for: Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$502(Lcom/facebook/ads/internal/AdRequestController;I)I

    #@12
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@14
    # getter for: Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequestController;->access$200(Lcom/facebook/ads/internal/AdRequestController;)Lcom/facebook/ads/internal/AdRequest$Callback;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onCompleted(Lcom/facebook/ads/internal/AdResponse;)V

    #@1b
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@1d
    const/4 v1, 0x1

    #@1e
    # setter for: Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$302(Lcom/facebook/ads/internal/AdRequestController;Z)Z

    #@21
    return-void
.end method

.method public onError(Lcom/facebook/ads/AdError;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    # getter for: Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequestController;->access$200(Lcom/facebook/ads/internal/AdRequestController;)Lcom/facebook/ads/internal/AdRequest$Callback;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V

    #@9
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@b
    const/4 v1, 0x1

    #@c
    # setter for: Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$302(Lcom/facebook/ads/internal/AdRequestController;Z)Z

    #@f
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@11
    const-string v1, "onError"

    #@13
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    #@16
    return-void
.end method
