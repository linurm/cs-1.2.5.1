.class public Lcom/facebook/FacebookAppLinkResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final APP_LINK_ANDROID_TARGET_KEY:Ljava/lang/String; = "android"

.field private static final APP_LINK_TARGET_APP_NAME_KEY:Ljava/lang/String; = "app_name"

.field private static final APP_LINK_TARGET_CLASS_KEY:Ljava/lang/String; = "class"

.field private static final APP_LINK_TARGET_PACKAGE_KEY:Ljava/lang/String; = "package"

.field private static final APP_LINK_TARGET_SHOULD_FALLBACK_KEY:Ljava/lang/String; = "should_fallback"

.field private static final APP_LINK_TARGET_URL_KEY:Ljava/lang/String; = "url"

.field private static final APP_LINK_WEB_TARGET_KEY:Ljava/lang/String; = "web"


# instance fields
.field private final cachedAppLinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    #@a
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/facebook/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/FacebookAppLinkResolver;)Ljava/util/HashMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method private static getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "package"

    #@3
    invoke-static {p0, v1, v0}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    if-nez v2, :cond_a

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    const-string v1, "class"

    #@c
    invoke-static {p0, v1, v0}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    const-string v1, "app_name"

    #@12
    invoke-static {p0, v1, v0}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const-string v1, "url"

    #@18
    invoke-static {p0, v1, v0}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_22

    #@1e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v0

    #@22
    :cond_22
    new-instance v1, Lbolts/AppLink$Target;

    #@24
    invoke-direct {v1, v2, v3, v0, v4}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    #@27
    move-object v0, v1

    #@28
    goto :goto_9
.end method

.method private static getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "web"

    #@3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@6
    move-result-object v1

    #@7
    const-string v2, "should_fallback"

    #@9
    const/4 v3, 0x1

    #@a
    invoke-static {v1, v2, v3}, Lcom/facebook/FacebookAppLinkResolver;->tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_12

    #@10
    move-object p0, v0

    #@11
    :cond_11
    :goto_11
    return-object p0

    #@12
    :cond_12
    const-string v2, "url"

    #@14
    const/4 v3, 0x0

    #@15
    invoke-static {v1, v2, v3}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_1f

    #@1b
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1e} :catch_23

    #@1e
    move-result-object v0

    #@1f
    :cond_1f
    if-eqz v0, :cond_11

    #@21
    move-object p0, v0

    #@22
    goto :goto_11

    #@23
    :catch_23
    move-exception v0

    #@24
    goto :goto_11
.end method

.method private static tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    #@3
    move-result p2

    #@4
    :goto_4
    return p2

    #@5
    :catch_5
    move-exception v0

    #@6
    goto :goto_4
.end method

.method private static tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    #@3
    move-result-object p2

    #@4
    :goto_4
    return-object p2

    #@5
    :catch_5
    move-exception v0

    #@6
    goto :goto_4
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    invoke-virtual {p0, v0}, Lcom/facebook/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;

    #@b
    move-result-object v0

    #@c
    new-instance v1, Lcom/facebook/FacebookAppLinkResolver$1;

    #@e
    invoke-direct {v1, p0, p1}, Lcom/facebook/FacebookAppLinkResolver$1;-><init>(Lcom/facebook/FacebookAppLinkResolver;Landroid/net/Uri;)V

    #@11
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;>;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v4, Ljava/util/HashMap;

    #@3
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@6
    new-instance v6, Ljava/util/HashSet;

    #@8
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_4c

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    move-object v2, v0

    #@1f
    check-cast v2, Landroid/net/Uri;

    #@21
    iget-object v7, p0, Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    #@23
    monitor-enter v7

    #@24
    :try_start_24
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    #@26
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lbolts/AppLink;

    #@2c
    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_33

    #@2d
    if-eqz v0, :cond_36

    #@2f
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_14

    #@33
    :catchall_33
    move-exception v0

    #@34
    :try_start_34
    monitor-exit v7
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    #@35
    throw v0

    #@36
    :cond_36
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_41

    #@3c
    const/16 v0, 0x2c

    #@3e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    :cond_41
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_14

    #@4c
    :cond_4c
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_57

    #@52
    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    #@55
    move-result-object v0

    #@56
    :goto_56
    return-object v0

    #@57
    :cond_57
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@5a
    move-result-object v7

    #@5b
    new-instance v3, Landroid/os/Bundle;

    #@5d
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@60
    const-string v0, "type"

    #@62
    const-string v2, "al"

    #@64
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    const-string v0, "ids"

    #@69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@70
    const-string v0, "fields"

    #@72
    const-string v2, "%s,%s"

    #@74
    const/4 v5, 0x2

    #@75
    new-array v5, v5, [Ljava/lang/Object;

    #@77
    const/4 v8, 0x0

    #@78
    const-string v9, "android"

    #@7a
    aput-object v9, v5, v8

    #@7c
    const/4 v8, 0x1

    #@7d
    const-string v9, "web"

    #@7f
    aput-object v9, v5, v8

    #@81
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@88
    new-instance v0, Lcom/facebook/Request;

    #@8a
    const-string v2, ""

    #@8c
    new-instance v5, Lcom/facebook/FacebookAppLinkResolver$2;

    #@8e
    invoke-direct {v5, p0, v7, v4, v6}, Lcom/facebook/FacebookAppLinkResolver$2;-><init>(Lcom/facebook/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V

    #@91
    move-object v4, v1

    #@92
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@95
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@98
    invoke-virtual {v7}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@9b
    move-result-object v0

    #@9c
    goto :goto_56
.end method
