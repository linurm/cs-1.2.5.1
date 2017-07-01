.class Lcom/facebook/ads/internal/AdHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/AdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdHandler;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/AdHandler;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/internal/AdHandler$1;->this$0:Lcom/facebook/ads/internal/AdHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler$1;->this$0:Lcom/facebook/ads/internal/AdHandler;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdHandler;->access$002(Lcom/facebook/ads/internal/AdHandler;Z)Z

    #@6
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler$1;->this$0:Lcom/facebook/ads/internal/AdHandler;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdHandler;->trySendImpression()V

    #@b
    return-void
.end method
