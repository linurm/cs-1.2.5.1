.class public Lcom/facebook/ads/internal/AdInvalidationUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isNativePackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_a

    #@8
    move v0, v1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x1

    #@f
    :try_start_f
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_12} :catch_13

    #@12
    goto :goto_9

    #@13
    :catch_13
    move-exception v0

    #@14
    move v0, v1

    #@15
    goto :goto_9
.end method

.method public static parseDetectionStrings(Lorg/json/JSONArray;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_8

    #@2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    new-instance v1, Ljava/util/HashSet;

    #@c
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@f
    const/4 v0, 0x0

    #@10
    :goto_10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    #@13
    move-result v2

    #@14
    if-ge v0, v2, :cond_20

    #@16
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_10

    #@20
    :cond_20
    move-object v0, v1

    #@21
    goto :goto_9
.end method

.method public static shouldInvalidate(Landroid/content/Context;Lcom/facebook/ads/internal/AdDataModel;)Z
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-interface {p1}, Lcom/facebook/ads/internal/AdDataModel;->getInvalidationBehavior()Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@5
    move-result-object v3

    #@6
    if-eqz v3, :cond_3d

    #@8
    sget-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@a
    if-ne v3, v0, :cond_e

    #@c
    move v0, v1

    #@d
    :cond_d
    :goto_d
    return v0

    #@e
    :cond_e
    invoke-interface {p1}, Lcom/facebook/ads/internal/AdDataModel;->getDetectionStrings()Ljava/util/Collection;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_3d

    #@14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_3d

    #@1a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v4

    #@1e
    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_3f

    #@24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/lang/String;

    #@2a
    invoke-static {p0, v0}, Lcom/facebook/ads/internal/AdInvalidationUtils;->isNativePackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_1e

    #@30
    move v0, v2

    #@31
    :goto_31
    sget-object v4, Lcom/facebook/ads/internal/AdInvalidationBehavior;->INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@33
    if-eq v3, v4, :cond_d

    #@35
    sget-object v4, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NOT_INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@37
    if-ne v3, v4, :cond_3d

    #@39
    if-nez v0, :cond_3d

    #@3b
    move v0, v2

    #@3c
    goto :goto_d

    #@3d
    :cond_3d
    move v0, v1

    #@3e
    goto :goto_d

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_31
.end method
