.class Lcom/facebook/ads/NativeAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$2;->this$0:Lcom/facebook/ads/NativeAd;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public afterImpressionSent()V
    .registers 1

    #@0
    return-void
.end method

.method public shouldSendImpression()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$2;->this$0:Lcom/facebook/ads/NativeAd;

    #@2
    # invokes: Lcom/facebook/ads/NativeAd;->isViewOnScreen()Z
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$400(Lcom/facebook/ads/NativeAd;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
