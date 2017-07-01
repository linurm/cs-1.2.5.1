.class public Lcom/facebook/ads/internal/AppSiteData;
.super Ljava/lang/Object;


# instance fields
.field private final appLinkUri:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final fallbackUrl:Ljava/lang/String;

.field private final keyHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final marketUri:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/AppSiteData;->packageName:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/facebook/ads/internal/AppSiteData;->className:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/facebook/ads/internal/AppSiteData;->appLinkUri:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/facebook/ads/internal/AppSiteData;->keyHashes:Ljava/util/List;

    #@b
    iput-object p5, p0, Lcom/facebook/ads/internal/AppSiteData;->marketUri:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/facebook/ads/internal/AppSiteData;->fallbackUrl:Ljava/lang/String;

    #@f
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/AppSiteData;
    .registers 8

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v0, "package"

    #@6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    const-string v0, "appsite"

    #@c
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    const-string v0, "appsite_url"

    #@12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    const-string v0, "key_hashes"

    #@18
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@1b
    move-result-object v5

    #@1c
    new-instance v4, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@21
    if-eqz v5, :cond_34

    #@23
    const/4 v0, 0x0

    #@24
    :goto_24
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    #@27
    move-result v6

    #@28
    if-ge v0, v6, :cond_34

    #@2a
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_24

    #@34
    :cond_34
    new-instance v0, Lcom/facebook/ads/internal/AppSiteData;

    #@36
    const-string v5, "market_uri"

    #@38
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    const-string v6, "fallback_url"

    #@3e
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AppSiteData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@45
    goto :goto_3
.end method


# virtual methods
.method public getAppLinkUri()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->appLinkUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->className:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFallbackUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->fallbackUrl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getKeyHashes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->keyHashes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getMarketUri()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->marketUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->packageName:Ljava/lang/String;

    #@2
    return-object v0
.end method
