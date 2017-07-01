.class public Lcom/facebook/ads/internal/AdRequestController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;
    }
.end annotation


# static fields
.field private static final ANDROID_PERMISSION_ACCESS_NETWORK_STATE:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field private static final DEFAULT_REFRESH_THRESHOLD_MILLIS:I = 0x4e20

.field private static final MIN_REFRESH_INTERVAL_MILLIS:I = 0x7530


# instance fields
.field private final adSize:Lcom/facebook/ads/AdSize;

.field private final adType:Lcom/facebook/ads/internal/AdType;

.field private final adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

.field private final context:Landroid/content/Context;

.field private currentVisibility:I

.field private final handler:Landroid/os/Handler;

.field private initialLoadFinished:Z

.field private volatile lastLoadTimeMillis:J

.field private lastRequest:Landroid/os/AsyncTask;

.field private final placementId:Ljava/lang/String;

.field private refreshInterval:I

.field private final refreshRunnable:Ljava/lang/Runnable;

.field private volatile refreshScheduled:Z

.field private refreshThreshold:I

.field private final screenStateReceiver:Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

.field private final shouldRefresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/16 v0, 0x7530

    #@6
    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    #@8
    const/16 v0, 0x4e20

    #@a
    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I

    #@c
    iput-boolean v1, p0, Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z

    #@e
    iput-boolean v1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z

    #@10
    const/16 v0, 0x8

    #@12
    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->currentVisibility:I

    #@14
    if-nez p6, :cond_1e

    #@16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v1, "adViewRequestCallback"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    #@20
    iput-object p2, p0, Lcom/facebook/ads/internal/AdRequestController;->placementId:Ljava/lang/String;

    #@22
    iput-object p3, p0, Lcom/facebook/ads/internal/AdRequestController;->adSize:Lcom/facebook/ads/AdSize;

    #@24
    iput-boolean p4, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    #@26
    iput-object p5, p0, Lcom/facebook/ads/internal/AdRequestController;->adType:Lcom/facebook/ads/internal/AdType;

    #@28
    iput-object p6, p0, Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

    #@2a
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

    #@2c
    const/4 v1, 0x0

    #@2d
    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;-><init>(Lcom/facebook/ads/internal/AdRequestController;Lcom/facebook/ads/internal/AdRequestController$1;)V

    #@30
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->screenStateReceiver:Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

    #@32
    new-instance v0, Landroid/os/Handler;

    #@34
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@37
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->handler:Landroid/os/Handler;

    #@39
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController$1;

    #@3b
    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/AdRequestController$1;-><init>(Lcom/facebook/ads/internal/AdRequestController;)V

    #@3e
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshRunnable:Ljava/lang/Runnable;

    #@40
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequestController;->registerScreenStateReceiver()V

    #@43
    return-void
.end method

.method static synthetic access$102(Lcom/facebook/ads/internal/AdRequestController;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z

    #@2
    return p1
.end method

.method static synthetic access$200(Lcom/facebook/ads/internal/AdRequestController;)Lcom/facebook/ads/internal/AdRequest$Callback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

    #@2
    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/ads/internal/AdRequestController;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z

    #@2
    return p1
.end method

.method static synthetic access$402(Lcom/facebook/ads/internal/AdRequestController;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    #@2
    return p1
.end method

.method static synthetic access$502(Lcom/facebook/ads/internal/AdRequestController;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I

    #@2
    return p1
.end method

.method static synthetic access$600(Lcom/facebook/ads/internal/AdRequestController;Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$700(Lcom/facebook/ads/internal/AdRequestController;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/internal/AdRequestController;->currentVisibility:I

    #@2
    return v0
.end method

.method private cancelRefresh(Ljava/lang/String;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    #@3
    if-nez v0, :cond_7

    #@5
    :goto_5
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->handler:Landroid/os/Handler;

    #@9
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshRunnable:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@e
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    #@11
    goto :goto_5

    #@12
    :catchall_12
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method private isNetworkConnected()Z
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    #@3
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_d

    #@b
    :cond_b
    move v0, v1

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    #@f
    const-string v2, "connectivity"

    #@11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/net/ConnectivityManager;

    #@17
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_23

    #@1d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_b

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    goto :goto_c
.end method

.method private registerScreenStateReceiver()V
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    #@2
    if-nez v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    #@7
    const-string v1, "android.intent.action.SCREEN_ON"

    #@9
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@c
    const-string v1, "android.intent.action.SCREEN_OFF"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    #@13
    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequestController;->screenStateReceiver:Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

    #@15
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@18
    goto :goto_4
.end method

.method private unregisterScreenStateReceiver()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    #@2
    if-nez v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    #@7
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->screenStateReceiver:Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@c
    goto :goto_4
.end method


# virtual methods
.method public destroy()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequestController;->unregisterScreenStateReceiver()V

    #@3
    const-string v0, "destroy"

    #@5
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public loadAd()V
    .registers 8

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastLoadTimeMillis:J

    #@3
    iget v2, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I

    #@5
    int-to-long v2, v2

    #@6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v4

    #@a
    iget-boolean v6, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    #@c
    if-eqz v6, :cond_1c

    #@e
    add-long/2addr v0, v2

    #@f
    cmp-long v0, v4, v0

    #@11
    if-gez v0, :cond_1c

    #@13
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

    #@15
    sget-object v1, Lcom/facebook/ads/AdError;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/AdError;

    #@17
    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_59

    #@1a
    :goto_1a
    monitor-exit p0

    #@1b
    return-void

    #@1c
    :cond_1c
    :try_start_1c
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z

    #@1e
    if-eqz v0, :cond_24

    #@20
    const/4 v0, 0x0

    #@21
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V

    #@24
    :cond_24
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastRequest:Landroid/os/AsyncTask;

    #@26
    if-eqz v0, :cond_38

    #@28
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastRequest:Landroid/os/AsyncTask;

    #@2a
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    #@2d
    move-result-object v0

    #@2e
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    #@30
    if-eq v0, v1, :cond_38

    #@32
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastRequest:Landroid/os/AsyncTask;

    #@34
    const/4 v1, 0x1

    #@35
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    #@38
    :cond_38
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequestController;->isNetworkConnected()Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_5c

    #@3e
    const/16 v0, 0x7530

    #@40
    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    #@42
    const/16 v0, 0x4e20

    #@44
    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I

    #@46
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

    #@48
    new-instance v1, Lcom/facebook/ads/AdError;

    #@4a
    const/4 v2, -0x1

    #@4b
    const-string v3, "network unavailable"

    #@4d
    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@50
    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V

    #@53
    const-string v0, "no network connection"

    #@55
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_1c .. :try_end_58} :catchall_59

    #@58
    goto :goto_1a

    #@59
    :catchall_59
    move-exception v0

    #@5a
    monitor-exit p0

    #@5b
    throw v0

    #@5c
    :cond_5c
    :try_start_5c
    iput-wide v4, p0, Lcom/facebook/ads/internal/AdRequestController;->lastLoadTimeMillis:J

    #@5e
    new-instance v0, Lcom/facebook/ads/internal/AdRequest;

    #@60
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    #@62
    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequestController;->placementId:Ljava/lang/String;

    #@64
    iget-object v3, p0, Lcom/facebook/ads/internal/AdRequestController;->adSize:Lcom/facebook/ads/AdSize;

    #@66
    iget-object v4, p0, Lcom/facebook/ads/internal/AdRequestController;->adType:Lcom/facebook/ads/internal/AdType;

    #@68
    iget-object v5, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    #@6a
    invoke-static {v5}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    #@6d
    move-result v5

    #@6e
    new-instance v6, Lcom/facebook/ads/internal/AdRequestController$2;

    #@70
    invoke-direct {v6, p0}, Lcom/facebook/ads/internal/AdRequestController$2;-><init>(Lcom/facebook/ads/internal/AdRequestController;)V

    #@73
    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AdRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/AdType;ZLcom/facebook/ads/internal/AdRequest$Callback;)V

    #@76
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequest;->executeAsync()Landroid/os/AsyncTask;

    #@79
    move-result-object v0

    #@7a
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastRequest:Landroid/os/AsyncTask;
    :try_end_7c
    .catchall {:try_start_5c .. :try_end_7c} :catchall_59

    #@7c
    goto :goto_1a
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/facebook/ads/internal/AdRequestController;->currentVisibility:I

    #@2
    if-nez p1, :cond_e

    #@4
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z

    #@6
    if-eqz v0, :cond_d

    #@8
    const-string v0, "onWindowVisibilityChanged"

    #@a
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    const-string v0, "onWindowVisibilityChanged"

    #@10
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V

    #@13
    goto :goto_d
.end method

.method public scheduleRefresh(Ljava/lang/String;)V
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    #@3
    if-nez v0, :cond_7

    #@5
    :cond_5
    :goto_5
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_7
    :try_start_7
    iget v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    #@9
    if-lez v0, :cond_5

    #@b
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z

    #@d
    if-nez v0, :cond_5

    #@f
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->handler:Landroid/os/Handler;

    #@11
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshRunnable:Ljava/lang/Runnable;

    #@13
    iget v2, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    #@15
    int-to-long v2, v2

    #@16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@19
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    #@1c
    goto :goto_5

    #@1d
    :catchall_1d
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method
