.class public final Lcom/google/android/gms/games/multiplayer/InvitationRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitation;


# instance fields
.field private final SX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final Ss:Lcom/google/android/gms/games/Game;

.field private final Ta:Lcom/google/android/gms/games/multiplayer/ParticipantRef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 10

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    new-instance v0, Lcom/google/android/gms/games/GameRef;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->Ss:Lcom/google/android/gms/games/Game;

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->SX:Ljava/util/ArrayList;

    #@11
    const-string v0, "external_inviter_id"

    #@13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    const/4 v0, 0x0

    #@18
    const/4 v1, 0x0

    #@19
    move v2, v0

    #@1a
    move-object v0, v1

    #@1b
    :goto_1b
    if-ge v2, p3, :cond_3b

    #@1d
    new-instance v1, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    #@1f
    iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@21
    iget v5, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->EC:I

    #@23
    add-int/2addr v5, v2

    #@24
    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@27
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getParticipantId()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_32

    #@31
    move-object v0, v1

    #@32
    :cond_32
    iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->SX:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    add-int/lit8 v1, v2, 0x1

    #@39
    move v2, v1

    #@3a
    goto :goto_1b

    #@3b
    :cond_3b
    const-string v1, "Must have a valid inviter!"

    #@3d
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    #@43
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->Ta:Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    #@45
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAvailableAutoMatchSlots()I
    .registers 2

    #@0
    const-string v0, "has_automatch_criteria"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getBoolean(Ljava/lang/String;)Z

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    goto :goto_9
.end method

.method public getCreationTimestamp()J
    .registers 5

    #@0
    const-string v0, "creation_timestamp"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    const-string v2, "last_modified_timestamp"

    #@8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getLong(Ljava/lang/String;)J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->Ss:Lcom/google/android/gms/games/Game;

    #@2
    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_invitation_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInvitationType()I
    .registers 2

    #@0
    const-string v0, "type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->Ta:Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    #@2
    return-object v0
.end method

.method public getParticipants()Ljava/util/ArrayList;
    .registers 2
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
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->SX:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getVariant()I
    .registers 2

    #@0
    const-string v0, "variant"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
