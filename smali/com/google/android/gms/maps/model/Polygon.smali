.class public final Lcom/google/android/gms/maps/model/Polygon;
.super Ljava/lang/Object;


# instance fields
.field private final aaW:Lcom/google/android/gms/maps/model/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/g;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/maps/model/internal/g;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/android/gms/maps/model/Polygon;

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@8
    check-cast p1, Lcom/google/android/gms/maps/model/Polygon;

    #@a
    iget-object v1, p1, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@c
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/g;->a(Lcom/google/android/gms/maps/model/internal/g;)Z
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

.method public getFillColor()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getFillColor()I
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

.method public getHoles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getHoles()Ljava/util/List;
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

.method public getId()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getId()Ljava/lang/String;
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

.method public getPoints()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getPoints()Ljava/util/List;
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

.method public getStrokeColor()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getStrokeColor()I
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

.method public getStrokeWidth()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getStrokeWidth()F
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->getZIndex()F
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->hashCodeRemote()I
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

.method public isGeodesic()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->isGeodesic()Z
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->isVisible()Z
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->remove()V
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

.method public setFillColor(I)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setFillColor(I)V
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

.method public setGeodesic(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setGeodesic(Z)V
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

.method public setHoles(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setHoles(Ljava/util/List;)V
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

.method public setPoints(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setPoints(Ljava/util/List;)V
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

.method public setStrokeColor(I)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setStrokeColor(I)V
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

.method public setStrokeWidth(F)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setStrokeWidth(F)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setVisible(Z)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->aaW:Lcom/google/android/gms/maps/model/internal/g;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/g;->setZIndex(F)V
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
