.class Lcom/google/android/gms/analytics/Tracker$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/GoogleAnalytics$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private uu:Lcom/google/android/gms/analytics/i;

.field private xo:Z

.field private xp:I

.field private xq:J

.field private xr:Z

.field private xs:J

.field final synthetic xt:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/Tracker;)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$a;->xt:Lcom/google/android/gms/analytics/Tracker;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    iput-boolean v2, p0, Lcom/google/android/gms/analytics/Tracker$a;->xo:Z

    #@8
    iput v2, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@a
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xq:J

    #@e
    iput-boolean v2, p0, Lcom/google/android/gms/analytics/Tracker$a;->xr:Z

    #@10
    new-instance v0, Lcom/google/android/gms/analytics/Tracker$a$1;

    #@12
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/Tracker$a$1;-><init>(Lcom/google/android/gms/analytics/Tracker$a;Lcom/google/android/gms/analytics/Tracker;)V

    #@15
    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->uu:Lcom/google/android/gms/analytics/i;

    #@17
    return-void
.end method

.method private dB()V
    .registers 7

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->di()Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_c

    #@6
    const-string v0, "GoogleAnalytics isn\'t initialized for the Tracker!"

    #@8
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    iget-wide v2, p0, Lcom/google/android/gms/analytics/Tracker$a;->xq:J

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v1, v2, v4

    #@12
    if-gez v1, :cond_18

    #@14
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker$a;->xo:Z

    #@16
    if-eqz v1, :cond_22

    #@18
    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$a;->xt:Lcom/google/android/gms/analytics/Tracker;

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->b(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$a;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/GoogleAnalytics$a;)V

    #@21
    goto :goto_b

    #@22
    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$a;->xt:Lcom/google/android/gms/analytics/Tracker;

    #@24
    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->b(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$a;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->b(Lcom/google/android/gms/analytics/GoogleAnalytics$a;)V

    #@2b
    goto :goto_b
.end method


# virtual methods
.method public dA()Z
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xr:Z

    #@2
    const/4 v1, 0x0

    #@3
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker$a;->xr:Z

    #@5
    return v0
.end method

.method dC()Z
    .registers 9

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->uu:Lcom/google/android/gms/analytics/i;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    iget-wide v2, p0, Lcom/google/android/gms/analytics/Tracker$a;->xs:J

    #@8
    const-wide/16 v4, 0x3e8

    #@a
    iget-wide v6, p0, Lcom/google/android/gms/analytics/Tracker$a;->xq:J

    #@c
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@f
    move-result-wide v4

    #@10
    add-long/2addr v2, v4

    #@11
    cmp-long v0, v0, v2

    #@13
    if-ltz v0, :cond_17

    #@15
    const/4 v0, 0x1

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_16
.end method

.method public dy()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xq:J

    #@2
    return-wide v0
.end method

.method public dz()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xo:Z

    #@2
    return v0
.end method

.method public enableAutoActivityTracking(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker$a;->xo:Z

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$a;->dB()V

    #@5
    return-void
.end method

.method public h(Landroid/app/Activity;)V
    .registers 6

    #@0
    const/4 v3, 0x1

    #@1
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->we:Lcom/google/android/gms/analytics/u$a;

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@a
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@c
    if-nez v0, :cond_16

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$a;->dC()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_16

    #@14
    iput-boolean v3, p0, Lcom/google/android/gms/analytics/Tracker$a;->xr:Z

    #@16
    :cond_16
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@1c
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xo:Z

    #@1e
    if-eqz v0, :cond_59

    #@20
    new-instance v1, Ljava/util/HashMap;

    #@22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@25
    const-string v0, "&t"

    #@27
    const-string v2, "screenview"

    #@29
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/u;->u(Z)V

    #@33
    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$a;->xt:Lcom/google/android/gms/analytics/Tracker;

    #@35
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xt:Lcom/google/android/gms/analytics/Tracker;

    #@37
    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->c(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/aj;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_5a

    #@3d
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xt:Lcom/google/android/gms/analytics/Tracker;

    #@3f
    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->c(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/aj;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/aj;->j(Landroid/app/Activity;)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    :goto_47
    const-string v3, "&cd"

    #@49
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xt:Lcom/google/android/gms/analytics/Tracker;

    #@4e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    #@51
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@54
    move-result-object v0

    #@55
    const/4 v1, 0x0

    #@56
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->u(Z)V

    #@59
    :cond_59
    return-void

    #@5a
    :cond_5a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    goto :goto_47
.end method

.method public i(Landroid/app/Activity;)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cU()Lcom/google/android/gms/analytics/u;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/u$a;->wf:Lcom/google/android/gms/analytics/u$a;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    #@9
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@b
    add-int/lit8 v0, v0, -0x1

    #@d
    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@f
    const/4 v0, 0x0

    #@10
    iget v1, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@18
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xp:I

    #@1a
    if-nez v0, :cond_24

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->uu:Lcom/google/android/gms/analytics/i;

    #@1e
    invoke-interface {v0}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    #@21
    move-result-wide v0

    #@22
    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$a;->xs:J

    #@24
    :cond_24
    return-void
.end method

.method public setSessionTimeout(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/google/android/gms/analytics/Tracker$a;->xq:J

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$a;->dB()V

    #@5
    return-void
.end method
