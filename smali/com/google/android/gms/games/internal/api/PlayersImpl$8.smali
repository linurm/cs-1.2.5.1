.class Lcom/google/android/gms/games/internal/api/PlayersImpl$8;
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
.field final synthetic Ph:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$8;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 9

    #@0
    const-string v2, "played_with"

    #@2
    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$8;->Ph:Ljava/lang/String;

    #@4
    iget v4, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$8;->Pv:I

    #@6
    const/4 v5, 0x1

    #@7
    const/4 v6, 0x0

    #@8
    move-object v0, p1

    #@9
    move-object v1, p0

    #@a
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;IZZ)V

    #@d
    return-void
.end method
