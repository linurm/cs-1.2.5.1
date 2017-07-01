.class public abstract Lcom/facebook/ads/internal/AdHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;
    }
.end annotation


# instance fields
.field protected adDataModel:Lcom/facebook/ads/internal/AdDataModel;

.field private final handler:Landroid/os/Handler;

.field protected final impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

.field private volatile impressionRetryScheduled:Z

.field private volatile impressionSent:Z

.field private final sendImpressionDelay:J

.field private final sendImpressionRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;J)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/facebook/ads/internal/AdHandler$1;

    #@5
    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/AdHandler$1;-><init>(Lcom/facebook/ads/internal/AdHandler;)V

    #@8
    iput-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionRunnable:Ljava/lang/Runnable;

    #@a
    iput-object p1, p0, Lcom/facebook/ads/internal/AdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    #@c
    iput-wide p2, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionDelay:J

    #@e
    new-instance v0, Landroid/os/Handler;

    #@10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@13
    iput-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->handler:Landroid/os/Handler;

    #@15
    return-void
.end method

.method static synthetic access$002(Lcom/facebook/ads/internal/AdHandler;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z

    #@2
    return p1
.end method


# virtual methods
.method public cancelImpressionRetry()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z

    #@3
    if-eqz v0, :cond_f

    #@5
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->handler:Landroid/os/Handler;

    #@7
    iget-object v1, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionRunnable:Ljava/lang/Runnable;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@c
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    #@f
    :cond_f
    monitor-exit p0

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public scheduleImpressionRetry()V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionSent:Z

    #@3
    if-nez v0, :cond_d

    #@5
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z

    #@7
    if-nez v0, :cond_d

    #@9
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    #@b
    if-nez v0, :cond_f

    #@d
    :cond_d
    :goto_d
    monitor-exit p0

    #@e
    return-void

    #@f
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->handler:Landroid/os/Handler;

    #@11
    iget-object v1, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionRunnable:Ljava/lang/Runnable;

    #@13
    iget-wide v2, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionDelay:J

    #@15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@18
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1c

    #@1b
    goto :goto_d

    #@1c
    :catchall_1c
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method protected abstract sendImpression()V
.end method

.method public setAdDataModel(Lcom/facebook/ads/internal/AdDataModel;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput-object p1, p0, Lcom/facebook/ads/internal/AdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    #@3
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionSent:Z

    #@5
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z

    #@7
    return-void
.end method

.method protected trySendImpression()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    #@3
    if-eqz v0, :cond_9

    #@5
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionSent:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1b

    #@7
    if-eqz v0, :cond_b

    #@9
    :cond_9
    :goto_9
    monitor-exit p0

    #@a
    return-void

    #@b
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    #@d
    if-eqz v0, :cond_1e

    #@f
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    #@11
    invoke-interface {v0}, Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;->shouldSendImpression()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1e

    #@17
    invoke-virtual {p0}, Lcom/facebook/ads/internal/AdHandler;->scheduleImpressionRetry()V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    #@1a
    goto :goto_9

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0

    #@1e
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/facebook/ads/internal/AdHandler;->sendImpression()V

    #@21
    const/4 v0, 0x1

    #@22
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionSent:Z
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_1b

    #@24
    goto :goto_9
.end method
