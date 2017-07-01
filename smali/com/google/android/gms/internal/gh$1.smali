.class Lcom/google/android/gms/internal/gh$1;
.super Lcom/google/android/gms/internal/gm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cc:Lcom/google/android/gms/internal/gh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gh;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gm$a;-><init>()V

    #@5
    return-void
.end method

.method private X(I)Z
    .registers 5

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gh;->em()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->i(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/common/api/a$d;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_24

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@f
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->i(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/common/api/a$d;

    #@12
    move-result-object v0

    #@13
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    #@15
    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@18
    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@1b
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gh;->b(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;

    #@21
    const/4 v0, 0x1

    #@22
    monitor-exit v1

    #@23
    :goto_23
    return v0

    #@24
    :cond_24
    monitor-exit v1

    #@25
    const/4 v0, 0x0

    #@26
    goto :goto_23

    #@27
    :catchall_27
    move-exception v0

    #@28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    #@29
    throw v0
.end method

.method private b(JI)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->h(Lcom/google/android/gms/internal/gh;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->h(Lcom/google/android/gms/internal/gh;)Ljava/util/Map;

    #@c
    move-result-object v0

    #@d
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    #@17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_23

    #@18
    if-eqz v0, :cond_22

    #@1a
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    #@1c
    invoke-direct {v1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@1f
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@22
    :cond_22
    return-void

    #@23
    :catchall_23
    move-exception v0

    #@24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    #@25
    throw v0
.end method


# virtual methods
.method public T(I)V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    invoke-static {}, Lcom/google/android/gms/internal/gh;->ek()Lcom/google/android/gms/internal/gn;

    #@4
    move-result-object v0

    #@5
    const-string v1, "ICastDeviceControllerListener.onDisconnected: %d"

    #@7
    const/4 v2, 0x1

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    aput-object v3, v2, v4

    #@10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@15
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gh;Z)Z

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->b(Lcom/google/android/gms/internal/gh;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@21
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@23
    const/4 v1, 0x0

    #@24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    #@27
    if-eqz p1, :cond_2f

    #@29
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@2b
    const/4 v1, 0x2

    #@2c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gh;->an(I)V

    #@2f
    :cond_2f
    return-void
.end method

.method public U(I)V
    .registers 6

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gh;->el()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->c(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/common/api/a$d;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_26

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@f
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->c(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/common/api/a$d;

    #@12
    move-result-object v0

    #@13
    new-instance v2, Lcom/google/android/gms/internal/gh$a;

    #@15
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    #@17
    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@1a
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gh$a;-><init>(Lcom/google/android/gms/common/api/Status;)V

    #@1d
    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@22
    const/4 v2, 0x0

    #@23
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;

    #@26
    :cond_26
    monitor-exit v1

    #@27
    return-void

    #@28
    :catchall_28
    move-exception v0

    #@29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    #@2a
    throw v0
.end method

.method public V(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gh$1;->X(I)Z

    #@3
    return-void
.end method

.method public W(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gh$1;->X(I)Z

    #@3
    return-void
.end method

.method public a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@7
    invoke-virtual {p1}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gh;Ljava/lang/String;)Ljava/lang/String;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@10
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/gh;->b(Lcom/google/android/gms/internal/gh;Ljava/lang/String;)Ljava/lang/String;

    #@13
    invoke-static {}, Lcom/google/android/gms/internal/gh;->el()Ljava/lang/Object;

    #@16
    move-result-object v6

    #@17
    monitor-enter v6

    #@18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->c(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/common/api/a$d;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_3e

    #@20
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@22
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->c(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/common/api/a$d;

    #@25
    move-result-object v7

    #@26
    new-instance v0, Lcom/google/android/gms/internal/gh$a;

    #@28
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@2e
    move-object v2, p1

    #@2f
    move-object v3, p2

    #@30
    move-object v4, p3

    #@31
    move v5, p4

    #@32
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gh$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    #@35
    invoke-interface {v7, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@38
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@3a
    const/4 v1, 0x0

    #@3b
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;

    #@3e
    :cond_3e
    monitor-exit v6

    #@3f
    return-void

    #@40
    :catchall_40
    move-exception v0

    #@41
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_40

    #@42
    throw v0
.end method

.method public a(Ljava/lang/String;DZ)V
    .registers 8

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gh;->ek()Lcom/google/android/gms/internal/gn;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Deprecated callback: \"onStatusreceived\""

    #@6
    const/4 v2, 0x0

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gms/internal/gh$1;->b(JI)V

    #@4
    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .registers 5

    #@0
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/gh$1;->b(JI)V

    #@3
    return-void
.end method

.method public b(Lcom/google/android/gms/internal/ge;)V
    .registers 5

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gh;->ek()Lcom/google/android/gms/internal/gn;

    #@3
    move-result-object v0

    #@4
    const-string v1, "onApplicationStatusChanged"

    #@6
    const/4 v2, 0x0

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->e(Lcom/google/android/gms/internal/gh;)Landroid/os/Handler;

    #@11
    move-result-object v0

    #@12
    new-instance v1, Lcom/google/android/gms/internal/gh$1$3;

    #@14
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gh$1$3;-><init>(Lcom/google/android/gms/internal/gh$1;Lcom/google/android/gms/internal/ge;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    return-void
.end method

.method public b(Lcom/google/android/gms/internal/gj;)V
    .registers 5

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gh;->ek()Lcom/google/android/gms/internal/gn;

    #@3
    move-result-object v0

    #@4
    const-string v1, "onDeviceStatusChanged"

    #@6
    const/4 v2, 0x0

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->e(Lcom/google/android/gms/internal/gh;)Landroid/os/Handler;

    #@11
    move-result-object v0

    #@12
    new-instance v1, Lcom/google/android/gms/internal/gh$1$2;

    #@14
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gh$1$2;-><init>(Lcom/google/android/gms/internal/gh$1;Lcom/google/android/gms/internal/gj;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    return-void
.end method

.method public b(Ljava/lang/String;[B)V
    .registers 8

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gh;->ek()Lcom/google/android/gms/internal/gn;

    #@3
    move-result-object v0

    #@4
    const-string v1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    #@6
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    const/4 v3, 0x0

    #@a
    aput-object p1, v2, v3

    #@c
    const/4 v3, 0x1

    #@d
    array-length v4, p2

    #@e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v4

    #@12
    aput-object v4, v2, v3

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@17
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gh;->ek()Lcom/google/android/gms/internal/gn;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Receive (type=text, ns=%s) %s"

    #@6
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    const/4 v3, 0x0

    #@a
    aput-object p1, v2, v3

    #@c
    const/4 v3, 0x1

    #@d
    aput-object p2, v2, v3

    #@f
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@14
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->e(Lcom/google/android/gms/internal/gh;)Landroid/os/Handler;

    #@17
    move-result-object v0

    #@18
    new-instance v1, Lcom/google/android/gms/internal/gh$1$4;

    #@1a
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/gh$1$4;-><init>(Lcom/google/android/gms/internal/gh$1;Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@20
    return-void
.end method

.method public onApplicationDisconnected(I)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gh;Ljava/lang/String;)Ljava/lang/String;

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gh;->b(Lcom/google/android/gms/internal/gh;Ljava/lang/String;)Ljava/lang/String;

    #@b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gh$1;->X(I)Z

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@10
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->d(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/cast/Cast$Listener;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_24

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@18
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->e(Lcom/google/android/gms/internal/gh;)Landroid/os/Handler;

    #@1b
    move-result-object v0

    #@1c
    new-instance v1, Lcom/google/android/gms/internal/gh$1$1;

    #@1e
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gh$1$1;-><init>(Lcom/google/android/gms/internal/gh$1;I)V

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@24
    :cond_24
    return-void
.end method
