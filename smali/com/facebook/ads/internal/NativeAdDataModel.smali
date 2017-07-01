.class public Lcom/facebook/ads/internal/NativeAdDataModel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/AdDataModel;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adCommand:Landroid/net/Uri;

.field private final body:Ljava/lang/String;

.field private final callToAction:Ljava/lang/String;

.field private clickLogged:Z

.field private final clickReportUrl:Ljava/lang/String;

.field private final detectionStrings:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final icon:Lcom/facebook/ads/NativeAd$Image;

.field private final image:Lcom/facebook/ads/NativeAd$Image;

.field private impressionLogged:Z

.field private final impressionReportUrl:Ljava/lang/String;

.field private final invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field private final socialContext:Ljava/lang/String;

.field private final starRating:Lcom/facebook/ads/NativeAd$Rating;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/internal/NativeAdDataModel;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Rating;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/NativeAd$Image;",
            "Lcom/facebook/ads/NativeAd$Image;",
            "Lcom/facebook/ads/NativeAd$Rating;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/AdInvalidationBehavior;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->adCommand:Landroid/net/Uri;

    #@5
    iput-object p2, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->title:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->body:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->callToAction:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->socialContext:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->icon:Lcom/facebook/ads/NativeAd$Image;

    #@f
    iput-object p7, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->image:Lcom/facebook/ads/NativeAd$Image;

    #@11
    iput-object p8, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->starRating:Lcom/facebook/ads/NativeAd$Rating;

    #@13
    iput-object p9, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->impressionReportUrl:Ljava/lang/String;

    #@15
    iput-object p10, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->clickReportUrl:Ljava/lang/String;

    #@17
    iput-object p11, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@19
    iput-object p12, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->detectionStrings:Ljava/util/Collection;

    #@1b
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/NativeAdDataModel;
    .registers 15

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v1, "fbad_command"

    #@6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v1

    #@e
    const-string v2, "title"

    #@10
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    const-string v3, "body"

    #@16
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    const-string v4, "call_to_action"

    #@1c
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const-string v5, "social_context"

    #@22
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    const-string v6, "icon"

    #@28
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@2b
    move-result-object v6

    #@2c
    invoke-static {v6}, Lcom/facebook/ads/NativeAd$Image;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;

    #@2f
    move-result-object v6

    #@30
    const-string v7, "image"

    #@32
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@35
    move-result-object v7

    #@36
    invoke-static {v7}, Lcom/facebook/ads/NativeAd$Image;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;

    #@39
    move-result-object v7

    #@3a
    const-string v8, "star_rating"

    #@3c
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@3f
    move-result-object v8

    #@40
    invoke-static {v8}, Lcom/facebook/ads/NativeAd$Rating;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Rating;

    #@43
    move-result-object v8

    #@44
    const-string v9, "impression_report_url"

    #@46
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v9

    #@4a
    const-string v10, "click_report_url"

    #@4c
    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    const-string v11, "invalidation_behavior"

    #@52
    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v11

    #@56
    invoke-static {v11}, Lcom/facebook/ads/internal/AdInvalidationBehavior;->fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@59
    move-result-object v11

    #@5a
    :try_start_5a
    new-instance v12, Lorg/json/JSONArray;

    #@5c
    const-string v13, "detection_strings"

    #@5e
    invoke-virtual {p0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v13

    #@62
    invoke-direct {v12, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_65} :catch_6f

    #@65
    :goto_65
    new-instance v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    #@67
    invoke-static {v12}, Lcom/facebook/ads/internal/AdInvalidationUtils;->parseDetectionStrings(Lorg/json/JSONArray;)Ljava/util/Collection;

    #@6a
    move-result-object v12

    #@6b
    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/internal/NativeAdDataModel;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Rating;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V

    #@6e
    goto :goto_3

    #@6f
    :catch_6f
    move-exception v12

    #@70
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    #@73
    move-object v12, v0

    #@74
    goto :goto_65
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->body:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->callToAction:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDetectionStrings()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->detectionStrings:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getIcon()Lcom/facebook/ads/NativeAd$Image;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->icon:Lcom/facebook/ads/NativeAd$Image;

    #@2
    return-object v0
.end method

.method public getImage()Lcom/facebook/ads/NativeAd$Image;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->image:Lcom/facebook/ads/NativeAd$Image;

    #@2
    return-object v0
.end method

.method public getInvalidationBehavior()Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@2
    return-object v0
.end method

.method public getSocialContext()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->socialContext:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStarRating()Lcom/facebook/ads/NativeAd$Rating;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->starRating:Lcom/facebook/ads/NativeAd$Rating;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->title:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public handleClick(Landroid/content/Context;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v4, 0x1

    #@1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->clickLogged:Z

    #@3
    if-nez v0, :cond_24

    #@5
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    const-string v1, "touch"

    #@c
    invoke-static {p2}, Lcom/facebook/ads/internal/AdUtilities;->jsonEncode(Ljava/util/Map;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    new-instance v1, Lcom/facebook/ads/internal/OpenUrlTask;

    #@15
    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/OpenUrlTask;-><init>(Ljava/util/Map;)V

    #@18
    new-array v0, v4, [Ljava/lang/String;

    #@1a
    const/4 v2, 0x0

    #@1b
    iget-object v3, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->clickReportUrl:Ljava/lang/String;

    #@1d
    aput-object v3, v0, v2

    #@1f
    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/OpenUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@22
    iput-boolean v4, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->clickLogged:Z

    #@24
    :cond_24
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->adCommand:Landroid/net/Uri;

    #@26
    invoke-static {p1, v0}, Lcom/facebook/ads/internal/action/AdActionFactory;->getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;

    #@29
    move-result-object v0

    #@2a
    if-eqz v0, :cond_2f

    #@2c
    :try_start_2c
    invoke-interface {v0}, Lcom/facebook/ads/internal/action/AdAction;->execute()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    #@2f
    :cond_2f
    :goto_2f
    return-void

    #@30
    :catch_30
    move-exception v0

    #@31
    sget-object v1, Lcom/facebook/ads/internal/NativeAdDataModel;->TAG:Ljava/lang/String;

    #@33
    const-string v2, "Error executing action"

    #@35
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    goto :goto_2f
.end method

.method public isValid()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->title:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_22

    #@4
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->title:Ljava/lang/String;

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_22

    #@c
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->callToAction:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_22

    #@10
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->callToAction:Ljava/lang/String;

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@15
    move-result v0

    #@16
    if-lez v0, :cond_22

    #@18
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->icon:Lcom/facebook/ads/NativeAd$Image;

    #@1a
    if-eqz v0, :cond_22

    #@1c
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->image:Lcom/facebook/ads/NativeAd$Image;

    #@1e
    if-eqz v0, :cond_22

    #@20
    const/4 v0, 0x1

    #@21
    :goto_21
    return v0

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    goto :goto_21
.end method

.method public logImpression()V
    .registers 6

    #@0
    const/4 v4, 0x1

    #@1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->impressionLogged:Z

    #@3
    if-nez v0, :cond_16

    #@5
    new-instance v0, Lcom/facebook/ads/internal/OpenUrlTask;

    #@7
    invoke-direct {v0}, Lcom/facebook/ads/internal/OpenUrlTask;-><init>()V

    #@a
    new-array v1, v4, [Ljava/lang/String;

    #@c
    const/4 v2, 0x0

    #@d
    iget-object v3, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->impressionReportUrl:Ljava/lang/String;

    #@f
    aput-object v3, v1, v2

    #@11
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/OpenUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@14
    iput-boolean v4, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->impressionLogged:Z

    #@16
    :cond_16
    return-void
.end method
