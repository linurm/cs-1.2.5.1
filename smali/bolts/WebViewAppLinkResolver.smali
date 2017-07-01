.class public Lbolts/WebViewAppLinkResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final KEY_AL_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_ANDROID:Ljava/lang/String; = "android"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_SHOULD_FALLBACK:Ljava/lang/String; = "should_fallback"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final KEY_WEB:Ljava/lang/String; = "web"

.field private static final KEY_WEB_URL:Ljava/lang/String; = "url"

.field private static final META_TAG_PREFIX:Ljava/lang/String; = "al"

.field private static final PREFER_HEADER:Ljava/lang/String; = "Prefer-Html-Meta-Tags"

.field private static final TAG_EXTRACTION_JAVASCRIPT:Ljava/lang/String; = "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName(\'meta\');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute(\'property\');    if (property && property.substring(0, \'al:\'.length) === \'al:\') {      var tag = { \"property\": metaTags[i].getAttribute(\'property\') };      if (metaTags[i].hasAttribute(\'content\')) {        tag[\'content\'] = metaTags[i].getAttribute(\'content\');      }      results.push(tag);    }  }  return JSON.stringify(results);})())"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;

    #@5
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONArray;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->parseAlData(Lorg/json/JSONArray;)Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lbolts/WebViewAppLinkResolver;->makeAppLinkFromAlData(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$200(Lbolts/WebViewAppLinkResolver;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    #@0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    if-nez v0, :cond_c

    #@8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    :cond_c
    return-object v0
.end method

.method private static makeAppLinkFromAlData(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/AppLink;"
        }
    .end annotation

    #@0
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    const-string v0, "android"

    #@7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/List;

    #@d
    if-nez v0, :cond_13

    #@f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v5

    #@17
    :cond_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_c3

    #@1d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/util/Map;

    #@23
    const-string v1, "url"

    #@25
    invoke-static {v0, v1}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    #@28
    move-result-object v6

    #@29
    const-string v1, "package"

    #@2b
    invoke-static {v0, v1}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    #@2e
    move-result-object v7

    #@2f
    const-string v1, "class"

    #@31
    invoke-static {v0, v1}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    #@34
    move-result-object v8

    #@35
    const-string v1, "app_name"

    #@37
    invoke-static {v0, v1}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    #@3a
    move-result-object v9

    #@3b
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@3e
    move-result v0

    #@3f
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@42
    move-result v1

    #@43
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@46
    move-result v2

    #@47
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@4a
    move-result v3

    #@4b
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@4e
    move-result v2

    #@4f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@52
    move-result v1

    #@53
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@56
    move-result v10

    #@57
    const/4 v0, 0x0

    #@58
    move v3, v0

    #@59
    :goto_59
    if-ge v3, v10, :cond_17

    #@5b
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@5e
    move-result v0

    #@5f
    if-le v0, v3, :cond_bb

    #@61
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Ljava/util/Map;

    #@67
    const-string v1, "value"

    #@69
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    :goto_6d
    check-cast v0, Ljava/lang/String;

    #@6f
    invoke-static {v0}, Lbolts/WebViewAppLinkResolver;->tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;

    #@72
    move-result-object v11

    #@73
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@76
    move-result v0

    #@77
    if-le v0, v3, :cond_bd

    #@79
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Ljava/util/Map;

    #@7f
    const-string v1, "value"

    #@81
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    move-result-object v0

    #@85
    :goto_85
    check-cast v0, Ljava/lang/String;

    #@87
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@8a
    move-result v1

    #@8b
    if-le v1, v3, :cond_bf

    #@8d
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v1

    #@91
    check-cast v1, Ljava/util/Map;

    #@93
    const-string v2, "value"

    #@95
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    move-result-object v1

    #@99
    :goto_99
    check-cast v1, Ljava/lang/String;

    #@9b
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@9e
    move-result v2

    #@9f
    if-le v2, v3, :cond_c1

    #@a1
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a4
    move-result-object v2

    #@a5
    check-cast v2, Ljava/util/Map;

    #@a7
    const-string v12, "value"

    #@a9
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    move-result-object v2

    #@ad
    :goto_ad
    new-instance v12, Lbolts/AppLink$Target;

    #@af
    check-cast v2, Ljava/lang/String;

    #@b1
    invoke-direct {v12, v0, v1, v11, v2}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    #@b4
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b7
    add-int/lit8 v0, v3, 0x1

    #@b9
    move v3, v0

    #@ba
    goto :goto_59

    #@bb
    :cond_bb
    const/4 v0, 0x0

    #@bc
    goto :goto_6d

    #@bd
    :cond_bd
    const/4 v0, 0x0

    #@be
    goto :goto_85

    #@bf
    :cond_bf
    const/4 v1, 0x0

    #@c0
    goto :goto_99

    #@c1
    :cond_c1
    const/4 v2, 0x0

    #@c2
    goto :goto_ad

    #@c3
    :cond_c3
    const-string v0, "web"

    #@c5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    move-result-object v0

    #@c9
    check-cast v0, Ljava/util/List;

    #@cb
    if-eqz v0, :cond_147

    #@cd
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@d0
    move-result v1

    #@d1
    if-lez v1, :cond_147

    #@d3
    const/4 v1, 0x0

    #@d4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d7
    move-result-object v0

    #@d8
    check-cast v0, Ljava/util/Map;

    #@da
    const-string v1, "url"

    #@dc
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    move-result-object v1

    #@e0
    check-cast v1, Ljava/util/List;

    #@e2
    const-string v2, "should_fallback"

    #@e4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    move-result-object v0

    #@e8
    check-cast v0, Ljava/util/List;

    #@ea
    if-eqz v0, :cond_145

    #@ec
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@ef
    move-result v2

    #@f0
    if-lez v2, :cond_145

    #@f2
    const/4 v2, 0x0

    #@f3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f6
    move-result-object v0

    #@f7
    check-cast v0, Ljava/util/Map;

    #@f9
    const-string v2, "value"

    #@fb
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    move-result-object v0

    #@ff
    check-cast v0, Ljava/lang/String;

    #@101
    const/4 v2, 0x3

    #@102
    new-array v2, v2, [Ljava/lang/String;

    #@104
    const/4 v3, 0x0

    #@105
    const-string v5, "no"

    #@107
    aput-object v5, v2, v3

    #@109
    const/4 v3, 0x1

    #@10a
    const-string v5, "false"

    #@10c
    aput-object v5, v2, v3

    #@10e
    const/4 v3, 0x2

    #@10f
    const-string v5, "0"

    #@111
    aput-object v5, v2, v3

    #@113
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@116
    move-result-object v2

    #@117
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@11a
    move-result-object v0

    #@11b
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@11e
    move-result v0

    #@11f
    if-eqz v0, :cond_145

    #@121
    const/4 v0, 0x0

    #@122
    :goto_122
    if-eqz v0, :cond_13f

    #@124
    if-eqz v1, :cond_13f

    #@126
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@129
    move-result v2

    #@12a
    if-lez v2, :cond_13f

    #@12c
    const/4 v0, 0x0

    #@12d
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@130
    move-result-object v0

    #@131
    check-cast v0, Ljava/util/Map;

    #@133
    const-string v1, "value"

    #@135
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    move-result-object v0

    #@139
    check-cast v0, Ljava/lang/String;

    #@13b
    invoke-static {v0}, Lbolts/WebViewAppLinkResolver;->tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;

    #@13e
    move-result-object v0

    #@13f
    :cond_13f
    :goto_13f
    new-instance v1, Lbolts/AppLink;

    #@141
    invoke-direct {v1, p1, v4, v0}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    #@144
    return-object v1

    #@145
    :cond_145
    move-object v0, p1

    #@146
    goto :goto_122

    #@147
    :cond_147
    move-object v0, p1

    #@148
    goto :goto_13f
.end method

.method private static parseAlData(Lorg/json/JSONArray;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    new-instance v4, Ljava/util/HashMap;

    #@4
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@7
    move v1, v2

    #@8
    :goto_8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    #@b
    move-result v0

    #@c
    if-ge v1, v0, :cond_91

    #@e
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    #@11
    move-result-object v7

    #@12
    const-string v0, "property"

    #@14
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v3, ":"

    #@1a
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    aget-object v0, v8, v2

    #@20
    const-string v3, "al"

    #@22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_2c

    #@28
    :cond_28
    :goto_28
    add-int/lit8 v0, v1, 0x1

    #@2a
    move v1, v0

    #@2b
    goto :goto_8

    #@2c
    :cond_2c
    const/4 v0, 0x1

    #@2d
    move-object v3, v4

    #@2e
    move v5, v0

    #@2f
    :goto_2f
    array-length v0, v8

    #@30
    if-ge v5, v0, :cond_6f

    #@32
    aget-object v0, v8, v5

    #@34
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Ljava/util/List;

    #@3a
    if-nez v0, :cond_92

    #@3c
    new-instance v0, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@41
    aget-object v9, v8, v5

    #@43
    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-object v3, v0

    #@47
    :goto_47
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@4a
    move-result v0

    #@4b
    if-lez v0, :cond_6d

    #@4d
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@50
    move-result v0

    #@51
    add-int/lit8 v0, v0, -0x1

    #@53
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Ljava/util/Map;

    #@59
    :goto_59
    if-eqz v0, :cond_60

    #@5b
    array-length v9, v8

    #@5c
    add-int/lit8 v9, v9, -0x1

    #@5e
    if-ne v5, v9, :cond_68

    #@60
    :cond_60
    new-instance v0, Ljava/util/HashMap;

    #@62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@65
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@68
    :cond_68
    add-int/lit8 v3, v5, 0x1

    #@6a
    move v5, v3

    #@6b
    move-object v3, v0

    #@6c
    goto :goto_2f

    #@6d
    :cond_6d
    move-object v0, v6

    #@6e
    goto :goto_59

    #@6f
    :cond_6f
    const-string v0, "content"

    #@71
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@74
    move-result v0

    #@75
    if-eqz v0, :cond_28

    #@77
    const-string v0, "content"

    #@79
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_85

    #@7f
    const-string v0, "value"

    #@81
    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    goto :goto_28

    #@85
    :cond_85
    const-string v0, "value"

    #@87
    const-string v5, "content"

    #@89
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    goto :goto_28

    #@91
    :cond_91
    return-object v4

    #@92
    :cond_92
    move-object v3, v0

    #@93
    goto :goto_47
.end method

.method private static readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    #@3
    if-eqz v0, :cond_2e

    #@5
    move-object v0, p0

    #@6
    check-cast v0, Ljava/net/HttpURLConnection;

    #@8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_27

    #@b
    move-result-object v0

    #@c
    move-object v3, v0

    #@d
    :goto_d
    :try_start_d
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #@f
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@12
    const/16 v0, 0x400

    #@14
    new-array v0, v0, [B

    #@16
    :goto_16
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    #@19
    move-result v2

    #@1a
    const/4 v5, -0x1

    #@1b
    if-eq v2, v5, :cond_34

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-virtual {v4, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    #@21
    goto :goto_16

    #@22
    :catchall_22
    move-exception v0

    #@23
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    #@26
    throw v0

    #@27
    :catch_27
    move-exception v2

    #@28
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    #@2b
    move-result-object v0

    #@2c
    move-object v3, v0

    #@2d
    goto :goto_d

    #@2e
    :cond_2e
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@31
    move-result-object v0

    #@32
    move-object v3, v0

    #@33
    goto :goto_d

    #@34
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    if-nez v2, :cond_76

    #@3a
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    const-string v5, ";"

    #@40
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    array-length v6, v5

    #@45
    move v0, v1

    #@46
    :goto_46
    if-ge v0, v6, :cond_74

    #@48
    aget-object v1, v5, v0

    #@4a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    const-string v7, "charset="

    #@50
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@53
    move-result v7

    #@54
    if-eqz v7, :cond_71

    #@56
    const-string v0, "charset="

    #@58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5b
    move-result v0

    #@5c
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_34 .. :try_end_5f} :catchall_22

    #@5f
    move-result-object v0

    #@60
    :goto_60
    if-nez v0, :cond_64

    #@62
    const-string v0, "UTF-8"

    #@64
    :cond_64
    :goto_64
    :try_start_64
    new-instance v1, Ljava/lang/String;

    #@66
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@69
    move-result-object v2

    #@6a
    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_22

    #@6d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    #@70
    return-object v1

    #@71
    :cond_71
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_46

    #@74
    :cond_74
    move-object v0, v2

    #@75
    goto :goto_60

    #@76
    :cond_76
    move-object v0, v2

    #@77
    goto :goto_64
.end method

.method private static tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;
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
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    goto :goto_3
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .registers 6
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
    new-instance v0, Lbolts/Capture;

    #@2
    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    #@5
    new-instance v1, Lbolts/Capture;

    #@7
    invoke-direct {v1}, Lbolts/Capture;-><init>()V

    #@a
    new-instance v2, Lbolts/WebViewAppLinkResolver$3;

    #@c
    invoke-direct {v2, p0, p1, v0, v1}, Lbolts/WebViewAppLinkResolver$3;-><init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;Lbolts/Capture;Lbolts/Capture;)V

    #@f
    invoke-static {v2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    #@12
    move-result-object v2

    #@13
    new-instance v3, Lbolts/WebViewAppLinkResolver$2;

    #@15
    invoke-direct {v3, p0, v1, p1, v0}, Lbolts/WebViewAppLinkResolver$2;-><init>(Lbolts/WebViewAppLinkResolver;Lbolts/Capture;Landroid/net/Uri;Lbolts/Capture;)V

    #@18
    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    #@1a
    invoke-virtual {v2, v3, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@1d
    move-result-object v0

    #@1e
    new-instance v1, Lbolts/WebViewAppLinkResolver$1;

    #@20
    invoke-direct {v1, p0, p1}, Lbolts/WebViewAppLinkResolver$1;-><init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;)V

    #@23
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
