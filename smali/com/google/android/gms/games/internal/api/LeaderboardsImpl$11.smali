.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PJ:Ljava/lang/String;

.field final synthetic PK:I

.field final synthetic PL:I

.field final synthetic PM:I

.field final synthetic Pe:Z

.field final synthetic Ph:Ljava/lang/String;


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 10

    #@0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->Ph:Ljava/lang/String;

    #@2
    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->PJ:Ljava/lang/String;

    #@4
    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->PK:I

    #@6
    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->PL:I

    #@8
    iget v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->PM:I

    #@a
    iget-boolean v7, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->Pe:Z

    #@c
    move-object v0, p1

    #@d
    move-object v1, p0

    #@e
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    #@11
    return-void
.end method
