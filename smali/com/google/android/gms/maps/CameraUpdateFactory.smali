.class public final Lcom/google/android/gms/maps/CameraUpdateFactory;
.super Ljava/lang/Object;


# static fields
.field private static YY:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/maps/CameraUpdateFactory;->YY:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@2
    if-eqz v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@b
    sput-object v0, Lcom/google/android/gms/maps/CameraUpdateFactory;->YY:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@d
    goto :goto_4
.end method

.method private static jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/maps/CameraUpdateFactory;->YY:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@2
    const-string v1, "CameraUpdateFactory is not initialized"

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@a
    return-object v0
.end method

.method public static newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 4

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 6

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLngBoundsWithSize(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 4

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static scrollBy(FF)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 4

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->scrollBy(FF)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static zoomBy(F)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomBy(F)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 6

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    iget v2, p1, Landroid/graphics/Point;->x:I

    #@8
    iget v3, p1, Landroid/graphics/Point;->y:I

    #@a
    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomByWithFocus(FII)Lcom/google/android/gms/dynamic/d;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    #@11
    return-object v0

    #@12
    :catch_12
    move-exception v0

    #@13
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@15
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@18
    throw v1
.end method

.method public static zoomIn()Lcom/google/android/gms/maps/CameraUpdate;
    .registers 2

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomIn()Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static zoomOut()Lcom/google/android/gms/maps/CameraUpdate;
    .registers 2

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomOut()Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method

.method public static zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/CameraUpdate;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->jo()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->zoomTo(F)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@14
    throw v1
.end method
