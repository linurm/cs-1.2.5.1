.class Lcom/google/android/gms/internal/jc$3;
.super Lcom/google/android/gms/internal/jc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jc;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VE:Lcom/google/android/gms/internal/jc;

.field final synthetic VH:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc;Ljava/util/List;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/jc$3;->VE:Lcom/google/android/gms/internal/jc;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/jc$3;->VH:Ljava/util/List;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jc$a;-><init>(Lcom/google/android/gms/internal/jc$1;)V

    #@8
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jc$3;->a(Lcom/google/android/gms/internal/jg;)V

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
    new-instance v0, Lcom/google/android/gms/internal/jc$3$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jc$3$1;-><init>(Lcom/google/android/gms/internal/jc$3;)V

    #@5
    iget-object v1, p0, Lcom/google/android/gms/internal/jc$3;->VH:Ljava/util/List;

    #@7
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/jg;->removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V

    #@a
    return-void
.end method
