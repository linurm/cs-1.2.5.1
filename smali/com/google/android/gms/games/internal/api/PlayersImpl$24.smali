.class Lcom/google/android/gms/games/internal/api/PlayersImpl$24;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpForGameCategoriesResultImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qh:Ljava/lang/String;


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$24;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$24;->Qh:Ljava/lang/String;

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->n(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V

    #@5
    return-void
.end method
