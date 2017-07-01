.class Lcom/google/android/gms/games/internal/api/RequestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;->loadRequests(Lcom/google/android/gms/common/api/GoogleApiClient;III)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PE:I

.field final synthetic Qx:Lcom/google/android/gms/games/internal/api/RequestsImpl;

.field final synthetic Qy:I

.field final synthetic Qz:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;III)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qx:Lcom/google/android/gms/games/internal/api/RequestsImpl;

    #@2
    iput p2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qy:I

    #@4
    iput p3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qz:I

    #@6
    iput p4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->PE:I

    #@8
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$1;)V

    #@c
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
    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 5

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qy:I

    #@2
    iget v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qz:I

    #@4
    iget v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->PE:I

    #@6
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;III)V

    #@9
    return-void
.end method
