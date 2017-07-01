.class Lcom/google/android/gms/games/internal/api/PlayersImpl$5;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;->loadRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pe:Z

.field final synthetic Pv:I

.field final synthetic Qd:Lcom/google/android/gms/games/internal/api/PlayersImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl;IZ)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Qd:Lcom/google/android/gms/games/internal/api/PlayersImpl;

    #@2
    iput p2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Pv:I

    #@4
    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Pe:Z

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$1;)V

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
    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 8

    #@0
    const-string v2, "played_with"

    #@2
    iget v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Pv:I

    #@4
    const/4 v4, 0x0

    #@5
    iget-boolean v5, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Pe:Z

    #@7
    move-object v0, p1

    #@8
    move-object v1, p0

    #@9
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V

    #@c
    return-void
.end method
