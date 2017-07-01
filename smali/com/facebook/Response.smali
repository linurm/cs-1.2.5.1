.class public Lcom/facebook/Response;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Response$PagedResults;,
        Lcom/facebook/Response$PagingDirection;,
        Lcom/facebook/Response$PagingInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final INVALID_SESSION_FACEBOOK_ERROR_CODE:I = 0xbe

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_CACHE_TAG:Ljava/lang/String; = "ResponseCache"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field private static responseCache:Lcom/facebook/internal/FileLruCache;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookRequestError;

.field private final graphObject:Lcom/facebook/model/GraphObject;

.field private final graphObjectList:Lcom/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromCache:Z

.field private final rawResponse:Ljava/lang/String;

.field private final request:Lcom/facebook/Request;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/Response;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_c

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    sput-boolean v0, Lcom/facebook/Response;->$assertionsDisabled:Z

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_9
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .registers 12

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v4, v3

    #@6
    move-object v5, v3

    #@7
    move-object v7, p3

    #@8
    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    #@b
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphObject;",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;Z",
            "Lcom/facebook/FacebookRequestError;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    #@5
    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    #@7
    iput-object p3, p0, Lcom/facebook/Response;->rawResponse:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    #@b
    iput-object p5, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    #@d
    iput-boolean p6, p0, Lcom/facebook/Response;->isFromCache:Z

    #@f
    iput-object p7, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    #@11
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V
    .registers 14

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v6, p5

    #@7
    move-object v7, v5

    #@8
    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    #@b
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObjectList;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;Z)V"
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    move v6, p5

    #@7
    move-object v7, v4

    #@8
    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    #@b
    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    if-ge v1, v2, :cond_24

    #@d
    new-instance v4, Lcom/facebook/Response;

    #@f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/facebook/Request;

    #@15
    new-instance v5, Lcom/facebook/FacebookRequestError;

    #@17
    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    #@1a
    invoke-direct {v4, v0, p1, v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    #@1d
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    add-int/lit8 v0, v1, 0x1

    #@22
    move v1, v0

    #@23
    goto :goto_b

    #@24
    :cond_24
    return-object v3
.end method

.method private static createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    instance-of v0, p2, Lorg/json/JSONObject;

    #@2
    if-eqz v0, :cond_5f

    #@4
    check-cast p2, Lorg/json/JSONObject;

    #@6
    invoke-static {p2, p4, p1}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_23

    #@c
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    #@f
    move-result v0

    #@10
    const/16 v2, 0xbe

    #@12
    if-ne v0, v2, :cond_1d

    #@14
    invoke-virtual {p0}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1d

    #@1a
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    #@1d
    :cond_1d
    new-instance v0, Lcom/facebook/Response;

    #@1f
    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    #@22
    :goto_22
    return-object v0

    #@23
    :cond_23
    const-string v0, "body"

    #@25
    const-string v1, "FACEBOOK_NON_JSON_RESULT"

    #@27
    invoke-static {p2, v0, v1}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    instance-of v0, v1, Lorg/json/JSONObject;

    #@2d
    if-eqz v0, :cond_43

    #@2f
    move-object v0, v1

    #@30
    check-cast v0, Lorg/json/JSONObject;

    #@32
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    #@35
    move-result-object v4

    #@36
    new-instance v0, Lcom/facebook/Response;

    #@38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    move-object v1, p0

    #@3d
    move-object v2, p1

    #@3e
    move v5, p3

    #@3f
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V

    #@42
    goto :goto_22

    #@43
    :cond_43
    instance-of v0, v1, Lorg/json/JSONArray;

    #@45
    if-eqz v0, :cond_5d

    #@47
    move-object v0, v1

    #@48
    check-cast v0, Lorg/json/JSONArray;

    #@4a
    const-class v2, Lcom/facebook/model/GraphObject;

    #@4c
    invoke-static {v0, v2}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@4f
    move-result-object v4

    #@50
    new-instance v0, Lcom/facebook/Response;

    #@52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    move-object v1, p0

    #@57
    move-object v2, p1

    #@58
    move v5, p3

    #@59
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObjectList;Z)V

    #@5c
    goto :goto_22

    #@5d
    :cond_5d
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@5f
    :cond_5f
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@61
    if-ne p2, v0, :cond_73

    #@63
    new-instance v0, Lcom/facebook/Response;

    #@65
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    const/4 v4, 0x0

    #@6a
    check-cast v4, Lcom/facebook/model/GraphObject;

    #@6c
    move-object v1, p0

    #@6d
    move-object v2, p1

    #@6e
    move v5, p3

    #@6f
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V

    #@72
    goto :goto_22

    #@73
    :cond_73
    new-instance v0, Lcom/facebook/FacebookException;

    #@75
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string v2, "Got unexpected object type in response, class: "

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@93
    throw v0
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    sget-boolean v0, Lcom/facebook/Response;->$assertionsDisabled:Z

    #@3
    if-nez v0, :cond_f

    #@5
    if-nez p0, :cond_f

    #@7
    if-nez p3, :cond_f

    #@9
    new-instance v0, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v0

    #@f
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@12
    move-result v3

    #@13
    new-instance v4, Ljava/util/ArrayList;

    #@15
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    const/4 v0, 0x1

    #@19
    if-ne v3, v0, :cond_74

    #@1b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/facebook/Request;

    #@21
    :try_start_21
    new-instance v5, Lorg/json/JSONObject;

    #@23
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    #@26
    const-string v1, "body"

    #@28
    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@2b
    if-eqz p0, :cond_53

    #@2d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@30
    move-result v1

    #@31
    :goto_31
    const-string v6, "code"

    #@33
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@36
    new-instance v1, Lorg/json/JSONArray;

    #@38
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@3b
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3e} :catch_56
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3e} :catch_66

    #@3e
    :goto_3e
    instance-of v0, v1, Lorg/json/JSONArray;

    #@40
    if-eqz v0, :cond_4b

    #@42
    move-object v0, v1

    #@43
    check-cast v0, Lorg/json/JSONArray;

    #@45
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    #@48
    move-result v0

    #@49
    if-eq v0, v3, :cond_76

    #@4b
    :cond_4b
    new-instance v0, Lcom/facebook/FacebookException;

    #@4d
    const-string v1, "Unexpected number of results"

    #@4f
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0

    #@53
    :cond_53
    const/16 v1, 0xc8

    #@55
    goto :goto_31

    #@56
    :catch_56
    move-exception v1

    #@57
    new-instance v5, Lcom/facebook/Response;

    #@59
    new-instance v6, Lcom/facebook/FacebookRequestError;

    #@5b
    invoke-direct {v6, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    #@5e
    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    #@61
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@64
    move-object v1, p2

    #@65
    goto :goto_3e

    #@66
    :catch_66
    move-exception v1

    #@67
    new-instance v5, Lcom/facebook/Response;

    #@69
    new-instance v6, Lcom/facebook/FacebookRequestError;

    #@6b
    invoke-direct {v6, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    #@6e
    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    #@71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@74
    :cond_74
    move-object v1, p2

    #@75
    goto :goto_3e

    #@76
    :cond_76
    check-cast v1, Lorg/json/JSONArray;

    #@78
    :goto_78
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@7b
    move-result v0

    #@7c
    if-ge v2, v0, :cond_b1

    #@7e
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    check-cast v0, Lcom/facebook/Request;

    #@84
    :try_start_84
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v3

    #@88
    invoke-static {v0, p0, v3, p3, p2}, Lcom/facebook/Response;->createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;

    #@8b
    move-result-object v3

    #@8c
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_8f} :catch_93
    .catch Lcom/facebook/FacebookException; {:try_start_84 .. :try_end_8f} :catch_a2

    #@8f
    :goto_8f
    add-int/lit8 v0, v2, 0x1

    #@91
    move v2, v0

    #@92
    goto :goto_78

    #@93
    :catch_93
    move-exception v3

    #@94
    new-instance v5, Lcom/facebook/Response;

    #@96
    new-instance v6, Lcom/facebook/FacebookRequestError;

    #@98
    invoke-direct {v6, p0, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    #@9b
    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    #@9e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a1
    goto :goto_8f

    #@a2
    :catch_a2
    move-exception v3

    #@a3
    new-instance v5, Lcom/facebook/Response;

    #@a5
    new-instance v6, Lcom/facebook/FacebookRequestError;

    #@a7
    invoke-direct {v6, p0, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    #@aa
    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    #@ad
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b0
    goto :goto_8f

    #@b1
    :cond_b1
    return-object v4
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    #@6
    const-string v2, "Response"

    #@8
    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    #@a
    const/4 v4, 0x2

    #@b
    new-array v4, v4, [Ljava/lang/Object;

    #@d
    const/4 v5, 0x0

    #@e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@11
    move-result v6

    #@12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v6

    #@16
    aput-object v6, v4, v5

    #@18
    const/4 v5, 0x1

    #@19
    aput-object v0, v4, v5

    #@1b
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1e
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONTokener;

    #@2
    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    invoke-static {p1, p2, v0, p3}, Lcom/facebook/Response;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@f
    const-string v2, "Response"

    #@11
    const-string v3, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    #@13
    const/4 v4, 0x3

    #@14
    new-array v4, v4, [Ljava/lang/Object;

    #@16
    const/4 v5, 0x0

    #@17
    invoke-virtual {p2}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    aput-object v6, v4, v5

    #@1d
    const/4 v5, 0x1

    #@1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@21
    move-result v6

    #@22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v6

    #@26
    aput-object v6, v4, v5

    #@28
    const/4 v5, 0x2

    #@29
    aput-object v0, v4, v5

    #@2b
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2e
    return-object v0
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    instance-of v0, p1, Lcom/facebook/internal/CacheableRequestBatch;

    #@5
    if-eqz v0, :cond_11e

    #@7
    move-object v0, p1

    #@8
    check-cast v0, Lcom/facebook/internal/CacheableRequestBatch;

    #@a
    invoke-static {}, Lcom/facebook/Response;->getResponseCache()Lcom/facebook/internal/FileLruCache;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v0}, Lcom/facebook/internal/CacheableRequestBatch;->getCacheKeyOverride()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_26

    #@18
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    #@1b
    move-result v4

    #@1c
    if-ne v4, v6, :cond_44

    #@1e
    invoke-virtual {p1, v5}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    :cond_26
    :goto_26
    invoke-virtual {v0}, Lcom/facebook/internal/CacheableRequestBatch;->getForceRoundTrip()Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_118

    #@2c
    if-eqz v3, :cond_118

    #@2e
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_118

    #@34
    :try_start_34
    invoke-virtual {v3, v1}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_37
    .catch Lcom/facebook/FacebookException; {:try_start_34 .. :try_end_37} :catch_6b
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_37} :catch_74
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_7d
    .catchall {:try_start_34 .. :try_end_37} :catchall_86

    #@37
    move-result-object v2

    #@38
    if-eqz v2, :cond_4e

    #@3a
    const/4 v0, 0x0

    #@3b
    const/4 v4, 0x1

    #@3c
    :try_start_3c
    invoke-static {v2, v0, p1, v4}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_3f
    .catch Lcom/facebook/FacebookException; {:try_start_3c .. :try_end_3f} :catch_114
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_3f} :catch_74
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_7d
    .catchall {:try_start_3c .. :try_end_3f} :catchall_86

    #@3f
    move-result-object v0

    #@40
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@43
    :goto_43
    return-object v0

    #@44
    :cond_44
    sget-object v4, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@46
    const-string v5, "ResponseCache"

    #@48
    const-string v6, "Not using cache for cacheable request because no key was specified"

    #@4a
    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    goto :goto_26

    #@4e
    :cond_4e
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@51
    move-object v0, v3

    #@52
    move-object v7, v1

    #@53
    move-object v1, v2

    #@54
    move-object v2, v7

    #@55
    :goto_55
    :try_start_55
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@58
    move-result v3

    #@59
    const/16 v4, 0x190

    #@5b
    if-lt v3, v4, :cond_8b

    #@5d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    #@60
    move-result-object v0

    #@61
    move-object v1, v0

    #@62
    :cond_62
    :goto_62
    const/4 v0, 0x0

    #@63
    invoke-static {v1, p0, p1, v0}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_66
    .catch Lcom/facebook/FacebookException; {:try_start_55 .. :try_end_66} :catch_9d
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_66} :catch_b5
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_66} :catch_d3
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_66} :catch_f1
    .catchall {:try_start_55 .. :try_end_66} :catchall_10f

    #@66
    move-result-object v0

    #@67
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@6a
    goto :goto_43

    #@6b
    :catch_6b
    move-exception v0

    #@6c
    move-object v0, v2

    #@6d
    :goto_6d
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@70
    move-object v2, v1

    #@71
    move-object v1, v0

    #@72
    move-object v0, v3

    #@73
    goto :goto_55

    #@74
    :catch_74
    move-exception v0

    #@75
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@78
    move-object v0, v3

    #@79
    move-object v7, v1

    #@7a
    move-object v1, v2

    #@7b
    move-object v2, v7

    #@7c
    goto :goto_55

    #@7d
    :catch_7d
    move-exception v0

    #@7e
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@81
    move-object v0, v3

    #@82
    move-object v7, v1

    #@83
    move-object v1, v2

    #@84
    move-object v2, v7

    #@85
    goto :goto_55

    #@86
    :catchall_86
    move-exception v0

    #@87
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@8a
    throw v0

    #@8b
    :cond_8b
    :try_start_8b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@8e
    move-result-object v1

    #@8f
    if-eqz v0, :cond_62

    #@91
    if-eqz v2, :cond_62

    #@93
    if-eqz v1, :cond_62

    #@95
    invoke-virtual {v0, v2, v1}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_98
    .catch Lcom/facebook/FacebookException; {:try_start_8b .. :try_end_98} :catch_9d
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_98} :catch_b5
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_98} :catch_d3
    .catch Ljava/lang/SecurityException; {:try_start_8b .. :try_end_98} :catch_f1
    .catchall {:try_start_8b .. :try_end_98} :catchall_10f

    #@98
    move-result-object v0

    #@99
    if-eqz v0, :cond_62

    #@9b
    move-object v1, v0

    #@9c
    goto :goto_62

    #@9d
    :catch_9d
    move-exception v0

    #@9e
    :try_start_9e
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@a0
    const-string v3, "Response"

    #@a2
    const-string v4, "Response <Error>: %s"

    #@a4
    const/4 v5, 0x1

    #@a5
    new-array v5, v5, [Ljava/lang/Object;

    #@a7
    const/4 v6, 0x0

    #@a8
    aput-object v0, v5, v6

    #@aa
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ad
    invoke-static {p1, p0, v0}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_b0
    .catchall {:try_start_9e .. :try_end_b0} :catchall_10f

    #@b0
    move-result-object v0

    #@b1
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@b4
    goto :goto_43

    #@b5
    :catch_b5
    move-exception v0

    #@b6
    :try_start_b6
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@b8
    const-string v3, "Response"

    #@ba
    const-string v4, "Response <Error>: %s"

    #@bc
    const/4 v5, 0x1

    #@bd
    new-array v5, v5, [Ljava/lang/Object;

    #@bf
    const/4 v6, 0x0

    #@c0
    aput-object v0, v5, v6

    #@c2
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c5
    new-instance v2, Lcom/facebook/FacebookException;

    #@c7
    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@ca
    invoke-static {p1, p0, v2}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_cd
    .catchall {:try_start_b6 .. :try_end_cd} :catchall_10f

    #@cd
    move-result-object v0

    #@ce
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@d1
    goto/16 :goto_43

    #@d3
    :catch_d3
    move-exception v0

    #@d4
    :try_start_d4
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@d6
    const-string v3, "Response"

    #@d8
    const-string v4, "Response <Error>: %s"

    #@da
    const/4 v5, 0x1

    #@db
    new-array v5, v5, [Ljava/lang/Object;

    #@dd
    const/4 v6, 0x0

    #@de
    aput-object v0, v5, v6

    #@e0
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e3
    new-instance v2, Lcom/facebook/FacebookException;

    #@e5
    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@e8
    invoke-static {p1, p0, v2}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_eb
    .catchall {:try_start_d4 .. :try_end_eb} :catchall_10f

    #@eb
    move-result-object v0

    #@ec
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@ef
    goto/16 :goto_43

    #@f1
    :catch_f1
    move-exception v0

    #@f2
    :try_start_f2
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@f4
    const-string v3, "Response"

    #@f6
    const-string v4, "Response <Error>: %s"

    #@f8
    const/4 v5, 0x1

    #@f9
    new-array v5, v5, [Ljava/lang/Object;

    #@fb
    const/4 v6, 0x0

    #@fc
    aput-object v0, v5, v6

    #@fe
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@101
    new-instance v2, Lcom/facebook/FacebookException;

    #@103
    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@106
    invoke-static {p1, p0, v2}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_109
    .catchall {:try_start_f2 .. :try_end_109} :catchall_10f

    #@109
    move-result-object v0

    #@10a
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@10d
    goto/16 :goto_43

    #@10f
    :catchall_10f
    move-exception v0

    #@110
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    #@113
    throw v0

    #@114
    :catch_114
    move-exception v0

    #@115
    move-object v0, v2

    #@116
    goto/16 :goto_6d

    #@118
    :cond_118
    move-object v0, v3

    #@119
    move-object v7, v1

    #@11a
    move-object v1, v2

    #@11b
    move-object v2, v7

    #@11c
    goto/16 :goto_55

    #@11e
    :cond_11e
    move-object v0, v2

    #@11f
    move-object v1, v2

    #@120
    goto/16 :goto_55
.end method

.method static getResponseCache()Lcom/facebook/internal/FileLruCache;
    .registers 4

    #@0
    sget-object v0, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    #@2
    if-nez v0, :cond_18

    #@4
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_18

    #@a
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    #@c
    const-string v2, "ResponseCache"

    #@e
    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    #@10
    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    #@13
    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    #@16
    sput-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    #@18
    :cond_18
    sget-object v0, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    #@1a
    return-object v0
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    #@2
    return-object v0
.end method

.method public final getError()Lcom/facebook/FacebookRequestError;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    #@2
    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    #@2
    return-object v0
.end method

.method public final getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    if-nez p1, :cond_10

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string v1, "Must pass in a valid interface that extends GraphObject"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    #@12
    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@15
    move-result-object v0

    #@16
    goto :goto_5
.end method

.method public final getGraphObjectList()Lcom/facebook/model/GraphObjectList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    #@2
    return-object v0
.end method

.method public final getGraphObjectListAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    #@8
    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public final getIsFromCache()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    #@2
    return v0
.end method

.method public getRawResponse()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Response;->rawResponse:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRequest()Lcom/facebook/Request;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    #@2
    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/facebook/Response$PagingDirection;)Lcom/facebook/Request;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    #@3
    if-eqz v0, :cond_4e

    #@5
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    #@7
    const-class v2, Lcom/facebook/Response$PagedResults;

    #@9
    invoke-interface {v0, v2}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/facebook/Response$PagedResults;

    #@f
    invoke-interface {v0}, Lcom/facebook/Response$PagedResults;->getPaging()Lcom/facebook/Response$PagingInfo;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_4e

    #@15
    sget-object v2, Lcom/facebook/Response$PagingDirection;->NEXT:Lcom/facebook/Response$PagingDirection;

    #@17
    if-ne p1, v2, :cond_26

    #@19
    invoke-interface {v0}, Lcom/facebook/Response$PagingInfo;->getNext()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    move-object v2, v0

    #@1e
    :goto_1e
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2c

    #@24
    move-object v0, v1

    #@25
    :goto_25
    return-object v0

    #@26
    :cond_26
    invoke-interface {v0}, Lcom/facebook/Response$PagingInfo;->getPrevious()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    move-object v2, v0

    #@2b
    goto :goto_1e

    #@2c
    :cond_2c
    if-eqz v2, :cond_3a

    #@2e
    iget-object v0, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    #@30
    invoke-virtual {v0}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_50

    #@3a
    :cond_3a
    :try_start_3a
    new-instance v0, Lcom/facebook/Request;

    #@3c
    iget-object v3, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    #@3e
    invoke-virtual {v3}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    #@41
    move-result-object v3

    #@42
    new-instance v4, Ljava/net/URL;

    #@44
    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@47
    invoke-direct {v0, v3, v4}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/net/URL;)V
    :try_end_4a
    .catch Ljava/net/MalformedURLException; {:try_start_3a .. :try_end_4a} :catch_4b

    #@4a
    goto :goto_25

    #@4b
    :catch_4b
    move-exception v0

    #@4c
    move-object v0, v1

    #@4d
    goto :goto_25

    #@4e
    :cond_4e
    move-object v2, v1

    #@4f
    goto :goto_1e

    #@50
    :cond_50
    move-object v0, v1

    #@51
    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    #@2
    if-eqz v0, :cond_5e

    #@4
    iget-object v0, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    #@6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@9
    move-result v0

    #@a
    :goto_a
    const-string v1, "%d"

    #@c
    const/4 v2, 0x1

    #@d
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v0

    #@14
    aput-object v0, v2, v3

    #@16
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_61

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v2, "{Response: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string v2, " responseCode: "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v1, ", graphObject: "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string v1, ", error: "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string v1, ", isFromCache:"

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    iget-boolean v1, p0, Lcom/facebook/Response;->isFromCache:Z

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    const-string v1, "}"

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    return-object v0

    #@5e
    :cond_5e
    const/16 v0, 0xc8

    #@60
    goto :goto_a

    #@61
    :catch_61
    move-exception v0

    #@62
    const-string v0, "unknown"

    #@64
    goto :goto_1a
.end method
