.class final Lcom/facebook/AppEventsLogger$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppEventsLogger;->initializeTimersIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    # getter for: Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/AppEventsLogger;->access$200()Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    monitor-enter v2

    #@a
    :try_start_a
    # getter for: Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;
    invoke-static {}, Lcom/facebook/AppEventsLogger;->access$300()Ljava/util/Map;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2d

    #@1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@22
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_16

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2a

    #@2c
    throw v0

    #@2d
    :cond_2d
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    #@2e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v1

    #@32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_43

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Ljava/lang/String;

    #@3e
    const/4 v2, 0x1

    #@3f
    invoke-static {v0, v2}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    #@42
    goto :goto_32

    #@43
    :cond_43
    return-void
.end method
