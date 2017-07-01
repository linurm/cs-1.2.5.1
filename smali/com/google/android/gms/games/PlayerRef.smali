.class public final Lcom/google/android/gms/games/PlayerRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# instance fields
.field private final MX:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

.field private final Nh:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    #@4
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .registers 13

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    new-instance v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@5
    invoke-direct {v0, p3}, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@a
    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    #@c
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@e
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/PlayerColumnNames;)V

    #@11
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Nh:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    #@13
    invoke-direct {p0}, Lcom/google/android/gms/games/PlayerRef;->gV()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_70

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@1b
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RY:Ljava/lang/String;

    #@1d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    #@20
    move-result v1

    #@21
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@23
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sb:Ljava/lang/String;

    #@25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    #@28
    move-result v8

    #@29
    new-instance v0, Lcom/google/android/gms/games/PlayerLevel;

    #@2b
    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2d
    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RZ:Ljava/lang/String;

    #@2f
    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@32
    move-result-wide v2

    #@33
    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@35
    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sa:Ljava/lang/String;

    #@37
    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@3a
    move-result-wide v4

    #@3b
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    #@3e
    if-eq v1, v8, :cond_74

    #@40
    new-instance v2, Lcom/google/android/gms/games/PlayerLevel;

    #@42
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@44
    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sa:Ljava/lang/String;

    #@46
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@49
    move-result-wide v4

    #@4a
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@4c
    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sc:Ljava/lang/String;

    #@4e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@51
    move-result-wide v6

    #@52
    move v3, v8

    #@53
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    #@56
    move-object v7, v2

    #@57
    :goto_57
    new-instance v1, Lcom/google/android/gms/games/PlayerLevelInfo;

    #@59
    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@5b
    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RX:Ljava/lang/String;

    #@5d
    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@60
    move-result-wide v2

    #@61
    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@63
    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sd:Ljava/lang/String;

    #@65
    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@68
    move-result-wide v4

    #@69
    move-object v6, v0

    #@6a
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    #@6d
    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->MX:Lcom/google/android/gms/games/PlayerLevelInfo;

    #@6f
    :goto_6f
    return-void

    #@70
    :cond_70
    const/4 v0, 0x0

    #@71
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->MX:Lcom/google/android/gms/games/PlayerLevelInfo;

    #@73
    goto :goto_6f

    #@74
    :cond_74
    move-object v7, v0

    #@75
    goto :goto_57
.end method

.method private gV()Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@3
    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RX:Ljava/lang/String;

    #@5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->ax(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_c

    #@b
    :cond_b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@e
    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RX:Ljava/lang/String;

    #@10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@13
    move-result-wide v2

    #@14
    const-wide/16 v4, -0x1

    #@16
    cmp-long v1, v2, v4

    #@18
    if-eqz v1, :cond_b

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_b
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Lcom/google/android/gms/games/Player;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public gS()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RV:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public gT()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sf:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public gU()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sg:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->ax(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Nh:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    #@e
    goto :goto_b
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RP:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RP:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@7
    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RS:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RT:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RQ:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RR:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RW:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->av(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_14

    #@a
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@c
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RW:Ljava/lang/String;

    #@e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->ax(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_17

    #@14
    :cond_14
    const-wide/16 v0, -0x1

    #@16
    :goto_16
    return-wide v0

    #@17
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@19
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RW:Ljava/lang/String;

    #@1b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@1e
    move-result-wide v0

    #@1f
    goto :goto_16
.end method

.method public getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->MX:Lcom/google/android/gms/games/PlayerLevelInfo;

    #@2
    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RO:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->RU:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Se:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getTitle(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Se:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@7
    return-void
.end method

.method public hasHiResImage()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public hasIconImage()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Lcom/google/android/gms/games/Player;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
