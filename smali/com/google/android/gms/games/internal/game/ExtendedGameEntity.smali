.class public final Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/ExtendedGame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;


# instance fields
.field private final RA:J

.field private final RB:Ljava/lang/String;

.field private final RC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/internal/game/GameBadgeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final RD:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

.field private final Rt:Lcom/google/android/gms/games/GameEntity;

.field private final Ru:I

.field private final Rv:Z

.field private final Rw:I

.field private final Rx:J

.field private final Ry:J

.field private final Rz:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/GameEntity;IZIJJLjava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/GameEntity;",
            "IZIJJ",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/internal/game/GameBadgeEntity;",
            ">;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@7
    iput p3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Ru:I

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rv:Z

    #@b
    iput p5, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rw:I

    #@d
    iput-wide p6, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rx:J

    #@f
    iput-wide p8, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Ry:J

    #@11
    iput-object p10, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rz:Ljava/lang/String;

    #@13
    iput-wide p11, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RA:J

    #@15
    iput-object p13, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RB:Ljava/lang/String;

    #@17
    iput-object p14, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RC:Ljava/util/ArrayList;

    #@19
    iput-object p15, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RD:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@1b
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/game/ExtendedGame;)V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@4
    const/4 v0, 0x2

    #@5
    iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->xM:I

    #@7
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    #@a
    move-result-object v2

    #@b
    if-nez v2, :cond_70

    #@d
    move-object v0, v1

    #@e
    :goto_e
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hR()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Ru:I

    #@16
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hS()Z

    #@19
    move-result v0

    #@1a
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rv:Z

    #@1c
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hT()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rw:I

    #@22
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hU()J

    #@25
    move-result-wide v2

    #@26
    iput-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rx:J

    #@28
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hV()J

    #@2b
    move-result-wide v2

    #@2c
    iput-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Ry:J

    #@2e
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hW()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rz:Ljava/lang/String;

    #@34
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hX()J

    #@37
    move-result-wide v2

    #@38
    iput-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RA:J

    #@3a
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hY()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RB:Ljava/lang/String;

    #@40
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hZ()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@43
    move-result-object v0

    #@44
    if-nez v0, :cond_76

    #@46
    :goto_46
    iput-object v1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RD:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@48
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hQ()Ljava/util/ArrayList;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@4f
    move-result v3

    #@50
    new-instance v0, Ljava/util/ArrayList;

    #@52
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@55
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RC:Ljava/util/ArrayList;

    #@57
    const/4 v0, 0x0

    #@58
    move v1, v0

    #@59
    :goto_59
    if-ge v1, v3, :cond_7c

    #@5b
    iget-object v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RC:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadge;

    #@63
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/game/GameBadge;->freeze()Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@69
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6c
    add-int/lit8 v0, v1, 0x1

    #@6e
    move v1, v0

    #@6f
    goto :goto_59

    #@70
    :cond_70
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    #@72
    invoke-direct {v0, v2}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    #@75
    goto :goto_e

    #@76
    :cond_76
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@78
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    #@7b
    goto :goto_46

    #@7c
    :cond_7c
    return-void
.end method

.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGame;)I
    .registers 5

    #@0
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hR()I

    #@f
    move-result v2

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x2

    #@17
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hS()Z

    #@1a
    move-result v2

    #@1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object v2

    #@1f
    aput-object v2, v0, v1

    #@21
    const/4 v1, 0x3

    #@22
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hT()I

    #@25
    move-result v2

    #@26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v2

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/4 v1, 0x4

    #@2d
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hU()J

    #@30
    move-result-wide v2

    #@31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@34
    move-result-object v2

    #@35
    aput-object v2, v0, v1

    #@37
    const/4 v1, 0x5

    #@38
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hV()J

    #@3b
    move-result-wide v2

    #@3c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v2

    #@40
    aput-object v2, v0, v1

    #@42
    const/4 v1, 0x6

    #@43
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hW()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    aput-object v2, v0, v1

    #@49
    const/4 v1, 0x7

    #@4a
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hX()J

    #@4d
    move-result-wide v2

    #@4e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@51
    move-result-object v2

    #@52
    aput-object v2, v0, v1

    #@54
    const/16 v1, 0x8

    #@56
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hY()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    aput-object v2, v0, v1

    #@5c
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@5f
    move-result v0

    #@60
    return v0
.end method

.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGame;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/internal/game/ExtendedGame;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_b9

    #@9
    check-cast p1, Lcom/google/android/gms/games/internal/game/ExtendedGame;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hR()I

    #@1c
    move-result v2

    #@1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hR()I

    #@24
    move-result v3

    #@25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_6

    #@2f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hS()Z

    #@32
    move-result v2

    #@33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@36
    move-result-object v2

    #@37
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hS()Z

    #@3a
    move-result v3

    #@3b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_6

    #@45
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hT()I

    #@48
    move-result v2

    #@49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hT()I

    #@50
    move-result v3

    #@51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v3

    #@55
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_6

    #@5b
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hU()J

    #@5e
    move-result-wide v2

    #@5f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@62
    move-result-object v2

    #@63
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hU()J

    #@66
    move-result-wide v4

    #@67
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_6

    #@71
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hV()J

    #@74
    move-result-wide v2

    #@75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@78
    move-result-object v2

    #@79
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hV()J

    #@7c
    move-result-wide v4

    #@7d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@80
    move-result-object v3

    #@81
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_6

    #@87
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hW()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hW()Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@92
    move-result v2

    #@93
    if-eqz v2, :cond_6

    #@95
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hX()J

    #@98
    move-result-wide v2

    #@99
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9c
    move-result-object v2

    #@9d
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hX()J

    #@a0
    move-result-wide v4

    #@a1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a4
    move-result-object v3

    #@a5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a8
    move-result v2

    #@a9
    if-eqz v2, :cond_6

    #@ab
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hY()Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hY()Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b6
    move-result v2

    #@b7
    if-eqz v2, :cond_6

    #@b9
    :cond_b9
    move v0, v1

    #@ba
    goto/16 :goto_6
.end method

.method static synthetic aQ(Ljava/lang/String;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aA(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static b(Lcom/google/android/gms/games/internal/game/ExtendedGame;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Game"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "Availability"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hR()I

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
    const-string v1, "Owned"

    #@1e
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hS()Z

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@29
    move-result-object v0

    #@2a
    const-string v1, "AchievementUnlockedCount"

    #@2c
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hT()I

    #@2f
    move-result v2

    #@30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@37
    move-result-object v0

    #@38
    const-string v1, "LastPlayedServerTimestamp"

    #@3a
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hU()J

    #@3d
    move-result-wide v2

    #@3e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@45
    move-result-object v0

    #@46
    const-string v1, "PriceMicros"

    #@48
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hV()J

    #@4b
    move-result-wide v2

    #@4c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@53
    move-result-object v0

    #@54
    const-string v1, "FormattedPrice"

    #@56
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hW()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@5d
    move-result-object v0

    #@5e
    const-string v1, "FullPriceMicros"

    #@60
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hX()J

    #@63
    move-result-wide v2

    #@64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@6b
    move-result-object v0

    #@6c
    const-string v1, "FormattedFullPrice"

    #@6e
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hY()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@75
    move-result-object v0

    #@76
    const-string v1, "Snapshot"

    #@78
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->hZ()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    return-object v0
.end method

.method static synthetic b(Ljava/lang/Integer;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->c(Ljava/lang/Integer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic gR()Ljava/lang/Integer;
    .registers 1

    #@0
    invoke-static {}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->fq()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->ib()Lcom/google/android/gms/games/internal/game/ExtendedGame;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->ia()Lcom/google/android/gms/games/GameEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->xM:I

    #@2
    return v0
.end method

.method public hQ()Ljava/util/ArrayList;
    .registers 3
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
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RC:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public hR()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Ru:I

    #@2
    return v0
.end method

.method public hS()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rv:Z

    #@2
    return v0
.end method

.method public hT()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rw:I

    #@2
    return v0
.end method

.method public hU()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rx:J

    #@2
    return-wide v0
.end method

.method public hV()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Ry:J

    #@2
    return-wide v0
.end method

.method public hW()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rz:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hX()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RA:J

    #@2
    return-wide v0
.end method

.method public hY()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RB:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hZ()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RD:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

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

.method public ia()Lcom/google/android/gms/games/GameEntity;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@2
    return-object v0
.end method

.method public ib()Lcom/google/android/gms/games/internal/game/ExtendedGame;
    .registers 1

    #@0
    return-object p0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
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
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->fr()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_b

    #@7
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;->a(Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;Landroid/os/Parcel;I)V

    #@a
    :cond_a
    return-void

    #@b
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@d
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@10
    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Ru:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rv:Z

    #@17
    if-eqz v0, :cond_54

    #@19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rw:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rx:J

    #@24
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Ry:J

    #@29
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->Rz:Ljava/lang/String;

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@31
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RA:J

    #@33
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@36
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RB:Ljava/lang/String;

    #@38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3b
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RC:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v2

    #@41
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    :goto_44
    if-ge v1, v2, :cond_a

    #@46
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->RC:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@4e
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@51
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_44

    #@54
    :cond_54
    move v0, v1

    #@55
    goto :goto_1a
.end method
