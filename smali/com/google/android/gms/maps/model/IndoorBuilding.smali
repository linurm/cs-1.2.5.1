.class public final Lcom/google/android/gms/maps/model/IndoorBuilding;
.super Ljava/lang/Object;


# instance fields
.field private final aaI:Lcom/google/android/gms/maps/model/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/d;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/maps/model/internal/d;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->aaI:Lcom/google/android/gms/maps/model/internal/d;

    #@b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->aaI:Lcom/google/android/gms/maps/model/internal/d;

    #@8
    check-cast p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    #@a
    iget-object v1, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;->aaI:Lcom/google/android/gms/maps/model/internal/d;

    #@c
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/d;->b(Lcom/google/android/gms/maps/model/internal/d;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    #@f
    move-result v0

    #@10
    goto :goto_5

    #@11
    :catch_11
    move-exception v0

    #@12
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@14
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@17
    throw v1
.end method

.method public getActiveLevelIndex()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->aaI:Lcom/google/android/gms/maps/model/internal/d;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/d;->getActiveLevelIndex()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result v0

    #@6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@a
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@d
    throw v1
.end method

.method public getDefaultLevelIndex()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->aaI:Lcom/google/android/gms/maps/model/internal/d;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/d;->getActiveLevelIndex()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result v0

    #@6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@a
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@d
    throw v1
.end method

.method public getLevels()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/IndoorLevel;",
            ">;"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->aaI:Lcom/google/android/gms/maps/model/internal/d;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/d;->getLevels()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Ljava/util/ArrayList;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_33

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/os/IBinder;

    #@1f
    new-instance v3, Lcom/google/android/gms/maps/model/IndoorLevel;

    #@21
    invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/e$a;->bb(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/e;

    #@24
    move-result-object v0

    #@25
    invoke-direct {v3, v0}, Lcom/google/android/gms/maps/model/IndoorLevel;-><init>(Lcom/google/android/gms/maps/model/internal/e;)V

    #@28
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_2c

    #@2b
    goto :goto_13

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@2f
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@32
    throw v1

    #@33
    :cond_33
    return-object v1
.end method

.method public hashCode()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->aaI:Lcom/google/android/gms/maps/model/internal/d;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/d;->hashCodeRemote()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result v0

    #@6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@a
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@d
    throw v1
.end method

.method public isUnderground()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->aaI:Lcom/google/android/gms/maps/model/internal/d;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/d;->isUnderground()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result v0

    #@6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@a
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@d
    throw v1
.end method
