.class public final Lcom/google/android/gms/games/quest/QuestRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quest;


# instance fields
.field private final RG:I

.field private final Ss:Lcom/google/android/gms/games/Game;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    new-instance v0, Lcom/google/android/gms/games/GameRef;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->Ss:Lcom/google/android/gms/games/Game;

    #@a
    iput p3, p0, Lcom/google/android/gms/games/quest/QuestRef;->RG:I

    #@c
    return-void
.end method


# virtual methods
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/quest/QuestEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->freeze()Lcom/google/android/gms/games/quest/Quest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAcceptedTimestamp()J
    .registers 3

    #@0
    const-string v0, "accepted_ts"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getBannerImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "quest_banner_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBannerImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "quest_banner_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentMilestone()Lcom/google/android/gms/games/quest/Milestone;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->iJ()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/quest/Milestone;

    #@b
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "quest_description"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "quest_description"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/quest/QuestRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getEndTimestamp()J
    .registers 3

    #@0
    const-string v0, "quest_end_ts"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->Ss:Lcom/google/android/gms/games/Game;

    #@2
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "quest_icon_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "quest_icon_image_url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    #@0
    const-string v0, "quest_last_updated_ts"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "quest_name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "quest_name"

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/quest/QuestRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getQuestId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_quest_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStartTimestamp()J
    .registers 3

    #@0
    const-string v0, "quest_start_ts"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getState()I
    .registers 2

    #@0
    const-string v0, "quest_state"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getType()I
    .registers 2

    #@0
    const-string v0, "quest_type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public iJ()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/quest/Milestone;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    iget v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->RG:I

    #@4
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/quest/QuestRef;->RG:I

    #@a
    if-ge v0, v2, :cond_1c

    #@c
    new-instance v2, Lcom/google/android/gms/games/quest/MilestoneRef;

    #@e
    iget-object v3, p0, Lcom/google/android/gms/games/quest/QuestRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@10
    iget v4, p0, Lcom/google/android/gms/games/quest/QuestRef;->EC:I

    #@12
    add-int/2addr v4, v0

    #@13
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/quest/MilestoneRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

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

.method public iK()J
    .registers 3

    #@0
    const-string v0, "notification_ts"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public isEndingSoon()Z
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->iK()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    const-wide/32 v4, 0x1b7740

    #@b
    add-long/2addr v2, v4

    #@c
    cmp-long v0, v0, v2

    #@e
    if-gtz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->b(Lcom/google/android/gms/games/quest/Quest;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->freeze()Lcom/google/android/gms/games/quest/Quest;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/quest/QuestEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/QuestEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
