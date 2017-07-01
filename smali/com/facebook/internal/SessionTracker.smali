.class public Lcom/facebook/internal/SessionTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;,
        Lcom/facebook/internal/SessionTracker$CallbackWrapper;
    }
.end annotation


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final callback:Lcom/facebook/Session$StatusCallback;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private session:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V

    #@4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    #@6
    new-instance v0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;

    #@8
    invoke-direct {v0, p0, p2}, Lcom/facebook/internal/SessionTracker$CallbackWrapper;-><init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/Session$StatusCallback;)V

    #@b
    iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@d
    iput-object p3, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@f
    new-instance v0, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/internal/SessionTracker$1;)V

    #@15
    iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    #@17
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    #@1d
    if-eqz p4, :cond_22

    #@1f
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->startTracking()V

    #@22
    :cond_22
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session$StatusCallback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@2
    return-object v0
.end method

.method private addBroadcastReceiver()V
    .registers 4

    #@0
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    #@11
    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    #@13
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    #@16
    return-void
.end method


# virtual methods
.method public getOpenSession()Lcom/facebook/Session;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_d

    #@6
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_d

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_c
.end method

.method public getSession()Lcom/facebook/Session;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@b
    goto :goto_8
.end method

.method public isTracking()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    #@2
    return v0
.end method

.method public isTrackingActiveSession()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@2
    if-nez v0, :cond_6

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
.end method

.method public setSession(Lcom/facebook/Session;)V
    .registers 4

    #@0
    if-nez p1, :cond_23

    #@2
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@4
    if-eqz v0, :cond_22

    #@6
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@8
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@a
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    #@d
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@10
    invoke-direct {p0}, Lcom/facebook/internal/SessionTracker;->addBroadcastReceiver()V

    #@13
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_22

    #@19
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@1f
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    #@22
    :cond_22
    :goto_22
    return-void

    #@23
    :cond_23
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@25
    if-nez v0, :cond_43

    #@27
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    #@2a
    move-result-object v0

    #@2b
    if-eqz v0, :cond_32

    #@2d
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@2f
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    #@32
    :cond_32
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    #@34
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    #@36
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@39
    :goto_39
    iput-object p1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@3b
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@3d
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@3f
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    #@42
    goto :goto_22

    #@43
    :cond_43
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@45
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@47
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    #@4a
    goto :goto_39
.end method

.method public startTracking()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    #@7
    if-nez v0, :cond_c

    #@9
    invoke-direct {p0}, Lcom/facebook/internal/SessionTracker;->addBroadcastReceiver()V

    #@c
    :cond_c
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_1b

    #@12
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@18
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    #@1b
    :cond_1b
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    #@1e
    goto :goto_4
.end method

.method public stopTracking()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    #@2
    if-nez v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_10

    #@b
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    #@d
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    #@10
    :cond_10
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    #@12
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    #@14
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@17
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    #@1a
    goto :goto_4
.end method
