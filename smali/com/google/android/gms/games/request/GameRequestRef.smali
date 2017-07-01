.class public final Lcom/google/android/gms/games/request/GameRequestRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/request/GameRequest;


# instance fields
.field private final RG:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    iput p3, p0, Lcom/google/android/gms/games/request/GameRequestRef;->RG:I

    #@5
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/request/GameRequest;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/request/GameRequestEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/request/GameRequestEntity;-><init>(Lcom/google/android/gms/games/request/GameRequest;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestRef;->freeze()Lcom/google/android/gms/games/request/GameRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCreationTimestamp()J
    .registers 3

    #@0
    const-string v0, "creation_timestamp"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/GameRequestRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getData()[B
    .registers 2

    #@0
    const-string v0, "data"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/GameRequestRef;->getByteArray(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExpirationTimestamp()J
    .registers 3

    #@0
    const-string v0, "expiration_timestamp"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/GameRequestRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/games/GameRef;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    iget v2, p0, Lcom/google/android/gms/games/request/GameRequestRef;->EC:I

    #@6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@9
    return-object v0
.end method

.method public getRecipientStatus(Ljava/lang/String;)I
    .registers 6

    #@0
    iget v0, p0, Lcom/google/android/gms/games/request/GameRequestRef;->EC:I

    #@2
    :goto_2
    iget v1, p0, Lcom/google/android/gms/games/request/GameRequestRef;->EC:I

    #@4
    iget v2, p0, Lcom/google/android/gms/games/request/GameRequestRef;->RG:I

    #@6
    add-int/2addr v1, v2

    #@7
    if-ge v0, v1, :cond_29

    #@9
    iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@b
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@e
    move-result v1

    #@f
    iget-object v2, p0, Lcom/google/android/gms/games/request/GameRequestRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@11
    const-string v3, "recipient_external_player_id"

    #@13
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_26

    #@1d
    iget-object v2, p0, Lcom/google/android/gms/games/request/GameRequestRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@1f
    const-string v3, "recipient_status"

    #@21
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    #@24
    move-result v0

    #@25
    :goto_25
    return v0

    #@26
    :cond_26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_2

    #@29
    :cond_29
    const/4 v0, -0x1

    #@2a
    goto :goto_25
.end method

.method public getRecipients()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/Player;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    iget v0, p0, Lcom/google/android/gms/games/request/GameRequestRef;->RG:I

    #@4
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/request/GameRequestRef;->RG:I

    #@a
    if-ge v0, v2, :cond_1e

    #@c
    new-instance v2, Lcom/google/android/gms/games/PlayerRef;

    #@e
    iget-object v3, p0, Lcom/google/android/gms/games/request/GameRequestRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@10
    iget v4, p0, Lcom/google/android/gms/games/request/GameRequestRef;->EC:I

    #@12
    add-int/2addr v4, v0

    #@13
    const-string v5, "recipient_"

    #@15
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    #@18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    return-object v1
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_request_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/GameRequestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSender()Lcom/google/android/gms/games/Player;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestRef;->eV()I

    #@7
    move-result v2

    #@8
    const-string v3, "sender_"

    #@a
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    #@d
    return-object v0
.end method

.method public getStatus()I
    .registers 2

    #@0
    const-string v0, "status"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/GameRequestRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getType()I
    .registers 2

    #@0
    const-string v0, "type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/GameRequestRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isConsumed(Ljava/lang/String;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/request/GameRequestRef;->getRecipientStatus(Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_8

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->c(Lcom/google/android/gms/games/request/GameRequest;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestRef;->freeze()Lcom/google/android/gms/games/request/GameRequest;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/request/GameRequestEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/request/GameRequestEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
