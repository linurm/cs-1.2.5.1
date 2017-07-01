.class Lcom/google/android/gms/analytics/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/c$a;,
        Lcom/google/android/gms/analytics/c$b;,
        Lcom/google/android/gms/analytics/c$c;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private tA:Lcom/google/android/gms/internal/fe;

.field private tx:Landroid/content/ServiceConnection;

.field private ty:Lcom/google/android/gms/analytics/c$b;

.field private tz:Lcom/google/android/gms/analytics/c$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/c$b;Lcom/google/android/gms/analytics/c$c;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    #@5
    if-nez p2, :cond_f

    #@7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v1, "onConnectedListener cannot be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    iput-object p2, p0, Lcom/google/android/gms/analytics/c;->ty:Lcom/google/android/gms/analytics/c$b;

    #@11
    if-nez p3, :cond_1b

    #@13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string v1, "onConnectionFailedListener cannot be null"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    iput-object p3, p0, Lcom/google/android/gms/analytics/c;->tz:Lcom/google/android/gms/analytics/c$c;

    #@1d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->tx:Landroid/content/ServiceConnection;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;Lcom/google/android/gms/internal/fe;)Lcom/google/android/gms/internal/fe;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->tA:Lcom/google/android/gms/internal/fe;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->co()V

    #@3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/c;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$c;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->tz:Lcom/google/android/gms/analytics/c$c;

    #@2
    return-object v0
.end method

.method private cm()Lcom/google/android/gms/internal/fe;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->cn()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->tA:Lcom/google/android/gms/internal/fe;

    #@5
    return-object v0
.end method

.method private co()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->cp()V

    #@3
    return-void
.end method

.method private cp()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->ty:Lcom/google/android/gms/analytics/c$b;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onConnected()V

    #@5
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$b;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->ty:Lcom/google/android/gms/analytics/c$b;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fd;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->cm()Lcom/google/android/gms/internal/fe;

    #@3
    move-result-object v0

    #@4
    move-object v1, p1

    #@5
    move-wide v2, p2

    #@6
    move-object v4, p4

    #@7
    move-object v5, p5

    #@8
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fe;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    :goto_b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v2, "sendHit failed: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@23
    goto :goto_b
.end method

.method public cl()V
    .registers 4

    #@0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->cm()Lcom/google/android/gms/internal/fe;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lcom/google/android/gms/internal/fe;->cl()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v2, "clear hits failed: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@1f
    goto :goto_7
.end method

.method protected cn()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    return-void
.end method

.method public connect()V
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    new-instance v0, Landroid/content/Intent;

    #@3
    const-string v1, "com.google.android.gms.analytics.service.START"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    new-instance v1, Landroid/content/ComponentName;

    #@a
    const-string v2, "com.google.android.gms"

    #@c
    const-string v3, "com.google.android.gms.analytics.service.AnalyticsService"

    #@e
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@14
    const-string v1, "app_package_name"

    #@16
    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->tx:Landroid/content/ServiceConnection;

    #@21
    if-eqz v1, :cond_29

    #@23
    const-string v0, "Calling connect() while still connected, missing disconnect()."

    #@25
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@28
    :cond_28
    :goto_28
    return-void

    #@29
    :cond_29
    new-instance v1, Lcom/google/android/gms/analytics/c$a;

    #@2b
    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/c$a;-><init>(Lcom/google/android/gms/analytics/c;)V

    #@2e
    iput-object v1, p0, Lcom/google/android/gms/analytics/c;->tx:Landroid/content/ServiceConnection;

    #@30
    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    #@32
    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->tx:Landroid/content/ServiceConnection;

    #@34
    const/16 v3, 0x81

    #@36
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@39
    move-result v1

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v3, "connect: bindService returned "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string v3, " for "

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@5a
    if-nez v1, :cond_28

    #@5c
    iput-object v4, p0, Lcom/google/android/gms/analytics/c;->tx:Landroid/content/ServiceConnection;

    #@5e
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->tz:Lcom/google/android/gms/analytics/c$c;

    #@60
    const/4 v1, 0x1

    #@61
    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/analytics/c$c;->a(ILandroid/content/Intent;)V

    #@64
    goto :goto_28
.end method

.method public disconnect()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iput-object v2, p0, Lcom/google/android/gms/analytics/c;->tA:Lcom/google/android/gms/internal/fe;

    #@3
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->tx:Landroid/content/ServiceConnection;

    #@5
    if-eqz v0, :cond_15

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    #@9
    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->tx:Landroid/content/ServiceConnection;

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_e} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_e} :catch_18

    #@e
    :goto_e
    iput-object v2, p0, Lcom/google/android/gms/analytics/c;->tx:Landroid/content/ServiceConnection;

    #@10
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->ty:Lcom/google/android/gms/analytics/c$b;

    #@12
    invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onDisconnected()V

    #@15
    :cond_15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    goto :goto_e

    #@18
    :catch_18
    move-exception v0

    #@19
    goto :goto_e
.end method

.method public isConnected()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->tA:Lcom/google/android/gms/internal/fe;

    #@2
    if-eqz v0, :cond_6

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
