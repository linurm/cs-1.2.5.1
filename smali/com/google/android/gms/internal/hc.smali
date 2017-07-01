.class public final Lcom/google/android/gms/internal/hc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hc$a;,
        Lcom/google/android/gms/internal/hc$b;
    }
.end annotation


# instance fields
.field private final Gp:Lcom/google/android/gms/internal/hc$b;

.field private final Gq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field final Gr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private Gs:Z

.field private final Gt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/hc$b;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/hc;->Gr:Ljava/util/ArrayList;

    #@11
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hc;->Gs:Z

    #@14
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@1b
    iput-object p3, p0, Lcom/google/android/gms/internal/hc;->Gp:Lcom/google/android/gms/internal/hc$b;

    #@1d
    new-instance v0, Lcom/google/android/gms/internal/hc$a;

    #@1f
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/hc$a;-><init>(Lcom/google/android/gms/internal/hc;Landroid/os/Looper;)V

    #@22
    iput-object v0, p0, Lcom/google/android/gms/internal/hc;->mHandler:Landroid/os/Handler;

    #@24
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hc;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hc$b;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gp:Lcom/google/android/gms/internal/hc$b;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@8
    monitor-enter v1

    #@9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@d
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_39

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    #@20
    iget-object v3, p0, Lcom/google/android/gms/internal/hc;->Gp:Lcom/google/android/gms/internal/hc$b;

    #@22
    invoke-interface {v3}, Lcom/google/android/gms/internal/hc$b;->eO()Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_2a

    #@28
    monitor-exit v1

    #@29
    :goto_29
    return-void

    #@2a
    :cond_2a
    iget-object v3, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_14

    #@32
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    #@35
    goto :goto_14

    #@36
    :catchall_36
    move-exception v0

    #@37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    #@38
    throw v0

    #@39
    :cond_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    #@3a
    goto :goto_29
.end method

.method public ao(I)V
    .registers 6

    #@0
    const/4 v1, 0x1

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@8
    monitor-enter v1

    #@9
    const/4 v0, 0x1

    #@a
    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hc;->Gs:Z

    #@c
    new-instance v0, Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@10
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2b

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    #@23
    iget-object v3, p0, Lcom/google/android/gms/internal/hc;->Gp:Lcom/google/android/gms/internal/hc$b;

    #@25
    invoke-interface {v3}, Lcom/google/android/gms/internal/hc$b;->eO()Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_30

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hc;->Gs:Z

    #@2e
    monitor-exit v1

    #@2f
    return-void

    #@30
    :cond_30
    iget-object v3, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_17

    #@38
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    #@3b
    goto :goto_17

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3c

    #@3e
    throw v0
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    iget-object v3, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@4
    monitor-enter v3

    #@5
    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/hc;->Gs:Z

    #@7
    if-nez v2, :cond_52

    #@9
    move v2, v0

    #@a
    :goto_a
    invoke-static {v2}, Lcom/google/android/gms/internal/hm;->A(Z)V

    #@d
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v4, 0x1

    #@10
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    const/4 v2, 0x1

    #@14
    iput-boolean v2, p0, Lcom/google/android/gms/internal/hc;->Gs:Z

    #@16
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->Gr:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_54

    #@1e
    :goto_1e
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->A(Z)V

    #@21
    new-instance v0, Ljava/util/ArrayList;

    #@23
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v1

    #@2c
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_48

    #@32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    #@38
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->Gp:Lcom/google/android/gms/internal/hc$b;

    #@3a
    invoke-interface {v2}, Lcom/google/android/gms/internal/hc$b;->eO()Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_48

    #@40
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->Gp:Lcom/google/android/gms/internal/hc$b;

    #@42
    invoke-interface {v2}, Lcom/google/android/gms/internal/hc$b;->isConnected()Z

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_56

    #@48
    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gr:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@4d
    const/4 v0, 0x0

    #@4e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hc;->Gs:Z

    #@50
    monitor-exit v3

    #@51
    return-void

    #@52
    :cond_52
    move v2, v1

    #@53
    goto :goto_a

    #@54
    :cond_54
    move v0, v1

    #@55
    goto :goto_1e

    #@56
    :cond_56
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->Gr:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5b
    move-result v2

    #@5c
    if-nez v2, :cond_2c

    #@5e
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    #@61
    goto :goto_2c

    #@62
    :catchall_62
    move-exception v0

    #@63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    #@64
    throw v0
.end method

.method protected cp()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gp:Lcom/google/android/gms/internal/hc$b;

    #@5
    invoke-interface {v0}, Lcom/google/android/gms/internal/hc$b;->ef()Landroid/os/Bundle;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hc;->c(Landroid/os/Bundle;)V

    #@c
    monitor-exit v1

    #@d
    return-void

    #@e
    :catchall_e
    move-exception v0

    #@f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    #@10
    throw v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_e
    move-exception v0

    #@f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    #@10
    throw v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_e
    move-exception v0

    #@f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    #@10
    throw v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 6

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_42

    #@e
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "GmsClientEvents"

    #@15
    const-string v3, "registerConnectionCallbacks(): listener "

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string v3, " is already registered"

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_48

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gp:Lcom/google/android/gms/internal/hc$b;

    #@2f
    invoke-interface {v0}, Lcom/google/android/gms/internal/hc$b;->isConnected()Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_41

    #@35
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->mHandler:Landroid/os/Handler;

    #@37
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->mHandler:Landroid/os/Handler;

    #@39
    const/4 v2, 0x1

    #@3a
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@41
    :cond_41
    return-void

    #@42
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_2c

    #@48
    :catchall_48
    move-exception v0

    #@49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_48

    #@4a
    throw v0
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 6

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2e

    #@e
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "GmsClientEvents"

    #@15
    const-string v3, "registerConnectionFailedListener(): listener "

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string v3, " is already registered"

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    :goto_2c
    monitor-exit v1

    #@2d
    return-void

    #@2e
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_2c

    #@34
    :catchall_34
    move-exception v0

    #@35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    #@36
    throw v0
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 6

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@8
    if-eqz v0, :cond_30

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gq:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_32

    #@12
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "GmsClientEvents"

    #@19
    const-string v3, "unregisterConnectionCallbacks(): listener "

    #@1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v3, " not found"

    #@25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    :cond_30
    :goto_30
    monitor-exit v1

    #@31
    return-void

    #@32
    :cond_32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hc;->Gs:Z

    #@34
    if-eqz v0, :cond_30

    #@36
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gr:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_30

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3c

    #@3e
    throw v0
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 6

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@8
    if-eqz v0, :cond_30

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->Gt:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_30

    #@12
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "GmsClientEvents"

    #@19
    const-string v3, "unregisterConnectionFailedListener(): listener "

    #@1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v3, " not found"

    #@25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    :cond_30
    monitor-exit v1

    #@31
    return-void

    #@32
    :catchall_32
    move-exception v0

    #@33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    #@34
    throw v0
.end method
