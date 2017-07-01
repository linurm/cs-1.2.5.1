.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


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
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->Ss:Lcom/google/android/gms/games/Game;

    #@a
    iput p3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->RG:I

    #@c
    return-void
.end method


# virtual methods
.method public canRematch()Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getTurnStatus()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x3

    #@6
    if-ne v1, v2, :cond_19

    #@8
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getRematchId()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    if-nez v1, :cond_19

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getParticipants()Ljava/util/ArrayList;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v1

    #@16
    if-le v1, v0, :cond_19

    #@18
    :goto_18
    return v0

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    goto :goto_18
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->freeze()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAutoMatchCriteria()Landroid/os/Bundle;
    .registers 5

    #@0
    const-string v0, "has_automatch_criteria"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    const-string v0, "automatch_min_players"

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    const-string v1, "automatch_max_players"

    #@12
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    #@15
    move-result v1

    #@16
    const-string v2, "automatch_bit_mask"

    #@18
    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getLong(Ljava/lang/String;)J

    #@1b
    move-result-wide v2

    #@1c
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    #@1f
    move-result-object v0

    #@20
    goto :goto_9
.end method

.method public getAvailableAutoMatchSlots()I
    .registers 2

    #@0
    const-string v0, "has_automatch_criteria"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const-string v0, "automatch_max_players"

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    goto :goto_9
.end method

.method public getCreationTimestamp()J
    .registers 3

    #@0
    const-string v0, "creation_timestamp"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "creator_external"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getData()[B
    .registers 2

    #@0
    const-string v0, "data"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getByteArray(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "description"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getDescriptionParticipant()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getDescriptionParticipantId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDescriptionParticipantId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "description_participant_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->Ss:Lcom/google/android/gms/games/Game;

    #@2
    return-object v0
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    #@0
    const-string v0, "last_updated_timestamp"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLastUpdaterId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "last_updater_external"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMatchId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_match_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMatchNumber()I
    .registers 2

    #@0
    const-string v0, "match_number"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getParticipantId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getParticipantIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getParticipantStatus(Ljava/lang/String;)I
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getParticipants()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->RG:I

    #@4
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->RG:I

    #@a
    if-ge v0, v2, :cond_1c

    #@c
    new-instance v2, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    #@e
    iget-object v3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@10
    iget v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->EC:I

    #@12
    add-int/2addr v4, v0

    #@13
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

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

.method public getPendingParticipantId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "pending_participant_external"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPreviousMatchData()[B
    .registers 2

    #@0
    const-string v0, "previous_match_data"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getByteArray(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRematchId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "rematch_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStatus()I
    .registers 2

    #@0
    const-string v0, "status"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTurnStatus()I
    .registers 2

    #@0
    const-string v0, "user_match_status"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVariant()I
    .registers 2

    #@0
    const-string v0, "variant"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVersion()I
    .registers 2

    #@0
    const-string v0, "version"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isLocallyModified()Z
    .registers 2

    #@0
    const-string v0, "upsync_required"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->freeze()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
