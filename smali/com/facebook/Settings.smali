.class public final Lcom/facebook/Settings;
.super Ljava/lang/Object;


# static fields
.field private static final ANALYTICS_EVENT:Ljava/lang/String; = "event"

.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field private static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field private static final AUTO_PUBLISH:Ljava/lang/String; = "auto_publish"

.field public static final CLIENT_TOKEN_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x80

.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MOBILE_INSTALL_EVENT:Ljava/lang/String; = "MOBILE_APP_INSTALL"

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String;

.field private static volatile appClientToken:Ljava/lang/String;

.field private static volatile appVersion:Ljava/lang/String;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile defaultsLoaded:Z

.field private static volatile executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile platformCompatibilityEnabled:Z

.field private static volatile shouldAutoPublishInstall:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v3, 0x0

    #@1
    const-class v0, Lcom/facebook/Settings;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/facebook/Settings;->TAG:Ljava/lang/String;

    #@9
    new-instance v0, Ljava/util/HashSet;

    #@b
    const/4 v1, 0x1

    #@c
    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    #@e
    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    #@10
    aput-object v2, v1, v3

    #@12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@19
    sput-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@1b
    sput-boolean v3, Lcom/facebook/Settings;->defaultsLoaded:Z

    #@1d
    const-string v0, "facebook.com"

    #@1f
    sput-object v0, Lcom/facebook/Settings;->facebookDomain:Ljava/lang/String;

    #@21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@23
    const-wide/32 v2, 0x10000

    #@26
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@29
    sput-object v0, Lcom/facebook/Settings;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    #@2b
    new-instance v0, Ljava/lang/Object;

    #@2d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@30
    sput-object v0, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    #@32
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    #@34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@37
    move-result-object v0

    #@38
    sput-object v0, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    #@3a
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    #@3c
    const/16 v1, 0xa

    #@3e
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@41
    sput-object v0, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    #@43
    new-instance v0, Lcom/facebook/Settings$1;

    #@45
    invoke-direct {v0}, Lcom/facebook/Settings$1;-><init>()V

    #@48
    sput-object v0, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    #@4a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

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

.method public static final clearLoggingBehaviors()V
    .registers 2

    #@0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

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

.method public static getAppVersion()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/Settings;->appVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/Settings;->applicationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static getAsyncTaskExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    const-class v0, Landroid/os/AsyncTask;

    #@3
    const-string v2, "THREAD_POOL_EXECUTOR"

    #@5
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_8} :catch_12

    #@8
    move-result-object v0

    #@9
    const/4 v2, 0x0

    #@a
    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_d} :catch_15

    #@d
    move-result-object v0

    #@e
    if-nez v0, :cond_18

    #@10
    move-object v0, v1

    #@11
    :goto_11
    return-object v0

    #@12
    :catch_12
    move-exception v0

    #@13
    move-object v0, v1

    #@14
    goto :goto_11

    #@15
    :catch_15
    move-exception v0

    #@16
    move-object v0, v1

    #@17
    goto :goto_11

    #@18
    :cond_18
    instance-of v2, v0, Ljava/util/concurrent/Executor;

    #@1a
    if-nez v2, :cond_1e

    #@1c
    move-object v0, v1

    #@1d
    goto :goto_11

    #@1e
    :cond_1e
    check-cast v0, Ljava/util/concurrent/Executor;

    #@20
    goto :goto_11
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 8

    #@0
    const/4 v6, 0x0

    #@1
    :try_start_1
    sget-object v1, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    #@3
    const/4 v0, 0x1

    #@4
    new-array v2, v0, [Ljava/lang/String;

    #@6
    const/4 v0, 0x0

    #@7
    const-string v3, "aid"

    #@9
    aput-object v3, v2, v0

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-object v0, p0

    #@f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_1b

    #@15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1d

    #@1b
    :cond_1b
    move-object v0, v6

    #@1c
    :goto_1c
    return-object v0

    #@1d
    :cond_1d
    const-string v0, "aid"

    #@1f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@22
    move-result v0

    #@23
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    #@2a
    goto :goto_1c

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    sget-object v1, Lcom/facebook/Settings;->TAG:Ljava/lang/String;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string v3, "Caught unexpected exception in getAttributionId(): "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    move-object v0, v6

    #@49
    goto :goto_1c
.end method

.method public static getClientToken()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/Settings;->appClientToken:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 10

    #@0
    sget-object v9, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    #@5
    if-nez v0, :cond_1f

    #@7
    invoke-static {}, Lcom/facebook/Settings;->getAsyncTaskExecutor()Ljava/util/concurrent/Executor;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_1d

    #@d
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@f
    const/4 v2, 0x5

    #@10
    const/16 v3, 0x80

    #@12
    const-wide/16 v4, 0x1

    #@14
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@16
    sget-object v7, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    #@18
    sget-object v8, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    #@1a
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@1d
    :cond_1d
    sput-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    #@1f
    :cond_1f
    monitor-exit v9
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_23

    #@20
    sget-object v0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    #@22
    return-object v0

    #@23
    :catchall_23
    move-exception v0

    #@24
    :try_start_24
    monitor-exit v9
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    #@25
    throw v0
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/Settings;->facebookDomain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    const-string v0, "com.facebook.sdk.appEventPreferences"

    #@3
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@6
    move-result-object v0

    #@7
    const-string v1, "limitEventUsage"

    #@9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public static final getLoggingBehaviors()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    #@5
    sget-object v2, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@7
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@d
    move-result-object v0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public static getOnProgressThreshold()J
    .registers 2

    #@0
    sget-object v0, Lcom/facebook/Settings;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getPlatformCompatibilityEnabled()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/facebook/Settings;->platformCompatibilityEnabled:Z

    #@2
    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 1

    #@0
    const-string v0, "3.15.0"

    #@2
    return-object v0
.end method

.method public static getShouldAutoPublishInstall()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    sget-boolean v0, Lcom/facebook/Settings;->shouldAutoPublishInstall:Z

    #@2
    return v0
.end method

.method public static final isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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

.method public static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lcom/facebook/Settings;->defaultsLoaded:Z

    #@3
    if-nez p0, :cond_6

    #@5
    :cond_5
    :goto_5
    return-void

    #@6
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x80

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_13} :catch_37

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_5

    #@16
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@18
    if-eqz v1, :cond_5

    #@1a
    sget-object v1, Lcom/facebook/Settings;->applicationId:Ljava/lang/String;

    #@1c
    if-nez v1, :cond_28

    #@1e
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@20
    const-string v2, "com.facebook.sdk.ApplicationId"

    #@22
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    sput-object v1, Lcom/facebook/Settings;->applicationId:Ljava/lang/String;

    #@28
    :cond_28
    sget-object v1, Lcom/facebook/Settings;->appClientToken:Ljava/lang/String;

    #@2a
    if-nez v1, :cond_5

    #@2c
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@2e
    const-string v1, "com.facebook.sdk.ClientToken"

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lcom/facebook/Settings;->appClientToken:Ljava/lang/String;

    #@36
    goto :goto_5

    #@37
    :catch_37
    move-exception v0

    #@38
    goto :goto_5
.end method

.method static loadDefaultsFromMetadataIfNeeded(Landroid/content/Context;)V
    .registers 2

    #@0
    sget-boolean v0, Lcom/facebook/Settings;->defaultsLoaded:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-static {p0}, Lcom/facebook/Settings;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    #@7
    :cond_7
    return-void
.end method

.method public static publishInstallAndWait(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/Response;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/Response;
    .registers 15

    #@0
    if-eqz p0, :cond_4

    #@2
    if-nez p1, :cond_21

    #@4
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "Both context and applicationId must be non-null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c

    #@c
    :catch_c
    move-exception v0

    #@d
    move-object v1, v0

    #@e
    const-string v0, "Facebook-publish"

    #@10
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    #@13
    new-instance v0, Lcom/facebook/Response;

    #@15
    const/4 v2, 0x0

    #@16
    const/4 v3, 0x0

    #@17
    new-instance v4, Lcom/facebook/FacebookRequestError;

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    #@1d
    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    #@20
    :goto_20
    return-object v0

    #@21
    :cond_21
    :try_start_21
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    #@24
    move-result-object v0

    #@25
    const-string v1, "com.facebook.sdk.attributionTracking"

    #@27
    const/4 v2, 0x0

    #@28
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@2b
    move-result-object v1

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string v3, "ping"

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    const-string v4, "json"

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    const-wide/16 v4, 0x0

    #@54
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    #@57
    move-result-wide v4

    #@58
    const/4 v6, 0x0

    #@59
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    if-nez p2, :cond_63

    #@5f
    const/4 v7, 0x0

    #@60
    invoke-static {v7}, Lcom/facebook/Settings;->setShouldAutoPublishInstall(Z)V

    #@63
    :cond_63
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    #@66
    move-result-object v7

    #@67
    const-string v8, "event"

    #@69
    const-string v9, "MOBILE_APP_INSTALL"

    #@6b
    invoke-interface {v7, v8, v9}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@6e
    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v8

    #@72
    invoke-static {p0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    #@75
    move-result v9

    #@76
    invoke-static {v7, v0, v8, v9}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    #@79
    const-string v8, "auto_publish"

    #@7b
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7e
    move-result-object v9

    #@7f
    invoke-interface {v7, v8, v9}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@82
    const-string v8, "application_package_name"

    #@84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    invoke-interface {v7, v8, v9}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@8b
    const/4 v8, 0x0

    #@8c
    const-string v9, "%s/activities"

    #@8e
    const/4 v10, 0x1

    #@8f
    new-array v10, v10, [Ljava/lang/Object;

    #@91
    const/4 v11, 0x0

    #@92
    aput-object p1, v10, v11

    #@94
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@97
    move-result-object v9

    #@98
    const/4 v10, 0x0

    #@99
    invoke-static {v8, v9, v7, v10}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_9c} :catch_c

    #@9c
    move-result-object v7

    #@9d
    const-wide/16 v8, 0x0

    #@9f
    cmp-long v4, v4, v8

    #@a1
    if-eqz v4, :cond_db

    #@a3
    const/4 v4, 0x0

    #@a4
    if-eqz v6, :cond_af

    #@a6
    :try_start_a6
    new-instance v0, Lorg/json/JSONObject;

    #@a8
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@ab
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_a6 .. :try_end_ae} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ae} :catch_c

    #@ae
    move-result-object v4

    #@af
    :cond_af
    :goto_af
    if-nez v4, :cond_d0

    #@b1
    :try_start_b1
    new-instance v0, Lcom/facebook/RequestBatch;

    #@b3
    const/4 v1, 0x1

    #@b4
    new-array v1, v1, [Lcom/facebook/Request;

    #@b6
    const/4 v2, 0x0

    #@b7
    aput-object v7, v1, v2

    #@b9
    invoke-direct {v0, v1}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    #@bc
    const-string v1, "true"

    #@be
    const/4 v2, 0x0

    #@bf
    const/4 v3, 0x1

    #@c0
    invoke-static {v1, v2, v0, v3}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    #@c3
    move-result-object v0

    #@c4
    const/4 v1, 0x0

    #@c5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c8
    move-result-object v0

    #@c9
    check-cast v0, Lcom/facebook/Response;

    #@cb
    goto/16 :goto_20

    #@cd
    :catch_cd
    move-exception v0

    #@ce
    const/4 v4, 0x0

    #@cf
    goto :goto_af

    #@d0
    :cond_d0
    new-instance v0, Lcom/facebook/Response;

    #@d2
    const/4 v1, 0x0

    #@d3
    const/4 v2, 0x0

    #@d4
    const/4 v3, 0x0

    #@d5
    const/4 v5, 0x1

    #@d6
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V

    #@d9
    goto/16 :goto_20

    #@db
    :cond_db
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    #@de
    move-result-object v4

    #@df
    if-nez v4, :cond_ef

    #@e1
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    if-nez v0, :cond_ef

    #@e7
    new-instance v0, Lcom/facebook/FacebookException;

    #@e9
    const-string v1, "No attribution id available to send to server."

    #@eb
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v0

    #@ef
    :cond_ef
    const/4 v0, 0x0

    #@f0
    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    #@f3
    move-result-object v0

    #@f4
    invoke-virtual {v0}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution()Z

    #@f7
    move-result v0

    #@f8
    if-nez v0, :cond_102

    #@fa
    new-instance v0, Lcom/facebook/FacebookException;

    #@fc
    const-string v1, "Install attribution has been disabled on the server."

    #@fe
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@101
    throw v0

    #@102
    :cond_102
    invoke-virtual {v7}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    #@105
    move-result-object v0

    #@106
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@109
    move-result-object v1

    #@10a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@10d
    move-result-wide v4

    #@10e
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    #@111
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@114
    move-result-object v2

    #@115
    if-eqz v2, :cond_130

    #@117
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@11a
    move-result-object v2

    #@11b
    invoke-interface {v2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@11e
    move-result-object v2

    #@11f
    if-eqz v2, :cond_130

    #@121
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@124
    move-result-object v2

    #@125
    invoke-interface {v2}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@128
    move-result-object v2

    #@129
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@12c
    move-result-object v2

    #@12d
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@130
    :cond_130
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_133} :catch_c

    #@133
    goto/16 :goto_20
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V

    #@4
    return-void
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    #@7
    move-result-object v1

    #@8
    new-instance v2, Lcom/facebook/Settings$2;

    #@a
    invoke-direct {v2, v0, p1, p2}, Lcom/facebook/Settings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V

    #@d
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@10
    return-void
.end method

.method public static final removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 3

    #@0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

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

.method public static setAppVersion(Ljava/lang/String;)V
    .registers 1

    #@0
    sput-object p0, Lcom/facebook/Settings;->appVersion:Ljava/lang/String;

    #@2
    return-void
.end method

.method public static setApplicationId(Ljava/lang/String;)V
    .registers 1

    #@0
    sput-object p0, Lcom/facebook/Settings;->applicationId:Ljava/lang/String;

    #@2
    return-void
.end method

.method public static setClientToken(Ljava/lang/String;)V
    .registers 1

    #@0
    sput-object p0, Lcom/facebook/Settings;->appClientToken:Ljava/lang/String;

    #@2
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    #@0
    const-string v0, "executor"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    sget-object v1, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    sput-object p0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    #@a
    monitor-exit v1

    #@b
    return-void

    #@c
    :catchall_c
    move-exception v0

    #@d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    #@e
    throw v0
.end method

.method public static setFacebookDomain(Ljava/lang/String;)V
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/Settings;->TAG:Ljava/lang/String;

    #@2
    const-string v1, "WARNING: Calling setFacebookDomain from non-DEBUG code."

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    sput-object p0, Lcom/facebook/Settings;->facebookDomain:Ljava/lang/String;

    #@9
    return-void
.end method

.method public static setLimitEventAndDataUsage(Landroid/content/Context;Z)V
    .registers 4

    #@0
    const-string v0, "com.facebook.sdk.appEventPreferences"

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@a
    move-result-object v0

    #@b
    const-string v1, "limitEventUsage"

    #@d
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@13
    return-void
.end method

.method public static setOnProgressThreshold(J)V
    .registers 4

    #@0
    sget-object v0, Lcom/facebook/Settings;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@5
    return-void
.end method

.method public static setPlatformCompatibilityEnabled(Z)V
    .registers 1

    #@0
    sput-boolean p0, Lcom/facebook/Settings;->platformCompatibilityEnabled:Z

    #@2
    return-void
.end method

.method public static setShouldAutoPublishInstall(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    sput-boolean p0, Lcom/facebook/Settings;->shouldAutoPublishInstall:Z

    #@2
    return-void
.end method
