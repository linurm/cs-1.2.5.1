.class Lcom/google/android/gms/internal/jb$3;
.super Lcom/google/android/gms/internal/jb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jb;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vu:Landroid/app/PendingIntent;

.field final synthetic Vw:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic Vy:Lcom/google/android/gms/internal/jb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/jb$3;->Vy:Lcom/google/android/gms/internal/jb;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/jb$3;->Vw:Lcom/google/android/gms/location/LocationRequest;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/internal/jb$3;->Vu:Landroid/app/PendingIntent;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jb$a;-><init>(Lcom/google/android/gms/internal/jb$1;)V

    #@a
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jb$3;->a(Lcom/google/android/gms/internal/jg;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jb$3;->Vw:Lcom/google/android/gms/location/LocationRequest;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/jb$3;->Vu:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jg;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    #@7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jb$3;->b(Lcom/google/android/gms/common/api/Result;)V

    #@c
    return-void
.end method
