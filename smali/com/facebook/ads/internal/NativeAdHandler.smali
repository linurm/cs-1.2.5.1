.class public Lcom/facebook/ads/internal/NativeAdHandler;
.super Lcom/facebook/ads/internal/AdHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLcom/facebook/ads/internal/NativeAdDataModel;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/AdHandler;-><init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;J)V

    #@3
    invoke-virtual {p0, p4}, Lcom/facebook/ads/internal/NativeAdHandler;->setAdDataModel(Lcom/facebook/ads/internal/AdDataModel;)V

    #@6
    return-void
.end method


# virtual methods
.method protected sendImpression()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    #@3
    check-cast v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    #@5
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->logImpression()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    #@8
    monitor-exit p0

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method
