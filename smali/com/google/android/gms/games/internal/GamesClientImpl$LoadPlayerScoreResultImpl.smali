.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadPlayerScoreResultImpl"
.end annotation


# instance fields
.field private final Oa:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    #@5
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@8
    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    #@b
    move-result v0

    #@c
    if-lez v0, :cond_1f

    #@e
    const/4 v0, 0x0

    #@f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->freeze()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    #@19
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->Oa:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    :goto_1b
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V

    #@1e
    return-void

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    :try_start_20
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->Oa:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_23

    #@22
    goto :goto_1b

    #@23
    :catchall_23
    move-exception v0

    #@24
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V

    #@27
    throw v0
.end method


# virtual methods
.method public getScore()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->Oa:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    #@2
    return-object v0
.end method
