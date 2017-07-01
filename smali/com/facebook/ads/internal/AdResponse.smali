.class public Lcom/facebook/ads/internal/AdResponse;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_REFRESH_INTERVAL_SECONDS:I = 0x0

.field private static final DEFAULT_REFRESH_THRESHOLD_SECONDS:I = 0x14


# instance fields
.field private final dataModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/AdDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Lcom/facebook/ads/AdError;

.field private final refreshIntervalMillis:I

.field private final refreshThresholdMillis:I


# direct methods
.method private constructor <init>(IILjava/util/List;Lcom/facebook/ads/AdError;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/AdDataModel;",
            ">;",
            "Lcom/facebook/ads/AdError;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/facebook/ads/internal/AdResponse;->refreshIntervalMillis:I

    #@5
    iput p2, p0, Lcom/facebook/ads/internal/AdResponse;->refreshThresholdMillis:I

    #@7
    iput-object p3, p0, Lcom/facebook/ads/internal/AdResponse;->dataModels:Ljava/util/List;

    #@9
    iput-object p4, p0, Lcom/facebook/ads/internal/AdResponse;->error:Lcom/facebook/ads/AdError;

    #@b
    return-void
.end method

.method public static parseResponse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/facebook/ads/internal/AdResponse;
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const-string v0, "refresh"

    #@4
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@7
    move-result v4

    #@8
    const-string v0, "refresh_threshold"

    #@a
    const/16 v3, 0x14

    #@c
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@f
    move-result v5

    #@10
    const-string v0, "reason"

    #@12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_96

    #@18
    new-instance v0, Lcom/facebook/ads/AdError;

    #@1a
    const-string v6, "code"

    #@1c
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    #@1f
    move-result v6

    #@20
    const-string v7, "message"

    #@22
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v0, v6, v3}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@29
    :goto_29
    const-string v3, "ad_type"

    #@2b
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    #@2e
    move-result v6

    #@2f
    new-instance v7, Ljava/util/ArrayList;

    #@31
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@34
    const-string v3, "ads"

    #@36
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@39
    move-result-object v8

    #@3a
    if-eqz v8, :cond_8a

    #@3c
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    #@3f
    move-result v3

    #@40
    if-lez v3, :cond_8a

    #@42
    :goto_42
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    #@45
    move-result v3

    #@46
    if-ge v2, v3, :cond_82

    #@48
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    #@4b
    move-result-object v3

    #@4c
    if-nez v3, :cond_51

    #@4e
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_42

    #@51
    :cond_51
    sget-object v9, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    #@53
    invoke-virtual {v9}, Lcom/facebook/ads/internal/AdType;->getValue()I

    #@56
    move-result v9

    #@57
    if-ne v6, v9, :cond_6f

    #@59
    const-string v9, "data"

    #@5b
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@5e
    move-result-object v3

    #@5f
    invoke-static {v3}, Lcom/facebook/ads/internal/HtmlAdDataModel;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@62
    move-result-object v3

    #@63
    :goto_63
    if-eqz v3, :cond_4e

    #@65
    invoke-static {p0, v3}, Lcom/facebook/ads/internal/AdInvalidationUtils;->shouldInvalidate(Landroid/content/Context;Lcom/facebook/ads/internal/AdDataModel;)Z

    #@68
    move-result v9

    #@69
    if-nez v9, :cond_4e

    #@6b
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6e
    goto :goto_4e

    #@6f
    :cond_6f
    sget-object v9, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    #@71
    invoke-virtual {v9}, Lcom/facebook/ads/internal/AdType;->getValue()I

    #@74
    move-result v9

    #@75
    if-ne v6, v9, :cond_94

    #@77
    const-string v9, "metadata"

    #@79
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@7c
    move-result-object v3

    #@7d
    invoke-static {v3}, Lcom/facebook/ads/internal/NativeAdDataModel;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/NativeAdDataModel;

    #@80
    move-result-object v3

    #@81
    goto :goto_63

    #@82
    :cond_82
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@85
    move-result v1

    #@86
    if-eqz v1, :cond_8a

    #@88
    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    #@8a
    :cond_8a
    new-instance v1, Lcom/facebook/ads/internal/AdResponse;

    #@8c
    mul-int/lit16 v2, v4, 0x3e8

    #@8e
    mul-int/lit16 v3, v5, 0x3e8

    #@90
    invoke-direct {v1, v2, v3, v7, v0}, Lcom/facebook/ads/internal/AdResponse;-><init>(IILjava/util/List;Lcom/facebook/ads/AdError;)V

    #@93
    return-object v1

    #@94
    :cond_94
    move-object v3, v1

    #@95
    goto :goto_63

    #@96
    :cond_96
    move-object v0, v1

    #@97
    goto :goto_29
.end method


# virtual methods
.method public getDataModel()Lcom/facebook/ads/internal/AdDataModel;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdResponse;->dataModels:Ljava/util/List;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/facebook/ads/internal/AdResponse;->dataModels:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/internal/AdResponse;->dataModels:Ljava/util/List;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/facebook/ads/internal/AdDataModel;

    #@17
    goto :goto_d
.end method

.method public getError()Lcom/facebook/ads/AdError;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdResponse;->error:Lcom/facebook/ads/AdError;

    #@2
    return-object v0
.end method

.method public getRefreshIntervalMillis()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/internal/AdResponse;->refreshIntervalMillis:I

    #@2
    return v0
.end method

.method public getRefreshThresholdMillis()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/internal/AdResponse;->refreshThresholdMillis:I

    #@2
    return v0
.end method
