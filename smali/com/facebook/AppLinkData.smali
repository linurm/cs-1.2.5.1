.class public Lcom/facebook/AppLinkData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppLinkData$CompletionHandler;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private argumentBundle:Landroid/os/Bundle;

.field private arguments:Lorg/json/JSONObject;

.field private ref:Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/AppLinkData;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    #@3
    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/AppLinkData;
    .registers 3

    #@0
    const-string v0, "activity"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_d

    #@b
    const/4 v0, 0x0

    #@c
    :cond_c
    :goto_c
    return-object v0

    #@d
    :cond_d
    invoke-static {v1}, Lcom/facebook/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/AppLinkData;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_1d

    #@13
    const-string v0, "com.facebook.platform.APPLINK_ARGS"

    #@15
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    #@1c
    move-result-object v0

    #@1d
    :cond_1d
    if-nez v0, :cond_c

    #@1f
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/facebook/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;

    #@26
    move-result-object v0

    #@27
    goto :goto_c
.end method

.method private static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/AppLinkData;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "al_applink_data"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@6
    move-result-object v2

    #@7
    if-nez v2, :cond_a

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    new-instance v1, Lcom/facebook/AppLinkData;

    #@c
    invoke-direct {v1}, Lcom/facebook/AppLinkData;-><init>()V

    #@f
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@12
    move-result-object v3

    #@13
    iput-object v3, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    #@15
    iget-object v3, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    #@17
    if-nez v3, :cond_27

    #@19
    const-string v3, "target_url"

    #@1b
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    if-eqz v3, :cond_27

    #@21
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@24
    move-result-object v3

    #@25
    iput-object v3, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    #@27
    :cond_27
    iput-object v2, v1, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@29
    iput-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@2b
    const-string v0, "referer_data"

    #@2d
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@30
    move-result-object v0

    #@31
    if-eqz v0, :cond_3b

    #@33
    const-string v2, "fb_ref"

    #@35
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    #@3b
    :cond_3b
    move-object v0, v1

    #@3c
    goto :goto_9
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :cond_3
    :goto_3
    return-object v0

    #@4
    :cond_4
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    #@6
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@9
    const-string v1, "version"

    #@b
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    const-string v3, "bridge_args"

    #@11
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@14
    move-result-object v3

    #@15
    const-string v4, "method"

    #@17
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    const-string v4, "applink"

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    const-string v3, "2"

    #@25
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_3

    #@2b
    new-instance v1, Lcom/facebook/AppLinkData;

    #@2d
    invoke-direct {v1}, Lcom/facebook/AppLinkData;-><init>()V

    #@30
    const-string v3, "method_args"

    #@32
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@35
    move-result-object v2

    #@36
    iput-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@38
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@3a
    const-string v3, "ref"

    #@3c
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_6e

    #@42
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@44
    const-string v3, "ref"

    #@46
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    #@4c
    :cond_4c
    :goto_4c
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@4e
    const-string v3, "target_url"

    #@50
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_64

    #@56
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@58
    const-string v3, "target_url"

    #@5a
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@61
    move-result-object v2

    #@62
    iput-object v2, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    #@64
    :cond_64
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@66
    invoke-static {v2}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    #@69
    move-result-object v2

    #@6a
    iput-object v2, v1, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@6c
    move-object v0, v1

    #@6d
    goto :goto_3

    #@6e
    :cond_6e
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@70
    const-string v3, "referer_data"

    #@72
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_4c

    #@78
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@7a
    const-string v3, "referer_data"

    #@7c
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@7f
    move-result-object v2

    #@80
    const-string v3, "fb_ref"

    #@82
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@85
    move-result v3

    #@86
    if-eqz v3, :cond_4c

    #@88
    const-string v3, "fb_ref"

    #@8a
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    iput-object v2, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_90} :catch_91
    .catch Lcom/facebook/FacebookException; {:try_start_4 .. :try_end_90} :catch_9b

    #@90
    goto :goto_4c

    #@91
    :catch_91
    move-exception v1

    #@92
    sget-object v2, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    #@94
    const-string v3, "Unable to parse AppLink JSON"

    #@96
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@99
    goto/16 :goto_3

    #@9b
    :catch_9b
    move-exception v1

    #@9c
    sget-object v2, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    #@9e
    const-string v3, "Unable to parse AppLink JSON"

    #@a0
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a3
    goto/16 :goto_3
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v0, Lcom/facebook/AppLinkData;

    #@6
    invoke-direct {v0}, Lcom/facebook/AppLinkData;-><init>()V

    #@9
    iput-object p0, v0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    #@b
    goto :goto_3
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    #@4
    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .registers 6

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "completionHandler"

    #@7
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    if-nez p1, :cond_10

    #@c
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    :cond_10
    const-string v0, "applicationId"

    #@12
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    #@1c
    move-result-object v1

    #@1d
    new-instance v2, Lcom/facebook/AppLinkData$1;

    #@1f
    invoke-direct {v2, v0, p1, p2}, Lcom/facebook/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    #@22
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@25
    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .registers 13

    #@0
    const-wide/16 v8, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    #@6
    move-result-object v1

    #@7
    const-string v2, "event"

    #@9
    const-string v3, "DEFERRED_APP_LINK"

    #@b
    invoke-interface {v1, v2, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@e
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    #@11
    move-result-object v2

    #@12
    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {p0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    #@19
    move-result v4

    #@1a
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    #@1d
    const-string v2, "application_package_name"

    #@1f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v1, v2, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@26
    const-string v2, "%s/activities"

    #@28
    const/4 v3, 0x1

    #@29
    new-array v3, v3, [Ljava/lang/Object;

    #@2b
    const/4 v4, 0x0

    #@2c
    aput-object p1, v3, v4

    #@2e
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    const/4 v3, 0x0

    #@33
    const/4 v4, 0x0

    #@34
    :try_start_34
    invoke-static {v3, v2, v1, v4}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@3f
    move-result-object v1

    #@40
    if-eqz v1, :cond_be

    #@42
    invoke-interface {v1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@45
    move-result-object v1

    #@46
    :goto_46
    if-eqz v1, :cond_ba

    #@48
    const-string v2, "applink_args"

    #@4a
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    const-string v3, "click_time"

    #@50
    const-wide/16 v4, -0x1

    #@52
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    #@55
    move-result-wide v4

    #@56
    const-string v3, "applink_class"

    #@58
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    const-string v6, "applink_url"

    #@5e
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_61} :catch_c9

    #@61
    move-result-object v1

    #@62
    if-eqz v2, :cond_ba

    #@64
    const-string v6, ""

    #@66
    if-eq v2, v6, :cond_ba

    #@68
    :try_start_68
    invoke-static {v2}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_c9

    #@6b
    move-result-object v0

    #@6c
    cmp-long v2, v4, v8

    #@6e
    if-eqz v2, :cond_8a

    #@70
    :try_start_70
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@72
    if-eqz v2, :cond_7b

    #@74
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@76
    const-string v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    #@78
    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@7b
    :cond_7b
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@7d
    if-eqz v2, :cond_8a

    #@7f
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@81
    const-string v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    #@83
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_8a} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_8a} :catch_c9

    #@8a
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_a2

    #@8c
    :try_start_8c
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@8e
    if-eqz v2, :cond_97

    #@90
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@92
    const-string v4, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    #@94
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@97
    :cond_97
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@99
    if-eqz v2, :cond_a2

    #@9b
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@9d
    const-string v4, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    #@9f
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_8c .. :try_end_a2} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a2} :catch_c9

    #@a2
    :cond_a2
    :goto_a2
    if-eqz v1, :cond_ba

    #@a4
    :try_start_a4
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@a6
    if-eqz v2, :cond_af

    #@a8
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@aa
    const-string v3, "com.facebook.platform.APPLINK_NATIVE_URL"

    #@ac
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@af
    :cond_af
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@b1
    if-eqz v2, :cond_ba

    #@b3
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@b5
    const-string v3, "com.facebook.platform.APPLINK_NATIVE_URL"

    #@b7
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_a4 .. :try_end_ba} :catch_db
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ba} :catch_c9

    #@ba
    :cond_ba
    :goto_ba
    invoke-interface {p2, v0}, Lcom/facebook/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/AppLinkData;)V

    #@bd
    return-void

    #@be
    :cond_be
    move-object v1, v0

    #@bf
    goto :goto_46

    #@c0
    :catch_c0
    move-exception v2

    #@c1
    :try_start_c1
    sget-object v2, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    #@c3
    const-string v4, "Unable to put tap time in AppLinkData.arguments"

    #@c5
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c8} :catch_c9

    #@c8
    goto :goto_8a

    #@c9
    :catch_c9
    move-exception v1

    #@ca
    sget-object v1, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    #@cc
    const-string v2, "Unable to fetch deferred applink from server"

    #@ce
    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    #@d1
    goto :goto_ba

    #@d2
    :catch_d2
    move-exception v2

    #@d3
    :try_start_d3
    sget-object v2, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    #@d5
    const-string v3, "Unable to put tap time in AppLinkData.arguments"

    #@d7
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@da
    goto :goto_a2

    #@db
    :catch_db
    move-exception v1

    #@dc
    sget-object v1, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    #@de
    const-string v2, "Unable to put tap time in AppLinkData.arguments"

    #@e0
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e3} :catch_c9

    #@e3
    goto :goto_ba
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v4, Landroid/os/Bundle;

    #@3
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@6
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    #@9
    move-result-object v5

    #@a
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_93

    #@10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    instance-of v2, v1, Lorg/json/JSONObject;

    #@1c
    if-eqz v2, :cond_28

    #@1e
    check-cast v1, Lorg/json/JSONObject;

    #@20
    invoke-static {v1}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@27
    goto :goto_a

    #@28
    :cond_28
    instance-of v2, v1, Lorg/json/JSONArray;

    #@2a
    if-eqz v2, :cond_8a

    #@2c
    check-cast v1, Lorg/json/JSONArray;

    #@2e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_3a

    #@34
    new-array v1, v3, [Ljava/lang/String;

    #@36
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@39
    goto :goto_a

    #@3a
    :cond_3a
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    instance-of v6, v2, Lorg/json/JSONObject;

    #@40
    if-eqz v6, :cond_60

    #@42
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@45
    move-result v2

    #@46
    new-array v6, v2, [Landroid/os/Bundle;

    #@48
    move v2, v3

    #@49
    :goto_49
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@4c
    move-result v7

    #@4d
    if-ge v2, v7, :cond_5c

    #@4f
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    #@52
    move-result-object v7

    #@53
    invoke-static {v7}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    #@56
    move-result-object v7

    #@57
    aput-object v7, v6, v2

    #@59
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_49

    #@5c
    :cond_5c
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@5f
    goto :goto_a

    #@60
    :cond_60
    instance-of v2, v2, Lorg/json/JSONArray;

    #@62
    if-eqz v2, :cond_6c

    #@64
    new-instance v0, Lcom/facebook/FacebookException;

    #@66
    const-string v1, "Nested arrays are not supported."

    #@68
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0

    #@6c
    :cond_6c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@6f
    move-result v2

    #@70
    new-array v6, v2, [Ljava/lang/String;

    #@72
    move v2, v3

    #@73
    :goto_73
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@76
    move-result v7

    #@77
    if-ge v2, v7, :cond_86

    #@79
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@80
    move-result-object v7

    #@81
    aput-object v7, v6, v2

    #@83
    add-int/lit8 v2, v2, 0x1

    #@85
    goto :goto_73

    #@86
    :cond_86
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@89
    goto :goto_a

    #@8a
    :cond_8a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@91
    goto/16 :goto_a

    #@93
    :cond_93
    return-object v4
.end method


# virtual methods
.method public getArgumentBundle()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getArguments()Lorg/json/JSONObject;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    #@6
    const-string v1, "referer_data"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_c
.end method

.method public getTargetUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method
