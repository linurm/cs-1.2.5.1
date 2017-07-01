.class public Lcom/facebook/ads/internal/AdClientEventManager;
.super Ljava/lang/Object;


# static fields
.field private static clientEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/AdClientEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    #@5
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method public static dumpClientEventToJson()Ljava/lang/String;
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_39

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_f

    #@b
    const-string v0, ""

    #@d
    :try_start_d
    monitor-exit v1

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    #@11
    sget-object v2, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    #@13
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@16
    sget-object v2, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    #@18
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_39

    #@1c
    new-instance v1, Lorg/json/JSONArray;

    #@1e
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v2

    #@25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3c

    #@2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/facebook/ads/internal/AdClientEvent;

    #@31
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdClientEvent;->getClientEventJson()Lorg/json/JSONObject;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@38
    goto :goto_25

    #@39
    :catchall_39
    move-exception v0

    #@3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    #@3b
    throw v0

    #@3c
    :cond_3c
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    goto :goto_e
.end method
