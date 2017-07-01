.class Lcom/google/android/gms/analytics/s$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic uw:Lcom/google/android/gms/analytics/s;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/s;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/s$b;-><init>(Lcom/google/android/gms/analytics/s;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->b(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/s$a;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uz:Lcom/google/android/gms/analytics/s$a;

    #@8
    if-ne v0, v1, :cond_3c

    #@a
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@c
    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->e(Lcom/google/android/gms/analytics/s;)Ljava/util/Queue;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_3c

    #@16
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@18
    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->f(Lcom/google/android/gms/analytics/s;)J

    #@1b
    move-result-wide v0

    #@1c
    iget-object v2, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@1e
    invoke-static {v2}, Lcom/google/android/gms/analytics/s;->g(Lcom/google/android/gms/analytics/s;)J

    #@21
    move-result-wide v2

    #@22
    add-long/2addr v0, v2

    #@23
    iget-object v2, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@25
    invoke-static {v2}, Lcom/google/android/gms/analytics/s;->h(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/i;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v2}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    #@2c
    move-result-wide v2

    #@2d
    cmp-long v0, v0, v2

    #@2f
    if-gez v0, :cond_3c

    #@31
    const-string v0, "Disconnecting due to inactivity"

    #@33
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@36
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@38
    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->i(Lcom/google/android/gms/analytics/s;)V

    #@3b
    :goto_3b
    return-void

    #@3c
    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@3e
    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->j(Lcom/google/android/gms/analytics/s;)Ljava/util/Timer;

    #@41
    move-result-object v0

    #@42
    new-instance v1, Lcom/google/android/gms/analytics/s$b;

    #@44
    iget-object v2, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@46
    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/s$b;-><init>(Lcom/google/android/gms/analytics/s;)V

    #@49
    iget-object v2, p0, Lcom/google/android/gms/analytics/s$b;->uw:Lcom/google/android/gms/analytics/s;

    #@4b
    invoke-static {v2}, Lcom/google/android/gms/analytics/s;->g(Lcom/google/android/gms/analytics/s;)J

    #@4e
    move-result-wide v2

    #@4f
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@52
    goto :goto_3b
.end method
