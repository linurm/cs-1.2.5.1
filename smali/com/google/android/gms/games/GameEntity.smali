.class public final Lcom/google/android/gms/games/GameEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/Game;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/GameEntity$GameEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/GameEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ln:Ljava/lang/String;

.field private final MA:Z

.field private final MB:Z

.field private final MC:Ljava/lang/String;

.field private final MD:Ljava/lang/String;

.field private final ME:Ljava/lang/String;

.field private final MF:Z

.field private final MG:Z

.field private final MH:Z

.field private final Mn:Ljava/lang/String;

.field private final Mo:Ljava/lang/String;

.field private final Mp:Ljava/lang/String;

.field private final Mq:Ljava/lang/String;

.field private final Mr:Landroid/net/Uri;

.field private final Ms:Landroid/net/Uri;

.field private final Mt:Landroid/net/Uri;

.field private final Mu:Z

.field private final Mv:Z

.field private final Mw:Ljava/lang/String;

.field private final Mx:I

.field private final My:I

.field private final Mz:I

.field private final xM:I

.field private final zP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/GameEntity$GameEntityCreatorCompat;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/GameEntity$GameEntityCreatorCompat;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 26

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/GameEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zP:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/GameEntity;->Ln:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/games/GameEntity;->Mn:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/games/GameEntity;->Mo:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/games/GameEntity;->Mp:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/games/GameEntity;->Mq:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/games/GameEntity;->Mr:Landroid/net/Uri;

    #@13
    move-object/from16 v0, p19

    #@15
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->MC:Ljava/lang/String;

    #@17
    iput-object p9, p0, Lcom/google/android/gms/games/GameEntity;->Ms:Landroid/net/Uri;

    #@19
    move-object/from16 v0, p20

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->MD:Ljava/lang/String;

    #@1d
    iput-object p10, p0, Lcom/google/android/gms/games/GameEntity;->Mt:Landroid/net/Uri;

    #@1f
    move-object/from16 v0, p21

    #@21
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->ME:Ljava/lang/String;

    #@23
    iput-boolean p11, p0, Lcom/google/android/gms/games/GameEntity;->Mu:Z

    #@25
    iput-boolean p12, p0, Lcom/google/android/gms/games/GameEntity;->Mv:Z

    #@27
    iput-object p13, p0, Lcom/google/android/gms/games/GameEntity;->Mw:Ljava/lang/String;

    #@29
    iput p14, p0, Lcom/google/android/gms/games/GameEntity;->Mx:I

    #@2b
    move/from16 v0, p15

    #@2d
    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->My:I

    #@2f
    move/from16 v0, p16

    #@31
    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->Mz:I

    #@33
    move/from16 v0, p17

    #@35
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MA:Z

    #@37
    move/from16 v0, p18

    #@39
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MB:Z

    #@3b
    move/from16 v0, p22

    #@3d
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MF:Z

    #@3f
    move/from16 v0, p23

    #@41
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MG:Z

    #@43
    move/from16 v0, p24

    #@45
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MH:Z

    #@47
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Game;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    const/4 v0, 0x4

    #@4
    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->xM:I

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zP:Ljava/lang/String;

    #@c
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mn:Ljava/lang/String;

    #@12
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mo:Ljava/lang/String;

    #@18
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mp:Ljava/lang/String;

    #@1e
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mq:Ljava/lang/String;

    #@24
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Ln:Ljava/lang/String;

    #@2a
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mr:Landroid/net/Uri;

    #@30
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUrl()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->MC:Ljava/lang/String;

    #@36
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Ms:Landroid/net/Uri;

    #@3c
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUrl()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->MD:Ljava/lang/String;

    #@42
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mt:Landroid/net/Uri;

    #@48
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUrl()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->ME:Ljava/lang/String;

    #@4e
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gM()Z

    #@51
    move-result v0

    #@52
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->Mu:Z

    #@54
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gO()Z

    #@57
    move-result v0

    #@58
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->Mv:Z

    #@5a
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gP()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mw:Ljava/lang/String;

    #@60
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gQ()I

    #@63
    move-result v0

    #@64
    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->Mx:I

    #@66
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->My:I

    #@6c
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    #@6f
    move-result v0

    #@70
    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->Mz:I

    #@72
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    #@75
    move-result v0

    #@76
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MA:Z

    #@78
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    #@7b
    move-result v0

    #@7c
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MB:Z

    #@7e
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isMuted()Z

    #@81
    move-result v0

    #@82
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MF:Z

    #@84
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gN()Z

    #@87
    move-result v0

    #@88
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MG:Z

    #@8a
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    #@8d
    move-result v0

    #@8e
    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MH:Z

    #@90
    return-void
.end method

.method static a(Lcom/google/android/gms/games/Game;)I
    .registers 4

    #@0
    const/16 v0, 0x14

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v0, v1

    #@19
    const/4 v1, 0x3

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x4

    #@21
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x5

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    aput-object v2, v0, v1

    #@2e
    const/4 v1, 0x6

    #@2f
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v0, v1

    #@35
    const/4 v1, 0x7

    #@36
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    #@39
    move-result-object v2

    #@3a
    aput-object v2, v0, v1

    #@3c
    const/16 v1, 0x8

    #@3e
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    #@41
    move-result-object v2

    #@42
    aput-object v2, v0, v1

    #@44
    const/16 v1, 0x9

    #@46
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gM()Z

    #@49
    move-result v2

    #@4a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4d
    move-result-object v2

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0xa

    #@52
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gO()Z

    #@55
    move-result v2

    #@56
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@59
    move-result-object v2

    #@5a
    aput-object v2, v0, v1

    #@5c
    const/16 v1, 0xb

    #@5e
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gP()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    aput-object v2, v0, v1

    #@64
    const/16 v1, 0xc

    #@66
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gQ()I

    #@69
    move-result v2

    #@6a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v2

    #@6e
    aput-object v2, v0, v1

    #@70
    const/16 v1, 0xd

    #@72
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    #@75
    move-result v2

    #@76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v2

    #@7a
    aput-object v2, v0, v1

    #@7c
    const/16 v1, 0xe

    #@7e
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    #@81
    move-result v2

    #@82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v2

    #@86
    aput-object v2, v0, v1

    #@88
    const/16 v1, 0xf

    #@8a
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    #@8d
    move-result v2

    #@8e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@91
    move-result-object v2

    #@92
    aput-object v2, v0, v1

    #@94
    const/16 v1, 0x10

    #@96
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    #@99
    move-result v2

    #@9a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9d
    move-result-object v2

    #@9e
    aput-object v2, v0, v1

    #@a0
    const/16 v1, 0x11

    #@a2
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isMuted()Z

    #@a5
    move-result v2

    #@a6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a9
    move-result-object v2

    #@aa
    aput-object v2, v0, v1

    #@ac
    const/16 v1, 0x12

    #@ae
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gN()Z

    #@b1
    move-result v2

    #@b2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b5
    move-result-object v2

    #@b6
    aput-object v2, v0, v1

    #@b8
    const/16 v1, 0x13

    #@ba
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    #@bd
    move-result v2

    #@be
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c1
    move-result-object v2

    #@c2
    aput-object v2, v0, v1

    #@c4
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@c7
    move-result v0

    #@c8
    return v0
.end method

.method static a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/Game;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_176

    #@9
    check-cast p1, Lcom/google/android/gms/games/Game;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_6

    #@43
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_6

    #@51
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_6

    #@5f
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    #@62
    move-result-object v2

    #@63
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    #@66
    move-result-object v3

    #@67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_6

    #@6d
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    #@70
    move-result-object v2

    #@71
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    #@74
    move-result-object v3

    #@75
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_6

    #@7b
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    #@7e
    move-result-object v2

    #@7f
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    #@82
    move-result-object v3

    #@83
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_6

    #@89
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gM()Z

    #@8c
    move-result v2

    #@8d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@90
    move-result-object v2

    #@91
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gM()Z

    #@94
    move-result v3

    #@95
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@98
    move-result-object v3

    #@99
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9c
    move-result v2

    #@9d
    if-eqz v2, :cond_6

    #@9f
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gO()Z

    #@a2
    move-result v2

    #@a3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a6
    move-result-object v2

    #@a7
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gO()Z

    #@aa
    move-result v3

    #@ab
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ae
    move-result-object v3

    #@af
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b2
    move-result v2

    #@b3
    if-eqz v2, :cond_6

    #@b5
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gP()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gP()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c0
    move-result v2

    #@c1
    if-eqz v2, :cond_6

    #@c3
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gQ()I

    #@c6
    move-result v2

    #@c7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca
    move-result-object v2

    #@cb
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gQ()I

    #@ce
    move-result v3

    #@cf
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d2
    move-result-object v3

    #@d3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d6
    move-result v2

    #@d7
    if-eqz v2, :cond_6

    #@d9
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    #@dc
    move-result v2

    #@dd
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e0
    move-result-object v2

    #@e1
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    #@e4
    move-result v3

    #@e5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e8
    move-result-object v3

    #@e9
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@ec
    move-result v2

    #@ed
    if-eqz v2, :cond_6

    #@ef
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    #@f2
    move-result v2

    #@f3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f6
    move-result-object v2

    #@f7
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    #@fa
    move-result v3

    #@fb
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fe
    move-result-object v3

    #@ff
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@102
    move-result v2

    #@103
    if-eqz v2, :cond_6

    #@105
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    #@108
    move-result v2

    #@109
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10c
    move-result-object v2

    #@10d
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    #@110
    move-result v3

    #@111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@114
    move-result-object v3

    #@115
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@118
    move-result v2

    #@119
    if-eqz v2, :cond_6

    #@11b
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    #@11e
    move-result v3

    #@11f
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    #@122
    move-result v2

    #@123
    if-eqz v2, :cond_179

    #@125
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isMuted()Z

    #@128
    move-result v2

    #@129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12c
    move-result-object v2

    #@12d
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isMuted()Z

    #@130
    move-result v4

    #@131
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@134
    move-result-object v4

    #@135
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@138
    move-result v2

    #@139
    if-eqz v2, :cond_179

    #@13b
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->gN()Z

    #@13e
    move-result v2

    #@13f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@142
    move-result-object v2

    #@143
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gN()Z

    #@146
    move-result v4

    #@147
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@14a
    move-result-object v4

    #@14b
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14e
    move-result v2

    #@14f
    if-eqz v2, :cond_179

    #@151
    move v2, v1

    #@152
    :goto_152
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@155
    move-result-object v3

    #@156
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@159
    move-result-object v2

    #@15a
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15d
    move-result v2

    #@15e
    if-eqz v2, :cond_6

    #@160
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    #@163
    move-result v2

    #@164
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@167
    move-result-object v2

    #@168
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    #@16b
    move-result v3

    #@16c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16f
    move-result-object v3

    #@170
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@173
    move-result v2

    #@174
    if-eqz v2, :cond_6

    #@176
    :cond_176
    move v0, v1

    #@177
    goto/16 :goto_6

    #@179
    :cond_179
    move v2, v0

    #@17a
    goto :goto_152
.end method

.method static synthetic aQ(Ljava/lang/String;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->aA(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "ApplicationId"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "DisplayName"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "PrimaryCategory"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@21
    move-result-object v0

    #@22
    const-string v1, "SecondaryCategory"

    #@24
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, "Description"

    #@2e
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@35
    move-result-object v0

    #@36
    const-string v1, "DeveloperName"

    #@38
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3f
    move-result-object v0

    #@40
    const-string v1, "IconImageUri"

    #@42
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@49
    move-result-object v0

    #@4a
    const-string v1, "IconImageUrl"

    #@4c
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUrl()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@53
    move-result-object v0

    #@54
    const-string v1, "HiResImageUri"

    #@56
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@5d
    move-result-object v0

    #@5e
    const-string v1, "HiResImageUrl"

    #@60
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUrl()Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@67
    move-result-object v0

    #@68
    const-string v1, "FeaturedImageUri"

    #@6a
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@71
    move-result-object v0

    #@72
    const-string v1, "FeaturedImageUrl"

    #@74
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUrl()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@7b
    move-result-object v0

    #@7c
    const-string v1, "PlayEnabledGame"

    #@7e
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gM()Z

    #@81
    move-result v2

    #@82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@89
    move-result-object v0

    #@8a
    const-string v1, "InstanceInstalled"

    #@8c
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gO()Z

    #@8f
    move-result v2

    #@90
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@97
    move-result-object v0

    #@98
    const-string v1, "InstancePackageName"

    #@9a
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->gP()Ljava/lang/String;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@a1
    move-result-object v0

    #@a2
    const-string v1, "AchievementTotalCount"

    #@a4
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    #@a7
    move-result v2

    #@a8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@af
    move-result-object v0

    #@b0
    const-string v1, "LeaderboardCount"

    #@b2
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    #@b5
    move-result v2

    #@b6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@bd
    move-result-object v0

    #@be
    const-string v1, "RealTimeMultiplayerEnabled"

    #@c0
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    #@c3
    move-result v2

    #@c4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@cb
    move-result-object v0

    #@cc
    const-string v1, "TurnBasedMultiplayerEnabled"

    #@ce
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    #@d1
    move-result v2

    #@d2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d5
    move-result-object v2

    #@d6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d9
    move-result-object v0

    #@da
    const-string v1, "AreSnapshotsEnabled"

    #@dc
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    #@df
    move-result v2

    #@e0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e3
    move-result-object v2

    #@e4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@e7
    move-result-object v0

    #@e8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@eb
    move-result-object v0

    #@ec
    return-object v0
.end method

.method static synthetic b(Ljava/lang/Integer;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->c(Ljava/lang/Integer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic gR()Ljava/lang/Integer;
    .registers 1

    #@0
    invoke-static {}, Lcom/google/android/gms/games/GameEntity;->fq()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public areSnapshotsEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MH:Z

    #@2
    return v0
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Game;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->freeze()Lcom/google/android/gms/games/Game;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public gM()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->Mu:Z

    #@2
    return v0
.end method

.method public gN()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MG:Z

    #@2
    return v0
.end method

.method public gO()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->Mv:Z

    #@2
    return v0
.end method

.method public gP()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mw:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public gQ()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->Mx:I

    #@2
    return v0
.end method

.method public getAchievementTotalCount()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->My:I

    #@2
    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mp:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getDeveloperName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mq:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDeveloperName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mq:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Ln:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Ln:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getFeaturedImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mt:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getFeaturedImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->ME:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Ms:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->MD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mr:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->MC:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLeaderboardCount()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->Mz:I

    #@2
    return v0
.end method

.method public getPrimaryCategory()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSecondaryCategory()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;)I

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

.method public isMuted()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MF:Z

    #@2
    return v0
.end method

.method public isRealTimeMultiplayerEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MA:Z

    #@2
    return v0
.end method

.method public isTurnBasedMultiplayerEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->MB:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->fr()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_d

    #@9
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/GameEntityCreator;->a(Lcom/google/android/gms/games/GameEntity;Landroid/os/Parcel;I)V

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zP:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Ln:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mn:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mo:Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mp:Ljava/lang/String;

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mq:Ljava/lang/String;

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mr:Landroid/net/Uri;

    #@2d
    if-nez v0, :cond_66

    #@2f
    move-object v0, v1

    #@30
    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Ms:Landroid/net/Uri;

    #@35
    if-nez v0, :cond_6d

    #@37
    move-object v0, v1

    #@38
    :goto_38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3b
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mt:Landroid/net/Uri;

    #@3d
    if-nez v0, :cond_74

    #@3f
    :goto_3f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@42
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->Mu:Z

    #@44
    if-eqz v0, :cond_7b

    #@46
    move v0, v2

    #@47
    :goto_47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->Mv:Z

    #@4c
    if-eqz v0, :cond_7d

    #@4e
    :goto_4e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mw:Ljava/lang/String;

    #@53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@56
    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->Mx:I

    #@58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->My:I

    #@5d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->Mz:I

    #@62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    goto :goto_c

    #@66
    :cond_66
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mr:Landroid/net/Uri;

    #@68
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    goto :goto_30

    #@6d
    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Ms:Landroid/net/Uri;

    #@6f
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    goto :goto_38

    #@74
    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->Mt:Landroid/net/Uri;

    #@76
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    goto :goto_3f

    #@7b
    :cond_7b
    move v0, v3

    #@7c
    goto :goto_47

    #@7d
    :cond_7d
    move v2, v3

    #@7e
    goto :goto_4e
.end method
