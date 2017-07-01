.class Lcom/facebook/ads/AdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/AdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public afterImpressionSent()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #@2
    # getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_13

    #@8
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #@a
    # getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    #@d
    move-result-object v0

    #@e
    const-string v1, "on imp sent"

    #@10
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    #@13
    :cond_13
    return-void
.end method

.method public shouldSendImpression()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #@2
    # invokes: Lcom/facebook/ads/AdView;->isAdViewVisible()Z
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$100(Lcom/facebook/ads/AdView;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
