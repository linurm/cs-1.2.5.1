.class Lcom/google/android/gms/games/internal/api/EventsImpl$3;
.super Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/EventsImpl;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Po:Lcom/google/android/gms/games/internal/api/EventsImpl;

.field final synthetic Pp:Ljava/lang/String;

.field final synthetic Pq:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Ljava/lang/String;I)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->Po:Lcom/google/android/gms/games/internal/api/EventsImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->Pp:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->Pq:I

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;-><init>(Lcom/google/android/gms/games/internal/api/EventsImpl$1;)V

    #@a
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->Pp:Ljava/lang/String;

    #@2
    iget v1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->Pq:I

    #@4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->l(Ljava/lang/String;I)V

    #@7
    return-void
.end method
