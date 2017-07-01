.class public final Lcom/google/android/gms/internal/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ad;


# instance fields
.field private final ls:Ljava/lang/Object;

.field private lt:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/ef;",
            "Lcom/google/android/gms/internal/ac;",
            ">;"
        }
    .end annotation
.end field

.field private lu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ac;",
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
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->ls:Ljava/lang/Object;

    #@a
    new-instance v0, Ljava/util/WeakHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lt:Ljava/util/WeakHashMap;

    #@11
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lu:Ljava/util/ArrayList;

    #@18
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ef;)Lcom/google/android/gms/internal/ac;
    .registers 6

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ab;->c(Lcom/google/android/gms/internal/ef;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_13

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lt:Ljava/util/WeakHashMap;

    #@b
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/google/android/gms/internal/ac;

    #@11
    monitor-exit v1

    #@12
    :goto_12
    return-object v0

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ac;

    #@15
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ac;-><init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ef;)V

    #@18
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ac;->a(Lcom/google/android/gms/internal/ad;)V

    #@1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ab;->lt:Ljava/util/WeakHashMap;

    #@1d
    invoke-virtual {v2, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    iget-object v2, p0, Lcom/google/android/gms/internal/ab;->lu:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    monitor-exit v1

    #@26
    goto :goto_12

    #@27
    :catchall_27
    move-exception v0

    #@28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    #@29
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/ac;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->az()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_e

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lu:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@e
    :cond_e
    monitor-exit v1

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public c(Lcom/google/android/gms/internal/ef;)Z
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lt:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/ac;

    #@b
    if-eqz v0, :cond_16

    #@d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->az()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_16

    #@13
    const/4 v0, 0x1

    #@14
    :goto_14
    monitor-exit v1

    #@15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_14

    #@18
    :catchall_18
    move-exception v0

    #@19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    #@1a
    throw v0
.end method

.method public d(Lcom/google/android/gms/internal/ef;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lt:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/ac;

    #@b
    if-eqz v0, :cond_10

    #@d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->ax()V

    #@10
    :cond_10
    monitor-exit v1

    #@11
    return-void

    #@12
    :catchall_12
    move-exception v0

    #@13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    #@14
    throw v0
.end method

.method public pause()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lu:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1c

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/internal/ac;

    #@15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->pause()V

    #@18
    goto :goto_9

    #@19
    :catchall_19
    move-exception v0

    #@1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    #@1b
    throw v0

    #@1c
    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    #@1d
    return-void
.end method

.method public resume()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lu:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1c

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/internal/ac;

    #@15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->resume()V

    #@18
    goto :goto_9

    #@19
    :catchall_19
    move-exception v0

    #@1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    #@1b
    throw v0

    #@1c
    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    #@1d
    return-void
.end method

.method public stop()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lu:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1c

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/internal/ac;

    #@15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac;->stop()V

    #@18
    goto :goto_9

    #@19
    :catchall_19
    move-exception v0

    #@1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    #@1b
    throw v0

    #@1c
    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    #@1d
    return-void
.end method
