.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardScore;


# instance fields
.field private final SG:Lcom/google/android/gms/games/PlayerRef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SG:Lcom/google/android/gms/games/PlayerRef;

    #@a
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->iC()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayRank()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "display_rank"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayRank(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "display_rank"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getDisplayScore()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "display_score"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayScore(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "display_score"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getRank()J
    .registers 3

    #@0
    const-string v0, "rank"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getRawScore()J
    .registers 3

    #@0
    const-string v0, "raw_score"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getScoreHolder()Lcom/google/android/gms/games/Player;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SG:Lcom/google/android/gms/games/PlayerRef;

    #@c
    goto :goto_9
.end method

.method public getScoreHolderDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "default_display_name"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SG:Lcom/google/android/gms/games/PlayerRef;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getDisplayName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_e
.end method

.method public getScoreHolderDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    const-string v0, "default_display_name"

    #@a
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SG:Lcom/google/android/gms/games/PlayerRef;

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerRef;->getDisplayName(Landroid/database/CharArrayBuffer;)V

    #@13
    goto :goto_d
.end method

.method public getScoreHolderHiResImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SG:Lcom/google/android/gms/games/PlayerRef;

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    goto :goto_9
.end method

.method public getScoreHolderHiResImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SG:Lcom/google/android/gms/games/PlayerRef;

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUrl()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    goto :goto_9
.end method

.method public getScoreHolderIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "default_display_image_uri"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SG:Lcom/google/android/gms/games/PlayerRef;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    goto :goto_e
.end method

.method public getScoreHolderIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "default_display_image_url"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SG:Lcom/google/android/gms/games/PlayerRef;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUrl()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_e
.end method

.method public getScoreTag()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "score_tag"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTimestampMillis()J
    .registers 3

    #@0
    const-string v0, "achieved_timestamp"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public iC()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
