.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeaderboardMetadataResultImpl"
.end annotation


# instance fields
.field private final NR:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    #@5
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;->NR:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    #@a
    return-void
.end method


# virtual methods
.method public getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;->NR:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    #@2
    return-object v0
.end method
