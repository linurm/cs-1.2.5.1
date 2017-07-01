.class public final Lcom/google/android/gms/games/achievement/AchievementRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public getAchievementId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_achievement_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentSteps()I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_11

    #@7
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@a
    const-string v0, "current_steps"

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_7
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "description"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "description"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getFormattedCurrentSteps()Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_11

    #@7
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@a
    const-string v0, "formatted_current_steps"

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_7
.end method

.method public getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_10

    #@7
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@a
    const-string v0, "formatted_current_steps"

    #@c
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@f
    return-void

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_7
.end method

.method public getFormattedTotalSteps()Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_11

    #@7
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@a
    const-string v0, "formatted_total_steps"

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_7
.end method

.method public getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_10

    #@7
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@a
    const-string v0, "formatted_total_steps"

    #@c
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@f
    return-void

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_7
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    #@0
    const-string v0, "last_updated_timestamp"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "name"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    iget v2, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->EC:I

    #@6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@9
    return-object v0
.end method

.method public getRevealedImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "revealed_icon_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRevealedImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "revealed_icon_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getState()I
    .registers 2

    #@0
    const-string v0, "state"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTotalSteps()I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_11

    #@7
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@a
    const-string v0, "total_steps"

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_7
.end method

.method public getType()I
    .registers 2

    #@0
    const-string v0, "type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUnlockedImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "unlocked_icon_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUnlockedImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "unlocked_icon_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getXpValue()J
    .registers 3

    #@0
    const-string v0, "instance_xp_value"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->av(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    const-string v0, "instance_xp_value"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->ax(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_17

    #@10
    :cond_10
    const-string v0, "definition_xp_value"

    #@12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    #@15
    move-result-wide v0

    #@16
    :goto_16
    return-wide v0

    #@17
    :cond_17
    const-string v0, "instance_xp_value"

    #@19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    #@1c
    move-result-wide v0

    #@1d
    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "AchievementId"

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getAchievementId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "Type"

    #@10
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    #@13
    move-result v2

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "Name"

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@25
    move-result-object v0

    #@26
    const-string v1, "Description"

    #@28
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getDescription()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2f
    move-result-object v0

    #@30
    const-string v1, "UnlockedImageUri"

    #@32
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getUnlockedImageUri()Landroid/net/Uri;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "UnlockedImageUrl"

    #@3c
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getUnlockedImageUrl()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@43
    move-result-object v0

    #@44
    const-string v1, "RevealedImageUri"

    #@46
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getRevealedImageUri()Landroid/net/Uri;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@4d
    move-result-object v0

    #@4e
    const-string v1, "RevealedImageUrl"

    #@50
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getRevealedImageUrl()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@57
    move-result-object v0

    #@58
    const-string v1, "Player"

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getPlayer()Lcom/google/android/gms/games/Player;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@61
    move-result-object v0

    #@62
    const-string v1, "LastUpdatedTimeStamp"

    #@64
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLastUpdatedTimestamp()J

    #@67
    move-result-wide v2

    #@68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    #@73
    move-result v1

    #@74
    const/4 v2, 0x1

    #@75
    if-ne v1, v2, :cond_91

    #@77
    const-string v1, "CurrentSteps"

    #@79
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getCurrentSteps()I

    #@7c
    move-result v2

    #@7d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@84
    const-string v1, "TotalSteps"

    #@86
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getTotalSteps()I

    #@89
    move-result v2

    #@8a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@91
    :cond_91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    return-object v0
.end method
