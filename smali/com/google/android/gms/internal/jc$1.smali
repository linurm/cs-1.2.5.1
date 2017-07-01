.class Lcom/google/android/gms/internal/jc$1;
.super Lcom/google/android/gms/internal/jc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jc;->addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VC:Ljava/util/List;

.field final synthetic VD:Landroid/app/PendingIntent;

.field final synthetic VE:Lcom/google/android/gms/internal/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc;Ljava/util/List;Landroid/app/PendingIntent;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/jc$1;->VE:Lcom/google/android/gms/internal/jc;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/jc$1;->VC:Ljava/util/List;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/internal/jc$1;->VD:Landroid/app/PendingIntent;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jc$a;-><init>(Lcom/google/android/gms/internal/jc$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jc$1;->a(Lcom/google/android/gms/internal/jg;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jg;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jc$1$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jc$1$1;-><init>(Lcom/google/android/gms/internal/jc$1;)V

    #@5
    iget-object v1, p0, Lcom/google/android/gms/internal/jc$1;->VC:Ljava/util/List;

    #@7
    iget-object v2, p0, Lcom/google/android/gms/internal/jc$1;->VD:Landroid/app/PendingIntent;

    #@9
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/jg;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    #@c
    return-void
.end method
