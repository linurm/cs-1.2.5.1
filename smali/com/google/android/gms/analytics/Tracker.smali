.class public Lcom/google/android/gms/analytics/Tracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/Tracker$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final xe:Lcom/google/android/gms/analytics/TrackerHandler;

.field private final xf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xg:Lcom/google/android/gms/analytics/ad;

.field private final xh:Lcom/google/android/gms/analytics/h;

.field private final xi:Lcom/google/android/gms/analytics/ae;

.field private final xj:Lcom/google/android/gms/analytics/g;

.field private xk:Z

.field private xl:Lcom/google/android/gms/analytics/Tracker$a;

.field private xm:Lcom/google/android/gms/analytics/aj;

.field private xn:Lcom/google/android/gms/analytics/ExceptionReporter;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Landroid/content/Context;)V
    .registers 12

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/h;->cv()Lcom/google/android/gms/analytics/h;

    #@3
    move-result-object v3

    #@4
    invoke-static {}, Lcom/google/android/gms/analytics/ae;->dv()Lcom/google/android/gms/analytics/ae;

    #@7
    move-result-object v4

    #@8
    invoke-static {}, Lcom/google/android/gms/analytics/g;->cu()Lcom/google/android/gms/analytics/g;

    #@b
    move-result-object v5

    #@c
    new-instance v6, Lcom/google/android/gms/analytics/z;

    #@e
    const-string v0, "tracking"

    #@10
    invoke-direct {v6, v0}, Lcom/google/android/gms/analytics/z;-><init>(Ljava/lang/String;)V

    #@13
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    move-object v2, p2

    #@16
    move-object v7, p3

    #@17
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/analytics/ae;Lcom/google/android/gms/analytics/g;Lcom/google/android/gms/analytics/ad;Landroid/content/Context;)V

    #@1a
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/analytics/ae;Lcom/google/android/gms/analytics/g;Lcom/google/android/gms/analytics/ad;Landroid/content/Context;)V
    .registers 12

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@a
    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->xe:Lcom/google/android/gms/analytics/TrackerHandler;

    #@c
    if-eqz p7, :cond_14

    #@e
    invoke-virtual {p7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->mContext:Landroid/content/Context;

    #@14
    :cond_14
    if-eqz p1, :cond_1d

    #@16
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@18
    const-string v1, "&tid"

    #@1a
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@1f
    const-string v1, "useSecure"

    #@21
    const-string v2, "1"

    #@23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->xh:Lcom/google/android/gms/analytics/h;

    #@28
    iput-object p4, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/ae;

    #@2a
    iput-object p5, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/g;

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@2e
    const-string v1, "&a"

    #@30
    new-instance v2, Ljava/util/Random;

    #@32
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    #@35
    const v3, 0x7fffffff

    #@38
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    #@3b
    move-result v2

    #@3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    iput-object p6, p0, Lcom/google/android/gms/analytics/Tracker;->xg:Lcom/google/android/gms/analytics/ad;

    #@47
    new-instance v0, Lcom/google/android/gms/analytics/Tracker$a;

    #@49
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/Tracker$a;-><init>(Lcom/google/android/gms/analytics/Tracker;)V

    #@4c
    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xl:Lcom/google/android/gms/analytics/Tracker$a;

    #@4e
    const/4 v0, 0x0

    #@4f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    #@52
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xl:Lcom/google/android/gms/analytics/Tracker$a;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/aj;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@2
    return-object v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/analytics/aj;)V
    .registers 6

    #@0
    const-string v0, "Loading Tracker config values."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@5
    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@7
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dE()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_30

    #@f
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dF()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    const-string v1, "&tid"

    #@17
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v2, "[Tracker] trackingId loaded: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@30
    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@32
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dG()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_5d

    #@38
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@3a
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dH()D

    #@3d
    move-result-wide v0

    #@3e
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    const-string v1, "&sf"

    #@44
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string v2, "[Tracker] sample frequency loaded: "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@5d
    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@5f
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dI()Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_89

    #@65
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@67
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->getSessionTimeout()I

    #@6a
    move-result v0

    #@6b
    int-to-long v0, v0

    #@6c
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    #@6f
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string v1, "[Tracker] session timeout loaded: "

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->dy()J

    #@7d
    move-result-wide v2

    #@7e
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@89
    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@8b
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dJ()Z

    #@8e
    move-result v0

    #@8f
    if-eqz v0, :cond_b4

    #@91
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@93
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dK()Z

    #@96
    move-result v0

    #@97
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    #@9a
    new-instance v0, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string v1, "[Tracker] auto activity tracking loaded: "

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->dz()Z

    #@a8
    move-result v1

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@b4
    :cond_b4
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@b6
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dL()Z

    #@b9
    move-result v0

    #@ba
    if-eqz v0, :cond_d5

    #@bc
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@be
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dM()Z

    #@c1
    move-result v0

    #@c2
    if-eqz v0, :cond_d0

    #@c4
    const-string v0, "&aip"

    #@c6
    const-string v1, "1"

    #@c8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@cb
    const-string v0, "[Tracker] anonymize ip loaded: true"

    #@cd
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@d0
    :cond_d0
    const-string v0, "[Tracker] anonymize ip loaded: false"

    #@d2
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@d5
    :cond_d5
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xm:Lcom/google/android/gms/analytics/aj;

    #@d7
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/aj;->dN()Z

    #@da
    move-result v0

    #@db
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    #@de
    return-void
.end method

.method dy()J
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xl:Lcom/google/android/gms/analytics/Tracker$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$a;->dy()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method dz()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xl:Lcom/google/android/gms/analytics/Tracker$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$a;->dz()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public enableAdvertisingIdCollection(Z)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p1, :cond_12

    #@3
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@5
    const-string v1, "&ate"

    #@7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@c
    const-string v1, "&adid"

    #@e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    :cond_11
    :goto_11
    return-void

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@14
    const-string v1, "&ate"

    #@16
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_23

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@1e
    const-string v1, "&ate"

    #@20
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@25
    const-string v1, "&adid"

    #@27
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_11

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@2f
    const-string v1, "&adid"

    #@31
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    goto :goto_11
.end method

.method public enableAutoActivityTracking(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xl:Lcom/google/android/gms/analytics/Tracker$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker$a;->enableAutoActivityTracking(Z)V

    #@5
    return-void
.end method

.method public enableExceptionReporting(Z)V
    .registers 5

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker;->xk:Z

    #@2
    if-ne v0, p1, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker;->xk:Z

    #@7
    if-eqz p1, :cond_21

    #@9
    new-instance v0, Lcom/google/android/gms/analytics/ExceptionReporter;

    #@b
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->mContext:Landroid/content/Context;

    #@11
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    #@14
    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xn:Lcom/google/android/gms/analytics/ExceptionReporter;

    #@16
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xn:Lcom/google/android/gms/analytics/ExceptionReporter;

    #@18
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@1b
    const-string v0, "Uncaught exceptions will be reported to Google Analytics."

    #@1d
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@20
    goto :goto_4

    #@21
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xn:Lcom/google/android/gms/analytics/ExceptionReporter;

    #@23
    if-eqz v0, :cond_34

    #@25
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xn:Lcom/google/android/gms/analytics/ExceptionReporter;

    #@27
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ExceptionReporter;->cD()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2a
    move-result-object v0

    #@2b
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@2e
    :goto_2e
    const-string v0, "Uncaught exceptions will not be reported to Google Analytics."

    #@30
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@33
    goto :goto_4

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@38
    goto :goto_2e
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@4
    move-result-object v1

    #@5
    sget-object v2, Lcom/google/android/gms/analytics/u$a;->vf:Lcom/google/android/gms/analytics/u$a;

    #@7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_11

    #@10
    :cond_10
    :goto_10
    return-object v0

    #@11
    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@13
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_22

    #@19
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@1b
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    goto :goto_10

    #@22
    :cond_22
    const-string v1, "&ul"

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_33

    #@2a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Locale;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    goto :goto_10

    #@33
    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xh:Lcom/google/android/gms/analytics/h;

    #@35
    if-eqz v1, :cond_46

    #@37
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xh:Lcom/google/android/gms/analytics/h;

    #@39
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/h;->J(Ljava/lang/String;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_46

    #@3f
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xh:Lcom/google/android/gms/analytics/h;

    #@41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/h;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    goto :goto_10

    #@46
    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/ae;

    #@48
    if-eqz v1, :cond_59

    #@4a
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/ae;

    #@4c
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/ae;->J(Ljava/lang/String;)Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_59

    #@52
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xi:Lcom/google/android/gms/analytics/ae;

    #@54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ae;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    goto :goto_10

    #@59
    :cond_59
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/g;

    #@5b
    if-eqz v1, :cond_10

    #@5d
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/g;

    #@5f
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/g;->J(Ljava/lang/String;)Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_10

    #@65
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xj:Lcom/google/android/gms/analytics/g;

    #@67
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/g;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    goto :goto_10
.end method

.method public send(Ljava/util/Map;)V
    .registers 8
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
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@5
    move-result-object v0

    #@6
    sget-object v2, Lcom/google/android/gms/analytics/u$a;->vh:Lcom/google/android/gms/analytics/u$a;

    #@8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@b
    new-instance v2, Ljava/util/HashMap;

    #@d
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@12
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@15
    if-eqz p1, :cond_1a

    #@17
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@1a
    :cond_1a
    const-string v0, "&tid"

    #@1c
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/CharSequence;

    #@22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_37

    #@28
    const-string v0, "Missing tracking id (%s) parameter."

    #@2a
    new-array v3, v1, [Ljava/lang/Object;

    #@2c
    const-string v4, "&tid"

    #@2e
    aput-object v4, v3, v5

    #@30
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@37
    :cond_37
    const-string v0, "&t"

    #@39
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/lang/String;

    #@3f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_56

    #@45
    const-string v0, "Missing hit type (%s) parameter."

    #@47
    new-array v3, v1, [Ljava/lang/Object;

    #@49
    const-string v4, "&t"

    #@4b
    aput-object v4, v3, v5

    #@4d
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@54
    const-string v0, ""

    #@56
    :cond_56
    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker;->xl:Lcom/google/android/gms/analytics/Tracker$a;

    #@58
    invoke-virtual {v3}, Lcom/google/android/gms/analytics/Tracker$a;->dA()Z

    #@5b
    move-result v3

    #@5c
    if-eqz v3, :cond_65

    #@5e
    const-string v3, "&sc"

    #@60
    const-string v4, "start"

    #@62
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    :cond_65
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    const-string v0, "screenview"

    #@6b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v0

    #@6f
    if-nez v0, :cond_87

    #@71
    const-string v0, "pageview"

    #@73
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v0

    #@77
    if-nez v0, :cond_87

    #@79
    const-string v0, "appview"

    #@7b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v0

    #@7f
    if-nez v0, :cond_87

    #@81
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_a8

    #@87
    :cond_87
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@89
    const-string v4, "&a"

    #@8b
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Ljava/lang/String;

    #@91
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@94
    move-result v0

    #@95
    add-int/lit8 v0, v0, 0x1

    #@97
    const v4, 0x7fffffff

    #@9a
    if-lt v0, v4, :cond_9d

    #@9c
    move v0, v1

    #@9d
    :cond_9d
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@9f
    const-string v4, "&a"

    #@a1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a4
    move-result-object v0

    #@a5
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    :cond_a8
    const-string v0, "transaction"

    #@aa
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v0

    #@ae
    if-nez v0, :cond_c6

    #@b0
    const-string v0, "item"

    #@b2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v0

    #@b6
    if-nez v0, :cond_c6

    #@b8
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xg:Lcom/google/android/gms/analytics/ad;

    #@ba
    invoke-interface {v0}, Lcom/google/android/gms/analytics/ad;->do()Z

    #@bd
    move-result v0

    #@be
    if-nez v0, :cond_c6

    #@c0
    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    #@c2
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@c5
    :goto_c5
    return-void

    #@c6
    :cond_c6
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xe:Lcom/google/android/gms/analytics/TrackerHandler;

    #@c8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/TrackerHandler;->p(Ljava/util/Map;)V

    #@cb
    goto :goto_c5
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    const-string v0, "Key should be non-null"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vg:Lcom/google/android/gms/analytics/u$a;

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xf:Ljava/util/Map;

    #@10
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    return-void
.end method

.method public setAnonymizeIp(Z)V
    .registers 4

    #@0
    const-string v0, "&aip"

    #@2
    invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->v(Z)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&aid"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&aiid"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&an"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&av"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&cid"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&de"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&dh"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&ul"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&dl"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&dp"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&dr"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setSampleRate(D)V
    .registers 6

    #@0
    const-string v0, "&sf"

    #@2
    invoke-static {p1, p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-void
.end method

.method public setScreenColors(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&sd"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&cd"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setScreenResolution(II)V
    .registers 6

    #@0
    if-gez p1, :cond_a

    #@2
    if-gez p2, :cond_a

    #@4
    const-string v0, "Invalid width or height. The values should be non-negative."

    #@6
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const-string v0, "&sr"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, "x"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    goto :goto_9
.end method

.method public setSessionTimeout(J)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->xl:Lcom/google/android/gms/analytics/Tracker$a;

    #@2
    const-wide/16 v2, 0x3e8

    #@4
    mul-long/2addr v2, p1

    #@5
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/Tracker$a;->setSessionTimeout(J)V

    #@8
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&dt"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setUseSecure(Z)V
    .registers 4

    #@0
    const-string v0, "useSecure"

    #@2
    invoke-static {p1}, Lcom/google/android/gms/analytics/ak;->v(Z)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-void
.end method

.method public setViewportSize(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "&vp"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method
