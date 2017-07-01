.class public Lcom/google/android/gms/internal/fx;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/fu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    new-array v5, v0, [Ljava/lang/String;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@b
    return-void
.end method


# virtual methods
.method protected C(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fu;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/fu$a;->A(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const v0, 0x4da6e8

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/hi;->b(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@e
    return-void
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    #@2
    return-object v0
.end method

.method public dR()Lcom/google/android/gms/internal/fu;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/fu;

    #@6
    return-object v0
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx;->C(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
