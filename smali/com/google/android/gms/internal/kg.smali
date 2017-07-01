.class public Lcom/google/android/gms/internal/kg;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/ke;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    check-cast v5, [Ljava/lang/String;

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
.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const v1, 0x4da6e8

    #@8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kg;->getContext()Landroid/content/Context;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@13
    return-void
.end method

.method public bj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ke;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/ke$a;->bi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ke;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.panorama.service.START"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    #@2
    return-object v0
.end method

.method public synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kg;->bj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ke;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
