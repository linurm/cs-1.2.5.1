.class Lcom/facebook/ads/internal/AdRequestController$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/AdRequestController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V
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
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequestController$1;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$1;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$102(Lcom/facebook/ads/internal/AdRequestController;Z)Z

    #@6
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$1;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->loadAd()V

    #@b
    return-void
.end method
