.class Lcom/google/android/gms/internal/km$4;
.super Lcom/google/android/gms/internal/km$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/km;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic acn:Lcom/google/android/gms/internal/km;

.field final synthetic aco:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/km;Ljava/util/Collection;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/km$4;->acn:Lcom/google/android/gms/internal/km;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/km$4;->aco:Ljava/util/Collection;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/km$a;-><init>(Lcom/google/android/gms/internal/km$1;)V

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
    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/km$4;->a(Lcom/google/android/gms/plus/internal/e;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/km$4;->aco:Ljava/util/Collection;

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Ljava/util/Collection;)V

    #@5
    return-void
.end method
