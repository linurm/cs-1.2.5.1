.class Lcom/google/android/gms/analytics/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ag;
.implements Lcom/google/android/gms/analytics/c$b;
.implements Lcom/google/android/gms/analytics/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/s$a;,
        Lcom/google/android/gms/analytics/s$b;,
        Lcom/google/android/gms/analytics/s$c;,
        Lcom/google/android/gms/analytics/s$d;,
        Lcom/google/android/gms/analytics/s$e;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private tU:Lcom/google/android/gms/analytics/d;

.field private final tV:Lcom/google/android/gms/analytics/f;

.field private tX:Z

.field private volatile uh:J

.field private volatile ui:Lcom/google/android/gms/analytics/s$a;

.field private volatile uj:Lcom/google/android/gms/analytics/b;

.field private uk:Lcom/google/android/gms/analytics/d;

.field private final ul:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final um:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/analytics/s$d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile un:I

.field private volatile uo:Ljava/util/Timer;

.field private volatile up:Ljava/util/Timer;

.field private volatile uq:Ljava/util/Timer;

.field private ur:Z

.field private us:Z

.field private ut:Z

.field private uu:Lcom/google/android/gms/analytics/i;

.field private uv:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@4
    move-result-object v1

    #@5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/s;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/d;Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    #@8
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/d;Lcom/google/android/gms/analytics/GoogleAnalytics;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@a
    const-wide/32 v0, 0x493e0

    #@d
    iput-wide v0, p0, Lcom/google/android/gms/analytics/s;->uv:J

    #@f
    iput-object p3, p0, Lcom/google/android/gms/analytics/s;->uk:Lcom/google/android/gms/analytics/d;

    #@11
    iput-object p1, p0, Lcom/google/android/gms/analytics/s;->mContext:Landroid/content/Context;

    #@13
    iput-object p2, p0, Lcom/google/android/gms/analytics/s;->tV:Lcom/google/android/gms/analytics/f;

    #@15
    iput-object p4, p0, Lcom/google/android/gms/analytics/s;->ul:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@17
    new-instance v0, Lcom/google/android/gms/analytics/s$1;

    #@19
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/s$1;-><init>(Lcom/google/android/gms/analytics/s;)V

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->uu:Lcom/google/android/gms/analytics/i;

    #@1e
    const/4 v0, 0x0

    #@1f
    iput v0, p0, Lcom/google/android/gms/analytics/s;->un:I

    #@21
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uE:Lcom/google/android/gms/analytics/s$a;

    #@23
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@25
    return-void
.end method

.method private a(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 3

    #@0
    if-eqz p1, :cond_5

    #@2
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/s;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cM()V

    #@3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/s$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@2
    return-object v0
.end method

.method private bs()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uj:Lcom/google/android/gms/analytics/b;

    #@3
    if-eqz v0, :cond_14

    #@5
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@7
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uz:Lcom/google/android/gms/analytics/s$a;

    #@9
    if-ne v0, v1, :cond_14

    #@b
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uD:Lcom/google/android/gms/analytics/s$a;

    #@d
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@f
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uj:Lcom/google/android/gms/analytics/b;

    #@11
    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->disconnect()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    #@14
    :cond_14
    monitor-exit p0

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/s;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cO()V

    #@3
    return-void
.end method

.method private cK()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uo:Ljava/util/Timer;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->uo:Ljava/util/Timer;

    #@8
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->up:Ljava/util/Timer;

    #@a
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->up:Ljava/util/Timer;

    #@10
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uq:Ljava/util/Timer;

    #@12
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->uq:Ljava/util/Timer;

    #@18
    return-void
.end method

.method private cM()V
    .registers 9

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v2

    #@5
    iget-object v3, p0, Lcom/google/android/gms/analytics/s;->tV:Lcom/google/android/gms/analytics/f;

    #@7
    invoke-interface {v3}, Lcom/google/android/gms/analytics/f;->getThread()Ljava/lang/Thread;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_21

    #@11
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->tV:Lcom/google/android/gms/analytics/f;

    #@13
    invoke-interface {v2}, Lcom/google/android/gms/analytics/f;->ct()Ljava/util/concurrent/LinkedBlockingQueue;

    #@16
    move-result-object v2

    #@17
    new-instance v3, Lcom/google/android/gms/analytics/s$2;

    #@19
    invoke-direct {v3, p0}, Lcom/google/android/gms/analytics/s$2;-><init>(Lcom/google/android/gms/analytics/s;)V

    #@1c
    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_74

    #@1f
    :cond_1f
    :goto_1f
    monitor-exit p0

    #@20
    return-void

    #@21
    :cond_21
    :try_start_21
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/s;->ur:Z

    #@23
    if-eqz v2, :cond_28

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/s;->cl()V

    #@28
    :cond_28
    sget-object v2, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@2a
    iget-object v3, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@2c
    invoke-virtual {v3}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@2f
    move-result v3

    #@30
    aget v2, v2, v3

    #@32
    packed-switch v2, :pswitch_data_ec

    #@35
    :pswitch_35
    goto :goto_1f

    #@36
    :goto_36
    :pswitch_36
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@38
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    #@3b
    move-result v2

    #@3c
    if-nez v2, :cond_77

    #@3e
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@40
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    move-object v0, v2

    #@45
    check-cast v0, Lcom/google/android/gms/analytics/s$d;

    #@47
    move-object v7, v0

    #@48
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string v3, "Sending hit to store  "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@5e
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->tU:Lcom/google/android/gms/analytics/d;

    #@60
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/s$d;->cR()Ljava/util/Map;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/s$d;->cS()J

    #@67
    move-result-wide v4

    #@68
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/s$d;->getPath()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/s$d;->cT()Ljava/util/List;

    #@6f
    move-result-object v7

    #@70
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_73
    .catchall {:try_start_21 .. :try_end_73} :catchall_74

    #@73
    goto :goto_36

    #@74
    :catchall_74
    move-exception v2

    #@75
    monitor-exit p0

    #@76
    throw v2

    #@77
    :cond_77
    :try_start_77
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/s;->tX:Z

    #@79
    if-eqz v2, :cond_1f

    #@7b
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cN()V

    #@7e
    goto :goto_1f

    #@7f
    :goto_7f
    :pswitch_7f
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@81
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    #@84
    move-result v2

    #@85
    if-nez v2, :cond_d0

    #@87
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@89
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    #@8c
    move-result-object v2

    #@8d
    move-object v0, v2

    #@8e
    check-cast v0, Lcom/google/android/gms/analytics/s$d;

    #@90
    move-object v7, v0

    #@91
    new-instance v2, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string v3, "Sending hit to service   "

    #@98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@a7
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->ul:Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@a9
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    #@ac
    move-result v2

    #@ad
    if-nez v2, :cond_ca

    #@af
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->uj:Lcom/google/android/gms/analytics/b;

    #@b1
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/s$d;->cR()Ljava/util/Map;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/s$d;->cS()J

    #@b8
    move-result-wide v4

    #@b9
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/s$d;->getPath()Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/s$d;->cT()Ljava/util/List;

    #@c0
    move-result-object v7

    #@c1
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/b;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    #@c4
    :goto_c4
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@c6
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@c9
    goto :goto_7f

    #@ca
    :cond_ca
    const-string v2, "Dry run enabled. Hit not actually sent to service."

    #@cc
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@cf
    goto :goto_c4

    #@d0
    :cond_d0
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->uu:Lcom/google/android/gms/analytics/i;

    #@d2
    invoke-interface {v2}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    #@d5
    move-result-wide v2

    #@d6
    iput-wide v2, p0, Lcom/google/android/gms/analytics/s;->uh:J

    #@d8
    goto/16 :goto_1f

    #@da
    :pswitch_da
    const-string v2, "Need to reconnect"

    #@dc
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@df
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@e1
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    #@e4
    move-result v2

    #@e5
    if-nez v2, :cond_1f

    #@e7
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cP()V
    :try_end_ea
    .catchall {:try_start_77 .. :try_end_ea} :catchall_74

    #@ea
    goto/16 :goto_1f

    #@ec
    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_36
        :pswitch_7f
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_da
    .end packed-switch
.end method

.method private cN()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->tU:Lcom/google/android/gms/analytics/d;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/analytics/d;->cq()V

    #@5
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->tX:Z

    #@8
    return-void
.end method

.method private cO()V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@3
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uA:Lcom/google/android/gms/analytics/s$a;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    #@5
    if-ne v0, v1, :cond_9

    #@7
    :goto_7
    monitor-exit p0

    #@8
    return-void

    #@9
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cK()V

    #@c
    const-string v0, "falling back to local store"

    #@e
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@11
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uk:Lcom/google/android/gms/analytics/d;

    #@13
    if-eqz v0, :cond_24

    #@15
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uk:Lcom/google/android/gms/analytics/d;

    #@17
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->tU:Lcom/google/android/gms/analytics/d;

    #@19
    :goto_19
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uA:Lcom/google/android/gms/analytics/s$a;

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@1d
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cM()V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21

    #@20
    goto :goto_7

    #@21
    :catchall_21
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0

    #@24
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/google/android/gms/analytics/r;->cE()Lcom/google/android/gms/analytics/r;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->mContext:Landroid/content/Context;

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/analytics/s;->tV:Lcom/google/android/gms/analytics/f;

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/r;->a(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V

    #@2f
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/r;->cH()Lcom/google/android/gms/analytics/d;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->tU:Lcom/google/android/gms/analytics/d;
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_21

    #@35
    goto :goto_19
.end method

.method private cP()V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->ut:Z

    #@3
    if-nez v0, :cond_4d

    #@5
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uj:Lcom/google/android/gms/analytics/b;

    #@7
    if-eqz v0, :cond_4d

    #@9
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@b
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uA:Lcom/google/android/gms/analytics/s$a;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4a

    #@d
    if-eq v0, v1, :cond_4d

    #@f
    :try_start_f
    iget v0, p0, Lcom/google/android/gms/analytics/s;->un:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    iput v0, p0, Lcom/google/android/gms/analytics/s;->un:I

    #@15
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->up:Ljava/util/Timer;

    #@17
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;

    #@1a
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uy:Lcom/google/android/gms/analytics/s$a;

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@1e
    new-instance v0, Ljava/util/Timer;

    #@20
    const-string v1, "Failed Connect"

    #@22
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    #@25
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->up:Ljava/util/Timer;

    #@27
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->up:Ljava/util/Timer;

    #@29
    new-instance v1, Lcom/google/android/gms/analytics/s$c;

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/s$c;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V

    #@2f
    const-wide/16 v2, 0xbb8

    #@31
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@34
    const-string v0, "connecting to Analytics service"

    #@36
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@39
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uj:Lcom/google/android/gms/analytics/b;

    #@3b
    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->connect()V
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_3e} :catch_40
    .catchall {:try_start_f .. :try_end_3e} :catchall_4a

    #@3e
    :goto_3e
    monitor-exit p0

    #@3f
    return-void

    #@40
    :catch_40
    move-exception v0

    #@41
    :try_start_41
    const-string v0, "security exception on connectToService"

    #@43
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@46
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cO()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    #@49
    goto :goto_3e

    #@4a
    :catchall_4a
    move-exception v0

    #@4b
    monitor-exit p0

    #@4c
    throw v0

    #@4d
    :cond_4d
    :try_start_4d
    const-string v0, "client not initialized."

    #@4f
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@52
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cO()V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_4a

    #@55
    goto :goto_3e
.end method

.method private cQ()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uo:Ljava/util/Timer;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->uo:Ljava/util/Timer;

    #@8
    new-instance v0, Ljava/util/Timer;

    #@a
    const-string v1, "Service Reconnect"

    #@c
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->uo:Ljava/util/Timer;

    #@11
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uo:Ljava/util/Timer;

    #@13
    new-instance v1, Lcom/google/android/gms/analytics/s$e;

    #@15
    const/4 v2, 0x0

    #@16
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/s$e;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V

    #@19
    const-wide/16 v2, 0x1388

    #@1b
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@1e
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/s;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cP()V

    #@3
    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/analytics/s;)Ljava/util/Queue;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@2
    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/analytics/s;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/s;->uh:J

    #@2
    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/analytics/s;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/s;->uv:J

    #@2
    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/i;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uu:Lcom/google/android/gms/analytics/i;

    #@2
    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/analytics/s;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bs()V

    #@3
    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/analytics/s;)Ljava/util/Timer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uq:Ljava/util/Timer;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uC:Lcom/google/android/gms/analytics/s$a;

    #@3
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@5
    iget v0, p0, Lcom/google/android/gms/analytics/s;->un:I

    #@7
    const/4 v1, 0x2

    #@8
    if-ge v0, v1, :cond_2b

    #@a
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v1, "Service unavailable (code="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "), will retry."

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@26
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cQ()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_4b

    #@29
    :goto_29
    monitor-exit p0

    #@2a
    return-void

    #@2b
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string v1, "Service unavailable (code="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "), using local store."

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@47
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cO()V
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_4b

    #@4a
    goto :goto_29

    #@4b
    :catchall_4b
    move-exception v0

    #@4c
    monitor-exit p0

    #@4d
    throw v0
.end method

.method public b(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 14
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
    const-string v0, "putHit called"

    #@2
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@5
    iget-object v6, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@7
    new-instance v0, Lcom/google/android/gms/analytics/s$d;

    #@9
    move-object v1, p1

    #@a
    move-wide v2, p2

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/s$d;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    #@10
    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@13
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cM()V

    #@16
    return-void
.end method

.method public cL()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uj:Lcom/google/android/gms/analytics/b;

    #@2
    if-eqz v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    new-instance v0, Lcom/google/android/gms/analytics/c;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->mContext:Landroid/content/Context;

    #@9
    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/analytics/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/c$b;Lcom/google/android/gms/analytics/c$c;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->uj:Lcom/google/android/gms/analytics/b;

    #@e
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cP()V

    #@11
    goto :goto_4
.end method

.method public cl()V
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    const-string v0, "clearHits called"

    #@3
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@6
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->um:Ljava/util/Queue;

    #@8
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    #@b
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@d
    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@f
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@12
    move-result v1

    #@13
    aget v0, v0, v1

    #@15
    packed-switch v0, :pswitch_data_2e

    #@18
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->ur:Z

    #@1b
    :goto_1b
    return-void

    #@1c
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->tU:Lcom/google/android/gms/analytics/d;

    #@1e
    const-wide/16 v2, 0x0

    #@20
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/analytics/d;->l(J)V

    #@23
    iput-boolean v4, p0, Lcom/google/android/gms/analytics/s;->ur:Z

    #@25
    goto :goto_1b

    #@26
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uj:Lcom/google/android/gms/analytics/b;

    #@28
    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->cl()V

    #@2b
    iput-boolean v4, p0, Lcom/google/android/gms/analytics/s;->ur:Z

    #@2d
    goto :goto_1b

    #@2e
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method

.method public cq()V
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@2
    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@4
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_16

    #@d
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->tX:Z

    #@10
    :goto_10
    :pswitch_10
    return-void

    #@11
    :pswitch_11
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cN()V

    #@14
    goto :goto_10

    #@15
    nop

    #@16
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public cs()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->ut:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    #@3
    if-eqz v0, :cond_7

    #@5
    :goto_5
    :pswitch_5
    monitor-exit p0

    #@6
    return-void

    #@7
    :cond_7
    :try_start_7
    const-string v0, "setForceLocalDispatch called."

    #@9
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@c
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->ut:Z

    #@f
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@11
    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@13
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@16
    move-result v1

    #@17
    aget v0, v0, v1

    #@19
    packed-switch v0, :pswitch_data_28

    #@1c
    goto :goto_5

    #@1d
    :pswitch_1d
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bs()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    #@20
    goto :goto_5

    #@21
    :catchall_21
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0

    #@24
    :pswitch_24
    const/4 v0, 0x1

    #@25
    :try_start_25
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->us:Z
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_21

    #@27
    goto :goto_5

    #@28
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1d
        :pswitch_24
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onConnected()V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->up:Ljava/util/Timer;

    #@3
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->up:Ljava/util/Timer;

    #@9
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lcom/google/android/gms/analytics/s;->un:I

    #@c
    const-string v0, "Connected to service"

    #@e
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@11
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uz:Lcom/google/android/gms/analytics/s$a;

    #@13
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@15
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/s;->us:Z

    #@17
    if-eqz v0, :cond_21

    #@19
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->bs()V

    #@1c
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/s;->us:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_43

    #@1f
    :goto_1f
    monitor-exit p0

    #@20
    return-void

    #@21
    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cM()V

    #@24
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uq:Ljava/util/Timer;

    #@26
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/Timer;)Ljava/util/Timer;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->uq:Ljava/util/Timer;

    #@2c
    new-instance v0, Ljava/util/Timer;

    #@2e
    const-string v1, "disconnect check"

    #@30
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    #@33
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->uq:Ljava/util/Timer;

    #@35
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->uq:Ljava/util/Timer;

    #@37
    new-instance v1, Lcom/google/android/gms/analytics/s$b;

    #@39
    const/4 v2, 0x0

    #@3a
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/s$b;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V

    #@3d
    iget-wide v2, p0, Lcom/google/android/gms/analytics/s;->uv:J

    #@3f
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_43

    #@42
    goto :goto_1f

    #@43
    :catchall_43
    move-exception v0

    #@44
    monitor-exit p0

    #@45
    throw v0
.end method

.method public onDisconnected()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@3
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uD:Lcom/google/android/gms/analytics/s$a;

    #@5
    if-ne v0, v1, :cond_15

    #@7
    const-string v0, "Disconnected from service"

    #@9
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@c
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cK()V

    #@f
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uE:Lcom/google/android/gms/analytics/s$a;

    #@11
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_27

    #@13
    :goto_13
    monitor-exit p0

    #@14
    return-void

    #@15
    :cond_15
    :try_start_15
    const-string v0, "Unexpected disconnect."

    #@17
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@1a
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uC:Lcom/google/android/gms/analytics/s$a;

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/analytics/s;->ui:Lcom/google/android/gms/analytics/s$a;

    #@1e
    iget v0, p0, Lcom/google/android/gms/analytics/s;->un:I

    #@20
    const/4 v1, 0x2

    #@21
    if-ge v0, v1, :cond_2a

    #@23
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cQ()V
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_27

    #@26
    goto :goto_13

    #@27
    :catchall_27
    move-exception v0

    #@28
    monitor-exit p0

    #@29
    throw v0

    #@2a
    :cond_2a
    :try_start_2a
    invoke-direct {p0}, Lcom/google/android/gms/analytics/s;->cO()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    #@2d
    goto :goto_13
.end method
