.class public abstract Lcom/google/android/gms/common/api/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult;
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/a$d",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final Dp:Ljava/lang/Object;

.field private Dq:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final Dr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$a;",
            ">;"
        }
    .end annotation
.end field

.field private Ds:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile Dt:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile Du:Z

.field private Dv:Z

.field private Dw:Z

.field private Dx:Lcom/google/android/gms/internal/hg;

.field private final kK:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@a
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@c
    const/4 v1, 0x1

    #@d
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kK:Ljava/util/concurrent/CountDownLatch;

    #@12
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Ljava/util/ArrayList;

    #@19
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@a
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@c
    const/4 v1, 0x1

    #@d
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kK:Ljava/util/concurrent/CountDownLatch;

    #@12
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Ljava/util/ArrayList;

    #@19
    new-instance v0, Lcom/google/android/gms/common/api/a$c;

    #@1b
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/a$c;

    #@20
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/a$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<TR;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@a
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@c
    const/4 v1, 0x1

    #@d
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kK:Ljava/util/concurrent/CountDownLatch;

    #@12
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Ljava/util/ArrayList;

    #@19
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/a$c;

    #@1b
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a$a;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eF()V

    #@3
    return-void
.end method

.method private c(Lcom/google/android/gms/common/api/Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Lcom/google/android/gms/common/api/Result;

    #@2
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dx:Lcom/google/android/gms/internal/hg;

    #@5
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kK:Ljava/util/concurrent/CountDownLatch;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@a
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Lcom/google/android/gms/common/api/Result;

    #@c
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    #@f
    move-result-object v1

    #@10
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Lcom/google/android/gms/common/api/ResultCallback;

    #@12
    if-eqz v0, :cond_28

    #@14
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/a$c;

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a$c;->eH()V

    #@19
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dv:Z

    #@1b
    if-nez v0, :cond_28

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/a$c;

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Lcom/google/android/gms/common/api/ResultCallback;

    #@21
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eC()Lcom/google/android/gms/common/api/Result;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    #@28
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v2

    #@2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_3e

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$a;

    #@3a
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult$a;->n(Lcom/google/android/gms/common/api/Status;)V

    #@3d
    goto :goto_2e

    #@3e
    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@43
    return-void
.end method

.method private eC()Lcom/google/android/gms/common/api/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@5
    if-nez v0, :cond_1d

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    const-string v2, "Result has already been consumed."

    #@a
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@10
    move-result v0

    #@11
    const-string v2, "Result is not ready."

    #@13
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Lcom/google/android/gms/common/api/Result;

    #@18
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->eD()V

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    goto :goto_8

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    #@21
    throw v0
.end method

.method private eE()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_15

    #@9
    sget-object v0, Lcom/google/android/gms/common/api/Status;->Eo:Lcom/google/android/gms/common/api/Status;

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->b(Lcom/google/android/gms/common/api/Result;)V

    #@12
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dw:Z

    #@15
    :cond_15
    monitor-exit v1

    #@16
    return-void

    #@17
    :catchall_17
    move-exception v0

    #@18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method

.method private eF()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_15

    #@9
    sget-object v0, Lcom/google/android/gms/common/api/Status;->Eq:Lcom/google/android/gms/common/api/Status;

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->b(Lcom/google/android/gms/common/api/Result;)V

    #@12
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dw:Z

    #@15
    :cond_15
    monitor-exit v1

    #@16
    return-void

    #@17
    :catchall_17
    move-exception v0

    #@18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/PendingResult$a;)V
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@2
    if-nez v0, :cond_1e

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    const-string v1, "Result has already been consumed."

    #@7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@a
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_20

    #@13
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Lcom/google/android/gms/common/api/Result;

    #@15
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    #@18
    move-result-object v0

    #@19
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/PendingResult$a;->n(Lcom/google/android/gms/common/api/Status;)V

    #@1c
    :goto_1c
    monitor-exit v1

    #@1d
    return-void

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_5

    #@20
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dr:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_1c

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    #@28
    throw v0
.end method

.method protected a(Lcom/google/android/gms/common/api/a$c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<TR;>;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/a$c;

    #@2
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/hg;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Dx:Lcom/google/android/gms/internal/hg;

    #@5
    monitor-exit v1

    #@6
    return-void

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/common/api/Result;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->b(Lcom/google/android/gms/common/api/Result;)V

    #@5
    return-void
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v3

    #@a
    if-eq v0, v3, :cond_2e

    #@c
    move v0, v1

    #@d
    :goto_d
    const-string v3, "await must not be called on the UI thread"

    #@f
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@12
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@14
    if-nez v0, :cond_30

    #@16
    :goto_16
    const-string v0, "Result has already been consumed"

    #@18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kK:Ljava/util/concurrent/CountDownLatch;

    #@1d
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_32

    #@20
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@23
    move-result v0

    #@24
    const-string v1, "Result is not ready."

    #@26
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@29
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eC()Lcom/google/android/gms/common/api/Result;

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    :cond_2e
    move v0, v2

    #@2f
    goto :goto_d

    #@30
    :cond_30
    move v1, v2

    #@31
    goto :goto_16

    #@32
    :catch_32
    move-exception v0

    #@33
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eE()V

    #@36
    goto :goto_20
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v0, p1, v4

    #@6
    if-lez v0, :cond_12

    #@8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@b
    move-result-object v0

    #@c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v3

    #@10
    if-eq v0, v3, :cond_3a

    #@12
    :cond_12
    move v0, v2

    #@13
    :goto_13
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    #@15
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@18
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@1a
    if-nez v0, :cond_3c

    #@1c
    :goto_1c
    const-string v0, "Result has already been consumed."

    #@1e
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kK:Ljava/util/concurrent/CountDownLatch;

    #@23
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_2c

    #@29
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eF()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2c} :catch_3e

    #@2c
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@2f
    move-result v0

    #@30
    const-string v1, "Result is not ready."

    #@32
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@35
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eC()Lcom/google/android/gms/common/api/Result;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    :cond_3a
    move v0, v1

    #@3b
    goto :goto_13

    #@3c
    :cond_3c
    move v2, v1

    #@3d
    goto :goto_1c

    #@3e
    :catch_3e
    move-exception v0

    #@3f
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eE()V

    #@42
    goto :goto_2c
.end method

.method public final b(Lcom/google/android/gms/common/api/Result;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v3, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->Dw:Z

    #@7
    if-nez v2, :cond_d

    #@9
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->Dv:Z

    #@b
    if-eqz v2, :cond_12

    #@d
    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/Result;)V

    #@10
    monitor-exit v3

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_2f

    #@18
    move v2, v0

    #@19
    :goto_19
    const-string v4, "Results have already been set"

    #@1b
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@1e
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@20
    if-nez v2, :cond_31

    #@22
    :goto_22
    const-string v1, "Result has already been consumed"

    #@24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@27
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Result;)V

    #@2a
    monitor-exit v3

    #@2b
    goto :goto_11

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    #@2e
    throw v0

    #@2f
    :cond_2f
    move v2, v1

    #@30
    goto :goto_19

    #@31
    :cond_31
    move v0, v1

    #@32
    goto :goto_22
.end method

.method protected abstract c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public cancel()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dv:Z

    #@5
    if-nez v0, :cond_b

    #@7
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@9
    if-eqz v0, :cond_d

    #@b
    :cond_b
    monitor-exit v1

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dx:Lcom/google/android/gms/internal/hg;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    #@f
    if-eqz v0, :cond_16

    #@11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dx:Lcom/google/android/gms/internal/hg;

    #@13
    invoke-interface {v0}, Lcom/google/android/gms/internal/hg;->cancel()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_2f
    .catchall {:try_start_11 .. :try_end_16} :catchall_2c

    #@16
    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Lcom/google/android/gms/common/api/Result;

    #@18
    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/Result;)V

    #@1b
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Lcom/google/android/gms/common/api/ResultCallback;

    #@1e
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dv:Z

    #@21
    sget-object v0, Lcom/google/android/gms/common/api/Status;->Er:Lcom/google/android/gms/common/api/Status;

    #@23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Result;)V

    #@2a
    monitor-exit v1

    #@2b
    goto :goto_c

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_2c

    #@2e
    throw v0

    #@2f
    :catch_2f
    move-exception v0

    #@30
    goto :goto_16
.end method

.method protected eD()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@4
    iput-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dt:Lcom/google/android/gms/common/api/Result;

    #@6
    iput-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Lcom/google/android/gms/common/api/ResultCallback;

    #@8
    return-void
.end method

.method public isCanceled()Z
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Dv:Z

    #@5
    monitor-exit v1

    #@6
    return v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public final isReady()Z
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->kK:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

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

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;)V"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@2
    if-nez v0, :cond_15

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    const-string v1, "Result has already been consumed."

    #@7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@a
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isCanceled()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_17

    #@13
    monitor-exit v1

    #@14
    :goto_14
    return-void

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_5

    #@17
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2b

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/a$c;

    #@1f
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eC()Lcom/google/android/gms/common/api/Result;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    #@26
    :goto_26
    monitor-exit v1

    #@27
    goto :goto_14

    #@28
    :catchall_28
    move-exception v0

    #@29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    #@2a
    throw v0

    #@2b
    :cond_2b
    :try_start_2b
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    #@2d
    goto :goto_26
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->Du:Z

    #@2
    if-nez v0, :cond_15

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    const-string v1, "Result has already been consumed."

    #@7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@a
    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->Dp:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isCanceled()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_17

    #@13
    monitor-exit v1

    #@14
    :goto_14
    return-void

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_5

    #@17
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2b

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/a$c;

    #@1f
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eC()Lcom/google/android/gms/common/api/Result;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    #@26
    :goto_26
    monitor-exit v1

    #@27
    goto :goto_14

    #@28
    :catchall_28
    move-exception v0

    #@29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    #@2a
    throw v0

    #@2b
    :cond_2b
    :try_start_2b
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->Ds:Lcom/google/android/gms/common/api/ResultCallback;

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Dq:Lcom/google/android/gms/common/api/a$c;

    #@2f
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@32
    move-result-wide v2

    #@33
    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/a$a;J)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_28

    #@36
    goto :goto_26
.end method
