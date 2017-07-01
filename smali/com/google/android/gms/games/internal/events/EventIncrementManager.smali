.class public abstract Lcom/google/android/gms/games/internal/events/EventIncrementManager;
.super Ljava/lang/Object;


# instance fields
.field private final Rs:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/games/internal/events/EventIncrementCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rs:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rs:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;

    #@8
    if-eqz v0, :cond_d

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->flush()V

    #@d
    :cond_d
    return-void
.end method

.method protected abstract hx()Lcom/google/android/gms/games/internal/events/EventIncrementCache;
.end method

.method public l(Ljava/lang/String;I)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rs:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;

    #@8
    if-nez v0, :cond_1f

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->hx()Lcom/google/android/gms/games/internal/events/EventIncrementCache;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rs:Ljava/util/concurrent/atomic/AtomicReference;

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1f

    #@17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->Rs:Ljava/util/concurrent/atomic/AtomicReference;

    #@19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/google/android/gms/games/internal/events/EventIncrementCache;

    #@1f
    :cond_1f
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->u(Ljava/lang/String;I)V

    #@22
    return-void
.end method
