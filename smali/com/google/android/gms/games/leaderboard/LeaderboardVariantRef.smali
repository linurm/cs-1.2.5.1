.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->iG()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCollection()I
    .registers 2

    #@0
    const-string v0, "collection"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDisplayPlayerRank()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "player_display_rank"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayPlayerScore()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "player_display_score"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNumScores()J
    .registers 3

    #@0
    const-string v0, "total_scores"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    const-wide/16 v0, -0x1

    #@a
    :goto_a
    return-wide v0

    #@b
    :cond_b
    const-string v0, "total_scores"

    #@d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getLong(Ljava/lang/String;)J

    #@10
    move-result-wide v0

    #@11
    goto :goto_a
.end method

.method public getPlayerRank()J
    .registers 3

    #@0
    const-string v0, "player_rank"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    const-wide/16 v0, -0x1

    #@a
    :goto_a
    return-wide v0

    #@b
    :cond_b
    const-string v0, "player_rank"

    #@d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getLong(Ljava/lang/String;)J

    #@10
    move-result-wide v0

    #@11
    goto :goto_a
.end method

.method public getPlayerScoreTag()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "player_score_tag"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRawPlayerScore()J
    .registers 3

    #@0
    const-string v0, "player_raw_score"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    const-wide/16 v0, -0x1

    #@a
    :goto_a
    return-wide v0

    #@b
    :cond_b
    const-string v0, "player_raw_score"

    #@d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getLong(Ljava/lang/String;)J

    #@10
    move-result-wide v0

    #@11
    goto :goto_a
.end method

.method public getTimeSpan()I
    .registers 2

    #@0
    const-string v0, "timespan"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasPlayerInfo()Z
    .registers 2

    #@0
    const-string v0, "player_raw_score"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public iD()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "top_page_token_next"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public iE()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "window_page_token_prev"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public iF()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "window_page_token_next"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public iG()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
