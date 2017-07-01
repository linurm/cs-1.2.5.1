.class public Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/TrackerHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/GoogleAnalytics$a;,
        Lcom/google/android/gms/analytics/GoogleAnalytics$b;
    }
.end annotation


# static fields
.field private static wm:Z

.field private static wt:Lcom/google/android/gms/analytics/GoogleAnalytics;


# instance fields
.field private mContext:Landroid/content/Context;

.field private tC:Ljava/lang/String;

.field private tD:Ljava/lang/String;

.field private tV:Lcom/google/android/gms/analytics/f;

.field private wn:Z

.field private wo:Lcom/google/android/gms/analytics/af;

.field private volatile wp:Ljava/lang/Boolean;

.field private wq:Lcom/google/android/gms/analytics/Logger;

.field private wr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/analytics/GoogleAnalytics$a;",
            ">;"
        }
    .end annotation
.end field

.field private ws:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/analytics/t;->x(Landroid/content/Context;)Lcom/google/android/gms/analytics/t;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/google/android/gms/analytics/r;->cE()Lcom/google/android/gms/analytics/r;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/af;)V

    #@b
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/af;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/TrackerHandler;-><init>()V

    #@4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Ljava/lang/Boolean;

    #@a
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->ws:Z

    #@c
    if-nez p1, :cond_16

    #@e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string v1, "context cannot be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@1c
    iput-object p2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tV:Lcom/google/android/gms/analytics/f;

    #@1e
    iput-object p3, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Lcom/google/android/gms/analytics/af;

    #@20
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@22
    invoke-static {v0}, Lcom/google/android/gms/analytics/g;->u(Landroid/content/Context;)V

    #@25
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@27
    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->u(Landroid/content/Context;)V

    #@2a
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@2c
    invoke-static {v0}, Lcom/google/android/gms/analytics/h;->u(Landroid/content/Context;)V

    #@2f
    new-instance v0, Lcom/google/android/gms/analytics/l;

    #@31
    invoke-direct {v0}, Lcom/google/android/gms/analytics/l;-><init>()V

    #@34
    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wq:Lcom/google/android/gms/analytics/Logger;

    #@36
    new-instance v0, Ljava/util/HashSet;

    #@38
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@3b
    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wr:Ljava/util/Set;

    #@3d
    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dj()V

    #@40
    return-void
.end method

.method private P(Ljava/lang/String;)I
    .registers 4

    #@0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "verbose"

    #@6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_e

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const-string v1, "info"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    goto :goto_d

    #@18
    :cond_18
    const-string v1, "warning"

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_22

    #@20
    const/4 v0, 0x2

    #@21
    goto :goto_d

    #@22
    :cond_22
    const-string v1, "error"

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2c

    #@2a
    const/4 v0, 0x3

    #@2b
    goto :goto_d

    #@2c
    :cond_2c
    const/4 v0, -0x1

    #@2d
    goto :goto_d
.end method

.method private a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tC:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_b

    #@4
    const-string v0, "&an"

    #@6
    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tC:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tD:Ljava/lang/String;

    #@d
    if-eqz v0, :cond_16

    #@f
    const-string v0, "&av"

    #@11
    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tD:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    :cond_16
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->f(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->g(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method static di()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .registers 2

    #@0
    const-class v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wt:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@5
    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@7
    monitor-exit v1

    #@8
    return-object v0

    #@9
    :catchall_9
    move-exception v0

    #@a
    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_9

    #@d
    throw v0
.end method

.method private dj()V
    .registers 4

    #@0
    sget-boolean v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wm:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    const/16 v2, 0x81

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_16} :catch_1f

    #@16
    move-result-object v0

    #@17
    :goto_17
    if-nez v0, :cond_38

    #@19
    const-string v0, "Couldn\'t get ApplicationInfo to load gloabl config."

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@1e
    goto :goto_4

    #@1f
    :catch_1f
    move-exception v0

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v2, "PackageManager doesn\'t know about package: "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@36
    const/4 v0, 0x0

    #@37
    goto :goto_17

    #@38
    :cond_38
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    #@3e
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@41
    move-result v0

    #@42
    if-lez v0, :cond_4

    #@44
    new-instance v1, Lcom/google/android/gms/analytics/v;

    #@46
    iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@48
    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/v;-><init>(Landroid/content/Context;)V

    #@4b
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/v;->r(I)Lcom/google/android/gms/analytics/j;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/google/android/gms/analytics/w;

    #@51
    if-eqz v0, :cond_4

    #@53
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/w;)V

    #@56
    goto :goto_4
.end method

.method private f(Landroid/app/Activity;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wr:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$a;

    #@12
    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$a;->h(Landroid/app/Activity;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method private g(Landroid/app/Activity;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wr:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$a;

    #@12
    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$a;->i(Landroid/app/Activity;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .registers 3

    #@0
    const-class v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wt:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@5
    if-nez v0, :cond_e

    #@7
    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@9
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wt:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wt:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@10
    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    :catchall_14
    move-exception v0

    #@15
    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_14

    #@18
    throw v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/analytics/GoogleAnalytics$a;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wr:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method a(Lcom/google/android/gms/analytics/w;)V
    .registers 5

    #@0
    const-string v0, "Loading global config values."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@5
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cY()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_29

    #@b
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->cZ()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tC:Ljava/lang/String;

    #@11
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v1, "app name loaded: "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tC:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@29
    :cond_29
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->da()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_4d

    #@2f
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->db()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tD:Ljava/lang/String;

    #@35
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string v1, "app version loaded: "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tD:Ljava/lang/String;

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@4d
    :cond_4d
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->dc()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_7a

    #@53
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->dd()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->P(Ljava/lang/String;)I

    #@5a
    move-result v0

    #@5b
    if-ltz v0, :cond_7a

    #@5d
    new-instance v1, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string v2, "log level loaded: "

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@73
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    #@76
    move-result-object v1

    #@77
    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    #@7a
    :cond_7a
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->de()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_89

    #@80
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Lcom/google/android/gms/analytics/af;

    #@82
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->df()I

    #@85
    move-result v1

    #@86
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/af;->setLocalDispatchPeriod(I)V

    #@89
    :cond_89
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->dg()Z

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_96

    #@8f
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/w;->dh()Z

    #@92
    move-result v0

    #@93
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    #@96
    :cond_96
    return-void
.end method

.method b(Lcom/google/android/gms/analytics/GoogleAnalytics$a;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wr:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public dispatchLocalHits()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Lcom/google/android/gms/analytics/af;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/af;->dispatchLocalHits()V

    #@5
    return-void
.end method

.method public enableAutoActivityReports(Landroid/app/Application;)V
    .registers 4

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xe

    #@4
    if-lt v0, v1, :cond_15

    #@6
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->ws:Z

    #@8
    if-nez v0, :cond_15

    #@a
    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;

    #@c
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics$b;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    #@f
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    #@12
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->ws:Z

    #@15
    :cond_15
    return-void
.end method

.method public getAppOptOut()Z
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vN:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Ljava/lang/Boolean;

    #@b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getLogger()Lcom/google/android/gms/analytics/Logger;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wq:Lcom/google/android/gms/analytics/Logger;

    #@2
    return-object v0
.end method

.method public isDryRunEnabled()Z
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vZ:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wn:Z

    #@b
    return v0
.end method

.method public newTracker(I)Lcom/google/android/gms/analytics/Tracker;
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vJ:Lcom/google/android/gms/analytics/u$a;

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@a
    new-instance v1, Lcom/google/android/gms/analytics/Tracker;

    #@c
    const/4 v0, 0x0

    #@d
    iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@f
    invoke-direct {v1, v0, p0, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Landroid/content/Context;)V

    #@12
    if-lez p1, :cond_26

    #@14
    new-instance v0, Lcom/google/android/gms/analytics/ai;

    #@16
    iget-object v2, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@18
    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/ai;-><init>(Landroid/content/Context;)V

    #@1b
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ai;->r(I)Lcom/google/android/gms/analytics/j;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/google/android/gms/analytics/aj;

    #@21
    if-eqz v0, :cond_26

    #@23
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Lcom/google/android/gms/analytics/aj;)V

    #@26
    :cond_26
    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;

    #@29
    move-result-object v0

    #@2a
    monitor-exit p0

    #@2b
    return-object v0

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    #@2e
    throw v0
.end method

.method public newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vJ:Lcom/google/android/gms/analytics/u$a;

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@a
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    #@c
    iget-object v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->mContext:Landroid/content/Context;

    #@e
    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Landroid/content/Context;)V

    #@11
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker;

    #@14
    move-result-object v0

    #@15
    monitor-exit p0

    #@16
    return-object v0

    #@17
    :catchall_17
    move-exception v0

    #@18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method

.method p(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    if-nez p1, :cond_e

    #@3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string v1, "hit cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0

    #@e
    :cond_e
    :try_start_e
    const-string v0, "&ul"

    #@10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    const-string v0, "&sr"

    #@1d
    invoke-static {}, Lcom/google/android/gms/analytics/ae;->dv()Lcom/google/android/gms/analytics/ae;

    #@20
    move-result-object v1

    #@21
    const-string v2, "&sr"

    #@23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/ae;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    const-string v0, "&_u"

    #@2c
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/u;->cW()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/u;->cV()Ljava/lang/String;

    #@3e
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tV:Lcom/google/android/gms/analytics/f;

    #@40
    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/f;->p(Ljava/util/Map;)V

    #@43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_b

    #@44
    return-void
.end method

.method public reportActivityStart(Landroid/app/Activity;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->ws:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->f(Landroid/app/Activity;)V

    #@7
    :cond_7
    return-void
.end method

.method public reportActivityStop(Landroid/app/Activity;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->ws:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->g(Landroid/app/Activity;)V

    #@7
    :cond_7
    return-void
.end method

.method public setAppOptOut(Z)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vM:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Ljava/lang/Boolean;

    #@f
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wp:Ljava/lang/Boolean;

    #@11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1c

    #@17
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->tV:Lcom/google/android/gms/analytics/f;

    #@19
    invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->cl()V

    #@1c
    :cond_1c
    return-void
.end method

.method public setDryRun(Z)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vY:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wn:Z

    #@b
    return-void
.end method

.method public setLocalDispatchPeriod(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wo:Lcom/google/android/gms/analytics/af;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/af;->setLocalDispatchPeriod(I)V

    #@5
    return-void
.end method

.method public setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->wa:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    iput-object p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->wq:Lcom/google/android/gms/analytics/Logger;

    #@b
    return-void
.end method
