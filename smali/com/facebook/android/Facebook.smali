.class public Lcom/facebook/android/Facebook;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/Facebook$DialogListener;,
        Lcom/facebook/android/Facebook$ServiceListener;,
        Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;,
        Lcom/facebook/android/Facebook$TokenRefreshConnectionHandler;,
        Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99

.field protected static DIALOG_BASE_URL:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FB_APP_SIGNATURE:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORCE_DIALOG_AUTH:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static GRAPH_BASE_URL:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOGIN:Ljava/lang/String; = "oauth"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REFRESH_TOKEN_BARRIER:J = 0x5265c00L

.field protected static RESTSERVER_URL:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SINGLE_SIGN_ON_DISABLED:Ljava/lang/String; = "service_disabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN:Ljava/lang/String; = "access_token"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private accessExpiresMillisecondsAfterEpoch:J

.field private accessToken:Ljava/lang/String;

.field private lastAccessUpdateMillisecondsAfterEpoch:J

.field private final lock:Ljava/lang/Object;

.field private mAppId:Ljava/lang/String;

.field private pendingAuthorizationActivity:Landroid/app/Activity;

.field private pendingAuthorizationPermissions:[Ljava/lang/String;

.field private pendingOpeningSession:Lcom/facebook/Session;

.field private volatile session:Lcom/facebook/Session;

.field private sessionInvalidated:Z

.field private tokenCache:Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;

.field private volatile userSetSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    #@2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/android/Facebook;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    #@8
    const-string v0, "https://m.facebook.com/dialog/"

    #@a
    sput-object v0, Lcom/facebook/android/Facebook;->DIALOG_BASE_URL:Ljava/lang/String;

    #@c
    const-string v0, "https://graph.facebook.com/"

    #@e
    sput-object v0, Lcom/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    #@10
    const-string v0, "https://api.facebook.com/restserver.php"

    #@12
    sput-object v0, Lcom/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    #@14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-wide/16 v2, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@c
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    #@f
    iput-wide v2, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    #@11
    iput-wide v2, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@13
    if-nez p1, :cond_1d

    #@15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    :cond_1d
    iput-object p1, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    #@1f
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/android/Facebook;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/android/Facebook;->onSessionCallback(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;Lcom/facebook/android/Facebook$DialogListener;)V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/android/Facebook;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/android/Facebook;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/android/Facebook;)Lcom/facebook/Session;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/android/Facebook;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    #@2
    return-wide v0
.end method

.method static synthetic access$402(Lcom/facebook/android/Facebook;J)J
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    #@2
    return-wide p1
.end method

.method static synthetic access$500(Lcom/facebook/android/Facebook;)[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$502(Lcom/facebook/android/Facebook;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$600([Ljava/lang/String;)Ljava/util/List;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/android/Facebook;->stringList([Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/android/Facebook;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@2
    return-wide v0
.end method

.method static synthetic access$702(Lcom/facebook/android/Facebook;J)J
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@2
    return-wide p1
.end method

.method static synthetic access$800(Ljava/util/List;)[Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/android/Facebook;->stringArray(Ljava/util/List;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/SessionLoginBehavior;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "authorize"

    #@3
    invoke-direct {p0, v1}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@6
    new-instance v1, Lcom/facebook/Session$Builder;

    #@8
    invoke-direct {v1, p1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    #@b
    iget-object v2, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v2}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    #@10
    move-result-object v1

    #@11
    invoke-direct {p0}, Lcom/facebook/android/Facebook;->getTokenCache()Lcom/facebook/TokenCachingStrategy;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/facebook/android/Facebook;->pendingOpeningSession:Lcom/facebook/Session;

    #@1f
    iput-object p1, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    #@21
    if-eqz p2, :cond_51

    #@23
    :goto_23
    iput-object p2, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    #@25
    new-instance v1, Lcom/facebook/android/Facebook$1;

    #@27
    invoke-direct {v1, p0, p5}, Lcom/facebook/android/Facebook$1;-><init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$DialogListener;)V

    #@2a
    new-instance v2, Lcom/facebook/Session$OpenRequest;

    #@2c
    invoke-direct {v2, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    #@2f
    invoke-virtual {v2, v1}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p3}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    #@3a
    move-result-object v1

    #@3b
    iget-object v2, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    #@3d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    #@44
    move-result-object v1

    #@45
    iget-object v2, p0, Lcom/facebook/android/Facebook;->pendingOpeningSession:Lcom/facebook/Session;

    #@47
    iget-object v3, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    #@49
    array-length v3, v3

    #@4a
    if-lez v3, :cond_4d

    #@4c
    const/4 v0, 0x1

    #@4d
    :cond_4d
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/android/Facebook;->openSession(Lcom/facebook/Session;Lcom/facebook/Session$OpenRequest;Z)V

    #@50
    return-void

    #@51
    :cond_51
    new-array p2, v0, [Ljava/lang/String;

    #@53
    goto :goto_23
.end method

.method private checkUserSession(Ljava/lang/String;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/android/Facebook;->userSetSession:Lcom/facebook/Session;

    #@2
    if-eqz v0, :cond_16

    #@4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string v1, "Cannot call %s after setSession has been called."

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    const/4 v3, 0x0

    #@c
    aput-object p1, v2, v3

    #@e
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    return-void
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getTokenCache()Lcom/facebook/TokenCachingStrategy;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/android/Facebook;->tokenCache:Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, p0, v1}, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;-><init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$1;)V

    #@a
    iput-object v0, p0, Lcom/facebook/android/Facebook;->tokenCache:Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;

    #@c
    :cond_c
    iget-object v0, p0, Lcom/facebook/android/Facebook;->tokenCache:Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;

    #@e
    return-object v0
.end method

.method private onSessionCallback(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 10

    #@0
    invoke-virtual {p1}, Lcom/facebook/Session;->getAuthorizationBundle()Landroid/os/Bundle;

    #@3
    move-result-object v1

    #@4
    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    #@6
    if-ne p2, v0, :cond_24

    #@8
    const/4 v0, 0x0

    #@9
    iget-object v2, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@b
    monitor-enter v2

    #@c
    :try_start_c
    iget-object v3, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@e
    if-eq p1, v3, :cond_17

    #@10
    iget-object v0, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@12
    iput-object p1, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@14
    const/4 v3, 0x0

    #@15
    iput-boolean v3, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    #@17
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_21

    #@18
    if-eqz v0, :cond_1d

    #@1a
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    #@1d
    :cond_1d
    invoke-interface {p4, v1}, Lcom/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    #@20
    :cond_20
    :goto_20
    return-void

    #@21
    :catchall_21
    move-exception v0

    #@22
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    #@23
    throw v0

    #@24
    :cond_24
    if-eqz p3, :cond_20

    #@26
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    #@28
    if-eqz v0, :cond_2e

    #@2a
    invoke-interface {p4}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    #@2d
    goto :goto_20

    #@2e
    :cond_2e
    instance-of v0, p3, Lcom/facebook/FacebookAuthorizationException;

    #@30
    if-eqz v0, :cond_5d

    #@32
    if-eqz v1, :cond_5d

    #@34
    const-string v0, "com.facebook.sdk.WebViewErrorCode"

    #@36
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_5d

    #@3c
    const-string v0, "com.facebook.sdk.FailingUrl"

    #@3e
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5d

    #@44
    new-instance v0, Lcom/facebook/android/DialogError;

    #@46
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    const-string v3, "com.facebook.sdk.WebViewErrorCode"

    #@4c
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@4f
    move-result v3

    #@50
    const-string v4, "com.facebook.sdk.FailingUrl"

    #@52
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/android/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@59
    invoke-interface {p4, v0}, Lcom/facebook/android/Facebook$DialogListener;->onError(Lcom/facebook/android/DialogError;)V

    #@5c
    goto :goto_20

    #@5d
    :cond_5d
    new-instance v0, Lcom/facebook/android/FacebookError;

    #@5f
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-direct {v0, v1}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    #@66
    invoke-interface {p4, v0}, Lcom/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/facebook/android/FacebookError;)V

    #@69
    goto :goto_20
.end method

.method private openSession(Lcom/facebook/Session;Lcom/facebook/Session$OpenRequest;Z)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p2, v0}, Lcom/facebook/Session$OpenRequest;->setIsLegacy(Z)V

    #@4
    if-eqz p3, :cond_a

    #@6
    invoke-virtual {p1, p2}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-virtual {p1, p2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    #@d
    goto :goto_9
.end method

.method private static stringArray(Ljava/util/List;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p0, :cond_19

    #@3
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    :goto_7
    new-array v2, v0, [Ljava/lang/String;

    #@9
    if-eqz p0, :cond_1b

    #@b
    :goto_b
    array-length v0, v2

    #@c
    if-ge v1, v0, :cond_1b

    #@e
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    aput-object v0, v2, v1

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_b

    #@19
    :cond_19
    move v0, v1

    #@1a
    goto :goto_7

    #@1b
    :cond_1b
    return-object v2
.end method

.method private static stringList([Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_7

    #@2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    goto :goto_6
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v1

    #@5
    const/16 v2, 0x40

    #@7
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_24

    #@a
    move-result-object v1

    #@b
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@d
    array-length v3, v2

    #@e
    move v1, v0

    #@f
    :goto_f
    if-ge v1, v3, :cond_20

    #@11
    aget-object v4, v2, v1

    #@13
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    const-string v5, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_21

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    :goto_20
    return v0

    #@21
    :cond_21
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_f

    #@24
    :catch_24
    move-exception v1

    #@25
    goto :goto_20
.end method

.method private validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_c

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@e
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@10
    invoke-direct {p0, p1, v0}, Lcom/facebook/android/Facebook;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    goto :goto_b
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    #@2
    const/4 v0, 0x0

    #@3
    new-array v2, v0, [Ljava/lang/String;

    #@5
    const/16 v3, 0x7f99

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v5, p2

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/SessionLoginBehavior;Lcom/facebook/android/Facebook$DialogListener;)V

    #@d
    return-void
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-ltz p3, :cond_d

    #@2
    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    #@4
    :goto_4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move-object v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/SessionLoginBehavior;Lcom/facebook/android/Facebook$DialogListener;)V

    #@c
    return-void

    #@d
    :cond_d
    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    #@f
    goto :goto_4
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/16 v3, 0x7f99

    #@2
    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v5, p3

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/SessionLoginBehavior;Lcom/facebook/android/Facebook$DialogListener;)V

    #@b
    return-void
.end method

.method public authorizeCallback(IILandroid/content/Intent;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const-string v0, "authorizeCallback"

    #@3
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@6
    iget-object v0, p0, Lcom/facebook/android/Facebook;->pendingOpeningSession:Lcom/facebook/Session;

    #@8
    if-eqz v0, :cond_18

    #@a
    iget-object v1, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    #@c
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_18

    #@12
    iput-object v2, p0, Lcom/facebook/android/Facebook;->pendingOpeningSession:Lcom/facebook/Session;

    #@14
    iput-object v2, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    #@16
    iput-object v2, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    #@18
    :cond_18
    return-void
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "display"

    #@2
    const-string v1, "touch"

    #@4
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    const-string v0, "redirect_uri"

    #@9
    const-string v1, "fbconnect://success"

    #@b
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    const-string v0, "oauth"

    #@10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_34

    #@16
    const-string v0, "type"

    #@18
    const-string v1, "user_agent"

    #@1a
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    const-string v0, "client_id"

    #@1f
    iget-object v1, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    #@21
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    :cond_24
    :goto_24
    const-string v0, "android.permission.INTERNET"

    #@26
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_4b

    #@2c
    const-string v0, "Error"

    #@2e
    const-string v1, "Application requires permission to access the Internet"

    #@30
    invoke-static {p1, v0, v1}, Lcom/facebook/android/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@33
    :goto_33
    return-void

    #@34
    :cond_34
    const-string v0, "app_id"

    #@36
    iget-object v1, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    #@38
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_24

    #@41
    const-string v0, "access_token"

    #@43
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    goto :goto_24

    #@4b
    :cond_4b
    new-instance v0, Lcom/facebook/android/FbDialog;

    #@4d
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    #@50
    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->show()V

    #@53
    goto :goto_33
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    #@8
    return-void
.end method

.method public extendAccessToken(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "extendAccessToken"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    new-instance v0, Landroid/content/Intent;

    #@7
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@a
    const-string v1, "com.facebook.katana"

    #@c
    const-string v2, "com.facebook.katana.platform.TokenRefreshService"

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11
    invoke-direct {p0, p1, v0}, Lcom/facebook/android/Facebook;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_19

    #@17
    const/4 v0, 0x0

    #@18
    :goto_18
    return v0

    #@19
    :cond_19
    new-instance v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;

    #@1b
    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;-><init>(Lcom/facebook/android/Facebook;Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)V

    #@1e
    const/4 v2, 0x1

    #@1f
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@22
    move-result v0

    #@23
    goto :goto_18
.end method

.method public extendAccessTokenIfNeeded(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "extendAccessTokenIfNeeded"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->shouldExtendAccessToken()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_10

    #@b
    invoke-virtual {p0, p1, p2}, Lcom/facebook/android/Facebook;->extendAccessToken(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z

    #@e
    move-result v0

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    goto :goto_f
.end method

.method public getAccessExpires()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@d
    move-result-wide v0

    #@e
    :goto_e
    return-wide v0

    #@f
    :cond_f
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    #@11
    goto :goto_e
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLastAccessUpdate()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@2
    return-wide v0
.end method

.method public final getSession()Lcom/facebook/Session;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    :cond_2
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    :try_start_5
    iget-object v3, p0, Lcom/facebook/android/Facebook;->userSetSession:Lcom/facebook/Session;

    #@7
    if-eqz v3, :cond_d

    #@9
    iget-object v0, p0, Lcom/facebook/android/Facebook;->userSetSession:Lcom/facebook/Session;

    #@b
    monitor-exit v1

    #@c
    :cond_c
    :goto_c
    return-object v0

    #@d
    :cond_d
    iget-object v3, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@f
    if-nez v3, :cond_15

    #@11
    iget-boolean v3, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    #@13
    if-nez v3, :cond_1c

    #@15
    :cond_15
    iget-object v0, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@17
    monitor-exit v1

    #@18
    goto :goto_c

    #@19
    :catchall_19
    move-exception v0

    #@1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    #@1b
    throw v0

    #@1c
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    #@1e
    iget-object v4, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_19

    #@21
    if-eqz v3, :cond_c

    #@23
    if-eqz v4, :cond_7e

    #@25
    invoke-virtual {v4}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    #@28
    move-result-object v1

    #@29
    :goto_29
    new-instance v3, Lcom/facebook/Session$Builder;

    #@2b
    iget-object v4, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    #@2d
    invoke-direct {v3, v4}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    #@30
    iget-object v4, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    #@32
    invoke-virtual {v3, v4}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    #@35
    move-result-object v3

    #@36
    invoke-direct {p0}, Lcom/facebook/android/Facebook;->getTokenCache()Lcom/facebook/TokenCachingStrategy;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    #@45
    move-result-object v4

    #@46
    sget-object v5, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    #@48
    if-ne v4, v5, :cond_c

    #@4a
    new-instance v4, Lcom/facebook/Session$OpenRequest;

    #@4c
    iget-object v5, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    #@4e
    invoke-direct {v4, v5}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    #@51
    invoke-virtual {v4, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    #@54
    move-result-object v4

    #@55
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@58
    move-result v1

    #@59
    if-nez v1, :cond_8e

    #@5b
    const/4 v1, 0x1

    #@5c
    :goto_5c
    invoke-direct {p0, v3, v4, v1}, Lcom/facebook/android/Facebook;->openSession(Lcom/facebook/Session;Lcom/facebook/Session$OpenRequest;Z)V

    #@5f
    iget-object v4, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@61
    monitor-enter v4

    #@62
    :try_start_62
    iget-boolean v1, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    #@64
    if-nez v1, :cond_6a

    #@66
    iget-object v1, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@68
    if-nez v1, :cond_93

    #@6a
    :cond_6a
    iget-object v1, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@6c
    iput-object v3, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@6e
    const/4 v5, 0x0

    #@6f
    iput-boolean v5, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    #@71
    move-object v6, v1

    #@72
    move-object v1, v3

    #@73
    move-object v3, v6

    #@74
    :goto_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_62 .. :try_end_75} :catchall_90

    #@75
    if-eqz v3, :cond_7a

    #@77
    invoke-virtual {v3}, Lcom/facebook/Session;->close()V

    #@7a
    :cond_7a
    if-eqz v1, :cond_2

    #@7c
    move-object v0, v1

    #@7d
    goto :goto_c

    #@7e
    :cond_7e
    iget-object v1, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    #@80
    if-eqz v1, :cond_89

    #@82
    iget-object v1, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    #@84
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@87
    move-result-object v1

    #@88
    goto :goto_29

    #@89
    :cond_89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8c
    move-result-object v1

    #@8d
    goto :goto_29

    #@8e
    :cond_8e
    move v1, v2

    #@8f
    goto :goto_5c

    #@90
    :catchall_90
    move-exception v0

    #@91
    :try_start_91
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    #@92
    throw v0

    #@93
    :cond_93
    move-object v3, v0

    #@94
    move-object v1, v0

    #@95
    goto :goto_74
.end method

.method public getShouldAutoPublishInstall()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {}, Lcom/facebook/Settings;->getShouldAutoPublishInstall()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isSessionValid()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_1e

    #@6
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    #@9
    move-result-wide v0

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmp-long v0, v0, v2

    #@e
    if-eqz v0, :cond_1c

    #@10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13
    move-result-wide v0

    #@14
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    #@17
    move-result-wide v2

    #@18
    cmp-long v0, v0, v2

    #@1a
    if-gez v0, :cond_1e

    #@1c
    :cond_1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/android/Facebook;->logoutImpl(Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method logoutImpl(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-string v0, "logout"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    new-instance v0, Landroid/os/Bundle;

    #@7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@a
    const-string v1, "method"

    #@c
    const-string v2, "auth.expireSession"

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    invoke-virtual {p0, v0}, Lcom/facebook/android/Facebook;->request(Landroid/os/Bundle;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@18
    move-result-wide v2

    #@19
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    :try_start_1c
    iget-object v4, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@1e
    const/4 v5, 0x0

    #@1f
    iput-object v5, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    #@21
    const/4 v5, 0x0

    #@22
    iput-object v5, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    #@24
    const-wide/16 v6, 0x0

    #@26
    iput-wide v6, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    #@28
    iput-wide v2, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@2a
    const/4 v2, 0x0

    #@2b
    iput-boolean v2, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    #@2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_34

    #@2e
    if-eqz v4, :cond_33

    #@30
    invoke-virtual {v4}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    #@33
    :cond_33
    return-object v0

    #@34
    :catchall_34
    move-exception v0

    #@35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    #@36
    throw v0
.end method

.method public publishInstall(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    #@2
    invoke-static {p1, v0}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "method"

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    const-string v1, "GET"

    #@13
    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public request(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "GET"

    #@7
    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "GET"

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-string v0, "format"

    #@2
    const-string v1, "json"

    #@4
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_16

    #@d
    const-string v0, "access_token"

    #@f
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    :cond_16
    if-eqz p1, :cond_30

    #@18
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    sget-object v1, Lcom/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    :goto_2b
    invoke-static {v0, p3, p2}, Lcom/facebook/android/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    :cond_30
    sget-object v0, Lcom/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    #@32
    goto :goto_2b
.end method

.method public setAccessExpires(J)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "setAccessExpires"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iput-wide p1, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    #@a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v2

    #@e
    iput-wide v2, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@10
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    #@13
    monitor-exit v1

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "setAccessExpiresIn"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    if-eqz p1, :cond_14

    #@7
    const-string v0, "0"

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_15

    #@f
    const-wide/16 v0, 0x0

    #@11
    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    #@14
    :cond_14
    return-void

    #@15
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@18
    move-result-wide v0

    #@19
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1c
    move-result-wide v2

    #@1d
    const-wide/16 v4, 0x3e8

    #@1f
    mul-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    goto :goto_11
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "setAccessToken"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iput-object p1, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    #@a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v2

    #@e
    iput-wide v2, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@10
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    #@13
    monitor-exit v1

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "setAppId"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iput-object p1, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    #@a
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    #@d
    monitor-exit v1

    #@e
    return-void

    #@f
    :catchall_f
    move-exception v0

    #@10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    #@11
    throw v0
.end method

.method public setSession(Lcom/facebook/Session;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "session cannot be null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    iput-object p1, p0, Lcom/facebook/android/Facebook;->userSetSession:Lcom/facebook/Session;

    #@f
    monitor-exit v1

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method public setShouldAutoPublishInstall(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p1}, Lcom/facebook/Settings;->setShouldAutoPublishInstall(Z)V

    #@3
    return-void
.end method

.method public setTokenFromCache(Ljava/lang/String;JJ)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "setTokenFromCache"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iput-object p1, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    #@a
    iput-wide p2, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    #@c
    iput-wide p4, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@e
    monitor-exit v1

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public shouldExtendAccessToken()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "shouldExtendAccessToken"

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1b

    #@b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v0

    #@f
    iget-wide v2, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    #@11
    sub-long/2addr v0, v2

    #@12
    const-wide/32 v2, 0x5265c00

    #@15
    cmp-long v0, v0, v2

    #@17
    if-ltz v0, :cond_1b

    #@19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    return v0

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    goto :goto_1a
.end method
