.class public Lcom/google/android/gms/games/internal/game/ExtendedGameRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/ExtendedGame;


# instance fields
.field private final RE:Lcom/google/android/gms/games/GameRef;

.field private final RF:Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;

.field private final RG:I


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
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->RE:Lcom/google/android/gms/games/GameRef;

    #@a
    iput p3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->RG:I

    #@c
    const-string v0, "external_snapshot_id"

    #@e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->av(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_24

    #@14
    const-string v0, "external_snapshot_id"

    #@16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->ax(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_24

    #@1c
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;

    #@1e
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@21
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->RF:Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;

    #@23
    :goto_23
    return-void

    #@24
    :cond_24
    const/4 v0, 0x0

    #@25
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->RF:Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;

    #@27
    goto :goto_23
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->ib()Lcom/google/android/gms/games/internal/game/ExtendedGame;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->RE:Lcom/google/android/gms/games/GameRef;

    #@2
    return-object v0
.end method

.method public hQ()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/internal/game/GameBadge;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@3
    const-string v2, "badge_title"

    #@5
    iget v3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->EC:I

    #@7
    iget-object v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@9
    iget v5, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->EC:I

    #@b
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@e
    move-result v4

    #@f
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_1b

    #@15
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    :cond_1a
    return-object v0

    #@1b
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    iget v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->RG:I

    #@1f
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@22
    :goto_22
    iget v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->RG:I

    #@24
    if-ge v1, v2, :cond_1a

    #@26
    new-instance v2, Lcom/google/android/gms/games/internal/game/GameBadgeRef;

    #@28
    iget-object v3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@2a
    iget v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->EC:I

    #@2c
    add-int/2addr v4, v1

    #@2d
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_22
.end method

.method public hR()I
    .registers 2

    #@0
    const-string v0, "availability"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hS()Z
    .registers 2

    #@0
    const-string v0, "owned"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->getBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hT()I
    .registers 2

    #@0
    const-string v0, "achievement_unlocked_count"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hU()J
    .registers 3

    #@0
    const-string v0, "last_played_server_time"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public hV()J
    .registers 3

    #@0
    const-string v0, "price_micros"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public hW()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "formatted_price"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hX()J
    .registers 3

    #@0
    const-string v0, "full_price_micros"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->getLong(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public hY()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "formatted_full_price"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hZ()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->RF:Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public ib()Lcom/google/android/gms/games/internal/game/ExtendedGame;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;-><init>(Lcom/google/android/gms/games/internal/game/ExtendedGame;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Lcom/google/android/gms/games/internal/game/ExtendedGame;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->ib()Lcom/google/android/gms/games/internal/game/ExtendedGame;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
