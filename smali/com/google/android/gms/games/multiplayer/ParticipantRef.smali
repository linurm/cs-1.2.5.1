.class public final Lcom/google/android/gms/games/multiplayer/ParticipantRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Participant;


# instance fields
.field private final Te:Lcom/google/android/gms/games/PlayerRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->Te:Lcom/google/android/gms/games/PlayerRef;

    #@a
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Participant;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->freeze()Lcom/google/android/gms/games/multiplayer/Participant;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public gW()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "client_address"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCapabilities()I
    .registers 2

    #@0
    const-string v0, "capabilities"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "default_display_name"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->Te:Lcom/google/android/gms/games/PlayerRef;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getDisplayName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_e
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    const-string v0, "default_display_name"

    #@a
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->Te:Lcom/google/android/gms/games/PlayerRef;

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerRef;->getDisplayName(Landroid/database/CharArrayBuffer;)V

    #@13
    goto :goto_d
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "default_display_hi_res_image_uri"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->Te:Lcom/google/android/gms/games/PlayerRef;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    goto :goto_e
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "default_display_hi_res_image_url"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->Te:Lcom/google/android/gms/games/PlayerRef;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUrl()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_e
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "default_display_image_uri"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->Te:Lcom/google/android/gms/games/PlayerRef;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    goto :goto_e
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    const-string v0, "default_display_image_url"

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->Te:Lcom/google/android/gms/games/PlayerRef;

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUrl()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_e
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_participant_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 2

    #@0
    const-string v0, "external_player_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->ax(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->Te:Lcom/google/android/gms/games/PlayerRef;

    #@c
    goto :goto_9
.end method

.method public getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
    .registers 5

    #@0
    const-string v0, "result_type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->ax(Ljava/lang/String;)Z

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
    const-string v0, "result_type"

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getInteger(Ljava/lang/String;)I

    #@f
    move-result v1

    #@10
    const-string v0, "placing"

    #@12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getInteger(Ljava/lang/String;)I

    #@15
    move-result v2

    #@16
    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@18
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getParticipantId()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(Ljava/lang/String;II)V

    #@1f
    goto :goto_9
.end method

.method public getStatus()I
    .registers 2

    #@0
    const-string v0, "player_status"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isConnectedToRoom()Z
    .registers 2

    #@0
    const-string v0, "connected"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getInteger(Ljava/lang/String;)I

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
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->freeze()Lcom/google/android/gms/games/multiplayer/Participant;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
