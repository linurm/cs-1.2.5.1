.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadMoreScores(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PI:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic PM:I

.field final synthetic PN:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field final synthetic PO:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->PI:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->PN:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    #@4
    iput p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->PM:I

    #@6
    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->PO:I

    #@8
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->PN:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    #@2
    iget v1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->PM:I

    #@4
    iget v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->PO:I

    #@6
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    #@9
    return-void
.end method
