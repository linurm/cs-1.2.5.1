.class Lcom/google/android/gms/games/internal/api/PlayersImpl$14;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pe:Z

.field final synthetic Pv:I


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$14;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 5

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$14;->Pv:I

    #@2
    const/4 v1, 0x0

    #@3
    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$14;->Pe:Z

    #@5
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->d(Lcom/google/android/gms/common/api/a$d;IZZ)V

    #@8
    return-void
.end method
