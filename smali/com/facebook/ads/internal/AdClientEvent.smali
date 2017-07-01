.class public Lcom/facebook/ads/internal/AdClientEvent;
.super Ljava/lang/Object;


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private time:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/AdClientEvent;->name:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/facebook/ads/internal/AdClientEvent;->data:Ljava/util/Map;

    #@7
    iput p3, p0, Lcom/facebook/ads/internal/AdClientEvent;->time:I

    #@9
    return-void
.end method

.method public static newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;
    .registers 9

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    const-string v1, "ex"

    #@7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    const-string v1, "ex_msg"

    #@14
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    new-instance v1, Lcom/facebook/ads/internal/AdClientEvent;

    #@1d
    const-string v2, "error"

    #@1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@22
    move-result-wide v4

    #@23
    const-wide/16 v6, 0x3e8

    #@25
    div-long/2addr v4, v6

    #@26
    long-to-int v3, v4

    #@27
    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/ads/internal/AdClientEvent;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    #@2a
    return-object v1
.end method


# virtual methods
.method public getClientEventJson()Lorg/json/JSONObject;
    .registers 4

    #@0
    new-instance v1, Lorg/json/JSONObject;

    #@2
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@5
    :try_start_5
    const-string v0, "name"

    #@7
    iget-object v2, p0, Lcom/facebook/ads/internal/AdClientEvent;->name:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@c
    new-instance v0, Lorg/json/JSONObject;

    #@e
    iget-object v2, p0, Lcom/facebook/ads/internal/AdClientEvent;->data:Ljava/util/Map;

    #@10
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    #@13
    const-string v2, "data"

    #@15
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@18
    const-string v0, "time"

    #@1a
    iget v2, p0, Lcom/facebook/ads/internal/AdClientEvent;->time:I

    #@1c
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1f} :catch_20

    #@1f
    :goto_1f
    return-object v1

    #@20
    :catch_20
    move-exception v0

    #@21
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    #@24
    goto :goto_1f
.end method
