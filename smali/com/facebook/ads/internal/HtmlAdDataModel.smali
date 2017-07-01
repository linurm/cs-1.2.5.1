.class public Lcom/facebook/ads/internal/HtmlAdDataModel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/AdDataModel;


# static fields
.field private static final ACTIVATION_COMMAND_KEY:Ljava/lang/String; = "activation_command"

.field private static final DETECTION_STRINGS_KEY:Ljava/lang/String; = "detection_strings"

.field private static final INVALIDATION_BEHAVIOR_KEY:Ljava/lang/String; = "invalidation_behavior"

.field private static final MARKUP_KEY:Ljava/lang/String; = "markup"


# instance fields
.field private final activationCommand:Ljava/lang/String;

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

.field private final invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field private final markup:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->markup:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->activationCommand:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@9
    iput-object p4, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->detectionStrings:Ljava/util/Collection;

    #@b
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/facebook/ads/internal/HtmlAdDataModel;
    .registers 6

    #@0
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@2
    const-string v1, "markup"

    #@4
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const-string v2, "activation_command"

    #@a
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    sget-object v3, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/HtmlAdDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V

    #@14
    return-object v0
.end method

.method public static fromIntentExtra(Landroid/content/Intent;)Lcom/facebook/ads/internal/HtmlAdDataModel;
    .registers 6

    #@0
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@2
    const-string v1, "markup"

    #@4
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const-string v2, "activation_command"

    #@a
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    sget-object v3, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/HtmlAdDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V

    #@14
    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/HtmlAdDataModel;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v1, "markup"

    #@6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const-string v1, "activation_command"

    #@c
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    const-string v1, "invalidation_behavior"

    #@12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Lcom/facebook/ads/internal/AdInvalidationBehavior;->fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@19
    move-result-object v4

    #@1a
    :try_start_1a
    new-instance v1, Lorg/json/JSONArray;

    #@1c
    const-string v5, "detection_strings"

    #@1e
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-direct {v1, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_25} :catch_2f

    #@25
    :goto_25
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@27
    invoke-static {v1}, Lcom/facebook/ads/internal/AdInvalidationUtils;->parseDetectionStrings(Lorg/json/JSONArray;)Ljava/util/Collection;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/internal/HtmlAdDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V

    #@2e
    goto :goto_3

    #@2f
    :catch_2f
    move-exception v1

    #@30
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    #@33
    move-object v1, v0

    #@34
    goto :goto_25
.end method


# virtual methods
.method public addToIntentExtra(Landroid/content/Intent;)V
    .registers 4

    #@0
    const-string v0, "markup"

    #@2
    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->markup:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7
    const-string v0, "activation_command"

    #@9
    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->activationCommand:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@e
    return-void
.end method

.method public getActivationCommand()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->activationCommand:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->detectionStrings:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getInvalidationBehavior()Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@2
    return-object v0
.end method

.method public getMarkup()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->markup:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSendImpressionCommand()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "facebookAd.sendImpression();"

    #@2
    return-object v0
.end method

.method public saveToBundle()Landroid/os/Bundle;
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "markup"

    #@7
    iget-object v2, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->markup:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    return-object v0
.end method
