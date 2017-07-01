.class public final Lcom/google/android/gms/maps/GoogleMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;,
        Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;,
        Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;,
        Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;,
        Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;,
        Lcom/google/android/gms/maps/GoogleMap$a;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_HYBRID:I = 0x4

.field public static final MAP_TYPE_NONE:I = 0x0

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2

.field public static final MAP_TYPE_TERRAIN:I = 0x3


# instance fields
.field private final YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

.field private Za:Lcom/google/android/gms/maps/UiSettings;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    return-void
.end method


# virtual methods
.method public final addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;
    .registers 4

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/Circle;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/internal/b;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Circle;-><init>(Lcom/google/android/gms/maps/model/internal/b;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-object v0

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@f
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@12
    throw v1
.end method

.method public final addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/internal/c;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_e

    #@8
    new-instance v0, Lcom/google/android/gms/maps/model/GroundOverlay;

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/GroundOverlay;-><init>(Lcom/google/android/gms/maps/model/internal/c;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_10

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d

    #@10
    :catch_10
    move-exception v0

    #@11
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@13
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@16
    throw v1
.end method

.method public final addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/internal/f;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_e

    #@8
    new-instance v0, Lcom/google/android/gms/maps/model/Marker;

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_10

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d

    #@10
    :catch_10
    move-exception v0

    #@11
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@13
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@16
    throw v1
.end method

.method public final addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;
    .registers 4

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/Polygon;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/internal/g;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Polygon;-><init>(Lcom/google/android/gms/maps/model/internal/g;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-object v0

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@f
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@12
    throw v1
.end method

.method public final addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;
    .registers 4

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/Polyline;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;-><init>(Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-object v0

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@f
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@12
    throw v1
.end method

.method public final addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/h;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_e

    #@8
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlay;

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/TileOverlay;-><init>(Lcom/google/android/gms/maps/model/internal/h;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_10

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d

    #@10
    :catch_10
    move-exception v0

    #@11
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@13
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@16
    throw v1
.end method

.method public final animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/CameraUpdate;->jn()Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->animateCamera(Lcom/google/android/gms/dynamic/d;)V
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

.method public final animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .registers 7

    #@0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/CameraUpdate;->jn()Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v2

    #@6
    if-nez p3, :cond_d

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    invoke-interface {v1, v2, p2, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->animateCameraWithDurationAndCallback(Lcom/google/android/gms/dynamic/d;ILcom/google/android/gms/maps/internal/b;)V

    #@c
    return-void

    #@d
    :cond_d
    new-instance v0, Lcom/google/android/gms/maps/GoogleMap$a;

    #@f
    invoke-direct {v0, p3}, Lcom/google/android/gms/maps/GoogleMap$a;-><init>(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    goto :goto_9

    #@13
    :catch_13
    move-exception v0

    #@14
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@16
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@19
    throw v1
.end method

.method public final animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .registers 6

    #@0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/CameraUpdate;->jn()Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v2

    #@6
    if-nez p2, :cond_d

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->animateCameraWithCallback(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/internal/b;)V

    #@c
    return-void

    #@d
    :cond_d
    new-instance v0, Lcom/google/android/gms/maps/GoogleMap$a;

    #@f
    invoke-direct {v0, p2}, Lcom/google/android/gms/maps/GoogleMap$a;-><init>(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    goto :goto_9

    #@13
    :catch_13
    move-exception v0

    #@14
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@16
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@19
    throw v1
.end method

.method public final clear()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->clear()V
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

.method public final getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
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

.method public getFocusedBuilding()Lcom/google/android/gms/maps/model/IndoorBuilding;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getFocusedBuilding()Lcom/google/android/gms/maps/model/internal/d;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_e

    #@8
    new-instance v0, Lcom/google/android/gms/maps/model/IndoorBuilding;

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/maps/model/internal/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_10

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d

    #@10
    :catch_10
    move-exception v0

    #@11
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@13
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@16
    throw v1
.end method

.method public final getMapType()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getMapType()I
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

.method public final getMaxZoomLevel()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getMaxZoomLevel()F
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

.method public final getMinZoomLevel()F
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getMinZoomLevel()F
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

.method public final getMyLocation()Landroid/location/Location;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getMyLocation()Landroid/location/Location;
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

.method public final getProjection()Lcom/google/android/gms/maps/Projection;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/Projection;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getProjection()Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/Projection;-><init>(Lcom/google/android/gms/maps/internal/IProjectionDelegate;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-object v0

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@f
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@12
    throw v1
.end method

.method public final getUiSettings()Lcom/google/android/gms/maps/UiSettings;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->Za:Lcom/google/android/gms/maps/UiSettings;

    #@2
    if-nez v0, :cond_11

    #@4
    new-instance v0, Lcom/google/android/gms/maps/UiSettings;

    #@6
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@8
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getUiSettings()Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/UiSettings;-><init>(Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->Za:Lcom/google/android/gms/maps/UiSettings;

    #@11
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->Za:Lcom/google/android/gms/maps/UiSettings;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    return-object v0

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final isBuildingsEnabled()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->isBuildingsEnabled()Z
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

.method public final isIndoorEnabled()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->isIndoorEnabled()Z
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

.method public final isMyLocationEnabled()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->isMyLocationEnabled()Z
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

.method public final isTrafficEnabled()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->isTrafficEnabled()Z
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

.method jp()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    return-object v0
.end method

.method public final moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/CameraUpdate;->jn()Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->moveCamera(Lcom/google/android/gms/dynamic/d;)V
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

.method public final setBuildingsEnabled(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setBuildingsEnabled(Z)V
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

.method public final setIndoorEnabled(Z)Z
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setIndoorEnabled(Z)Z
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

.method public final setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/d;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$13;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$13;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/d;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setLocationSource(Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$6;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$6;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/LocationSource;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setLocationSource(Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setMapType(I)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setMapType(I)V
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

.method public final setMyLocationEnabled(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setMyLocationEnabled(Z)V
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

.method public final setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraChangeListener(Lcom/google/android/gms/maps/internal/e;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$7;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$7;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraChangeListener(Lcom/google/android/gms/maps/internal/e;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/internal/f;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$1;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$1;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/internal/f;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/g;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$12;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$12;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/g;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapClickListener(Lcom/google/android/gms/maps/internal/i;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$8;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$8;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapClickListener(Lcom/google/android/gms/maps/internal/i;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/j;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$4;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$4;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/j;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/k;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$9;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$9;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/k;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/l;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$10;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$10;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/l;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/m;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$11;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$11;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/m;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/internal/n;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$3;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$3;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/internal/n;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-nez p1, :cond_9

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/internal/o;)V

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@b
    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$2;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$2;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/internal/o;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@17
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1a
    throw v1
.end method

.method public final setPadding(IIII)V
    .registers 7

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setPadding(IIII)V
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

.method public final setTrafficEnabled(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setTrafficEnabled(Z)V
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

.method public final snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V

    #@4
    return-void
.end method

.method public final snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
    .registers 6

    #@0
    if-eqz p2, :cond_13

    #@2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    :goto_6
    check-cast v0, Lcom/google/android/gms/dynamic/e;

    #@8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@a
    new-instance v2, Lcom/google/android/gms/maps/GoogleMap$5;

    #@c
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$5;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    #@f
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->snapshot(Lcom/google/android/gms/maps/internal/s;Lcom/google/android/gms/dynamic/d;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_15

    #@12
    return-void

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_6

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@18
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@1b
    throw v1
.end method

.method public final stopAnimation()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->YZ:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->stopAnimation()V
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
