.class public final Lcom/google/android/gms/maps/model/IndoorLevel;
.super Ljava/lang/Object;


# instance fields
.field private final aaJ:Lcom/google/android/gms/maps/model/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/e;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/maps/model/internal/e;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaJ:Lcom/google/android/gms/maps/model/internal/e;

    #@b
    return-void
.end method


# virtual methods
.method public activate()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaJ:Lcom/google/android/gms/maps/model/internal/e;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->activate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@9
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@c
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorLevel;

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaJ:Lcom/google/android/gms/maps/model/internal/e;

    #@8
    check-cast p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    #@a
    iget-object v1, p1, Lcom/google/android/gms/maps/model/IndoorLevel;->aaJ:Lcom/google/android/gms/maps/model/internal/e;

    #@c
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/e;->a(Lcom/google/android/gms/maps/model/internal/e;)Z
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

.method public getName()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaJ:Lcom/google/android/gms/maps/model/internal/e;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result-object v0

    #@6
    return-object v0

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

.method public getShortName()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaJ:Lcom/google/android/gms/maps/model/internal/e;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->getShortName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result-object v0

    #@6
    return-object v0

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

.method public hashCode()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->aaJ:Lcom/google/android/gms/maps/model/internal/e;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/e;->hashCodeRemote()I
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
