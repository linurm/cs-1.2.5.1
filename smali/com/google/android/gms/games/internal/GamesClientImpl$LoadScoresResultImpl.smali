.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadScoresResultImpl"
.end annotation


# instance fields
.field private final Od:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

.field private final Oe:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    #@0
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    #@5
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@8
    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    #@b
    move-result v0

    #@c
    if-lez v0, :cond_28

    #@e
    const/4 v0, 0x0

    #@f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    #@15
    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Od:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    #@1d
    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    #@20
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    #@22
    invoke-direct {v0, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@25
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Oe:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    #@27
    return-void

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    :try_start_29
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Od:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2c

    #@2b
    goto :goto_1d

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    #@30
    throw v0
.end method


# virtual methods
.method public getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Od:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    #@2
    return-object v0
.end method

.method public getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Oe:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    #@2
    return-object v0
.end method
