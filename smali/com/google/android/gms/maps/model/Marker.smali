.class public final Lcom/google/android/gms/maps/model/Marker;
.super Ljava/lang/Object;


# instance fields
.field private final aaO:Lcom/google/android/gms/maps/model/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/f;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/maps/model/internal/f;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/android/gms/maps/model/Marker;

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@8
    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    #@a
    iget-object v1, p1, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@c
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/f;->h(Lcom/google/android/gms/maps/model/internal/f;)Z
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

.method public getAlpha()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getAlpha()F
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

.method public getId()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getId()Ljava/lang/String;
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

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getPosition()Lcom/google/android/gms/maps/model/LatLng;
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

.method public getRotation()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getRotation()F
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

.method public getSnippet()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getSnippet()Ljava/lang/String;
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

.method public getTitle()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getTitle()Ljava/lang/String;
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->hashCodeRemote()I
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

.method public hideInfoWindow()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->hideInfoWindow()V
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

.method public isDraggable()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->isDraggable()Z
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

.method public isFlat()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->isFlat()Z
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

.method public isInfoWindowShown()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->isInfoWindowShown()Z
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

.method public isVisible()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->isVisible()Z
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

.method public remove()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->remove()V
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

.method public setAlpha(F)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setAlpha(F)V
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

.method public setAnchor(FF)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/internal/f;->setAnchor(FF)V
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

.method public setDraggable(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setDraggable(Z)V
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

.method public setFlat(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setFlat(Z)V
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

.method public setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->jn()Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/f;->m(Lcom/google/android/gms/dynamic/d;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@d
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@10
    throw v1
.end method

.method public setInfoWindowAnchor(FF)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/internal/f;->setInfoWindowAnchor(FF)V
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

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
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

.method public setRotation(F)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setRotation(F)V
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

.method public setSnippet(Ljava/lang/String;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setSnippet(Ljava/lang/String;)V
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

.method public setTitle(Ljava/lang/String;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setTitle(Ljava/lang/String;)V
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

.method public setVisible(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setVisible(Z)V
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

.method public showInfoWindow()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Marker;->aaO:Lcom/google/android/gms/maps/model/internal/f;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->showInfoWindow()V
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
