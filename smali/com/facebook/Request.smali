.class public Lcom/facebook/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Request$Attachment;,
        Lcom/facebook/Request$Callback;,
        Lcom/facebook/Request$GraphPlaceListCallback;,
        Lcom/facebook/Request$GraphUserCallback;,
        Lcom/facebook/Request$GraphUserListCallback;,
        Lcom/facebook/Request$KeyValueSerializer;,
        Lcom/facebook/Request$OnProgressCallback;,
        Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;,
        Lcom/facebook/Request$Serializer;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_ACTION_FORMAT:Ljava/lang/String; = "me/%s"

.field private static final MY_FEED:Ljava/lang/String; = "me/feed"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_OBJECTS_FORMAT:Ljava/lang/String; = "me/objects/%s"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final MY_VIDEOS:Ljava/lang/String; = "me/videos"

.field private static final OBJECT_PARAM:Ljava/lang/String; = "object"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"

.field public static final TAG:Ljava/lang/String;

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;

.field private static versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/Request$Callback;

.field private graphObject:Lcom/facebook/model/GraphObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private restMethod:Ljava/lang/String;

.field private session:Lcom/facebook/Session;

.field private tag:Ljava/lang/Object;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/Request;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/Request;->TAG:Ljava/lang/String;

    #@8
    const-string v0, "^v\\d+\\.\\d+/.*"

    #@a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, v1

    #@3
    move-object v3, v1

    #@4
    move-object v4, v1

    #@5
    move-object v5, v1

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@9
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;)V
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, v3

    #@5
    move-object v5, v3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@9
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .registers 11

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
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@9
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
    .registers 13

    #@0
    const/4 v6, 0x0

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
    move-object v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;Ljava/lang/String;)V

    #@a
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;Ljava/lang/String;)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    #@6
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@8
    iput-object p2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@a
    iput-object p5, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    #@c
    iput-object p6, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    #@e
    invoke-virtual {p0, p4}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    #@11
    if-eqz p3, :cond_25

    #@13
    new-instance v0, Landroid/os/Bundle;

    #@15
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@18
    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@1a
    :goto_1a
    iget-object v0, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    #@1c
    if-nez v0, :cond_24

    #@1e
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    #@24
    :cond_24
    return-void

    #@25
    :cond_25
    new-instance v0, Landroid/os/Bundle;

    #@27
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@2c
    goto :goto_1a
.end method

.method constructor <init>(Lcom/facebook/Session;Ljava/net/URL;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    #@6
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@8
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    #@e
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    #@10
    invoke-virtual {p0, v0}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    #@13
    new-instance v0, Landroid/os/Bundle;

    #@15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@18
    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@1a
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private addCommonParameters()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@2
    if-eqz v0, :cond_41

    #@4
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@6
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_14

    #@c
    new-instance v0, Lcom/facebook/FacebookException;

    #@e
    const-string v1, "Session provided to a Request in un-opened state."

    #@10
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@16
    const-string v1, "access_token"

    #@18
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_2e

    #@1e
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@20
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    #@27
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@29
    const-string v2, "access_token"

    #@2b
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@30
    const-string v1, "sdk"

    #@32
    const-string v2, "android"

    #@34
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@39
    const-string v1, "format"

    #@3b
    const-string v2, "json"

    #@3d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    return-void

    #@41
    :cond_41
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@43
    const-string v1, "access_token"

    #@45
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_2e

    #@4b
    invoke-static {}, Lcom/facebook/Settings;->getApplicationId()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-static {}, Lcom/facebook/Settings;->getClientToken()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@56
    move-result v2

    #@57
    if-nez v2, :cond_7e

    #@59
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@5c
    move-result v2

    #@5d
    if-nez v2, :cond_7e

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    const-string v2, "|"

    #@6a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@78
    const-string v2, "access_token"

    #@7a
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@7d
    goto :goto_2e

    #@7e
    :cond_7e
    sget-object v0, Lcom/facebook/Request;->TAG:Ljava/lang/String;

    #@80
    const-string v1, "Warning: Sessionless Request needs token but missing either application ID or client token."

    #@82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    goto :goto_2e
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@8
    move-result-object v2

    #@9
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@b
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_5b

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@21
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    if-nez v1, :cond_29

    #@27
    const-string v1, ""

    #@29
    :cond_29
    invoke-static {v1}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_3b

    #@2f
    invoke-static {v1}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@3a
    goto :goto_13

    #@3b
    :cond_3b
    iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    #@3d
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    #@3f
    if-ne v0, v4, :cond_13

    #@41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    const-string v2, "Unsupported parameter type for GET request: %s"

    #@45
    const/4 v3, 0x1

    #@46
    new-array v3, v3, [Ljava/lang/Object;

    #@48
    const/4 v4, 0x0

    #@49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    aput-object v1, v3, v4

    #@53
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    :cond_5b
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    return-object v0
.end method

.method static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/net/HttpURLConnection;

    #@6
    const-string v1, "User-Agent"

    #@8
    invoke-static {}, Lcom/facebook/Request;->getUserAgent()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    const-string v1, "Content-Type"

    #@11
    invoke-static {}, Lcom/facebook/Request;->getMimeContentType()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    const-string v1, "Accept-Language"

    #@1a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    const/4 v1, 0x0

    #@26
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    #@29
    return-object v0
.end method

.method public static executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;
    .registers 5

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    new-array v0, v3, [Lcom/facebook/Request;

    #@4
    aput-object p0, v0, v2

    #@6
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_12

    #@c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    if-eq v1, v3, :cond_1a

    #@12
    :cond_12
    new-instance v0, Lcom/facebook/FacebookException;

    #@14
    const-string v1, "invalid state: expected a single response"

    #@16
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/facebook/Response;

    #@20
    return-object v0
.end method

.method public static executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, "requests"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    #@5
    :try_start_5
    invoke-static {p0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_e

    #@8
    move-result-object v0

    #@9
    invoke-static {v0, p0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    :goto_d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getRequests()Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    new-instance v3, Lcom/facebook/FacebookException;

    #@16
    invoke-direct {v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@19
    invoke-static {v1, v2, v3}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {p0, v0}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    #@20
    goto :goto_d
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/RequestBatch;

    #@2
    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    #@5
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, "requests"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .registers 2

    #@0
    const-string v0, "requests"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    #@7
    invoke-direct {v0, p0}, Lcom/facebook/RequestAsyncTask;-><init>(Lcom/facebook/RequestBatch;)V

    #@a
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    #@d
    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Lcom/facebook/RequestAsyncTask;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/RequestBatch;

    #@2
    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    #@5
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;
    .registers 2

    #@0
    const-string v0, "requests"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .registers 8
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
    invoke-static {p0, p1}, Lcom/facebook/Response;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    #@7
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    #@a
    move-result v0

    #@b
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@e
    move-result v2

    #@f
    if-eq v0, v2, :cond_32

    #@11
    new-instance v2, Lcom/facebook/FacebookException;

    #@13
    const-string v3, "Received %d responses while expecting %d"

    #@15
    const/4 v4, 0x2

    #@16
    new-array v4, v4, [Ljava/lang/Object;

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1c
    move-result v1

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v1

    #@21
    aput-object v1, v4, v5

    #@23
    const/4 v1, 0x1

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v0

    #@28
    aput-object v0, v4, v1

    #@2a
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    :cond_32
    invoke-static {p1, v1}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    #@35
    new-instance v2, Ljava/util/HashSet;

    #@37
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@3a
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v3

    #@3e
    :cond_3e
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_54

    #@44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/facebook/Request;

    #@4a
    iget-object v4, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@4c
    if-eqz v4, :cond_3e

    #@4e
    iget-object v0, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@50
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@53
    goto :goto_3e

    #@54
    :cond_54
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v2

    #@58
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_68

    #@5e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Lcom/facebook/Session;

    #@64
    invoke-virtual {v0}, Lcom/facebook/Session;->extendAccessTokenIfNeeded()V

    #@67
    goto :goto_58

    #@68
    :cond_68
    return-object v1
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/RequestBatch;

    #@2
    invoke-direct {v0, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    #@5
    invoke-static {p0, v0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .registers 4

    #@0
    const-string v0, "connection"

    #@2
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    #@7
    invoke-direct {v0, p1, p2}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    #@a
    invoke-virtual {p2, p0}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    #@d
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    #@10
    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Lcom/facebook/Request;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static executeGraphPathRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static executeMyFriendsRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/RequestAsyncTask;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static executePlacesSearchRequestAsync(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/RequestAsyncTask;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static/range {p0 .. p5}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static executePostRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static executeRestRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/RequestAsyncTask;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static executeStatusUpdateRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_f

    #@a
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_28

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/facebook/Request;

    #@1f
    iget-object v0, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@21
    if-eqz v0, :cond_13

    #@23
    invoke-virtual {v0}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    goto :goto_e

    #@28
    :cond_28
    sget-object v0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    #@2a
    goto :goto_e
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private getGraphPathWithVersion()Ljava/lang/String;
    .registers 5

    #@0
    sget-object v0, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    #@2
    iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_11

    #@e
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    const-string v0, "%s/%s"

    #@13
    const/4 v1, 0x2

    #@14
    new-array v1, v1, [Ljava/lang/Object;

    #@16
    const/4 v2, 0x0

    #@17
    iget-object v3, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    #@19
    aput-object v3, v1, v2

    #@1b
    const/4 v2, 0x1

    #@1c
    iget-object v3, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@1e
    aput-object v3, v1, v2

    #@20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    goto :goto_10
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "multipart/form-data; boundary=%s"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private getRestPathWithVersion()Ljava/lang/String;
    .registers 5

    #@0
    sget-object v0, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    #@2
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_11

    #@e
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    const-string v0, "%s/%s/%s"

    #@13
    const/4 v1, 0x3

    #@14
    new-array v1, v1, [Ljava/lang/Object;

    #@16
    const/4 v2, 0x0

    #@17
    iget-object v3, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    #@19
    aput-object v3, v1, v2

    #@1b
    const/4 v2, 0x1

    #@1c
    const-string v3, "method"

    #@1e
    aput-object v3, v1, v2

    #@20
    const/4 v2, 0x2

    #@21
    iget-object v3, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@23
    aput-object v3, v1, v2

    #@25
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    goto :goto_10
.end method

.method private static getUserAgent()Ljava/lang/String;
    .registers 4

    #@0
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    #@2
    if-nez v0, :cond_19

    #@4
    const-string v0, "%s.%s"

    #@6
    const/4 v1, 0x2

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    const/4 v2, 0x0

    #@a
    const-string v3, "FBAndroidSDK"

    #@c
    aput-object v3, v1, v2

    #@e
    const/4 v2, 0x1

    #@f
    const-string v3, "3.15.0"

    #@11
    aput-object v3, v1, v2

    #@13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    sput-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    #@19
    :cond_19
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    #@1b
    return-object v0
.end method

.method private static hasOnProgressCallbacks(Lcom/facebook/RequestBatch;)Z
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1b

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/facebook/RequestBatch$Callback;

    #@15
    instance-of v0, v0, Lcom/facebook/RequestBatch$OnProgressCallback;

    #@17
    if-eqz v0, :cond_9

    #@19
    move v0, v1

    #@1a
    :goto_1a
    return v0

    #@1b
    :cond_1b
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_35

    #@25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/facebook/Request;

    #@2b
    invoke-virtual {v0}, Lcom/facebook/Request;->getCallback()Lcom/facebook/Request$Callback;

    #@2e
    move-result-object v0

    #@2f
    instance-of v0, v0, Lcom/facebook/Request$OnProgressCallback;

    #@31
    if-eqz v0, :cond_1f

    #@33
    move v0, v1

    #@34
    goto :goto_1a

    #@35
    :cond_35
    const/4 v0, 0x0

    #@36
    goto :goto_1a
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .registers 2

    #@0
    instance-of v0, p0, Landroid/graphics/Bitmap;

    #@2
    if-nez v0, :cond_10

    #@4
    instance-of v0, p0, [B

    #@6
    if-nez v0, :cond_10

    #@8
    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    #@a
    if-nez v0, :cond_10

    #@c
    instance-of v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    #@e
    if-eqz v0, :cond_12

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .registers 2

    #@0
    instance-of v0, p0, Ljava/lang/String;

    #@2
    if-nez v0, :cond_10

    #@4
    instance-of v0, p0, Ljava/lang/Boolean;

    #@6
    if-nez v0, :cond_10

    #@8
    instance-of v0, p0, Ljava/lang/Number;

    #@a
    if-nez v0, :cond_10

    #@c
    instance-of v0, p0, Ljava/util/Date;

    #@e
    if-eqz v0, :cond_12

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0, p2}, Lcom/facebook/Request;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 10

    #@0
    if-nez p0, :cond_7a

    #@2
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    #@5
    move-result-object v1

    #@6
    :goto_6
    if-eqz v1, :cond_f

    #@8
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    const/4 v1, 0x0

    #@f
    :cond_f
    if-nez p2, :cond_17

    #@11
    if-eqz v1, :cond_21

    #@13
    invoke-virtual {v1}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    #@16
    move-result-object p2

    #@17
    :cond_17
    :goto_17
    if-nez p2, :cond_26

    #@19
    new-instance v0, Lcom/facebook/FacebookException;

    #@1b
    const-string v1, "Facebook App ID cannot be determined"

    #@1d
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@24
    move-result-object p2

    #@25
    goto :goto_17

    #@26
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v2, "/custom_audience_third_party_id"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    #@3c
    move-result-object v4

    #@3d
    new-instance v3, Landroid/os/Bundle;

    #@3f
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@42
    if-nez v1, :cond_59

    #@44
    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    if-eqz v0, :cond_75

    #@4a
    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    :goto_4e
    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    if-eqz v5, :cond_59

    #@54
    const-string v5, "udid"

    #@56
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@59
    :cond_59
    invoke-static {p1}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    #@5c
    move-result v0

    #@5d
    if-nez v0, :cond_65

    #@5f
    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_6c

    #@65
    :cond_65
    const-string v0, "limit_event_usage"

    #@67
    const-string v4, "1"

    #@69
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    :cond_6c
    new-instance v0, Lcom/facebook/Request;

    #@6e
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    #@70
    move-object v5, p3

    #@71
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@74
    return-object v0

    #@75
    :cond_75
    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    goto :goto_4e

    #@7a
    :cond_7a
    move-object v1, p0

    #@7b
    goto :goto_6
.end method

.method public static newDeleteObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9

    #@0
    new-instance v0, Lcom/facebook/Request;

    #@2
    const/4 v3, 0x0

    #@3
    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    #@5
    move-object v1, p0

    #@6
    move-object v2, p1

    #@7
    move-object v5, p2

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@b
    return-object v0
.end method

.method public static newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v0, Lcom/facebook/Request;

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move-object v4, v3

    #@6
    move-object v5, p2

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@a
    return-object v0
.end method

.method public static newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v0, Lcom/facebook/Request;

    #@3
    const-string v2, "me"

    #@5
    new-instance v5, Lcom/facebook/Request$1;

    #@7
    invoke-direct {v5, p1}, Lcom/facebook/Request$1;-><init>(Lcom/facebook/Request$GraphUserCallback;)V

    #@a
    move-object v1, p0

    #@b
    move-object v4, v3

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@f
    return-object v0
.end method

.method public static newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v0, Lcom/facebook/Request;

    #@3
    const-string v2, "me/friends"

    #@5
    new-instance v5, Lcom/facebook/Request$2;

    #@7
    invoke-direct {v5, p1}, Lcom/facebook/Request$2;-><init>(Lcom/facebook/Request$GraphUserListCallback;)V

    #@a
    move-object v1, p0

    #@b
    move-object v4, v3

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@f
    return-object v0
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
    .registers 14

    #@0
    if-nez p1, :cond_10

    #@2
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    new-instance v0, Lcom/facebook/FacebookException;

    #@a
    const-string v1, "Either location or searchText must be specified."

    #@c
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    new-instance v3, Landroid/os/Bundle;

    #@12
    const/4 v0, 0x5

    #@13
    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    #@16
    const-string v0, "type"

    #@18
    const-string v1, "place"

    #@1a
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    const-string v0, "limit"

    #@1f
    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@22
    if-eqz p1, :cond_4f

    #@24
    const-string v0, "center"

    #@26
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@28
    const-string v2, "%f,%f"

    #@2a
    const/4 v4, 0x2

    #@2b
    new-array v4, v4, [Ljava/lang/Object;

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    #@31
    move-result-wide v6

    #@32
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@35
    move-result-object v6

    #@36
    aput-object v6, v4, v5

    #@38
    const/4 v5, 0x1

    #@39
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    #@3c
    move-result-wide v6

    #@3d
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@40
    move-result-object v6

    #@41
    aput-object v6, v4, v5

    #@43
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    const-string v0, "distance"

    #@4c
    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4f
    :cond_4f
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@52
    move-result v0

    #@53
    if-nez v0, :cond_5a

    #@55
    const-string v0, "q"

    #@57
    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    :cond_5a
    new-instance v5, Lcom/facebook/Request$3;

    #@5c
    invoke-direct {v5, p5}, Lcom/facebook/Request$3;-><init>(Lcom/facebook/Request$GraphPlaceListCallback;)V

    #@5f
    new-instance v0, Lcom/facebook/Request;

    #@61
    const-string v2, "search"

    #@63
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    #@65
    move-object v1, p0

    #@66
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@69
    return-object v0
.end method

.method public static newPostOpenGraphActionRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphAction;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 7

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Lcom/facebook/FacebookException;

    #@4
    const-string v1, "openGraphAction cannot be null"

    #@6
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1c

    #@14
    new-instance v0, Lcom/facebook/FacebookException;

    #@16
    const-string v1, "openGraphAction must have non-null \'type\' property"

    #@18
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :cond_1c
    const-string v0, "me/%s"

    #@1e
    const/4 v1, 0x1

    #@1f
    new-array v1, v1, [Ljava/lang/Object;

    #@21
    const/4 v2, 0x0

    #@22
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    aput-object v3, v1, v2

    #@28
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Lcom/facebook/FacebookException;

    #@4
    const-string v1, "openGraphObject cannot be null"

    #@6
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1c

    #@14
    new-instance v0, Lcom/facebook/FacebookException;

    #@16
    const-string v1, "openGraphObject must have non-null \'type\' property"

    #@18
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :cond_1c
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getTitle()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2e

    #@26
    new-instance v0, Lcom/facebook/FacebookException;

    #@28
    const-string v1, "openGraphObject must have non-null \'title\' property"

    #@2a
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    const-string v0, "me/objects/%s"

    #@30
    const/4 v1, 0x1

    #@31
    new-array v1, v1, [Ljava/lang/Object;

    #@33
    const/4 v2, 0x0

    #@34
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    aput-object v3, v1, v2

    #@3a
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    new-instance v3, Landroid/os/Bundle;

    #@40
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@43
    const-string v0, "object"

    #@45
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    new-instance v0, Lcom/facebook/Request;

    #@52
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@54
    move-object v1, p0

    #@55
    move-object v5, p2

    #@56
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@59
    return-object v0
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 14

    #@0
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    #@a
    move-result-object v0

    #@b
    if-eqz p6, :cond_10

    #@d
    invoke-interface {v0, p6}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    #@10
    :cond_10
    invoke-static {p0, v0, p7}, Lcom/facebook/Request;->newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 10

    #@0
    new-instance v0, Lcom/facebook/Request;

    #@2
    const/4 v3, 0x0

    #@3
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@5
    move-object v1, p0

    #@6
    move-object v2, p1

    #@7
    move-object v5, p3

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@b
    invoke-virtual {v0, p2}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    #@e
    return-object v0
.end method

.method public static newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;
    .registers 6

    #@0
    new-instance v0, Lcom/facebook/Request;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1, p2, p3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    #@6
    invoke-virtual {v0, p1}, Lcom/facebook/Request;->setRestMethod(Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    move-object v0, v1

    #@2
    check-cast v0, Ljava/lang/String;

    #@4
    invoke-static {p0, p1, v0, v1, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphPlace;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphPlace;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;",
            "Lcom/facebook/Request$Callback;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p3, :cond_24

    #@3
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v3

    #@10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_25

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/facebook/model/GraphUser;

    #@1c
    invoke-interface {v0}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_10

    #@24
    :cond_24
    move-object v2, v1

    #@25
    :cond_25
    if-nez p2, :cond_2d

    #@27
    move-object v0, v1

    #@28
    :goto_28
    invoke-static {p0, p1, v0, v2, p4}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@2b
    move-result-object v0

    #@2c
    return-object v0

    #@2d
    :cond_2d
    invoke-interface {p2}, Lcom/facebook/model/GraphPlace;->getId()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    goto :goto_28
.end method

.method private static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Request$Callback;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    #@0
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v0, "message"

    #@7
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    if-eqz p2, :cond_11

    #@c
    const-string v0, "place"

    #@e
    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    :cond_11
    if-eqz p3, :cond_24

    #@13
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@16
    move-result v0

    #@17
    if-lez v0, :cond_24

    #@19
    const-string v0, "tags"

    #@1b
    const-string v1, ","

    #@1d
    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    :cond_24
    new-instance v0, Lcom/facebook/Request;

    #@26
    const-string v2, "me/feed"

    #@28
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@2a
    move-object v1, p0

    #@2b
    move-object v5, p4

    #@2c
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@2f
    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Lcom/facebook/FacebookException;

    #@4
    const-string v1, "openGraphObject cannot be null"

    #@6
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getId()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    if-nez v2, :cond_18

    #@10
    new-instance v0, Lcom/facebook/FacebookException;

    #@12
    const-string v1, "openGraphObject must have an id"

    #@14
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    new-instance v3, Landroid/os/Bundle;

    #@1a
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@1d
    const-string v0, "object"

    #@1f
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    new-instance v0, Lcom/facebook/Request;

    #@2c
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@2e
    move-object v1, p0

    #@2f
    move-object v5, p2

    #@30
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@33
    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 14

    #@0
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    #@2
    const/4 v1, 0x0

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0, p1}, Lcom/facebook/model/OpenGraphObject;->setId(Ljava/lang/String;)V

    #@e
    invoke-interface {v0, p6}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    #@11
    invoke-static {p0, v0, p7}, Lcom/facebook/Request;->newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9

    #@0
    new-instance v3, Landroid/os/Bundle;

    #@2
    const/4 v0, 0x1

    #@3
    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    #@6
    const-string v0, "picture"

    #@8
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    new-instance v0, Lcom/facebook/Request;

    #@d
    const-string v2, "me/photos"

    #@f
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@11
    move-object v1, p0

    #@12
    move-object v5, p2

    #@13
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@16
    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    const/high16 v0, 0x10000000

    #@2
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@5
    move-result-object v0

    #@6
    new-instance v3, Landroid/os/Bundle;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    #@c
    const-string v1, "picture"

    #@e
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@11
    new-instance v0, Lcom/facebook/Request;

    #@13
    const-string v2, "me/photos"

    #@15
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@17
    move-object v1, p0

    #@18
    move-object v5, p2

    #@19
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@1c
    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9

    #@0
    new-instance v3, Landroid/os/Bundle;

    #@2
    const/4 v0, 0x1

    #@3
    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    #@6
    const-string v0, "file"

    #@8
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    new-instance v0, Lcom/facebook/Request;

    #@d
    const-string v2, "me/staging_resources"

    #@f
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@11
    move-object v1, p0

    #@12
    move-object v5, p2

    #@13
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@16
    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    #@2
    const/high16 v1, 0x10000000

    #@4
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@7
    move-result-object v1

    #@8
    const-string v2, "image/png"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    #@d
    new-instance v3, Landroid/os/Bundle;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    #@13
    const-string v1, "file"

    #@15
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@18
    new-instance v0, Lcom/facebook/Request;

    #@1a
    const-string v2, "me/staging_resources"

    #@1c
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@1e
    move-object v1, p0

    #@1f
    move-object v5, p2

    #@20
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@23
    return-object v0
.end method

.method public static newUploadVideoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    const/high16 v0, 0x10000000

    #@2
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@5
    move-result-object v0

    #@6
    new-instance v3, Landroid/os/Bundle;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    #@c
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@13
    new-instance v0, Lcom/facebook/Request;

    #@15
    const-string v2, "me/videos"

    #@17
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@19
    move-object v1, p0

    #@1a
    move-object v5, p2

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    #@1e
    return-object v0
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    #@0
    instance-of v0, p0, Ljava/lang/String;

    #@2
    if-eqz v0, :cond_7

    #@4
    check-cast p0, Ljava/lang/String;

    #@6
    :goto_6
    return-object p0

    #@7
    :cond_7
    instance-of v0, p0, Ljava/lang/Boolean;

    #@9
    if-nez v0, :cond_f

    #@b
    instance-of v0, p0, Ljava/lang/Number;

    #@d
    if-eqz v0, :cond_14

    #@f
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object p0

    #@13
    goto :goto_6

    #@14
    :cond_14
    instance-of v0, p0, Ljava/util/Date;

    #@16
    if-eqz v0, :cond_26

    #@18
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@1a
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    #@1c
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1e
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@21
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object p0

    #@25
    goto :goto_6

    #@26
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string v1, "Unsupported parameter type."

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
.end method

.method private static processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const-string v0, "me/"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_12

    #@a
    const-string v0, "/me/"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_62

    #@12
    :cond_12
    const-string v0, ":"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    const-string v1, "?"

    #@1a
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x3

    #@1f
    if-le v0, v2, :cond_5e

    #@21
    const/4 v2, -0x1

    #@22
    if-eq v1, v2, :cond_26

    #@24
    if-ge v0, v1, :cond_5e

    #@26
    :cond_26
    move v2, v4

    #@27
    :goto_27
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    #@2a
    move-result-object v0

    #@2b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2e
    move-result-object v0

    #@2f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v6

    #@33
    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_64

    #@39
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/util/Map$Entry;

    #@3f
    if-eqz v2, :cond_60

    #@41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Ljava/lang/String;

    #@47
    const-string v5, "image"

    #@49
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_60

    #@4f
    move v5, v4

    #@50
    :goto_50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Ljava/lang/String;

    #@56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    invoke-static {v1, v0, p2, v5}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    #@5d
    goto :goto_33

    #@5e
    :cond_5e
    move v2, v3

    #@5f
    goto :goto_27

    #@60
    :cond_60
    move v5, v3

    #@61
    goto :goto_50

    #@62
    :cond_62
    move v2, v3

    #@63
    goto :goto_27

    #@64
    :cond_64
    return-void
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    const-class v1, Lcom/facebook/model/GraphObject;

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_4c

    #@f
    check-cast p1, Lcom/facebook/model/GraphObject;

    #@11
    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    move-object v1, v0

    #@1a
    move-object v0, p1

    #@1b
    :goto_1b
    const-class v3, Lorg/json/JSONObject;

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_85

    #@23
    move-object v1, v0

    #@24
    check-cast v1, Lorg/json/JSONObject;

    #@26
    if-eqz p3, :cond_61

    #@28
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    #@2b
    move-result-object v3

    #@2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_72

    #@32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Ljava/lang/String;

    #@38
    const-string v4, "%s[%s]"

    #@3a
    new-array v5, v8, [Ljava/lang/Object;

    #@3c
    aput-object p0, v5, v2

    #@3e
    aput-object v0, v5, v7

    #@40
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    invoke-static {v4, v0, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    #@4b
    goto :goto_2c

    #@4c
    :cond_4c
    const-class v1, Lcom/facebook/model/GraphObjectList;

    #@4e
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_eb

    #@54
    check-cast p1, Lcom/facebook/model/GraphObjectList;

    #@56
    invoke-interface {p1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5d
    move-result-object v0

    #@5e
    move-object v1, v0

    #@5f
    move-object v0, p1

    #@60
    goto :goto_1b

    #@61
    :cond_61
    const-string v0, "id"

    #@63
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_73

    #@69
    const-string v0, "id"

    #@6b
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    #@72
    :cond_72
    :goto_72
    return-void

    #@73
    :cond_73
    const-string v0, "url"

    #@75
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_72

    #@7b
    const-string v0, "url"

    #@7d
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    #@84
    goto :goto_72

    #@85
    :cond_85
    const-class v3, Lorg/json/JSONArray;

    #@87
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@8a
    move-result v3

    #@8b
    if-eqz v3, :cond_b0

    #@8d
    check-cast v0, Lorg/json/JSONArray;

    #@8f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    #@92
    move-result v3

    #@93
    move v1, v2

    #@94
    :goto_94
    if-ge v1, v3, :cond_72

    #@96
    const-string v4, "%s[%d]"

    #@98
    new-array v5, v8, [Ljava/lang/Object;

    #@9a
    aput-object p0, v5, v2

    #@9c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9f
    move-result-object v6

    #@a0
    aput-object v6, v5, v7

    #@a2
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@a9
    move-result-object v5

    #@aa
    invoke-static {v4, v5, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    #@ad
    add-int/lit8 v1, v1, 0x1

    #@af
    goto :goto_94

    #@b0
    :cond_b0
    const-class v2, Ljava/lang/String;

    #@b2
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@b5
    move-result v2

    #@b6
    if-nez v2, :cond_c8

    #@b8
    const-class v2, Ljava/lang/Number;

    #@ba
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@bd
    move-result v2

    #@be
    if-nez v2, :cond_c8

    #@c0
    const-class v2, Ljava/lang/Boolean;

    #@c2
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@c5
    move-result v2

    #@c6
    if-eqz v2, :cond_d0

    #@c8
    :cond_c8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@cb
    move-result-object v0

    #@cc
    invoke-interface {p2, p0, v0}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    #@cf
    goto :goto_72

    #@d0
    :cond_d0
    const-class v2, Ljava/util/Date;

    #@d2
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@d5
    move-result v1

    #@d6
    if-eqz v1, :cond_72

    #@d8
    check-cast v0, Ljava/util/Date;

    #@da
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@dc
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    #@de
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@e0
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@e3
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-interface {p2, p0, v0}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    #@ea
    goto :goto_72

    #@eb
    :cond_eb
    move-object v1, v0

    #@ec
    move-object v0, p1

    #@ed
    goto/16 :goto_1b
.end method

.method private static processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    new-instance v1, Lcom/facebook/Request$Serializer;

    #@2
    invoke-direct {v1, p4, p1}, Lcom/facebook/Request$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;)V

    #@5
    const/4 v0, 0x1

    #@6
    if-ne p2, v0, :cond_61

    #@8
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    #@c
    move-result-object v2

    #@d
    new-instance v3, Ljava/util/HashMap;

    #@f
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@12
    iget-object v0, v2, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@14
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v4

    #@1c
    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_3d

    #@22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/String;

    #@28
    iget-object v5, v2, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@2a
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v5}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_1c

    #@34
    new-instance v6, Lcom/facebook/Request$Attachment;

    #@36
    invoke-direct {v6, v2, v5}, Lcom/facebook/Request$Attachment;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    #@39
    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    goto :goto_1c

    #@3d
    :cond_3d
    if-eqz p1, :cond_44

    #@3f
    const-string v0, "  Parameters:\n"

    #@41
    invoke-virtual {p1, v0}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    #@44
    :cond_44
    iget-object v0, v2, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@46
    invoke-static {v0, v1, v2}, Lcom/facebook/Request;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;Lcom/facebook/Request;)V

    #@49
    if-eqz p1, :cond_50

    #@4b
    const-string v0, "  Attachments:\n"

    #@4d
    invoke-virtual {p1, v0}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    #@50
    :cond_50
    invoke-static {v3, v1}, Lcom/facebook/Request;->serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V

    #@53
    iget-object v0, v2, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    #@55
    if-eqz v0, :cond_60

    #@57
    iget-object v0, v2, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    #@59
    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-static {v0, v2, v1}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    #@60
    :cond_60
    :goto_60
    return-void

    #@61
    :cond_61
    invoke-static {p0}, Lcom/facebook/Request;->getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@68
    move-result v2

    #@69
    if-eqz v2, :cond_73

    #@6b
    new-instance v0, Lcom/facebook/FacebookException;

    #@6d
    const-string v1, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    #@6f
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@72
    throw v0

    #@73
    :cond_73
    const-string v2, "batch_app_id"

    #@75
    invoke-virtual {v1, v2, v0}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    #@78
    new-instance v0, Ljava/util/HashMap;

    #@7a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@7d
    invoke-static {v1, p0, v0}, Lcom/facebook/Request;->serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    #@80
    if-eqz p1, :cond_87

    #@82
    const-string v2, "  Attachments:\n"

    #@84
    invoke-virtual {p1, v2}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    #@87
    :cond_87
    invoke-static {v0, v1}, Lcom/facebook/Request;->serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V

    #@8a
    goto :goto_60
.end method

.method static runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    #@3
    move-result v1

    #@4
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, v1, :cond_25

    #@c
    invoke-virtual {p0, v0}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    #@f
    move-result-object v3

    #@10
    iget-object v4, v3, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    #@12
    if-eqz v4, :cond_22

    #@14
    new-instance v4, Landroid/util/Pair;

    #@16
    iget-object v3, v3, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    #@18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1f
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    :cond_22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_a

    #@25
    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_39

    #@2b
    new-instance v0, Lcom/facebook/Request$4;

    #@2d
    invoke-direct {v0, v2, p0}, Lcom/facebook/Request$4;-><init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V

    #@30
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    #@33
    move-result-object v1

    #@34
    if-nez v1, :cond_3a

    #@36
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@39
    :cond_39
    :goto_39
    return-void

    #@3a
    :cond_3a
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3d
    goto :goto_39
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;",
            "Lcom/facebook/Request$Serializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_30

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/facebook/Request$Attachment;

    #@1a
    invoke-virtual {v1}, Lcom/facebook/Request$Attachment;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_8

    #@24
    invoke-virtual {v1}, Lcom/facebook/Request$Attachment;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v1}, Lcom/facebook/Request$Attachment;->getRequest()Lcom/facebook/Request;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1, v0, v3, v1}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    #@2f
    goto :goto_8

    #@30
    :cond_30
    return-void
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;Lcom/facebook/Request;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_22

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    invoke-static {v2}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_8

    #@1e
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    #@21
    goto :goto_8

    #@22
    :cond_22
    return-void
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request$Serializer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v1, Lorg/json/JSONArray;

    #@2
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_19

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/facebook/Request;

    #@15
    invoke-direct {v0, v1, p2}, Lcom/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    #@18
    goto :goto_9

    #@19
    :cond_19
    const-string v0, "batch"

    #@1b
    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/Request$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    #@1e
    return-void
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v1, Lorg/json/JSONObject;

    #@2
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@5
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    #@7
    if-eqz v0, :cond_17

    #@9
    const-string v0, "name"

    #@b
    iget-object v2, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@10
    const-string v0, "omit_response_on_success"

    #@12
    iget-boolean v2, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    #@14
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@17
    :cond_17
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    #@19
    if-eqz v0, :cond_22

    #@1b
    const-string v0, "depends_on"

    #@1d
    iget-object v2, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@22
    :cond_22
    invoke-virtual {p0}, Lcom/facebook/Request;->getUrlForBatchedRequest()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    const-string v0, "relative_url"

    #@28
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@2b
    const-string v0, "method"

    #@2d
    iget-object v3, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    #@2f
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@32
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@34
    if-eqz v0, :cond_3f

    #@36
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@38
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    #@3f
    :cond_3f
    new-instance v3, Ljava/util/ArrayList;

    #@41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@44
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@46
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@49
    move-result-object v0

    #@4a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v4

    #@4e
    :cond_4e
    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_8b

    #@54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Ljava/lang/String;

    #@5a
    iget-object v5, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@5c
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    invoke-static {v0}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_4e

    #@66
    const-string v5, "%s%d"

    #@68
    const/4 v6, 0x2

    #@69
    new-array v6, v6, [Ljava/lang/Object;

    #@6b
    const/4 v7, 0x0

    #@6c
    const-string v8, "file"

    #@6e
    aput-object v8, v6, v7

    #@70
    const/4 v7, 0x1

    #@71
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@74
    move-result v8

    #@75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v8

    #@79
    aput-object v8, v6, v7

    #@7b
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@82
    new-instance v6, Lcom/facebook/Request$Attachment;

    #@84
    invoke-direct {v6, p0, v0}, Lcom/facebook/Request$Attachment;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    #@87
    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    goto :goto_4e

    #@8b
    :cond_8b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@8e
    move-result v0

    #@8f
    if-nez v0, :cond_9c

    #@91
    const-string v0, "attached_files"

    #@93
    const-string v4, ","

    #@95
    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@9c
    :cond_9c
    iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    #@9e
    if-eqz v0, :cond_ba

    #@a0
    new-instance v0, Ljava/util/ArrayList;

    #@a2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a5
    iget-object v3, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    #@a7
    new-instance v4, Lcom/facebook/Request$5;

    #@a9
    invoke-direct {v4, p0, v0}, Lcom/facebook/Request$5;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V

    #@ac
    invoke-static {v3, v2, v4}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    #@af
    const-string v2, "body"

    #@b1
    const-string v3, "&"

    #@b3
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@ba
    :cond_ba
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@bd
    return-void
.end method

.method static final serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    new-instance v7, Lcom/facebook/internal/Logger;

    #@5
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    #@7
    const-string v3, "Request"

    #@9
    invoke-direct {v7, v0, v3}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    #@c
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    #@f
    move-result v8

    #@10
    if-ne v8, v1, :cond_6e

    #@12
    invoke-virtual {p0, v2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    #@15
    move-result-object v0

    #@16
    iget-object v0, v0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    #@18
    :goto_18
    invoke-virtual {v0}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@1f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    #@22
    move-result-object v9

    #@23
    const-string v3, "Request:\n"

    #@25
    invoke-virtual {v7, v3}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    #@28
    const-string v3, "Id"

    #@2a
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v7, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@31
    const-string v3, "URL"

    #@33
    invoke-virtual {v7, v3, v9}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@36
    const-string v3, "Method"

    #@38
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v7, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@3f
    const-string v3, "User-Agent"

    #@41
    const-string v4, "User-Agent"

    #@43
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v7, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@4a
    const-string v3, "Content-Type"

    #@4c
    const-string v4, "Content-Type"

    #@4e
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v7, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@55
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    #@58
    move-result v3

    #@59
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@5c
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    #@5f
    move-result v3

    #@60
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@63
    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@65
    if-ne v0, v3, :cond_71

    #@67
    move v0, v1

    #@68
    :goto_68
    if-nez v0, :cond_73

    #@6a
    invoke-virtual {v7}, Lcom/facebook/internal/Logger;->log()V

    #@6d
    :goto_6d
    return-void

    #@6e
    :cond_6e
    sget-object v0, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@70
    goto :goto_18

    #@71
    :cond_71
    move v0, v2

    #@72
    goto :goto_68

    #@73
    :cond_73
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    #@76
    :try_start_76
    invoke-static {p0}, Lcom/facebook/Request;->hasOnProgressCallbacks(Lcom/facebook/RequestBatch;)Z

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_ab

    #@7c
    new-instance v0, Lcom/facebook/ProgressNoopOutputStream;

    #@7e
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    #@81
    move-result-object v1

    #@82
    invoke-direct {v0, v1}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    #@85
    const/4 v1, 0x0

    #@86
    invoke-static {p0, v1, v8, v9, v0}, Lcom/facebook/Request;->processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V

    #@89
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    #@8c
    move-result v2

    #@8d
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    #@90
    move-result-object v3

    #@91
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@93
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@96
    move-result-object v0

    #@97
    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@9a
    new-instance v0, Lcom/facebook/ProgressOutputStream;

    #@9c
    int-to-long v4, v2

    #@9d
    move-object v2, p0

    #@9e
    invoke-direct/range {v0 .. v5}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/RequestBatch;Ljava/util/Map;J)V
    :try_end_a1
    .catchall {:try_start_76 .. :try_end_a1} :catchall_b5

    #@a1
    :goto_a1
    :try_start_a1
    invoke-static {p0, v7, v8, v9, v0}, Lcom/facebook/Request;->processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_bc

    #@a4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@a7
    invoke-virtual {v7}, Lcom/facebook/internal/Logger;->log()V

    #@aa
    goto :goto_6d

    #@ab
    :cond_ab
    :try_start_ab
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@ad
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@b0
    move-result-object v1

    #@b1
    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_b5

    #@b4
    goto :goto_a1

    #@b5
    :catchall_b5
    move-exception v0

    #@b6
    move-object v1, v0

    #@b7
    move-object v0, v6

    #@b8
    :goto_b8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@bb
    throw v1

    #@bc
    :catchall_bc
    move-exception v1

    #@bd
    goto :goto_b8
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .registers 1

    #@0
    sput-object p0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    #@2
    return-void
.end method

.method public static toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_14

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/facebook/Request;

    #@10
    invoke-direct {v0}, Lcom/facebook/Request;->validate()V

    #@13
    goto :goto_4

    #@14
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x1

    #@19
    if-ne v0, v1, :cond_31

    #@1b
    new-instance v0, Ljava/net/URL;

    #@1d
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p0, v1}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_29} :catch_3b

    #@29
    :goto_29
    :try_start_29
    invoke-static {v0}, Lcom/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {p0, v0}, Lcom/facebook/Request;->serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_44
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_30} :catch_4d

    #@30
    return-object v0

    #@31
    :cond_31
    :try_start_31
    new-instance v0, Ljava/net/URL;

    #@33
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_3a} :catch_3b

    #@3a
    goto :goto_29

    #@3b
    :catch_3b
    move-exception v0

    #@3c
    new-instance v1, Lcom/facebook/FacebookException;

    #@3e
    const-string v2, "could not construct URL for request"

    #@40
    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@43
    throw v1

    #@44
    :catch_44
    move-exception v0

    #@45
    new-instance v1, Lcom/facebook/FacebookException;

    #@47
    const-string v2, "could not construct request body"

    #@49
    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    throw v1

    #@4d
    :catch_4d
    move-exception v0

    #@4e
    new-instance v1, Lcom/facebook/FacebookException;

    #@50
    const-string v2, "could not construct request body"

    #@52
    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@55
    throw v1
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    #@0
    const-string v0, "requests"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    #@5
    new-instance v0, Lcom/facebook/RequestBatch;

    #@7
    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    #@a
    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/Request;)Ljava/net/HttpURLConnection;
    .registers 2

    #@0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Lcom/facebook/Response;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const-class v0, Lcom/facebook/model/GraphMultiResult;

    #@3
    invoke-virtual {p0, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/facebook/model/GraphMultiResult;

    #@9
    if-nez v0, :cond_d

    #@b
    move-object v0, v1

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    invoke-interface {v0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_15

    #@13
    move-object v0, v1

    #@14
    goto :goto_c

    #@15
    :cond_15
    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@18
    move-result-object v0

    #@19
    goto :goto_c
.end method

.method private validate()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_10

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v1, "Only one of a graph path or REST method may be specified per request."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/Response;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/Request;->executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Lcom/facebook/Request;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    #@2
    return v0
.end method

.method public final getCallback()Lcom/facebook/Request$Callback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    #@2
    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    #@2
    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    #@2
    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getRestMethod()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getSession()Lcom/facebook/Session;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@2
    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method final getUrlForBatchedRequest()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Lcom/facebook/FacebookException;

    #@6
    const-string v1, "Can\'t override URL for a batch request"

    #@8
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_1c

    #@10
    invoke-direct {p0}, Lcom/facebook/Request;->getRestPathWithVersion()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    :goto_14
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    #@17
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    :cond_1c
    invoke-direct {p0}, Lcom/facebook/Request;->getGraphPathWithVersion()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    goto :goto_14
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .registers 6

    #@0
    const/4 v2, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_e

    #@7
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@10
    if-eqz v0, :cond_2e

    #@12
    const-string v0, "%s/%s"

    #@14
    new-array v1, v2, [Ljava/lang/Object;

    #@16
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getRestUrlBase()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v1, v3

    #@1c
    invoke-direct {p0}, Lcom/facebook/Request;->getRestPathWithVersion()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    aput-object v2, v1, v4

    #@22
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    :goto_26
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    #@29
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    goto :goto_d

    #@2e
    :cond_2e
    invoke-virtual {p0}, Lcom/facebook/Request;->getHttpMethod()Lcom/facebook/HttpMethod;

    #@31
    move-result-object v0

    #@32
    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@34
    if-ne v0, v1, :cond_59

    #@36
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@38
    if-eqz v0, :cond_59

    #@3a
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@3c
    const-string v1, "/videos"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_59

    #@44
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    :goto_48
    const-string v1, "%s/%s"

    #@4a
    new-array v2, v2, [Ljava/lang/Object;

    #@4c
    aput-object v0, v2, v3

    #@4e
    invoke-direct {p0}, Lcom/facebook/Request;->getGraphPathWithVersion()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    aput-object v0, v2, v4

    #@54
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    goto :goto_26

    #@59
    :cond_59
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    goto :goto_48
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    #@2
    return-void
.end method

.method public final setCallback(Lcom/facebook/Request$Callback;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    #@2
    return-void
.end method

.method public final setGraphObject(Lcom/facebook/model/GraphObject;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    #@2
    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_10

    #@4
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    #@6
    if-eq p1, v0, :cond_10

    #@8
    new-instance v0, Lcom/facebook/FacebookException;

    #@a
    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    #@c
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    if-eqz p1, :cond_15

    #@12
    :goto_12
    iput-object p1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    #@14
    return-void

    #@15
    :cond_15
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    #@17
    goto :goto_12
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@2
    return-void
.end method

.method public final setRestMethod(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setSession(Lcom/facebook/Session;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@2
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    #@2
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "{Request: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, " session: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, ", graphPath: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v1, ", graphObject: "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v1, ", restMethod: "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string v1, ", httpMethod: "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string v1, ", parameters: "

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
.end method
