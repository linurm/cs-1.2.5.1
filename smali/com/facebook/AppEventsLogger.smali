.class public Lcom/facebook/AppEventsLogger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;,
        Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;,
        Lcom/facebook/AppEventsLogger$AppEvent;,
        Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;,
        Lcom/facebook/AppEventsLogger$EventSuppression;,
        Lcom/facebook/AppEventsLogger$FlushBehavior;,
        Lcom/facebook/AppEventsLogger$FlushReason;,
        Lcom/facebook/AppEventsLogger$FlushResult;,
        Lcom/facebook/AppEventsLogger$FlushStatistics;,
        Lcom/facebook/AppEventsLogger$PersistedEvents;,
        Lcom/facebook/AppEventsLogger$SessionEventsState;,
        Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    }
.end annotation


# static fields
.field public static final ACTION_APP_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field private static final APP_ACTIVATE_SUPPRESSION_PERIOD_IN_SECONDS:I = 0x12c

.field public static final APP_EVENTS_EXTRA_FLUSH_RESULT:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field public static final APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0x3c

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

.field private static flushTimer:Ljava/util/Timer;

.field private static hashedDeviceAndAppId:Ljava/lang/String;

.field private static mapEventNameToSuppress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/AppEventsLogger$EventSuppression;",
            ">;"
        }
    .end annotation
.end field

.field private static mapEventsToSuppressionTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private static requestInFlight:Z

.field private static stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/AppEventsLogger$SessionEventsState;",
            ">;"
        }
    .end annotation
.end field

.field private static staticLock:Ljava/lang/Object;

.field private static supportsAttributionRecheckTimer:Ljava/util/Timer;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/AppEventsLogger;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    #@8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@d
    sput-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    #@f
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

    #@11
    sput-object v0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    #@13
    new-instance v0, Ljava/lang/Object;

    #@15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@18
    sput-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@1a
    new-instance v0, Ljava/util/HashMap;

    #@1c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1f
    sput-object v0, Lcom/facebook/AppEventsLogger;->mapEventsToSuppressionTime:Ljava/util/Map;

    #@21
    new-instance v0, Lcom/facebook/AppEventsLogger$1;

    #@23
    invoke-direct {v0}, Lcom/facebook/AppEventsLogger$1;-><init>()V

    #@26
    sput-object v0, Lcom/facebook/AppEventsLogger;->mapEventNameToSuppress:Ljava/util/Map;

    #@28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "context"

    #@5
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    iput-object p1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    #@a
    if-nez p3, :cond_10

    #@c
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    #@f
    move-result-object p3

    #@10
    :cond_10
    if-eqz p3, :cond_35

    #@12
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@14
    invoke-direct {v0, p3}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/Session;)V

    #@17
    iput-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@19
    :goto_19
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    :try_start_1c
    sget-object v0, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    #@1e
    if-nez v0, :cond_26

    #@20
    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    #@26
    :cond_26
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    #@28
    if-nez v0, :cond_30

    #@2a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    #@30
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_44

    #@31
    invoke-static {}, Lcom/facebook/AppEventsLogger;->initializeTimersIfNeeded()V

    #@34
    return-void

    #@35
    :cond_35
    if-nez p2, :cond_3b

    #@37
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@3a
    move-result-object p2

    #@3b
    :cond_3b
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-direct {v0, v1, p2}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    iput-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@43
    goto :goto_19

    #@44
    :catchall_44
    move-exception v0

    #@45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    #@46
    throw v0
.end method

.method static synthetic access$100(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V

    #@3
    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .registers 5

    #@0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/AppEventsLogger;->handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    #@3
    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static accumulatePersistedEvents()I
    .registers 5

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/facebook/AppEventsLogger$PersistedEvents;->readAndClearStore(Landroid/content/Context;)Lcom/facebook/AppEventsLogger$PersistedEvents;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Lcom/facebook/AppEventsLogger$PersistedEvents;->keySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    const/4 v0, 0x0

    #@f
    move v1, v0

    #@10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_30

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@1c
    sget-object v4, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    #@1e
    invoke-static {v4, v0}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v2, v0}, Lcom/facebook/AppEventsLogger$PersistedEvents;->getEvents(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v4, v0}, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatePersistedEvents(Ljava/util/List;)V

    #@29
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@2c
    move-result v0

    #@2d
    add-int/2addr v0, v1

    #@2e
    move v1, v0

    #@2f
    goto :goto_10

    #@30
    :cond_30
    return v1
.end method

.method public static activateApp(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public static activateApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    #@0
    if-eqz p0, :cond_4

    #@2
    if-nez p1, :cond_c

    #@4
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "Both context and applicationId must be non-null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    invoke-static {p0, p1}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    #@f
    new-instance v0, Lcom/facebook/AppEventsLogger;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    #@15
    const-string v1, "fb_mobile_activate_app"

    #@17
    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    #@1a
    return-void
.end method

.method private static buildAndExecuteRequests(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AppEventsLogger$FlushReason;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;",
            ">;)",
            "Lcom/facebook/AppEventsLogger$FlushStatistics;"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    new-instance v1, Lcom/facebook/AppEventsLogger$FlushStatistics;

    #@3
    invoke-direct {v1, v2}, Lcom/facebook/AppEventsLogger$FlushStatistics;-><init>(Lcom/facebook/AppEventsLogger$1;)V

    #@6
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    #@8
    invoke-static {v0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    #@b
    move-result v3

    #@c
    new-instance v4, Ljava/util/ArrayList;

    #@e
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@11
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v5

    #@15
    :cond_15
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_31

    #@1b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@21
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@24
    move-result-object v6

    #@25
    if-eqz v6, :cond_15

    #@27
    invoke-static {v0, v6, v3, v1}, Lcom/facebook/AppEventsLogger;->buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;

    #@2a
    move-result-object v0

    #@2b
    if-eqz v0, :cond_15

    #@2d
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_15

    #@31
    :cond_31
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@34
    move-result v0

    #@35
    if-lez v0, :cond_69

    #@37
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    #@39
    sget-object v2, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    #@3b
    const-string v3, "Flushing %d events due to %s."

    #@3d
    const/4 v5, 0x2

    #@3e
    new-array v5, v5, [Ljava/lang/Object;

    #@40
    const/4 v6, 0x0

    #@41
    iget v7, v1, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    #@43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v7

    #@47
    aput-object v7, v5, v6

    #@49
    const/4 v6, 0x1

    #@4a
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$FlushReason;->toString()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    aput-object v7, v5, v6

    #@50
    invoke-static {v0, v2, v3, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@53
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v2

    #@57
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_67

    #@5d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/facebook/Request;

    #@63
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    #@66
    goto :goto_57

    #@67
    :cond_67
    move-object v0, v1

    #@68
    :goto_68
    return-object v0

    #@69
    :cond_69
    move-object v0, v2

    #@6a
    goto :goto_68
.end method

.method private static buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;
    .registers 10

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, v5}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    #@9
    move-result-object v3

    #@a
    const-string v2, "%s/activities"

    #@c
    const/4 v4, 0x1

    #@d
    new-array v4, v4, [Ljava/lang/Object;

    #@f
    aput-object v0, v4, v5

    #@11
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-static {v1, v0, v1, v1}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_24

    #@1f
    new-instance v0, Landroid/os/Bundle;

    #@21
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@24
    :cond_24
    const-string v4, "access_token"

    #@26
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getAccessToken()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    invoke-virtual {v2, v0}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    #@30
    invoke-virtual {v3}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging()Z

    #@33
    move-result v0

    #@34
    invoke-virtual {v3}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution()Z

    #@37
    move-result v3

    #@38
    invoke-virtual {p1, v2, v0, v3, p2}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ZZZ)I

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_40

    #@3e
    move-object v0, v1

    #@3f
    :goto_3f
    return-object v0

    #@40
    :cond_40
    iget v1, p3, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    #@42
    add-int/2addr v0, v1

    #@43
    iput v0, p3, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    #@45
    new-instance v0, Lcom/facebook/AppEventsLogger$5;

    #@47
    invoke-direct {v0, p0, v2, p1, p3}, Lcom/facebook/AppEventsLogger$5;-><init>(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    #@4a
    invoke-virtual {v2, v0}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    #@4d
    move-object v0, v2

    #@4e
    goto :goto_3f
.end method

.method static eagerFlush()V
    .registers 2

    #@0
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    #@6
    if-eq v0, v1, :cond_d

    #@8
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/AppEventsLogger$FlushReason;

    #@a
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    #@d
    :cond_d
    return-void
.end method

.method private static flush(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .registers 3

    #@0
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/facebook/AppEventsLogger$4;

    #@6
    invoke-direct {v1, p0}, Lcom/facebook/AppEventsLogger$4;-><init>(Lcom/facebook/AppEventsLogger$FlushReason;)V

    #@9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@c
    return-void
.end method

.method private static flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .registers 6

    #@0
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-boolean v0, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    #@5
    if-eqz v0, :cond_9

    #@7
    monitor-exit v1

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x1

    #@a
    sput-boolean v0, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    #@c
    new-instance v2, Ljava/util/HashSet;

    #@e
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    #@10
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@13
    move-result-object v0

    #@14
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_48

    #@18
    invoke-static {}, Lcom/facebook/AppEventsLogger;->accumulatePersistedEvents()I

    #@1b
    const/4 v0, 0x0

    #@1c
    :try_start_1c
    invoke-static {p0, v2}, Lcom/facebook/AppEventsLogger;->buildAndExecuteRequests(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_4b

    #@1f
    move-result-object v0

    #@20
    :goto_20
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@22
    monitor-enter v1

    #@23
    const/4 v2, 0x0

    #@24
    :try_start_24
    sput-boolean v2, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    #@26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_69

    #@27
    if-eqz v0, :cond_8

    #@29
    new-instance v1, Landroid/content/Intent;

    #@2b
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    #@2d
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@30
    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    #@32
    iget v3, v0, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    #@34
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@37
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    #@39
    iget-object v0, v0, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    #@3b
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@3e
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    #@40
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    #@47
    goto :goto_8

    #@48
    :catchall_48
    move-exception v0

    #@49
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    #@4a
    throw v0

    #@4b
    :catch_4b
    move-exception v1

    #@4c
    sget-object v2, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    #@4e
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string v4, "Caught unexpected exception while flushing: "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    goto :goto_20

    #@69
    :catchall_69
    move-exception v0

    #@6a
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    #@6b
    throw v0
.end method

.method private static flushIfNecessary()V
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    #@6
    move-result-object v0

    #@7
    sget-object v2, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    #@9
    if-eq v0, v2, :cond_18

    #@b
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getAccumulatedEventCount()I

    #@e
    move-result v0

    #@f
    const/16 v2, 0x64

    #@11
    if-le v0, v2, :cond_18

    #@13
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

    #@15
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    #@18
    :cond_18
    monitor-exit v1

    #@19
    return-void

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    #@1c
    throw v0
.end method

.method private static getAccumulatedEventCount()I
    .registers 4

    #@0
    sget-object v2, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    const/4 v0, 0x0

    #@e
    move v1, v0

    #@f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_22

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@1b
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getAccumulatedEventCount()I

    #@1e
    move-result v0

    #@1f
    add-int/2addr v0, v1

    #@20
    move v1, v0

    #@21
    goto :goto_f

    #@22
    :cond_22
    monitor-exit v2

    #@23
    return v1

    #@24
    :catchall_24
    move-exception v0

    #@25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    #@26
    throw v0
.end method

.method public static getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;
    .registers 2

    #@0
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

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

.method public static getLimitEventUsage(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .registers 7

    #@0
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@b
    if-nez v0, :cond_21

    #@d
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    #@10
    move-result-object v2

    #@11
    new-instance v0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    sget-object v4, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    #@19
    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/AppEventsLogger$SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    sget-object v2, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    #@1e
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    :cond_21
    monitor-exit v1

    #@22
    return-object v0

    #@23
    :catchall_23
    move-exception v0

    #@24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    #@25
    throw v0
.end method

.method private static getSessionEventsState(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    #@5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    #@f
    throw v0
.end method

.method private static handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .registers 15

    #@0
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@3
    move-result-object v3

    #@4
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    #@6
    if-eqz v3, :cond_88

    #@8
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    #@b
    move-result v0

    #@c
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_66

    #@f
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    #@11
    const-string v0, "Failed: No Connectivity"

    #@13
    move-object v2, v1

    #@14
    move-object v1, v0

    #@15
    :goto_15
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    #@17
    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_4a

    #@1d
    invoke-virtual {p1}, Lcom/facebook/Request;->getTag()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    :try_start_23
    new-instance v4, Lorg/json/JSONArray;

    #@25
    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    #@28
    const/4 v0, 0x2

    #@29
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2c} :catch_82

    #@2c
    move-result-object v0

    #@2d
    :goto_2d
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    #@2f
    sget-object v5, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    #@31
    const-string v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    #@33
    const/4 v7, 0x3

    #@34
    new-array v7, v7, [Ljava/lang/Object;

    #@36
    const/4 v8, 0x0

    #@37
    invoke-virtual {p1}, Lcom/facebook/Request;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    aput-object v9, v7, v8

    #@41
    const/4 v8, 0x1

    #@42
    aput-object v1, v7, v8

    #@44
    const/4 v1, 0x2

    #@45
    aput-object v0, v7, v1

    #@47
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@4a
    :cond_4a
    if-eqz v3, :cond_86

    #@4c
    const/4 v0, 0x1

    #@4d
    :goto_4d
    invoke-virtual {p3, v0}, Lcom/facebook/AppEventsLogger$SessionEventsState;->clearInFlightAndStats(Z)V

    #@50
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    #@52
    if-ne v2, v0, :cond_59

    #@54
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    #@56
    invoke-static {v0, p0, p3}, Lcom/facebook/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;)V

    #@59
    :cond_59
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    #@5b
    if-eq v2, v0, :cond_65

    #@5d
    iget-object v0, p4, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    #@5f
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    #@61
    if-eq v0, v1, :cond_65

    #@63
    iput-object v2, p4, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    #@65
    :cond_65
    return-void

    #@66
    :cond_66
    const-string v0, "Failed:\n  Response: %s\n  Error %s"

    #@68
    const/4 v1, 0x2

    #@69
    new-array v1, v1, [Ljava/lang/Object;

    #@6b
    const/4 v2, 0x0

    #@6c
    invoke-virtual {p2}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    aput-object v4, v1, v2

    #@72
    const/4 v2, 0x1

    #@73
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    aput-object v4, v1, v2

    #@79
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    #@7f
    move-object v2, v1

    #@80
    move-object v1, v0

    #@81
    goto :goto_15

    #@82
    :catch_82
    move-exception v0

    #@83
    const-string v0, "<Can\'t encode events for debug logging>"

    #@85
    goto :goto_2d

    #@86
    :cond_86
    const/4 v0, 0x0

    #@87
    goto :goto_4d

    #@88
    :cond_88
    const-string v0, "Success"

    #@8a
    move-object v2, v1

    #@8b
    move-object v1, v0

    #@8c
    goto :goto_15
.end method

.method private static initializeTimersIfNeeded()V
    .registers 6

    #@0
    const-wide/16 v2, 0x0

    #@2
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    :try_start_5
    sget-object v0, Lcom/facebook/AppEventsLogger;->flushTimer:Ljava/util/Timer;

    #@7
    if-eqz v0, :cond_b

    #@9
    monitor-exit v1

    #@a
    :goto_a
    return-void

    #@b
    :cond_b
    new-instance v0, Ljava/util/Timer;

    #@d
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@10
    sput-object v0, Lcom/facebook/AppEventsLogger;->flushTimer:Ljava/util/Timer;

    #@12
    new-instance v0, Ljava/util/Timer;

    #@14
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@17
    sput-object v0, Lcom/facebook/AppEventsLogger;->supportsAttributionRecheckTimer:Ljava/util/Timer;

    #@19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_35

    #@1a
    sget-object v0, Lcom/facebook/AppEventsLogger;->flushTimer:Ljava/util/Timer;

    #@1c
    new-instance v1, Lcom/facebook/AppEventsLogger$2;

    #@1e
    invoke-direct {v1}, Lcom/facebook/AppEventsLogger$2;-><init>()V

    #@21
    const-wide/32 v4, 0xea60

    #@24
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@27
    sget-object v0, Lcom/facebook/AppEventsLogger;->supportsAttributionRecheckTimer:Ljava/util/Timer;

    #@29
    new-instance v1, Lcom/facebook/AppEventsLogger$3;

    #@2b
    invoke-direct {v1}, Lcom/facebook/AppEventsLogger$3;-><init>()V

    #@2e
    const-wide/32 v4, 0x5265c00

    #@31
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@34
    goto :goto_a

    #@35
    :catchall_35
    move-exception v0

    #@36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    #@37
    throw v0
.end method

.method private static logEvent(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AppEvent;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/facebook/AppEventsLogger;->shouldSuppressEvent(Lcom/facebook/AppEventsLogger$AppEvent;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    invoke-static {p0, p2}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->addEvent(Lcom/facebook/AppEventsLogger$AppEvent;)V

    #@e
    invoke-static {}, Lcom/facebook/AppEventsLogger;->flushIfNecessary()V

    #@11
    goto :goto_6
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .registers 8

    #@0
    new-instance v0, Lcom/facebook/AppEventsLogger$AppEvent;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    #@5
    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    #@7
    iget-object v2, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@9
    invoke-static {v1, v0, v2}, Lcom/facebook/AppEventsLogger;->logEvent(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AppEvent;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)V

    #@c
    return-void
.end method

.method public static newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Lcom/facebook/AppEventsLogger;

    #@3
    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    #@6
    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/AppEventsLogger;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    #@6
    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/AppEventsLogger;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    #@6
    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/AppEventsLogger;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    #@5
    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    #@2
    const-string v1, "AppEvents"

    #@4
    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public static onContextStop()V
    .registers 2

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    #@2
    sget-object v1, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    #@4
    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Ljava/util/Map;)V

    #@7
    return-void
.end method

.method public static setFlushBehavior(Lcom/facebook/AppEventsLogger$FlushBehavior;)V
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sput-object p0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    #@5
    monitor-exit v1

    #@6
    return-void

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

.method public static setLimitEventUsage(Landroid/content/Context;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/facebook/Settings;->setLimitEventAndDataUsage(Landroid/content/Context;Z)V

    #@3
    return-void
.end method

.method private static shouldSuppressEvent(Lcom/facebook/AppEventsLogger$AppEvent;)Z
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    sget-object v0, Lcom/facebook/AppEventsLogger;->mapEventNameToSuppress:Ljava/util/Map;

    #@3
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AppEvent;->getName()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/facebook/AppEventsLogger$EventSuppression;

    #@d
    if-nez v0, :cond_11

    #@f
    move v0, v2

    #@10
    :goto_10
    return v0

    #@11
    :cond_11
    sget-object v1, Lcom/facebook/AppEventsLogger;->mapEventsToSuppressionTime:Ljava/util/Map;

    #@13
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AppEvent;->getName()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/util/Date;

    #@1d
    if-nez v1, :cond_3a

    #@1f
    move v1, v2

    #@20
    :goto_20
    if-eqz v1, :cond_2a

    #@22
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$EventSuppression;->getBehavior()Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@25
    move-result-object v0

    #@26
    sget-object v2, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@28
    if-ne v0, v2, :cond_56

    #@2a
    :cond_2a
    sget-object v0, Lcom/facebook/AppEventsLogger;->mapEventsToSuppressionTime:Ljava/util/Map;

    #@2c
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AppEvent;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    new-instance v3, Ljava/util/Date;

    #@32
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    #@35
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move v0, v1

    #@39
    goto :goto_10

    #@3a
    :cond_3a
    new-instance v3, Ljava/util/Date;

    #@3c
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    #@3f
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@42
    move-result-wide v4

    #@43
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@46
    move-result-wide v6

    #@47
    sub-long/2addr v4, v6

    #@48
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$EventSuppression;->getTimeoutPeriod()I

    #@4b
    move-result v1

    #@4c
    mul-int/lit16 v1, v1, 0x3e8

    #@4e
    int-to-long v6, v1

    #@4f
    cmp-long v1, v4, v6

    #@51
    if-gez v1, :cond_54

    #@53
    const/4 v2, 0x1

    #@54
    :cond_54
    move v1, v2

    #@55
    goto :goto_20

    #@56
    :cond_56
    move v0, v1

    #@57
    goto :goto_10
.end method


# virtual methods
.method public flush()V
    .registers 2

    #@0
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

    #@2
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    #@5
    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@2
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method isValidForSession(Lcom/facebook/Session;)Z
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@2
    invoke-direct {v0, p1}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/Session;)V

    #@5
    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@7
    invoke-virtual {v1, v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public logEvent(Ljava/lang/String;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public logEvent(Ljava/lang/String;D)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 7

    #@0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v0, p4, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    #@8
    return-void
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    #@5
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 8

    #@0
    if-nez p1, :cond_8

    #@2
    const-string v0, "purchaseAmount cannot be null"

    #@4
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    if-nez p2, :cond_10

    #@a
    const-string v0, "currency cannot be null"

    #@c
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    #@f
    goto :goto_7

    #@10
    :cond_10
    if-nez p3, :cond_17

    #@12
    new-instance p3, Landroid/os/Bundle;

    #@14
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@17
    :cond_17
    const-string v0, "fb_currency"

    #@19
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    const-string v0, "fb_mobile_purchase"

    #@22
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    #@25
    move-result-wide v2

    #@26
    invoke-virtual {p0, v0, v2, v3, p3}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    #@29
    invoke-static {}, Lcom/facebook/AppEventsLogger;->eagerFlush()V

    #@2c
    goto :goto_7
.end method

.method public logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    #@4
    return-void
.end method
