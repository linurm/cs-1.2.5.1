.class public final Lcom/google/android/gms/maps/MapsInitializer;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static a(Lcom/google/android/gms/maps/internal/c;)V
    .registers 3

    #@0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/c;->jH()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->a(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V

    #@7
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/c;->jI()Lcom/google/android/gms/maps/model/internal/a;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->a(Lcom/google/android/gms/maps/model/internal/a;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@12
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@15
    throw v1
.end method

.method public static initialize(Landroid/content/Context;)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/u;->H(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;
    :try_end_6
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_3 .. :try_end_6} :catch_c

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->a(Lcom/google/android/gms/maps/internal/c;)V

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :catch_c
    move-exception v0

    #@d
    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    #@f
    goto :goto_b
.end method
