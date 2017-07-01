.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboard;


# instance fields
.field private final RG:I

.field private final Ss:Lcom/google/android/gms/games/Game;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    iput p3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->RG:I

    #@5
    new-instance v0, Lcom/google/android/gms/games/GameRef;

    #@7
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->Ss:Lcom/google/android/gms/games/Game;

    #@c
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->iz()Lcom/google/android/gms/games/leaderboard/Leaderboard;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "name"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->Ss:Lcom/google/android/gms/games/Game;

    #@2
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "board_icon_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "board_icon_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLeaderboardId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_leaderboard_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getScoreOrder()I
    .registers 2

    #@0
    const-string v0, "score_order"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVariants()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->RG:I

    #@4
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->RG:I

    #@a
    if-ge v0, v2, :cond_1c

    #@c
    new-instance v2, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;

    #@e
    iget-object v3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@10
    iget v4, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->EC:I

    #@12
    add-int/2addr v4, v0

    #@13
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_8

    #@1c
    :cond_1c
    return-object v1
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public iz()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;-><init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->b(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
