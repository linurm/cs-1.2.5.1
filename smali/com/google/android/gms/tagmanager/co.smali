.class Lcom/google/android/gms/tagmanager/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/o$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/co$a;,
        Lcom/google/android/gms/tagmanager/co$b;
    }
.end annotation


# instance fields
.field private aeP:Ljava/lang/String;

.field private final aet:Ljava/lang/String;

.field private agN:Lcom/google/android/gms/tagmanager/bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/bg",
            "<",
            "Lcom/google/android/gms/internal/c$j;",
            ">;"
        }
    .end annotation
.end field

.field private agO:Lcom/google/android/gms/tagmanager/r;

.field private final agQ:Ljava/util/concurrent/ScheduledExecutorService;

.field private final agR:Lcom/google/android/gms/tagmanager/co$a;

.field private agS:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V
    .registers 10

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, v4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/co$b;Lcom/google/android/gms/tagmanager/co$a;)V

    #@9
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/co$b;Lcom/google/android/gms/tagmanager/co$a;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/co;->agO:Lcom/google/android/gms/tagmanager/r;

    #@5
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->mContext:Landroid/content/Context;

    #@7
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/co;->aet:Ljava/lang/String;

    #@9
    if-nez p4, :cond_10

    #@b
    new-instance p4, Lcom/google/android/gms/tagmanager/co$1;

    #@d
    invoke-direct {p4, p0}, Lcom/google/android/gms/tagmanager/co$1;-><init>(Lcom/google/android/gms/tagmanager/co;)V

    #@10
    :cond_10
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/co$b;->mk()Ljava/util/concurrent/ScheduledExecutorService;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agQ:Ljava/util/concurrent/ScheduledExecutorService;

    #@16
    if-nez p5, :cond_20

    #@18
    new-instance v0, Lcom/google/android/gms/tagmanager/co$2;

    #@1a
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/co$2;-><init>(Lcom/google/android/gms/tagmanager/co;)V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agR:Lcom/google/android/gms/tagmanager/co$a;

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    iput-object p5, p0, Lcom/google/android/gms/tagmanager/co;->agR:Lcom/google/android/gms/tagmanager/co$a;

    #@22
    goto :goto_1f
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/co;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/co;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->aet:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private cc(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cn;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agR:Lcom/google/android/gms/tagmanager/co$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->agO:Lcom/google/android/gms/tagmanager/r;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/co$a;->a(Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/cn;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cn;->a(Lcom/google/android/gms/tagmanager/bg;)V

    #@d
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->aeP:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cn;->bM(Ljava/lang/String;)V

    #@12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cn;->cb(Ljava/lang/String;)V

    #@15
    return-object v0
.end method

.method private mj()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/co;->mClosed:Z

    #@3
    if-eqz v0, :cond_10

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string v1, "called method after closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0

    #@10
    :cond_10
    monitor-exit p0

    #@11
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/bg;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/bg",
            "<",
            "Lcom/google/android/gms/internal/c$j;",
            ">;)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->mj()V

    #@4
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->agN:Lcom/google/android/gms/tagmanager/bg;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    :catchall_8
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public bM(Ljava/lang/String;)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->mj()V

    #@4
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->aeP:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    :catchall_8
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public e(JLjava/lang/String;)V
    .registers 7

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string v1, "loadAfterDelay: containerId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->aet:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string v1, " delay="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@23
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->mj()V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@28
    if-nez v0, :cond_35

    #@2a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2c
    const-string v1, "callback must be set before loadAfterDelay() is called."

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_32

    #@32
    :catchall_32
    move-exception v0

    #@33
    monitor-exit p0

    #@34
    throw v0

    #@35
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agS:Ljava/util/concurrent/ScheduledFuture;

    #@37
    if-eqz v0, :cond_3f

    #@39
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agS:Ljava/util/concurrent/ScheduledFuture;

    #@3b
    const/4 v1, 0x0

    #@3c
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    #@3f
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agQ:Ljava/util/concurrent/ScheduledExecutorService;

    #@41
    invoke-direct {p0, p3}, Lcom/google/android/gms/tagmanager/co;->cc(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cn;

    #@44
    move-result-object v1

    #@45
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@47
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agS:Ljava/util/concurrent/ScheduledFuture;
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_32

    #@4d
    monitor-exit p0

    #@4e
    return-void
.end method

.method public release()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->mj()V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agS:Ljava/util/concurrent/ScheduledFuture;

    #@6
    if-eqz v0, :cond_e

    #@8
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agS:Ljava/util/concurrent/ScheduledFuture;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    #@e
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->agQ:Ljava/util/concurrent/ScheduledExecutorService;

    #@10
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    #@13
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/co;->mClosed:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    #@16
    monitor-exit p0

    #@17
    return-void

    #@18
    :catchall_18
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method
