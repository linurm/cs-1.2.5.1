.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
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

.field final synthetic PM:I

.field final synthetic Pe:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;IIIZ)V
    .registers 8

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PI:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PJ:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PK:I

    #@6
    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PL:I

    #@8
    iput p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PM:I

    #@a
    iput-boolean p6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->Pe:Z

    #@c
    const/4 v0, 0x0

    #@d
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

    #@10
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 9

    #@0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PJ:Ljava/lang/String;

    #@2
    iget v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PK:I

    #@4
    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PL:I

    #@6
    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PM:I

    #@8
    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->Pe:Z

    #@a
    move-object v0, p1

    #@b
    move-object v1, p0

    #@c
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IIIZ)V

    #@f
    return-void
.end method
