.class public final Lcom/google/android/gms/maps/model/GroundOverlay;
.super Ljava/lang/Object;


# instance fields
.field private final aaz:Lcom/google/android/gms/maps/model/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/c;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/maps/model/internal/c;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/android/gms/maps/model/GroundOverlay;

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@8
    check-cast p1, Lcom/google/android/gms/maps/model/GroundOverlay;

    #@a
    iget-object v1, p1, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@c
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/c;->a(Lcom/google/android/gms/maps/model/internal/c;)Z
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

.method public getBearing()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getBearing()F
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

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
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

.method public getHeight()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getHeight()F
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getId()Ljava/lang/String;
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getPosition()Lcom/google/android/gms/maps/model/LatLng;
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

.method public getTransparency()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getTransparency()F
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

.method public getWidth()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getWidth()F
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

.method public getZIndex()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->getZIndex()F
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

.method public hashCode()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->hashCodeRemote()I
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->isVisible()Z
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->remove()V
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

.method public setBearing(F)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setBearing(F)V
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

.method public setDimensions(F)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setDimensions(F)V
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

.method public setDimensions(FF)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/internal/c;->a(FF)V
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

.method public setImage(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->jn()Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/c;->l(Lcom/google/android/gms/dynamic/d;)V
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

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
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

.method public setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
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

.method public setTransparency(F)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setTransparency(F)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setVisible(Z)V
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

.method public setZIndex(F)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->aaz:Lcom/google/android/gms/maps/model/internal/c;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/c;->setZIndex(F)V
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
