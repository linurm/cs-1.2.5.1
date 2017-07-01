.class public Lcom/google/android/gms/internal/dr;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/dw;",
        ">;"
    }
.end annotation


# instance fields
.field final pV:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@6
    iput p4, p0, Lcom/google/android/gms/internal/dr;->pV:I

    #@8
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
    iget v1, p0, Lcom/google/android/gms/internal/dr;->pV:I

    #@7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->getContext()Landroid/content/Context;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hi;->g(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@12
    return-void
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.ads.service.START"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    #@2
    return-object v0
.end method

.method public bw()Lcom/google/android/gms/internal/dw;
    .registers 2

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/dw;

    #@6
    return-object v0
.end method

.method protected w(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dw;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/dw$a;->y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dw;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dr;->w(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dw;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
