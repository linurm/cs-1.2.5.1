.class public abstract Lcom/google/android/gms/games/internal/events/EventIncrementCache;
.super Ljava/lang/Object;


# instance fields
.field final Rm:Ljava/lang/Object;

.field private Rn:Landroid/os/Handler;

.field private Ro:Z

.field private Rp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private Rq:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/lang/Object;

    #@a
    new-instance v0, Landroid/os/Handler;

    #@c
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rn:Landroid/os/Handler;

    #@11
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rp:Ljava/util/HashMap;

    #@18
    iput p2, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rq:I

    #@1a
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/games/internal/events/EventIncrementCache;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->hP()V

    #@3
    return-void
.end method

.method private hP()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x0

    #@4
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Ro:Z

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->flush()V

    #@9
    monitor-exit v1

    #@a
    return-void

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method


# virtual methods
.method public flush()V
    .registers 5

    #@0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rp:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_30

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/String;

    #@1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@28
    move-result v0

    #@29
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->o(Ljava/lang/String;I)V

    #@2c
    goto :goto_d

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    #@2f
    throw v0

    #@30
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rp:Ljava/util/HashMap;

    #@32
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_2d

    #@36
    return-void
.end method

.method protected abstract o(Ljava/lang/String;I)V
.end method

.method public u(Ljava/lang/String;I)V
    .registers 9

    #@0
    iget-object v1, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rm:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Ro:Z

    #@5
    if-nez v0, :cond_17

    #@7
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Ro:Z

    #@a
    iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rn:Landroid/os/Handler;

    #@c
    new-instance v2, Lcom/google/android/gms/games/internal/events/EventIncrementCache$1;

    #@e
    invoke-direct {v2, p0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache$1;-><init>(Lcom/google/android/gms/games/internal/events/EventIncrementCache;)V

    #@11
    iget v3, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rq:I

    #@13
    int-to-long v4, v3

    #@14
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@17
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rp:Ljava/util/HashMap;

    #@19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@1f
    if-nez v0, :cond_2b

    #@21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@23
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@26
    iget-object v2, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->Rp:Ljava/util/HashMap;

    #@28
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    :cond_2b
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@2e
    monitor-exit v1

    #@2f
    return-void

    #@30
    :catchall_30
    move-exception v0

    #@31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    #@32
    throw v0
.end method
