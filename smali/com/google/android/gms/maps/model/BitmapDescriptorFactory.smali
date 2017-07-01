.class public final Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f

.field private static aam:Lcom/google/android/gms/maps/model/internal/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static a(Lcom/google/android/gms/maps/model/internal/a;)V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->aam:Lcom/google/android/gms/maps/model/internal/a;

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
    check-cast v0, Lcom/google/android/gms/maps/model/internal/a;

    #@b
    sput-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->aam:Lcom/google/android/gms/maps/model/internal/a;

    #@d
    goto :goto_4
.end method

.method public static defaultMarker()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->jM()Lcom/google/android/gms/maps/model/internal/a;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Lcom/google/android/gms/maps/model/internal/a;->jR()Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V
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

.method public static defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->jM()Lcom/google/android/gms/maps/model/internal/a;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/internal/a;->c(F)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V
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

.method public static fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->jM()Lcom/google/android/gms/maps/model/internal/a;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/internal/a;->bs(Ljava/lang/String;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V
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

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->jM()Lcom/google/android/gms/maps/model/internal/a;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/internal/a;->b(Landroid/graphics/Bitmap;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V
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

.method public static fromFile(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->jM()Lcom/google/android/gms/maps/model/internal/a;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/internal/a;->bt(Ljava/lang/String;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V
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

.method public static fromPath(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->jM()Lcom/google/android/gms/maps/model/internal/a;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/internal/a;->bu(Ljava/lang/String;)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V
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

.method public static fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 3

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->jM()Lcom/google/android/gms/maps/model/internal/a;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/internal/a;->cX(I)Lcom/google/android/gms/dynamic/d;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V
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

.method private static jM()Lcom/google/android/gms/maps/model/internal/a;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->aam:Lcom/google/android/gms/maps/model/internal/a;

    #@2
    const-string v1, "IBitmapDescriptorFactory is not initialized"

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/maps/model/internal/a;

    #@a
    return-object v0
.end method
