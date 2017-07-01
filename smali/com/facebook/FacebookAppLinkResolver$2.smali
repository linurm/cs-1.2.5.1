.class Lcom/facebook/FacebookAppLinkResolver$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookAppLinkResolver;

.field final synthetic val$appLinkResults:Ljava/util/Map;

.field final synthetic val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$urisToRequest:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    #@2
    iput-object p2, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    #@4
    iput-object p3, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    #@6
    iput-object p4, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 11

    #@0
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    #@8
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_25

    #@16
    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@19
    move-result-object v0

    #@1a
    move-object v2, v0

    #@1b
    :goto_1b
    if-nez v2, :cond_28

    #@1d
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    #@1f
    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    #@21
    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    #@24
    goto :goto_f

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    move-object v2, v0

    #@27
    goto :goto_1b

    #@28
    :cond_28
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    #@2a
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v3

    #@2e
    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_93

    #@34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/net/Uri;

    #@3a
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_2e

    #@44
    :try_start_44
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@4b
    move-result-object v4

    #@4c
    const-string v1, "android"

    #@4e
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    #@55
    move-result v6

    #@56
    new-instance v7, Ljava/util/ArrayList;

    #@58
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@5b
    const/4 v1, 0x0

    #@5c
    :goto_5c
    if-ge v1, v6, :cond_6e

    #@5e
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    #@61
    move-result-object v8

    #@62
    # invokes: Lcom/facebook/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    invoke-static {v8}, Lcom/facebook/FacebookAppLinkResolver;->access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    #@65
    move-result-object v8

    #@66
    if-eqz v8, :cond_6b

    #@68
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6b
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_5c

    #@6e
    :cond_6e
    # invokes: Lcom/facebook/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    invoke-static {v0, v4}, Lcom/facebook/FacebookAppLinkResolver;->access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    #@71
    move-result-object v1

    #@72
    new-instance v4, Lbolts/AppLink;

    #@74
    invoke-direct {v4, v0, v7, v1}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    #@77
    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    #@79
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    #@7e
    # getter for: Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/facebook/FacebookAppLinkResolver;->access$200(Lcom/facebook/FacebookAppLinkResolver;)Ljava/util/HashMap;

    #@81
    move-result-object v1

    #@82
    monitor-enter v1
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_83} :catch_91

    #@83
    :try_start_83
    iget-object v5, p0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    #@85
    # getter for: Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/facebook/FacebookAppLinkResolver;->access$200(Lcom/facebook/FacebookAppLinkResolver;)Ljava/util/HashMap;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    monitor-exit v1

    #@8d
    goto :goto_2e

    #@8e
    :catchall_8e
    move-exception v0

    #@8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_8e

    #@90
    :try_start_90
    throw v0
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_91} :catch_91

    #@91
    :catch_91
    move-exception v0

    #@92
    goto :goto_2e

    #@93
    :cond_93
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    #@95
    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    #@97
    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    #@9a
    goto/16 :goto_f
.end method
