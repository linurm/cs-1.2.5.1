.class public Lcom/facebook/ads/internal/action/AppAdAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/action/AdAction;


# static fields
.field private static final MARKET_DETAIL_URI_FORMAT:Ljava/lang/String; = "market://details?id=%s"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/internal/action/AppAdAction;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/internal/action/AppAdAction;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/action/AppAdAction;->context:Landroid/content/Context;

    #@5
    iput-object p2, p0, Lcom/facebook/ads/internal/action/AppAdAction;->uri:Landroid/net/Uri;

    #@7
    return-void
.end method

.method private getAppLaunchIntent(Lcom/facebook/ads/internal/AppSiteData;)Landroid/content/Intent;
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_d

    #@b
    move-object v0, v1

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/internal/action/AppAdAction;->context:Landroid/content/Context;

    #@f
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v0, v2}, Lcom/facebook/ads/internal/AdInvalidationUtils;->isNativePackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1b

    #@19
    move-object v0, v1

    #@1a
    goto :goto_c

    #@1b
    :cond_1b
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getAppLinkUri()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_41

    #@25
    const-string v0, "tel:"

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2a
    move-result v0

    #@2b
    if-nez v0, :cond_35

    #@2d
    const-string v0, "telprompt:"

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_41

    #@35
    :cond_35
    new-instance v0, Landroid/content/Intent;

    #@37
    const-string v1, "android.intent.action.CALL"

    #@39
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3c
    move-result-object v2

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@40
    goto :goto_c

    #@41
    :cond_41
    iget-object v0, p0, Lcom/facebook/ads/internal/action/AppAdAction;->context:Landroid/content/Context;

    #@43
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getClassName()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v3}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_60

    #@51
    invoke-static {v2}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_60

    #@57
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getPackageName()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    move-result-object v0

    #@5f
    goto :goto_c

    #@60
    :cond_60
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/action/AppAdAction;->getAppLinkIntentUnresolved(Lcom/facebook/ads/internal/AppSiteData;)Landroid/content/Intent;

    #@63
    move-result-object v2

    #@64
    const/high16 v3, 0x10000

    #@66
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@6d
    move-result-object v0

    #@6e
    if-nez v0, :cond_9e

    #@70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@73
    move-result-object v4

    #@74
    :cond_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@77
    move-result v0

    #@78
    if-eqz v0, :cond_9e

    #@7a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@80
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@82
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@84
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getPackageName()Ljava/lang/String;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_74

    #@8e
    new-instance v4, Landroid/content/ComponentName;

    #@90
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@92
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@94
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@96
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@98
    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9b
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@9e
    :cond_9e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@a1
    move-result v0

    #@a2
    if-nez v0, :cond_aa

    #@a4
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@a7
    move-result-object v0

    #@a8
    if-nez v0, :cond_ad

    #@aa
    :cond_aa
    move-object v0, v1

    #@ab
    goto/16 :goto_c

    #@ad
    :cond_ad
    move-object v0, v2

    #@ae
    goto/16 :goto_c
.end method

.method private getAppLaunchIntents()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/internal/action/AppAdAction;->getAppsiteDatas()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    if-eqz v0, :cond_25

    #@b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_25

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/facebook/ads/internal/AppSiteData;

    #@1b
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/action/AppAdAction;->getAppLaunchIntent(Lcom/facebook/ads/internal/AppSiteData;)Landroid/content/Intent;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_f

    #@21
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_f

    #@25
    :cond_25
    return-object v1
.end method

.method private getAppLinkIntentUnresolved(Lcom/facebook/ads/internal/AppSiteData;)Landroid/content/Intent;
    .registers 6

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.VIEW"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const/high16 v1, 0x10000000

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@c
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_30

    #@16
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getClassName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_30

    #@20
    new-instance v1, Landroid/content/ComponentName;

    #@22
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getPackageName()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getClassName()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@30
    :cond_30
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getAppLinkUri()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_45

    #@3a
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AppSiteData;->getAppLinkUri()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@45
    :cond_45
    return-object v0
.end method

.method private getAppsiteDatas()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/AppSiteData;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/action/AppAdAction;->uri:Landroid/net/Uri;

    #@2
    const-string v1, "appsite_data"

    #@4
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_16

    #@e
    const-string v0, "[]"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_18

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    :cond_17
    :goto_17
    return-object v0

    #@18
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    :try_start_1d
    new-instance v2, Lorg/json/JSONObject;

    #@1f
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@22
    const-string v1, "android"

    #@24
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@27
    move-result-object v2

    #@28
    if-eqz v2, :cond_17

    #@2a
    const/4 v1, 0x0

    #@2b
    :goto_2b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    #@2e
    move-result v3

    #@2f
    if-ge v1, v3, :cond_17

    #@31
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    #@34
    move-result-object v3

    #@35
    invoke-static {v3}, Lcom/facebook/ads/internal/AppSiteData;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/AppSiteData;

    #@38
    move-result-object v3

    #@39
    if-eqz v3, :cond_3e

    #@3b
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_3e} :catch_41

    #@3e
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_2b

    #@41
    :catch_41
    move-exception v1

    #@42
    sget-object v2, Lcom/facebook/ads/internal/action/AppAdAction;->TAG:Ljava/lang/String;

    #@44
    const-string v3, "Error parsing appsite_data"

    #@46
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    goto :goto_17
.end method

.method private getMarketUri()Landroid/net/Uri;
    .registers 6

    #@0
    const-string v0, "market://details?id=%s"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-object v3, p0, Lcom/facebook/ads/internal/action/AppAdAction;->uri:Landroid/net/Uri;

    #@8
    const-string v4, "store_id"

    #@a
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    aput-object v3, v1, v2

    #@10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private logAdClick()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/action/AppAdAction;->uri:Landroid/net/Uri;

    #@2
    const-string v1, "native_click_report_url"

    #@4
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_f

    #@e
    :goto_e
    return-void

    #@f
    :cond_f
    new-instance v1, Lcom/facebook/ads/internal/OpenUrlTask;

    #@11
    invoke-direct {v1}, Lcom/facebook/ads/internal/OpenUrlTask;-><init>()V

    #@14
    const/4 v2, 0x1

    #@15
    new-array v2, v2, [Ljava/lang/String;

    #@17
    const/4 v3, 0x0

    #@18
    aput-object v0, v2, v3

    #@1a
    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/OpenUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@1d
    goto :goto_e
.end method


# virtual methods
.method public execute()V
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/internal/action/AppAdAction;->logAdClick()V

    #@3
    invoke-direct {p0}, Lcom/facebook/ads/internal/action/AppAdAction;->getAppLaunchIntents()Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_28

    #@9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_28

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/content/Intent;

    #@19
    :try_start_19
    iget-object v2, p0, Lcom/facebook/ads/internal/action/AppAdAction;->context:Landroid/content/Context;

    #@1b
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1f

    #@1e
    :cond_1e
    :goto_1e
    return-void

    #@1f
    :catch_1f
    move-exception v0

    #@20
    sget-object v2, Lcom/facebook/ads/internal/action/AppAdAction;->TAG:Ljava/lang/String;

    #@22
    const-string v3, "Failed to open app intent, falling back"

    #@24
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_d

    #@28
    :cond_28
    new-instance v0, Landroid/content/Intent;

    #@2a
    const-string v1, "android.intent.action.VIEW"

    #@2c
    invoke-direct {p0}, Lcom/facebook/ads/internal/action/AppAdAction;->getMarketUri()Landroid/net/Uri;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@33
    :try_start_33
    iget-object v1, p0, Lcom/facebook/ads/internal/action/AppAdAction;->context:Landroid/content/Context;

    #@35
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_39

    #@38
    goto :goto_1e

    #@39
    :catch_39
    move-exception v0

    #@3a
    sget-object v1, Lcom/facebook/ads/internal/action/AppAdAction;->TAG:Ljava/lang/String;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v3, "Failed to open market url: "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    iget-object v3, p0, Lcom/facebook/ads/internal/action/AppAdAction;->uri:Landroid/net/Uri;

    #@49
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    iget-object v0, p0, Lcom/facebook/ads/internal/action/AppAdAction;->uri:Landroid/net/Uri;

    #@5a
    const-string v1, "store_url_web_fallback"

    #@5c
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    if-eqz v1, :cond_1e

    #@62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@65
    move-result v0

    #@66
    if-lez v0, :cond_1e

    #@68
    new-instance v0, Landroid/content/Intent;

    #@6a
    const-string v2, "android.intent.action.VIEW"

    #@6c
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6f
    move-result-object v3

    #@70
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@73
    :try_start_73
    iget-object v2, p0, Lcom/facebook/ads/internal/action/AppAdAction;->context:Landroid/content/Context;

    #@75
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_78} :catch_79

    #@78
    goto :goto_1e

    #@79
    :catch_79
    move-exception v0

    #@7a
    sget-object v2, Lcom/facebook/ads/internal/action/AppAdAction;->TAG:Ljava/lang/String;

    #@7c
    new-instance v3, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string v4, "Failed to open fallback url: "

    #@83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@92
    goto :goto_1e
.end method
