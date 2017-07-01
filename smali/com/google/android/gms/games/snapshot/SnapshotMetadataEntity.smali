.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;


# instance fields
.field private final HY:Ljava/lang/String;

.field private final Mp:Ljava/lang/String;

.field private final NK:Ljava/lang/String;

.field private final Rt:Lcom/google/android/gms/games/GameEntity;

.field private final Uh:Landroid/net/Uri;

.field private final Ul:Lcom/google/android/gms/games/PlayerEntity;

.field private final Um:Ljava/lang/String;

.field private final Un:J

.field private final Uo:J

.field private final Up:F

.field private final Uq:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/GameEntity;Lcom/google/android/gms/games/PlayerEntity;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFLjava/lang/String;)V
    .registers 16

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Ul:Lcom/google/android/gms/games/PlayerEntity;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->NK:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uh:Landroid/net/Uri;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Um:Ljava/lang/String;

    #@f
    iput p13, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Up:F

    #@11
    iput-object p7, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->HY:Ljava/lang/String;

    #@13
    iput-object p8, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Mp:Ljava/lang/String;

    #@15
    iput-wide p9, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Un:J

    #@17
    iput-wide p11, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uo:J

    #@19
    iput-object p14, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uq:Ljava/lang/String;

    #@1b
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x3

    #@4
    iput v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->xM:I

    #@6
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    #@8
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@11
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    #@13
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Ul:Lcom/google/android/gms/games/PlayerEntity;

    #@1c
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->NK:Ljava/lang/String;

    #@22
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uh:Landroid/net/Uri;

    #@28
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUrl()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Um:Ljava/lang/String;

    #@2e
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    #@31
    move-result v0

    #@32
    iput v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Up:F

    #@34
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getTitle()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->HY:Ljava/lang/String;

    #@3a
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Mp:Ljava/lang/String;

    #@40
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    #@43
    move-result-wide v0

    #@44
    iput-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Un:J

    #@46
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    #@49
    move-result-wide v0

    #@4a
    iput-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uo:J

    #@4c
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uq:Ljava/lang/String;

    #@52
    return-void
.end method

.method static a(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)I
    .registers 5

    #@0
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    #@f
    move-result-object v2

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v0, v1

    #@19
    const/4 v1, 0x3

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x4

    #@21
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    #@24
    move-result v2

    #@25
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@28
    move-result-object v2

    #@29
    aput-object v2, v0, v1

    #@2b
    const/4 v1, 0x5

    #@2c
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getTitle()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    aput-object v2, v0, v1

    #@32
    const/4 v1, 0x6

    #@33
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    aput-object v2, v0, v1

    #@39
    const/4 v1, 0x7

    #@3a
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    #@3d
    move-result-wide v2

    #@3e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@41
    move-result-object v2

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0x8

    #@46
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    #@49
    move-result-wide v2

    #@4a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4d
    move-result-object v2

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0x9

    #@52
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    aput-object v2, v0, v1

    #@58
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@5b
    move-result v0

    #@5c
    return v0
.end method

.method static a(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_af

    #@9
    check-cast p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    #@38
    move-result-object v2

    #@39
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_6

    #@43
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    #@46
    move-result v2

    #@47
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4a
    move-result-object v2

    #@4b
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    #@4e
    move-result v3

    #@4f
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@52
    move-result-object v3

    #@53
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_6

    #@59
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getTitle()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getTitle()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_6

    #@67
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_6

    #@75
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    #@78
    move-result-wide v2

    #@79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7c
    move-result-object v2

    #@7d
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    #@80
    move-result-wide v4

    #@81
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@84
    move-result-object v3

    #@85
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_6

    #@8b
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    #@8e
    move-result-wide v2

    #@8f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@92
    move-result-object v2

    #@93
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    #@96
    move-result-wide v4

    #@97
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9a
    move-result-object v3

    #@9b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9e
    move-result v2

    #@9f
    if-eqz v2, :cond_6

    #@a1
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@ac
    move-result v2

    #@ad
    if-eqz v2, :cond_6

    #@af
    :cond_af
    move v0, v1

    #@b0
    goto/16 :goto_6
.end method

.method static b(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Game"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "Owner"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "SnapshotId"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@21
    move-result-object v0

    #@22
    const-string v1, "CoverImageUri"

    #@24
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, "CoverImageUrl"

    #@2e
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUrl()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@35
    move-result-object v0

    #@36
    const-string v1, "CoverImageAspectRatio"

    #@38
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    #@3b
    move-result v2

    #@3c
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@43
    move-result-object v0

    #@44
    const-string v1, "Description"

    #@46
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@4d
    move-result-object v0

    #@4e
    const-string v1, "LastModifiedTimestamp"

    #@50
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    #@53
    move-result-wide v2

    #@54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@5b
    move-result-object v0

    #@5c
    const-string v1, "PlayedTime"

    #@5e
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    #@61
    move-result-wide v2

    #@62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@69
    move-result-object v0

    #@6a
    const-string v1, "UniqueName"

    #@6c
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->freeze()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCoverImageAspectRatio()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Up:F

    #@2
    return v0
.end method

.method public getCoverImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uh:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getCoverImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Um:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Mp:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@2
    return-object v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Un:J

    #@2
    return-wide v0
.end method

.method public getOwner()Lcom/google/android/gms/games/Player;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Ul:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    return-object v0
.end method

.method public getPlayedTime()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uo:J

    #@2
    return-wide v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->NK:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->HY:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->Uq:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)I

    #@3
    move-result v0

    #@4
    return v0
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
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->b(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
