.class public Lcom/facebook/ads/internal/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;,
        Lcom/facebook/ads/internal/AdRequest$Callback;
    }
.end annotation


# static fields
.field private static final ADS_ENDPOINT:Ljava/lang/String; = "network_ads"

.field private static final AD_REQUEST_TIMEOUT_MS:I = 0x7530

.field private static final AD_TYPE_PARAM:Ljava/lang/String; = "ad_type"

.field private static final APP_BUILD_PARAM:Ljava/lang/String; = "app_build"

.field private static final APP_VERSION_PARAM:Ljava/lang/String; = "app_version"

.field private static final ATTRIBUTION_ID_PARAM:Ljava/lang/String; = "attribution_id"

.field private static final CHILD_DIRECTED_PARAM:Ljava/lang/String; = "child_directed"

.field private static final CLIENT_EVENTS_PARAM:Ljava/lang/String; = "events"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEVICE_ID_PARAM:Ljava/lang/String; = "device_id"

.field private static final DEVICE_ID_TRACKING_ENABLED_PARAM:Ljava/lang/String; = "tracking_enabled"

.field private static final GRAPH_URL_BASE:Ljava/lang/String; = "https://graph.facebook.com"

.field private static final GRAPH_URL_BASE_PREFIX_FORMAT:Ljava/lang/String; = "http://graph.%s.facebook.com"

.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final LOCALE_PARAM:Ljava/lang/String; = "locale"

.field private static final NATIVE_ADS_ENDPOINT:Ljava/lang/String; = "network_ads_native"

.field private static final OS:Ljava/lang/String; = "Android"

.field private static final OS_PARAM:Ljava/lang/String; = "os"

.field private static final OS_VERSION_PARAM:Ljava/lang/String; = "os_version"

.field private static final PACKAGE_NAME_PARAM:Ljava/lang/String; = "package_name"

.field private static final PLACEMENT_ID_PARAM:Ljava/lang/String; = "placement_id"

.field private static final SCREEN_HEIGHT_PARAM:Ljava/lang/String; = "screen_height"

.field private static final SCREEN_WIDTH_PARAM:Ljava/lang/String; = "screen_width"

.field private static final SDK_CAPABILITIES_PARAM:Ljava/lang/String; = "sdk_capabilities"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_MODE_PARAM:Ljava/lang/String; = "test_mode"

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# instance fields
.field private final adSize:Lcom/facebook/ads/AdSize;

.field private final adType:Lcom/facebook/ads/internal/AdType;

.field private final callback:Lcom/facebook/ads/internal/AdRequest$Callback;

.field private final context:Landroid/content/Context;

.field private final placementId:Ljava/lang/String;

.field private final testMode:Z

.field private final userAgentString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/internal/AdRequest;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/internal/AdRequest;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/AdType;ZLcom/facebook/ads/internal/AdRequest$Callback;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p2, :cond_c

    #@5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    if-ge v0, v1, :cond_14

    #@c
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v1, "placementId"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    if-nez p3, :cond_1e

    #@16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v1, "adSize"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    if-nez p6, :cond_28

    #@20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string v1, "callback"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    :cond_28
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@2a
    iput-object p2, p0, Lcom/facebook/ads/internal/AdRequest;->placementId:Ljava/lang/String;

    #@2c
    iput-object p3, p0, Lcom/facebook/ads/internal/AdRequest;->adSize:Lcom/facebook/ads/AdSize;

    #@2e
    invoke-static {p1}, Lcom/facebook/ads/internal/AdWebViewUtils;->getUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->userAgentString:Ljava/lang/String;

    #@34
    iput-object p4, p0, Lcom/facebook/ads/internal/AdRequest;->adType:Lcom/facebook/ads/internal/AdType;

    #@36
    iput-boolean p5, p0, Lcom/facebook/ads/internal/AdRequest;->testMode:Z

    #@38
    iput-object p6, p0, Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;

    #@3a
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/ads/internal/AdRequest;)Lcom/facebook/ads/internal/AdRequest$Callback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/ads/internal/AdRequest;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method private addAdvertisingInfoParams(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@3
    invoke-static {v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/facebook/ads/internal/AdvertisingIdInfo;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_13

    #@9
    const-string v1, "tracking_enabled"

    #@b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e
    move-result-object v0

    #@f
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    :cond_12
    :goto_12
    return-void

    #@13
    :cond_13
    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;->isLimitAdTrackingEnabled()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_32

    #@19
    :goto_19
    const-string v2, "tracking_enabled"

    #@1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object v0

    #@1f
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;->isLimitAdTrackingEnabled()Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_12

    #@28
    const-string v0, "device_id"

    #@2a
    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;->getId()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    goto :goto_12

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    goto :goto_19
.end method

.method private addAppInfoParams(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "package_name"

    #@2
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    return-void
.end method

.method private addDeviceInfoParams(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    const-string v0, "os"

    #@3
    const-string v1, "Android"

    #@5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    const-string v0, "os_version"

    #@a
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@c
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@18
    move-result-object v0

    #@19
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1b
    int-to-float v1, v1

    #@1c
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    #@1e
    div-float/2addr v1, v2

    #@1f
    float-to-int v1, v1

    #@20
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@22
    int-to-float v2, v2

    #@23
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@25
    div-float v0, v2, v0

    #@27
    float-to-int v0, v0

    #@28
    const-string v2, "screen_width"

    #@2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    const-string v1, "screen_height"

    #@33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v0

    #@37
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    :try_start_3a
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@3c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3f
    move-result-object v0

    #@40
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@42
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    const/4 v2, 0x0

    #@47
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@4a
    move-result-object v0

    #@4b
    const-string v1, "app_build"

    #@4d
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@4f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v2

    #@53
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    const-string v1, "app_version"

    #@58
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@5a
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_5d} :catch_79

    #@5d
    :goto_5d
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@5f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@66
    move-result-object v0

    #@67
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@69
    if-nez v0, :cond_6f

    #@6b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@6e
    move-result-object v0

    #@6f
    :cond_6f
    const-string v1, "locale"

    #@71
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    return-void

    #@79
    :catch_79
    move-exception v0

    #@7a
    const-string v0, "app_version"

    #@7c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7f
    move-result-object v1

    #@80
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    goto :goto_5d
.end method

.method private createResponsesFromStream(Ljava/io/InputStream;)Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
    .registers 9

    #@0
    const/4 v6, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    new-instance v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    #@4
    invoke-direct {v2, v1}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>(Lcom/facebook/ads/internal/AdRequest$1;)V

    #@7
    :try_start_7
    invoke-static {p1}, Lcom/facebook/ads/internal/AdUtilities;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    new-instance v3, Lorg/json/JSONTokener;

    #@d
    invoke-direct {v3, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    instance-of v3, v0, Lorg/json/JSONObject;

    #@16
    if-eqz v3, :cond_3f

    #@18
    check-cast v0, Lorg/json/JSONObject;

    #@1a
    const-string v3, "error"

    #@1c
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_49

    #@22
    const-string v3, "error"

    #@24
    invoke-static {v0, v3}, Lcom/facebook/ads/internal/AdUtilities;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lorg/json/JSONObject;

    #@2a
    const-string v3, "code"

    #@2c
    const/4 v4, -0x1

    #@2d
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@30
    move-result v3

    #@31
    const-string v4, "message"

    #@33
    const/4 v5, 0x0

    #@34
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    new-instance v4, Lcom/facebook/ads/AdError;

    #@3a
    invoke-direct {v4, v3, v0}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@3d
    iput-object v4, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3f} :catch_4f

    #@3f
    :cond_3f
    :goto_3f
    iget-object v0, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->body:Lorg/json/JSONObject;

    #@41
    if-nez v0, :cond_5c

    #@43
    iget-object v0, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    #@45
    if-nez v0, :cond_5c

    #@47
    move-object v0, v1

    #@48
    :goto_48
    return-object v0

    #@49
    :cond_49
    :try_start_49
    iput-object v0, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->body:Lorg/json/JSONObject;

    #@4b
    const/4 v0, 0x0

    #@4c
    iput-object v0, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_4f

    #@4e
    goto :goto_3f

    #@4f
    :catch_4f
    move-exception v0

    #@50
    new-instance v3, Lcom/facebook/ads/AdError;

    #@52
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-direct {v3, v6, v0}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@59
    iput-object v3, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    #@5b
    goto :goto_3f

    #@5c
    :cond_5c
    move-object v0, v2

    #@5d
    goto :goto_48
.end method

.method private getAdsEndpoint()Ljava/lang/String;
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdRequest$2;->$SwitchMap$com$facebook$ads$internal$AdType:[I

    #@2
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->adType:Lcom/facebook/ads/internal/AdType;

    #@4
    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_14

    #@d
    const-string v0, "network_ads"

    #@f
    :goto_f
    return-object v0

    #@10
    :pswitch_10
    const-string v0, "network_ads_native"

    #@12
    goto :goto_f

    #@13
    nop

    #@14
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method private getQueryString(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    const/16 v0, 0x200

    #@4
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    const/4 v0, 0x1

    #@8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v4

    #@10
    move v1, v0

    #@11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_50

    #@17
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/Map$Entry;

    #@1d
    if-eqz v1, :cond_49

    #@1f
    const/4 v2, 0x0

    #@20
    :goto_20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/lang/String;

    #@26
    const-string v5, "utf-8"

    #@28
    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string v5, "="

    #@32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    const-string v5, "utf-8"

    #@40
    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move v1, v2

    #@48
    goto :goto_11

    #@49
    :cond_49
    const-string v2, "&"

    #@4b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move v2, v1

    #@4f
    goto :goto_20

    #@50
    :cond_50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    return-object v0
.end method

.method private getRequestParameters()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    const-string v1, "ad_type"

    #@7
    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequest;->adType:Lcom/facebook/ads/internal/AdType;

    #@9
    invoke-virtual {v2}, Lcom/facebook/ads/internal/AdType;->getValue()I

    #@c
    move-result v2

    #@d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    const-string v1, "sdk_capabilities"

    #@16
    invoke-static {}, Lcom/facebook/ads/internal/AdSdkCapability;->getSupportedCapabilitiesAsJSONString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    const-string v1, "sdk_version"

    #@1f
    const-string v2, "3.15.0"

    #@21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    const-string v1, "placement_id"

    #@26
    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequest;->placementId:Ljava/lang/String;

    #@28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    const-string v1, "attribution_id"

    #@2d
    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@2f
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@32
    move-result-object v2

    #@33
    invoke-static {v2}, Lcom/facebook/ads/internal/AdUtilities;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    const-string v1, "width"

    #@3c
    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequest;->adSize:Lcom/facebook/ads/AdSize;

    #@3e
    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getWidth()I

    #@41
    move-result v2

    #@42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v2

    #@46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    const-string v1, "height"

    #@4b
    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequest;->adSize:Lcom/facebook/ads/AdSize;

    #@4d
    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getHeight()I

    #@50
    move-result v2

    #@51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v2

    #@55
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    const-string v1, "test_mode"

    #@5a
    iget-boolean v2, p0, Lcom/facebook/ads/internal/AdRequest;->testMode:Z

    #@5c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5f
    move-result-object v2

    #@60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    const-string v1, "child_directed"

    #@65
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isChildDirected()Z

    #@68
    move-result v2

    #@69
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6c
    move-result-object v2

    #@6d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    const-string v1, "events"

    #@72
    invoke-static {}, Lcom/facebook/ads/internal/AdClientEventManager;->dumpClientEventToJson()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequest;->addDeviceInfoParams(Ljava/util/Map;)V

    #@7c
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequest;->addAppInfoParams(Ljava/util/Map;)V

    #@7f
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequest;->addAdvertisingInfoParams(Ljava/util/Map;)V

    #@82
    return-object v0
.end method

.method private getUrlForRequest()Ljava/net/URL;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_25

    #@c
    const-string v0, "https://graph.facebook.com"

    #@e
    :goto_e
    new-instance v1, Ljava/net/URL;

    #@10
    const-string v2, "%s/%s"

    #@12
    const/4 v3, 0x2

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    aput-object v0, v3, v4

    #@17
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest;->getAdsEndpoint()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    aput-object v0, v3, v5

    #@1d
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@24
    return-object v1

    #@25
    :cond_25
    const-string v1, "http://graph.%s.facebook.com"

    #@27
    new-array v2, v5, [Ljava/lang/Object;

    #@29
    aput-object v0, v2, v4

    #@2b
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    goto :goto_e
.end method

.method private makeRequest()Ljava/net/HttpURLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v3, 0x7530

    #@2
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest;->getUrlForRequest()Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/net/HttpURLConnection;

    #@c
    const-string v1, "User-Agent"

    #@e
    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequest;->userAgentString:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const-string v1, "Content-Type"

    #@15
    const-string v2, "application/x-www-form-urlencoded"

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    const-string v1, "POST"

    #@1c
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    #@23
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@26
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@29
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest;->getRequestParameters()Ljava/util/Map;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/AdRequest;->getQueryString(Ljava/util/Map;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@33
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3a
    new-instance v3, Ljava/io/BufferedWriter;

    #@3c
    new-instance v4, Ljava/io/OutputStreamWriter;

    #@3e
    const-string v5, "utf-8"

    #@40
    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@43
    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@46
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@49
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    #@4c
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    #@4f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    #@52
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    #@55
    return-object v0
.end method


# virtual methods
.method public executeAsync()Landroid/os/AsyncTask;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/facebook/ads/internal/AdAnalogData;->startUpdate(Landroid/content/Context;)V

    #@5
    new-instance v0, Lcom/facebook/ads/internal/AdRequest$1;

    #@7
    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/AdRequest$1;-><init>(Lcom/facebook/ads/internal/AdRequest;)V

    #@a
    const/4 v1, 0x0

    #@b
    new-array v1, v1, [Ljava/lang/Void;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public executeConnectionAndWait()Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest;->makeRequest()Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_4} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_62
    .catchall {:try_start_1 .. :try_end_4} :catchall_7e

    #@4
    move-result-object v2

    #@5
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@8
    move-result v0

    #@9
    const/16 v3, 0x190

    #@b
    if-lt v0, v3, :cond_1f

    #@d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_10} :catch_a9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_99
    .catchall {:try_start_5 .. :try_end_10} :catchall_8a

    #@10
    move-result-object v0

    #@11
    :goto_11
    :try_start_11
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequest;->createResponsesFromStream(Ljava/io/InputStream;)Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
    :try_end_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_14} :catch_af
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_9b
    .catchall {:try_start_11 .. :try_end_14} :catchall_8e

    #@14
    move-result-object v1

    #@15
    invoke-static {v0}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@18
    if-eqz v2, :cond_b4

    #@1a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    #@1d
    move-object v0, v1

    #@1e
    :cond_1e
    :goto_1e
    return-object v0

    #@1f
    :cond_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_1f .. :try_end_22} :catch_a9
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_99
    .catchall {:try_start_1f .. :try_end_22} :catchall_8a

    #@22
    move-result-object v0

    #@23
    goto :goto_11

    #@24
    :catch_24
    move-exception v0

    #@25
    move-object v2, v1

    #@26
    move-object v3, v1

    #@27
    move-object v1, v0

    #@28
    :goto_28
    :try_start_28
    new-instance v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>(Lcom/facebook/ads/internal/AdRequest$1;)V

    #@2e
    new-instance v4, Lcom/facebook/ads/AdError;

    #@30
    const/4 v5, -0x1

    #@31
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v4, v5, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@38
    iput-object v4, v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_93

    #@3a
    invoke-static {v2}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@3d
    if-eqz v3, :cond_1e

    #@3f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    #@42
    goto :goto_1e

    #@43
    :catch_43
    move-exception v0

    #@44
    move-object v2, v1

    #@45
    move-object v3, v1

    #@46
    move-object v1, v0

    #@47
    :goto_47
    :try_start_47
    new-instance v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    #@49
    const/4 v4, 0x0

    #@4a
    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>(Lcom/facebook/ads/internal/AdRequest$1;)V

    #@4d
    new-instance v4, Lcom/facebook/ads/AdError;

    #@4f
    const/4 v5, -0x1

    #@50
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v4, v5, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@57
    iput-object v4, v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_93

    #@59
    invoke-static {v2}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@5c
    if-eqz v3, :cond_1e

    #@5e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    #@61
    goto :goto_1e

    #@62
    :catch_62
    move-exception v0

    #@63
    move-object v2, v1

    #@64
    :goto_64
    :try_start_64
    sget-object v3, Lcom/facebook/ads/internal/AdRequest;->TAG:Ljava/lang/String;

    #@66
    const-string v4, "Unexpected error"

    #@68
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    new-instance v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    #@6d
    const/4 v3, 0x0

    #@6e
    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>(Lcom/facebook/ads/internal/AdRequest$1;)V

    #@71
    sget-object v3, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@73
    iput-object v3, v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_75
    .catchall {:try_start_64 .. :try_end_75} :catchall_95

    #@75
    invoke-static {v1}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@78
    if-eqz v2, :cond_1e

    #@7a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    #@7d
    goto :goto_1e

    #@7e
    :catchall_7e
    move-exception v0

    #@7f
    move-object v3, v1

    #@80
    move-object v2, v1

    #@81
    :goto_81
    invoke-static {v2}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    #@84
    if-eqz v3, :cond_89

    #@86
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    #@89
    :cond_89
    throw v0

    #@8a
    :catchall_8a
    move-exception v0

    #@8b
    move-object v3, v2

    #@8c
    move-object v2, v1

    #@8d
    goto :goto_81

    #@8e
    :catchall_8e
    move-exception v1

    #@8f
    move-object v3, v2

    #@90
    move-object v2, v0

    #@91
    move-object v0, v1

    #@92
    goto :goto_81

    #@93
    :catchall_93
    move-exception v0

    #@94
    goto :goto_81

    #@95
    :catchall_95
    move-exception v0

    #@96
    move-object v3, v2

    #@97
    move-object v2, v1

    #@98
    goto :goto_81

    #@99
    :catch_99
    move-exception v0

    #@9a
    goto :goto_64

    #@9b
    :catch_9b
    move-exception v1

    #@9c
    move-object v6, v1

    #@9d
    move-object v1, v0

    #@9e
    move-object v0, v6

    #@9f
    goto :goto_64

    #@a0
    :catch_a0
    move-exception v0

    #@a1
    move-object v3, v2

    #@a2
    move-object v2, v1

    #@a3
    move-object v1, v0

    #@a4
    goto :goto_47

    #@a5
    :catch_a5
    move-exception v1

    #@a6
    move-object v3, v2

    #@a7
    move-object v2, v0

    #@a8
    goto :goto_47

    #@a9
    :catch_a9
    move-exception v0

    #@aa
    move-object v3, v2

    #@ab
    move-object v2, v1

    #@ac
    move-object v1, v0

    #@ad
    goto/16 :goto_28

    #@af
    :catch_af
    move-exception v1

    #@b0
    move-object v3, v2

    #@b1
    move-object v2, v0

    #@b2
    goto/16 :goto_28

    #@b4
    :cond_b4
    move-object v0, v1

    #@b5
    goto/16 :goto_1e
.end method
