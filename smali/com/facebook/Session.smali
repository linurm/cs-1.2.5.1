.class public Lcom/facebook/Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Session$AuthorizationRequest;,
        Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;,
        Lcom/facebook/Session$AutoPublishAsyncTask;,
        Lcom/facebook/Session$Builder;,
        Lcom/facebook/Session$NewPermissionsRequest;,
        Lcom/facebook/Session$OpenRequest;,
        Lcom/facebook/Session$PermissionsPair;,
        Lcom/facebook/Session$SerializationProxyV1;,
        Lcom/facebook/Session$SerializationProxyV2;,
        Lcom/facebook/Session$StartActivityDelegate;,
        Lcom/facebook/Session$StatusCallback;,
        Lcom/facebook/Session$TokenRefreshRequest;,
        Lcom/facebook/Session$TokenRefreshRequestHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVE_SESSION_CLOSED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

.field public static final ACTION_ACTIVE_SESSION_OPENED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"

.field public static final ACTION_ACTIVE_SESSION_SET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"

.field public static final ACTION_ACTIVE_SESSION_UNSET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"

.field private static final AUTH_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"

.field private static final BASIC_INFO_PERMISSION:Ljava/lang/String; = "basic_info"

.field public static final DEFAULT_AUTHORIZE_ACTIVITY_CODE:I = 0xface

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final SESSION_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"

.field private static final STATIC_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String;

.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10

.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180

.field public static final WEB_VIEW_ERROR_CODE_KEY:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"

.field public static final WEB_VIEW_FAILING_URL_KEY:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"

.field private static activeSession:Lcom/facebook/Session; = null

.field private static final serialVersionUID:J = 0x1L

.field private static volatile staticContext:Landroid/content/Context;


# instance fields
.field private appEventsLogger:Lcom/facebook/AppEventsLogger;

.field private applicationId:Ljava/lang/String;

.field private volatile authorizationBundle:Landroid/os/Bundle;

.field private authorizationClient:Lcom/facebook/AuthorizationClient;

.field private autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Session$StatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

.field private handler:Landroid/os/Handler;

.field private lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final lock:Ljava/lang/Object;

.field private pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private state:Lcom/facebook/SessionState;

.field private tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

.field private tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/Session;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    #@8
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    sput-object v0, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    #@f
    new-instance v0, Lcom/facebook/Session$1;

    #@11
    invoke-direct {v0}, Lcom/facebook/Session$1;-><init>()V

    #@14
    sput-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    #@16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    #@5
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    #@4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    new-instance v1, Ljava/util/Date;

    #@6
    const-wide/16 v2, 0x0

    #@8
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    iput-object v1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@d
    new-instance v1, Ljava/lang/Object;

    #@f
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@14
    if-eqz p1, :cond_1c

    #@16
    if-nez p2, :cond_1c

    #@18
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@1b
    move-result-object p2

    #@1c
    :cond_1c
    const-string v1, "applicationId"

    #@1e
    invoke-static {p2, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@21
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    #@24
    if-nez p3, :cond_2d

    #@26
    new-instance p3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    #@28
    sget-object v1, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@2a
    invoke-direct {p3, v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    #@2d
    :cond_2d
    iput-object p2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@2f
    iput-object p3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@31
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    #@33
    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@35
    iput-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@37
    new-instance v1, Ljava/util/ArrayList;

    #@39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3c
    iput-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@3e
    new-instance v1, Landroid/os/Handler;

    #@40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@43
    move-result-object v2

    #@44
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@47
    iput-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    #@49
    if-eqz p4, :cond_4f

    #@4b
    invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->load()Landroid/os/Bundle;

    #@4e
    move-result-object v0

    #@4f
    :cond_4f
    invoke-static {v0}, Lcom/facebook/TokenCachingStrategy;->hasTokenInformation(Landroid/os/Bundle;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_7d

    #@55
    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    #@57
    invoke-static {v0, v1}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    #@5a
    move-result-object v1

    #@5b
    new-instance v2, Ljava/util/Date;

    #@5d
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    #@60
    if-eqz v1, :cond_68

    #@62
    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_72

    #@68
    :cond_68
    invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->clear()V

    #@6b
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    #@6e
    move-result-object v0

    #@6f
    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@71
    :goto_71
    return-void

    #@72
    :cond_72
    invoke-static {v0}, Lcom/facebook/AccessToken;->createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    #@75
    move-result-object v0

    #@76
    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@78
    sget-object v0, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    #@7a
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@7c
    goto :goto_71

    #@7d
    :cond_7d
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    #@80
    move-result-object v0

    #@81
    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@83
    goto :goto_71
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
    .registers 12

    #@0
    const/4 v4, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    new-instance v0, Ljava/util/Date;

    #@6
    const-wide/16 v2, 0x0

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@d
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@14
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@16
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@18
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@1a
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@1c
    iput-object p6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@1e
    new-instance v0, Landroid/os/Handler;

    #@20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@27
    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    #@29
    iput-object v4, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    #@2b
    iput-object v4, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@2d
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@34
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$1;)V
    .registers 8

    #@0
    invoke-direct/range {p0 .. p6}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/SessionState;",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/facebook/Session$AuthorizationRequest;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    new-instance v0, Ljava/util/Date;

    #@6
    const-wide/16 v2, 0x0

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@d
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@14
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@16
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@18
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@1a
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@1c
    iput-object p6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@1e
    new-instance v0, Landroid/os/Handler;

    #@20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@27
    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    #@29
    iput-object v4, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    #@2b
    iput-object v4, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@2d
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@34
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;Lcom/facebook/Session$1;)V
    .registers 9

    #@0
    invoke-direct/range {p0 .. p7}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V

    #@3
    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V

    #@3
    return-void
.end method

.method static synthetic access$1200(Lcom/facebook/Session;)Ljava/util/List;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/Session;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic access$1400(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic access$1600(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    #@2
    return-object v0
.end method

.method static synthetic access$1602(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)Lcom/facebook/Session$TokenRefreshRequest;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    #@2
    return-object p1
.end method

.method static synthetic access$1802(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)Lcom/facebook/Session$AutoPublishAsyncTask;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    #@2
    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/Session;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/Session;)Lcom/facebook/AccessToken;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@2
    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/Session;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@2
    return-object p1
.end method

.method static synthetic access$400(Lcom/facebook/Session;)Lcom/facebook/SessionState;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@2
    return-object v0
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-nez p0, :cond_8

    #@2
    if-nez p1, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5

    #@8
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_5
.end method

.method private autoPublishAsync()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    iget-object v1, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    #@4
    if-nez v1, :cond_19

    #@6
    invoke-static {}, Lcom/facebook/Settings;->getShouldAutoPublishInstall()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_19

    #@c
    iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_19

    #@10
    new-instance v0, Lcom/facebook/Session$AutoPublishAsyncTask;

    #@12
    sget-object v2, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@14
    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/Session$AutoPublishAsyncTask;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V

    #@17
    iput-object v0, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    #@19
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_23

    #@1a
    if-eqz v0, :cond_22

    #@1c
    const/4 v1, 0x0

    #@1d
    new-array v1, v1, [Ljava/lang/Void;

    #@1f
    invoke-virtual {v0, v1}, Lcom/facebook/Session$AutoPublishAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@22
    :cond_22
    return-void

    #@23
    :catchall_23
    move-exception v0

    #@24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    #@25
    throw v0
.end method

.method private finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@2
    if-eqz p1, :cond_16

    #@4
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@6
    invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V

    #@9
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    #@b
    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@d
    :cond_d
    :goto_d
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@10
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@12
    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@15
    return-void

    #@16
    :cond_16
    if-eqz p2, :cond_d

    #@18
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    #@1a
    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@1c
    goto :goto_d
.end method

.method private finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@2
    if-eqz p1, :cond_d

    #@4
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@6
    invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V

    #@9
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    #@b
    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@d
    :cond_d
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@10
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@12
    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@15
    return-void
.end method

.method public static final getActiveSession()Lcom/facebook/Session;
    .registers 2

    #@0
    sget-object v1, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method private getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .registers 4

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    #@5
    if-nez v0, :cond_11

    #@7
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@9
    iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@b
    invoke-static {v0, v2}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    #@11
    :cond_11
    iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method

.method private getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;
    .registers 5

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    const-class v2, Lcom/facebook/LoginActivity;

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@e
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@19
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/facebook/LoginActivity;->populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@24
    return-object v0
.end method

.method static getStaticContext()Landroid/content/Context;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method private handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    if-ne p1, v0, :cond_24

    #@4
    iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    #@6
    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    #@8
    if-ne v0, v2, :cond_1a

    #@a
    iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    #@c
    move-object v2, v1

    #@d
    :goto_d
    iget-object v3, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    #@f
    iget-object v4, p2, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    #@11
    invoke-direct {p0, v3, v4, v2}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    #@14
    iput-object v1, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@16
    invoke-virtual {p0, v0, v2}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    #@19
    return-void

    #@1a
    :cond_1a
    new-instance v0, Lcom/facebook/FacebookAuthorizationException;

    #@1c
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    #@1e
    invoke-direct {v0, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    #@21
    move-object v2, v0

    #@22
    move-object v0, v1

    #@23
    goto :goto_d

    #@24
    :cond_24
    if-nez p1, :cond_30

    #@26
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    #@28
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    #@2a
    invoke-direct {v0, v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    #@2d
    move-object v2, v0

    #@2e
    move-object v0, v1

    #@2f
    goto :goto_d

    #@30
    :cond_30
    move-object v0, v1

    #@31
    move-object v2, v1

    #@32
    goto :goto_d
.end method

.method static handlePermissionResponse(Lcom/facebook/Response;)Lcom/facebook/Session$PermissionsPair;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_9

    #@7
    move-object v0, v1

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    const-class v0, Lcom/facebook/model/GraphMultiResult;

    #@b
    invoke-virtual {p0, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/facebook/model/GraphMultiResult;

    #@11
    if-nez v0, :cond_15

    #@13
    move-object v0, v1

    #@14
    goto :goto_8

    #@15
    :cond_15
    invoke-interface {v0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    #@18
    move-result-object v2

    #@19
    if-eqz v2, :cond_21

    #@1b
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_23

    #@21
    :cond_21
    move-object v0, v1

    #@22
    goto :goto_8

    #@23
    :cond_23
    new-instance v3, Ljava/util/ArrayList;

    #@25
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I

    #@28
    move-result v0

    #@29
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@2c
    new-instance v4, Ljava/util/ArrayList;

    #@2e
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I

    #@31
    move-result v0

    #@32
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@35
    const/4 v0, 0x0

    #@36
    invoke-interface {v2, v0}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@3c
    const-string v1, "permission"

    #@3e
    invoke-interface {v0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    if-eqz v1, :cond_84

    #@44
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v2

    #@48
    :cond_48
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_c0

    #@4e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@54
    const-string v1, "permission"

    #@56
    invoke-interface {v0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@59
    move-result-object v1

    #@5a
    check-cast v1, Ljava/lang/String;

    #@5c
    const-string v5, "installed"

    #@5e
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v5

    #@62
    if-nez v5, :cond_48

    #@64
    const-string v5, "status"

    #@66
    invoke-interface {v0, v5}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Ljava/lang/String;

    #@6c
    const-string v5, "granted"

    #@6e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v5

    #@72
    if-eqz v5, :cond_78

    #@74
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@77
    goto :goto_48

    #@78
    :cond_78
    const-string v5, "declined"

    #@7a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_48

    #@80
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@83
    goto :goto_48

    #@84
    :cond_84
    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    #@87
    move-result-object v0

    #@88
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8b
    move-result-object v0

    #@8c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8f
    move-result-object v2

    #@90
    :cond_90
    :goto_90
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@93
    move-result v0

    #@94
    if-eqz v0, :cond_c0

    #@96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@99
    move-result-object v0

    #@9a
    move-object v1, v0

    #@9b
    check-cast v1, Ljava/util/Map$Entry;

    #@9d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@a0
    move-result-object v0

    #@a1
    check-cast v0, Ljava/lang/String;

    #@a3
    const-string v5, "installed"

    #@a5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v0

    #@a9
    if-nez v0, :cond_90

    #@ab
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@ae
    move-result-object v0

    #@af
    check-cast v0, Ljava/lang/Integer;

    #@b1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b4
    move-result v0

    #@b5
    const/4 v5, 0x1

    #@b6
    if-ne v0, v5, :cond_90

    #@b8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@bb
    move-result-object v0

    #@bc
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bf
    goto :goto_90

    #@c0
    :cond_c0
    new-instance v0, Lcom/facebook/Session$PermissionsPair;

    #@c2
    invoke-direct {v0, v3, v4}, Lcom/facebook/Session$PermissionsPair;-><init>(Ljava/util/List;Ljava/util/List;)V

    #@c5
    goto/16 :goto_8
.end method

.method static initializeStaticContext(Landroid/content/Context;)V
    .registers 2

    #@0
    if-eqz p0, :cond_f

    #@2
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@4
    if-nez v0, :cond_f

    #@6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_d

    #@c
    move-object p0, v0

    #@d
    :cond_d
    sput-object p0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@f
    :cond_f
    return-void
.end method

.method public static isPublishPermission(Ljava/lang/String;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_1c

    #@2
    const-string v0, "publish"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1a

    #@a
    const-string v0, "manage"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1a

    #@12
    sget-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    #@14
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    :cond_1a
    const/4 v0, 0x1

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method

.method private logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AuthorizationClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    iget-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@3
    if-nez v2, :cond_30

    #@5
    const-string v2, ""

    #@7
    invoke-static {v2}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@a
    move-result-object v2

    #@b
    const-string v3, "2_result"

    #@d
    sget-object v4, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    #@f
    invoke-virtual {v4}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    const-string v3, "5_error_message"

    #@18
    const-string v4, "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest."

    #@1a
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    :goto_1d
    const-string v3, "1_timestamp_ms"

    #@1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@22
    move-result-wide v4

    #@23
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@26
    invoke-direct {p0}, Lcom/facebook/Session;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    #@29
    move-result-object v3

    #@2a
    const-string v4, "fb_mobile_login_complete"

    #@2c
    invoke-virtual {v3, v4, v6, v2}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    #@2f
    return-void

    #@30
    :cond_30
    iget-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@32
    invoke-virtual {v2}, Lcom/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v2}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@39
    move-result-object v4

    #@3a
    if-eqz p1, :cond_45

    #@3c
    const-string v2, "2_result"

    #@3e
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    :cond_45
    if-eqz p3, :cond_56

    #@47
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    if-eqz v2, :cond_56

    #@4d
    const-string v2, "5_error_message"

    #@4f
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    :cond_56
    iget-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@58
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v2}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    #@5b
    move-result-object v2

    #@5c
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@5f
    move-result v2

    #@60
    if-nez v2, :cond_ae

    #@62
    new-instance v2, Lorg/json/JSONObject;

    #@64
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@66
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    #@69
    move-result-object v3

    #@6a
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    #@6d
    :goto_6d
    if-eqz p2, :cond_9c

    #@6f
    if-nez v2, :cond_ac

    #@71
    new-instance v5, Lorg/json/JSONObject;

    #@73
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    #@76
    :goto_76
    :try_start_76
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@79
    move-result-object v2

    #@7a
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v7

    #@7e
    :goto_7e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@81
    move-result v2

    #@82
    if-eqz v2, :cond_aa

    #@84
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87
    move-result-object v2

    #@88
    move-object v0, v2

    #@89
    check-cast v0, Ljava/util/Map$Entry;

    #@8b
    move-object v3, v0

    #@8c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@8f
    move-result-object v2

    #@90
    check-cast v2, Ljava/lang/String;

    #@92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_99} :catch_9a

    #@99
    goto :goto_7e

    #@9a
    :catch_9a
    move-exception v2

    #@9b
    move-object v2, v5

    #@9c
    :cond_9c
    :goto_9c
    if-eqz v2, :cond_a7

    #@9e
    const-string v3, "6_extras"

    #@a0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a7
    :cond_a7
    move-object v2, v4

    #@a8
    goto/16 :goto_1d

    #@aa
    :cond_aa
    move-object v2, v5

    #@ab
    goto :goto_9c

    #@ac
    :cond_ac
    move-object v5, v2

    #@ad
    goto :goto_76

    #@ae
    :cond_ae
    move-object v2, v6

    #@af
    goto :goto_6d
.end method

.method private logAuthorizationStart()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@2
    invoke-virtual {v0}, Lcom/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@9
    move-result-object v0

    #@a
    const-string v1, "1_timestamp_ms"

    #@c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@13
    :try_start_13
    new-instance v1, Lorg/json/JSONObject;

    #@15
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@18
    const-string v2, "login_behavior"

    #@1a
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@1c
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$700(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionLoginBehavior;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@27
    const-string v2, "request_code"

    #@29
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@2b
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->requestCode:I
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$800(Lcom/facebook/Session$AuthorizationRequest;)I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@32
    const-string v2, "is_legacy"

    #@34
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@36
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    #@39
    move-result v3

    #@3a
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@3d
    const-string v2, "permissions"

    #@3f
    const-string v3, ","

    #@41
    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@43
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$900(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;

    #@46
    move-result-object v4

    #@47
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@4e
    const-string v2, "default_audience"

    #@50
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@52
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$1000(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionDefaultAudience;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Lcom/facebook/SessionDefaultAudience;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@5d
    const-string v2, "6_extras"

    #@5f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_66} :catch_71

    #@66
    :goto_66
    invoke-direct {p0}, Lcom/facebook/Session;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    #@69
    move-result-object v1

    #@6a
    const-string v2, "fb_mobile_login_start"

    #@6c
    const/4 v3, 0x0

    #@6d
    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    #@70
    return-void

    #@71
    :catch_71
    move-exception v1

    #@72
    goto :goto_66
.end method

.method private open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .registers 8

    #@0
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    #@3
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    #@6
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@b
    if-eqz v0, :cond_1d

    #@d
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@f
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@11
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@13
    const-string v4, "Session: an attempt was made to open a session that has a pending request."

    #@15
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@1b
    monitor-exit v1

    #@1c
    :cond_1c
    :goto_1c
    return-void

    #@1d
    :cond_1d
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@1f
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@21
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@23
    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    #@26
    move-result v3

    #@27
    aget v0, v0, v3

    #@29
    packed-switch v0, :pswitch_data_88

    #@2c
    :pswitch_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2e
    const-string v2, "Session: an attempt was made to open an already opened session."

    #@30
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    :catchall_34
    move-exception v0

    #@35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    #@36
    throw v0

    #@37
    :pswitch_37
    :try_start_37
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    #@39
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@3b
    if-nez p1, :cond_45

    #@3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3f
    const-string v2, "openRequest cannot be null when opening a new Session"

    #@41
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    :cond_45
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@47
    :goto_47
    if-eqz p1, :cond_50

    #@49
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {p0, v3}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    #@50
    :cond_50
    const/4 v3, 0x0

    #@51
    invoke-virtual {p0, v2, v0, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_34

    #@55
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    #@57
    if-ne v0, v1, :cond_1c

    #@59
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    #@5c
    goto :goto_1c

    #@5d
    :pswitch_5d
    if-eqz p1, :cond_79

    #@5f
    :try_start_5f
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    #@62
    move-result-object v0

    #@63
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    #@66
    move-result v0

    #@67
    if-nez v0, :cond_79

    #@69
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    #@70
    move-result-object v3

    #@71
    invoke-static {v0, v3}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@74
    move-result v0

    #@75
    if-nez v0, :cond_79

    #@77
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@79
    :cond_79
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@7b
    if-nez v0, :cond_82

    #@7d
    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    #@7f
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@81
    goto :goto_47

    #@82
    :cond_82
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    #@84
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
    :try_end_86
    .catchall {:try_start_5f .. :try_end_86} :catchall_34

    #@86
    goto :goto_47

    #@87
    nop

    #@88
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2c
        :pswitch_5d
    .end packed-switch
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    #@2
    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    #@5
    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    #@8
    move-result-object v0

    #@9
    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$StatusCallback;",
            ")",
            "Lcom/facebook/Session;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    #@2
    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    #@5
    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    #@c
    move-result-object v0

    #@d
    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .registers 5

    #@0
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    #@2
    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    #@5
    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    #@8
    move-result-object v0

    #@9
    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$StatusCallback;",
            ")",
            "Lcom/facebook/Session;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    #@2
    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    #@5
    invoke-virtual {v0, p4}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    #@c
    move-result-object v0

    #@d
    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method private static openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
    .registers 6

    #@0
    new-instance v0, Lcom/facebook/Session$Builder;

    #@2
    invoke-direct {v0, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    #@5
    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    #@b
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_17

    #@15
    if-eqz p1, :cond_1e

    #@17
    :cond_17
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    #@1a
    invoke-virtual {v0, p2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method public static openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v0, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static openActiveSessionWithAccessToken(Landroid/content/Context;Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    new-instance v0, Lcom/facebook/Session;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p0, v2, v2, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    #@7
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    #@a
    invoke-virtual {v0, p1, p2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    #@d
    return-object v0
.end method

.method static postActiveSessionAction(Ljava/lang/String;)V
    .registers 3

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    #@10
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2
    const-string v1, "Cannot readObject, serialization proxy required"

    #@4
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method private requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .registers 6

    #@0
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    #@3
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    #@6
    if-eqz p1, :cond_36

    #@8
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@a
    monitor-enter v1

    #@b
    :try_start_b
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@d
    if-eqz v0, :cond_1a

    #@f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@11
    const-string v2, "Session: an attempt was made to request new permissions for a session that has a pending request."

    #@13
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :catchall_17
    move-exception v0

    #@18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    #@19
    throw v0

    #@1a
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@1c
    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_37

    #@22
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_17

    #@25
    invoke-virtual {p0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setValidateSameFbidAsToken(Ljava/lang/String;)V

    #@2c
    invoke-virtual {p1}, Lcom/facebook/Session$NewPermissionsRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p0, v0}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    #@33
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    #@36
    :cond_36
    return-void

    #@37
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@39
    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_47

    #@3f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@41
    const-string v2, "Session: an attempt was made to request new permissions for a session that has been closed."

    #@43
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    :cond_47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@49
    const-string v2, "Session: an attempt was made to request new permissions for a session that is not currently open."

    #@4b
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_17
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@c
    move-result-object v1

    #@d
    if-nez v1, :cond_10

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    goto :goto_f
.end method

.method public static final restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p3, :cond_5

    #@3
    move-object v0, v1

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    #@7
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_3a

    #@d
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@f
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@12
    :try_start_12
    new-instance v0, Ljava/io/ObjectInputStream;

    #@14
    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@17
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/facebook/Session;

    #@1d
    invoke-static {p0}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    #@20
    if-eqz p1, :cond_3c

    #@22
    iput-object p1, v0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@24
    :goto_24
    if-eqz p2, :cond_29

    #@26
    invoke-virtual {v0, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    #@29
    :cond_29
    const-string v2, "com.facebook.sdk.Session.authBundleKey"

    #@2b
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@2e
    move-result-object v2

    #@2f
    iput-object v2, v0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_44

    #@31
    goto :goto_4

    #@32
    :catch_32
    move-exception v0

    #@33
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    #@35
    const-string v3, "Unable to restore session"

    #@37
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    :cond_3a
    :goto_3a
    move-object v0, v1

    #@3b
    goto :goto_4

    #@3c
    :cond_3c
    :try_start_3c
    new-instance v2, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    #@3e
    invoke-direct {v2, p0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    #@41
    iput-object v2, v0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_43} :catch_32
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_44

    #@43
    goto :goto_24

    #@44
    :catch_44
    move-exception v0

    #@45
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    #@47
    const-string v3, "Unable to restore session."

    #@49
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    goto :goto_3a
.end method

.method private static runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    if-eqz p0, :cond_6

    #@2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    :goto_5
    return-void

    #@6
    :cond_6
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@d
    goto :goto_5
.end method

.method public static final saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V
    .registers 5

    #@0
    if-eqz p1, :cond_29

    #@2
    if-eqz p0, :cond_29

    #@4
    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_29

    #@c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@e
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@11
    :try_start_11
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@13
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@16
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_2a

    #@19
    const-string v1, "com.facebook.sdk.Session.saveSessionKey"

    #@1b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@22
    const-string v0, "com.facebook.sdk.Session.authBundleKey"

    #@24
    iget-object v1, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    #@26
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@29
    :cond_29
    return-void

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    new-instance v1, Lcom/facebook/FacebookException;

    #@2d
    const-string v2, "Unable to save session."

    #@2f
    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v1
.end method

.method private saveTokenToCache(Lcom/facebook/AccessToken;)V
    .registers 4

    #@0
    if-eqz p1, :cond_f

    #@2
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@4
    if-eqz v0, :cond_f

    #@6
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@8
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    #@f
    :cond_f
    return-void
.end method

.method public static final setActiveSession(Lcom/facebook/Session;)V
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    #@5
    if-eq p0, v0, :cond_29

    #@7
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    #@9
    if-eqz v0, :cond_e

    #@b
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    #@e
    :cond_e
    sput-object p0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    #@10
    if-eqz v0, :cond_17

    #@12
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    #@14
    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    #@17
    :cond_17
    if-eqz p0, :cond_29

    #@19
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    #@1b
    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p0}, Lcom/facebook/Session;->isOpened()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_29

    #@24
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    #@26
    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    #@29
    :cond_29
    monitor-exit v1

    #@2a
    return-void

    #@2b
    :catchall_2b
    move-exception v0

    #@2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    #@2d
    throw v0
.end method

.method private tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)V
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/AuthorizationClient;

    #@2
    invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V

    #@5
    iput-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@7
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@9
    new-instance v1, Lcom/facebook/Session$3;

    #@b
    invoke-direct {v1, p0}, Lcom/facebook/Session$3;-><init>(Lcom/facebook/Session;)V

    #@e
    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    #@11
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@13
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/content/Context;)V

    #@1a
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@1c
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    #@23
    return-void
.end method

.method private tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1}, Lcom/facebook/Session;->getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;

    #@4
    move-result-object v1

    #@5
    invoke-direct {p0, v1}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_c

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    #@13
    move-result v3

    #@14
    invoke-interface {v2, v1, v3}, Lcom/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_17} :catch_19

    #@17
    const/4 v0, 0x1

    #@18
    goto :goto_b

    #@19
    :catch_19
    move-exception v1

    #@1a
    goto :goto_b
.end method

.method private validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V
    .registers 7

    #@0
    if-eqz p1, :cond_3b

    #@2
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_3b

    #@8
    new-instance v0, Landroid/content/Intent;

    #@a
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@d
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    const-class v2, Lcom/facebook/LoginActivity;

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@16
    invoke-direct {p0, v0}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_3b

    #@1c
    new-instance v0, Lcom/facebook/FacebookException;

    #@1e
    const-string v1, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    #@20
    const/4 v2, 0x2

    #@21
    new-array v2, v2, [Ljava/lang/Object;

    #@23
    const/4 v3, 0x0

    #@24
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    #@27
    move-result-object v4

    #@28
    aput-object v4, v2, v3

    #@2a
    const/4 v3, 0x1

    #@2b
    const-class v4, Lcom/facebook/LoginActivity;

    #@2d
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    aput-object v4, v2, v3

    #@33
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    :cond_3b
    return-void
.end method

.method private validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .registers 10

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    if-eqz p1, :cond_e

    #@4
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1e

    #@e
    :cond_e
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    #@10
    invoke-virtual {v0, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_68

    #@16
    new-instance v0, Lcom/facebook/FacebookException;

    #@18
    const-string v1, "Cannot request publish or manage authorization with no permissions."

    #@1a
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_68

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/lang/String;

    #@32
    invoke-static {v0}, Lcom/facebook/Session;->isPublishPermission(Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_50

    #@38
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    #@3a
    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_26

    #@40
    new-instance v1, Lcom/facebook/FacebookException;

    #@42
    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    #@44
    new-array v3, v6, [Ljava/lang/Object;

    #@46
    aput-object v0, v3, v5

    #@48
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    :cond_50
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    #@52
    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_26

    #@58
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    #@5a
    const-string v3, "Should not pass a read permission (%s) to a request for publish or manage authorization"

    #@5c
    new-array v4, v6, [Ljava/lang/Object;

    #@5e
    aput-object v0, v4, v5

    #@60
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_26

    #@68
    :cond_68
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 8

    #@0
    new-instance v0, Lcom/facebook/Session$SerializationProxyV1;

    #@2
    iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@6
    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@8
    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@a
    const/4 v5, 0x0

    #@b
    iget-object v6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@d
    invoke-direct/range {v0 .. v6}, Lcom/facebook/Session$SerializationProxyV1;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    #@10
    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/facebook/Session$StatusCallback;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    if-eqz p1, :cond_12

    #@5
    :try_start_5
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    :cond_12
    monitor-exit v1

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method authorize(Lcom/facebook/Session$AuthorizationRequest;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Lcom/facebook/Session$AuthorizationRequest;->setApplicationId(Ljava/lang/String;)V

    #@5
    invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V

    #@8
    invoke-direct {p0}, Lcom/facebook/Session;->logAuthorizationStart()V

    #@b
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z

    #@e
    move-result v1

    #@f
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@11
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    #@14
    move-result-object v2

    #@15
    if-eqz v1, :cond_63

    #@17
    const-string v0, "1"

    #@19
    :goto_19
    const-string v3, "try_login_activity"

    #@1b
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    if-nez v1, :cond_6b

    #@20
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_6b

    #@26
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@28
    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, "try_legacy"

    #@2e
    const-string v2, "1"

    #@30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)V

    #@36
    const/4 v0, 0x1

    #@37
    :goto_37
    if-nez v0, :cond_62

    #@39
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@3b
    monitor-enter v1

    #@3c
    :try_start_3c
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@3e
    sget-object v2, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@40
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@42
    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    #@45
    move-result v3

    #@46
    aget v2, v2, v3

    #@48
    packed-switch v2, :pswitch_data_6e

    #@4b
    sget-object v2, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    #@4d
    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@4f
    new-instance v2, Lcom/facebook/FacebookException;

    #@51
    const-string v3, "Log in attempt failed: LoginActivity could not be started, and not legacy request"

    #@53
    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@56
    sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    #@58
    const/4 v4, 0x0

    #@59
    invoke-direct {p0, v3, v4, v2}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    #@5c
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@5e
    invoke-virtual {p0, v0, v3, v2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_68

    #@62
    :cond_62
    :goto_62
    return-void

    #@63
    :cond_63
    const-string v0, "0"

    #@65
    goto :goto_19

    #@66
    :pswitch_66
    :try_start_66
    monitor-exit v1

    #@67
    goto :goto_62

    #@68
    :catchall_68
    move-exception v0

    #@69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_68

    #@6a
    throw v0

    #@6b
    :cond_6b
    move v0, v1

    #@6c
    goto :goto_37

    #@6d
    nop

    #@6e
    :pswitch_data_6e
    .packed-switch 0x6
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method

.method public final close()V
    .registers 6

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@5
    sget-object v2, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@7
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@9
    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    #@c
    move-result v3

    #@d
    aget v2, v2, v3

    #@f
    packed-switch v2, :pswitch_data_34

    #@12
    :goto_12
    monitor-exit v1

    #@13
    return-void

    #@14
    :pswitch_14
    sget-object v2, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    #@16
    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@18
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@1a
    new-instance v3, Lcom/facebook/FacebookException;

    #@1c
    const-string v4, "Log in attempt aborted."

    #@1e
    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@24
    goto :goto_12

    #@25
    :catchall_25
    move-exception v0

    #@26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    #@27
    throw v0

    #@28
    :pswitch_28
    :try_start_28
    sget-object v2, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    #@2a
    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@2c
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@2e
    const/4 v3, 0x0

    #@2f
    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_25

    #@32
    goto :goto_12

    #@33
    nop

    #@34
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public final closeAndClearTokenInformation()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@6
    invoke-virtual {v0}, Lcom/facebook/TokenCachingStrategy;->clear()V

    #@9
    :cond_9
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@b
    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    #@e
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    #@10
    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearCaches(Landroid/content/Context;)V

    #@13
    invoke-virtual {p0}, Lcom/facebook/Session;->close()V

    #@16
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/facebook/Session;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/facebook/Session;

    #@8
    iget-object v1, p1, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@a
    iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@c
    invoke-static {v1, v2}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_5

    #@12
    iget-object v1, p1, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    #@14
    iget-object v2, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    #@16
    invoke-static {v1, v2}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_5

    #@1c
    iget-object v1, p1, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@1e
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@20
    invoke-static {v1, v2}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_5

    #@26
    invoke-virtual {p1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {p0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_5

    #@34
    const/4 v0, 0x1

    #@35
    goto :goto_5
.end method

.method extendAccessToken()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    :try_start_4
    iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    #@6
    if-nez v2, :cond_f

    #@8
    new-instance v0, Lcom/facebook/Session$TokenRefreshRequest;

    #@a
    invoke-direct {v0, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V

    #@d
    iput-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    #@f
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_16

    #@10
    if-eqz v0, :cond_15

    #@12
    invoke-virtual {v0}, Lcom/facebook/Session$TokenRefreshRequest;->bind()V

    #@15
    :cond_15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    #@18
    throw v0
.end method

.method extendAccessTokenIfNeeded()V
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-virtual {p0}, Lcom/facebook/Session;->extendAccessToken()V

    #@9
    :cond_9
    return-void
.end method

.method extendTokenCompleted(Landroid/os/Bundle;)V
    .registers 6

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@5
    sget-object v2, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@7
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@9
    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    #@c
    move-result v3

    #@d
    aget v2, v2, v3

    #@f
    packed-switch v2, :pswitch_data_54

    #@12
    sget-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string v3, "refreshToken ignored in state "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    monitor-exit v1

    #@2d
    :goto_2d
    return-void

    #@2e
    :pswitch_2e
    sget-object v2, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    #@30
    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@32
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@34
    const/4 v3, 0x0

    #@35
    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@38
    :pswitch_38
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@3a
    invoke-static {v0, p1}, Lcom/facebook/AccessToken;->createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@40
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@42
    if-eqz v0, :cond_4f

    #@44
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@46
    iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@48
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v0, v2}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    #@4f
    :cond_4f
    monitor-exit v1

    #@50
    goto :goto_2d

    #@51
    :catchall_51
    move-exception v0

    #@52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    #@53
    throw v0

    #@54
    :pswitch_data_54
    .packed-switch 0x4
        :pswitch_2e
        :pswitch_38
    .end packed-switch
.end method

.method finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .registers 7

    #@0
    if-eqz p1, :cond_10

    #@2
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isInvalid()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    const/4 p1, 0x0

    #@9
    new-instance p2, Lcom/facebook/FacebookException;

    #@b
    const-string v0, "Invalid access token."

    #@d
    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@10
    :cond_10
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@12
    monitor-enter v1

    #@13
    :try_start_13
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@15
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@17
    invoke-virtual {v2}, Lcom/facebook/SessionState;->ordinal()I

    #@1a
    move-result v2

    #@1b
    aget v0, v0, v2

    #@1d
    packed-switch v0, :pswitch_data_48

    #@20
    :goto_20
    monitor-exit v1

    #@21
    return-void

    #@22
    :pswitch_22
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    #@25
    goto :goto_20

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    #@28
    throw v0

    #@29
    :pswitch_29
    :try_start_29
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    #@2c
    goto :goto_20

    #@2d
    :pswitch_2d
    sget-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v3, "Unexpected call to finishAuthOrReauth in state "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_26

    #@47
    goto :goto_20

    #@48
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_22
        :pswitch_2d
        :pswitch_29
        :pswitch_29
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public final getAccessToken()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@5
    if-nez v0, :cond_a

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@c
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    goto :goto_8

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getAuthorizationBundle()Landroid/os/Bundle;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public final getDeclinedPermissions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@5
    if-nez v0, :cond_a

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@c
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    goto :goto_8

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@5
    if-nez v0, :cond_a

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@c
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    #@f
    move-result-object v0

    #@10
    goto :goto_8

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method getLastAttemptedTokenExtendDate()Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public final getPermissions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@5
    if-nez v0, :cond_a

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@c
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    goto :goto_8

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method public final getState()Lcom/facebook/SessionState;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method getTokenInfo()Lcom/facebook/AccessToken;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final isClosed()Z
    .registers 3

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@5
    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public final isOpened()Z
    .registers 3

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@5
    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 11

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const-string v0, "currentActivity"

    #@4
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    #@a
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@c
    monitor-enter v2

    #@d
    :try_start_d
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@f
    if-eqz v0, :cond_19

    #@11
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@13
    invoke-virtual {v0}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    #@16
    move-result v0

    #@17
    if-eq p2, v0, :cond_1c

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    monitor-exit v2

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_30

    #@1d
    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    #@1f
    if-eqz p4, :cond_50

    #@21
    const-string v0, "com.facebook.LoginActivity:Result"

    #@23
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/facebook/AuthorizationClient$Result;

    #@29
    if-eqz v0, :cond_33

    #@2b
    invoke-direct {p0, p3, v0}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V

    #@2e
    move v0, v1

    #@2f
    goto :goto_1b

    #@30
    :catchall_30
    move-exception v0

    #@31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    #@32
    throw v0

    #@33
    :cond_33
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@35
    if-eqz v0, :cond_3e

    #@37
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@39
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    #@3c
    move v0, v1

    #@3d
    goto :goto_1b

    #@3e
    :cond_3e
    move-object v0, v3

    #@3f
    :goto_3f
    if-nez v0, :cond_48

    #@41
    new-instance v0, Lcom/facebook/FacebookException;

    #@43
    const-string v4, "Unexpected call to Session.onActivityResult"

    #@45
    invoke-direct {v0, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@48
    :cond_48
    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    #@4b
    invoke-virtual {p0, v3, v0}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    #@4e
    move v0, v1

    #@4f
    goto :goto_1b

    #@50
    :cond_50
    if-nez p3, :cond_5f

    #@52
    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    #@54
    const-string v0, "User canceled operation."

    #@56
    invoke-direct {v2, v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    #@59
    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    #@5b
    move-object v5, v0

    #@5c
    move-object v0, v2

    #@5d
    move-object v2, v5

    #@5e
    goto :goto_3f

    #@5f
    :cond_5f
    move-object v0, v3

    #@60
    goto :goto_3f
.end method

.method public final open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
    .registers 7

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@5
    if-eqz v0, :cond_12

    #@7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string v2, "Session: an attempt was made to open a session that has a pending request."

    #@b
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :catchall_f
    move-exception v0

    #@10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    #@11
    throw v0

    #@12
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@14
    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_22

    #@1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1c
    const-string v2, "Session: an attempt was made to open a previously-closed session."

    #@1e
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    :cond_22
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@24
    sget-object v2, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    #@26
    if-eq v0, v2, :cond_36

    #@28
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@2a
    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    #@2c
    if-eq v0, v2, :cond_36

    #@2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@30
    const-string v2, "Session: an attempt was made to open an already opened session."

    #@32
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    :cond_36
    if-eqz p2, :cond_3b

    #@38
    invoke-virtual {p0, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    #@3b
    :cond_3b
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@3d
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@3f
    if-eqz v0, :cond_4a

    #@41
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    #@43
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v0, v2}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    #@4a
    :cond_4a
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@4c
    sget-object v2, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    #@4e
    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@50
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@52
    const/4 v3, 0x0

    #@53
    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_12 .. :try_end_57} :catchall_f

    #@57
    invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V

    #@5a
    return-void
.end method

.method public final openForPublish(Lcom/facebook/Session$OpenRequest;)V
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    #@5
    return-void
.end method

.method public final openForRead(Lcom/facebook/Session$OpenRequest;)V
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    #@5
    return-void
.end method

.method postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 6

    #@0
    if-ne p1, p2, :cond_9

    #@2
    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    #@4
    if-eq p1, v0, :cond_9

    #@6
    if-nez p3, :cond_9

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_15

    #@f
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@15
    :cond_15
    new-instance v0, Lcom/facebook/Session$4;

    #@17
    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/Session$4;-><init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@1a
    iget-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    #@1c
    invoke-static {v1, v0}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    #@1f
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    #@21
    if-ne p0, v0, :cond_8

    #@23
    invoke-virtual {p1}, Lcom/facebook/SessionState;->isOpened()Z

    #@26
    move-result v0

    #@27
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    #@2a
    move-result v1

    #@2b
    if-eq v0, v1, :cond_8

    #@2d
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_39

    #@33
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    #@35
    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    #@38
    goto :goto_8

    #@39
    :cond_39
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    #@3b
    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    #@3e
    goto :goto_8
.end method

.method public final refreshPermissions()V
    .registers 3

    #@0
    new-instance v0, Lcom/facebook/Request;

    #@2
    const-string v1, "me/permissions"

    #@4
    invoke-direct {v0, p0, v1}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    #@7
    new-instance v1, Lcom/facebook/Session$2;

    #@9
    invoke-direct {v1, p0}, Lcom/facebook/Session$2;-><init>(Lcom/facebook/Session;)V

    #@c
    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    #@f
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    #@12
    return-void
.end method

.method public final removeCallback(Lcom/facebook/Session$StatusCallback;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method public final requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    #@5
    return-void
.end method

.method public final requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    #@5
    return-void
.end method

.method setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    #@2
    return-void
.end method

.method setLastAttemptedTokenExtendDate(Ljava/util/Date;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@2
    return-void
.end method

.method setTokenInfo(Lcom/facebook/AccessToken;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@2
    return-void
.end method

.method shouldExtendAccessToken()Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    #@3
    if-eqz v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    new-instance v1, Ljava/util/Date;

    #@8
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@b
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@d
    invoke-virtual {v2}, Lcom/facebook/SessionState;->isOpened()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_5

    #@13
    iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@15
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Lcom/facebook/AccessTokenSource;->canExtendToken()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_5

    #@1f
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@22
    move-result-wide v2

    #@23
    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@25
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@28
    move-result-wide v4

    #@29
    sub-long/2addr v2, v4

    #@2a
    const-wide/32 v4, 0x36ee80

    #@2d
    cmp-long v2, v2, v4

    #@2f
    if-lez v2, :cond_5

    #@31
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@34
    move-result-wide v2

    #@35
    iget-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@37
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@3e
    move-result-wide v4

    #@3f
    sub-long/2addr v2, v4

    #@40
    const-wide/32 v4, 0x5265c00

    #@43
    cmp-long v1, v2, v4

    #@45
    if-lez v1, :cond_5

    #@47
    const/4 v0, 0x1

    #@48
    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "{Session"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, " state:"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, ", token:"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@1f
    if-nez v0, :cond_42

    #@21
    const-string v0, "null"

    #@23
    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string v1, ", appId:"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@2f
    if-nez v0, :cond_45

    #@31
    const-string v0, "null"

    #@33
    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string v1, "}"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    :cond_42
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    #@44
    goto :goto_23

    #@45
    :cond_45
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    #@47
    goto :goto_33
.end method
