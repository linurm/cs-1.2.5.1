.class public final Lcom/google/android/gms/games/GameRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/Game;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public areSnapshotsEnabled()Z
    .registers 2

    #@0
    const-string v0, "snapshots_enabled"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

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

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameRef;->freeze()Lcom/google/android/gms/games/Game;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public gM()Z
    .registers 2

    #@0
    const-string v0, "play_enabled_game"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public gN()Z
    .registers 2

    #@0
    const-string v0, "identity_sharing_confirmed"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public gO()Z
    .registers 2

    #@0
    const-string v0, "installed"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

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

.method public gP()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "package_name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public gQ()I
    .registers 2

    #@0
    const-string v0, "gameplay_acl_status"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAchievementTotalCount()I
    .registers 2

    #@0
    const-string v0, "achievement_total_count"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_game_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "game_description"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "game_description"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/GameRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getDeveloperName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "developer_name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDeveloperName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "developer_name"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/GameRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "display_name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "display_name"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/GameRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getFeaturedImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "featured_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFeaturedImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "featured_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "game_hi_res_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "game_hi_res_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "game_icon_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "game_icon_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLeaderboardCount()I
    .registers 2

    #@0
    const-string v0, "leaderboard_count"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPrimaryCategory()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "primary_category"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSecondaryCategory()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "secondary_category"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isMuted()Z
    .registers 2

    #@0
    const-string v0, "muted"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRealTimeMultiplayerEnabled()Z
    .registers 2

    #@0
    const-string v0, "real_time_support"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

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

.method public isTurnBasedMultiplayerEnabled()Z
    .registers 2

    #@0
    const-string v0, "turn_based_support"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

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

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameRef;->freeze()Lcom/google/android/gms/games/Game;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
