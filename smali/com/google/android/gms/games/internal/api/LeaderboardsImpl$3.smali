.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PI:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic PJ:Ljava/lang/String;

.field final synthetic PK:I

.field final synthetic PL:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;II)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PI:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PJ:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PK:I

    #@6
    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PL:I

    #@8
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 8

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PJ:Ljava/lang/String;

    #@3
    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PK:I

    #@5
    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PL:I

    #@7
    move-object v0, p1

    #@8
    move-object v1, p0

    #@9
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;II)V

    #@c
    return-void
.end method
