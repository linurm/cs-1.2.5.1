.class public final Lcom/google/android/gms/games/quest/QuestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/quest/Quest;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/quest/QuestEntityCreator;


# instance fields
.field private final AT:I

.field private final Mp:Ljava/lang/String;

.field private final Rt:Lcom/google/android/gms/games/GameEntity;

.field private final TB:J

.field private final TP:Ljava/lang/String;

.field private final TQ:J

.field private final TR:Landroid/net/Uri;

.field private final TS:Ljava/lang/String;

.field private final TT:J

.field private final TU:Landroid/net/Uri;

.field private final TV:Ljava/lang/String;

.field private final TW:J

.field private final TX:J

.field private final TY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/quest/MilestoneEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mState:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/quest/QuestEntityCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/quest/QuestEntityCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/quest/QuestEntity;->CREATOR:Lcom/google/android/gms/games/quest/QuestEntityCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIILjava/util/ArrayList;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/GameEntity;",
            "Ljava/lang/String;",
            "J",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/quest/MilestoneEntity;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/quest/QuestEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/quest/QuestEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TP:Ljava/lang/String;

    #@9
    iput-wide p4, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TQ:J

    #@b
    iput-object p6, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TR:Landroid/net/Uri;

    #@d
    iput-object p7, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TS:Ljava/lang/String;

    #@f
    iput-object p8, p0, Lcom/google/android/gms/games/quest/QuestEntity;->Mp:Ljava/lang/String;

    #@11
    iput-wide p9, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TT:J

    #@13
    iput-wide p11, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TB:J

    #@15
    iput-object p13, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TU:Landroid/net/Uri;

    #@17
    move-object/from16 v0, p14

    #@19
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TV:Ljava/lang/String;

    #@1b
    move-object/from16 v0, p15

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->mName:Ljava/lang/String;

    #@1f
    move-wide/from16 v0, p16

    #@21
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TW:J

    #@23
    move-wide/from16 v0, p18

    #@25
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TX:J

    #@27
    move/from16 v0, p20

    #@29
    iput v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->mState:I

    #@2b
    move/from16 v0, p21

    #@2d
    iput v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->AT:I

    #@2f
    move-object/from16 v0, p22

    #@31
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TY:Ljava/util/ArrayList;

    #@33
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/quest/Quest;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->xM:I

    #@6
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    #@8
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getGame()Lcom/google/android/gms/games/Game;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TP:Ljava/lang/String;

    #@17
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getAcceptedTimestamp()J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TQ:J

    #@1d
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getDescription()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->Mp:Ljava/lang/String;

    #@23
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUri()Landroid/net/Uri;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TR:Landroid/net/Uri;

    #@29
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUrl()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TS:Ljava/lang/String;

    #@2f
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getEndTimestamp()J

    #@32
    move-result-wide v0

    #@33
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TT:J

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUri()Landroid/net/Uri;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TU:Landroid/net/Uri;

    #@3b
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUrl()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TV:Ljava/lang/String;

    #@41
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getLastUpdatedTimestamp()J

    #@44
    move-result-wide v0

    #@45
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TB:J

    #@47
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->mName:Ljava/lang/String;

    #@4d
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->iK()J

    #@50
    move-result-wide v0

    #@51
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TW:J

    #@53
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getStartTimestamp()J

    #@56
    move-result-wide v0

    #@57
    iput-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TX:J

    #@59
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getState()I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->mState:I

    #@5f
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getType()I

    #@62
    move-result v0

    #@63
    iput v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->AT:I

    #@65
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->iJ()Ljava/util/List;

    #@68
    move-result-object v2

    #@69
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6c
    move-result v3

    #@6d
    new-instance v0, Ljava/util/ArrayList;

    #@6f
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@72
    iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TY:Ljava/util/ArrayList;

    #@74
    const/4 v0, 0x0

    #@75
    move v1, v0

    #@76
    :goto_76
    if-ge v1, v3, :cond_8d

    #@78
    iget-object v4, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TY:Ljava/util/ArrayList;

    #@7a
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Lcom/google/android/gms/games/quest/Milestone;

    #@80
    invoke-interface {v0}, Lcom/google/android/gms/games/quest/Milestone;->freeze()Ljava/lang/Object;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    #@86
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@89
    add-int/lit8 v0, v1, 0x1

    #@8b
    move v1, v0

    #@8c
    goto :goto_76

    #@8d
    :cond_8d
    return-void
.end method

.method static a(Lcom/google/android/gms/games/quest/Quest;)I
    .registers 5

    #@0
    const/16 v0, 0xd

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getGame()Lcom/google/android/gms/games/Game;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getAcceptedTimestamp()J

    #@16
    move-result-wide v2

    #@17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x3

    #@1e
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUri()Landroid/net/Uri;

    #@21
    move-result-object v2

    #@22
    aput-object v2, v0, v1

    #@24
    const/4 v1, 0x4

    #@25
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getDescription()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    aput-object v2, v0, v1

    #@2b
    const/4 v1, 0x5

    #@2c
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getEndTimestamp()J

    #@2f
    move-result-wide v2

    #@30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@33
    move-result-object v2

    #@34
    aput-object v2, v0, v1

    #@36
    const/4 v1, 0x6

    #@37
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUri()Landroid/net/Uri;

    #@3a
    move-result-object v2

    #@3b
    aput-object v2, v0, v1

    #@3d
    const/4 v1, 0x7

    #@3e
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getLastUpdatedTimestamp()J

    #@41
    move-result-wide v2

    #@42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@45
    move-result-object v2

    #@46
    aput-object v2, v0, v1

    #@48
    const/16 v1, 0x8

    #@4a
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->iJ()Ljava/util/List;

    #@4d
    move-result-object v2

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0x9

    #@52
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    aput-object v2, v0, v1

    #@58
    const/16 v1, 0xa

    #@5a
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->iK()J

    #@5d
    move-result-wide v2

    #@5e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@61
    move-result-object v2

    #@62
    aput-object v2, v0, v1

    #@64
    const/16 v1, 0xb

    #@66
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getStartTimestamp()J

    #@69
    move-result-wide v2

    #@6a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6d
    move-result-object v2

    #@6e
    aput-object v2, v0, v1

    #@70
    const/16 v1, 0xc

    #@72
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getState()I

    #@75
    move-result v2

    #@76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v2

    #@7a
    aput-object v2, v0, v1

    #@7c
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@7f
    move-result v0

    #@80
    return v0
.end method

.method static a(Lcom/google/android/gms/games/quest/Quest;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/quest/Quest;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_f1

    #@9
    check-cast p1, Lcom/google/android/gms/games/quest/Quest;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getGame()Lcom/google/android/gms/games/Game;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getGame()Lcom/google/android/gms/games/Game;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getAcceptedTimestamp()J

    #@2a
    move-result-wide v2

    #@2b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getAcceptedTimestamp()J

    #@32
    move-result-wide v4

    #@33
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_6

    #@3d
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUri()Landroid/net/Uri;

    #@40
    move-result-object v2

    #@41
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUri()Landroid/net/Uri;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_6

    #@4b
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getDescription()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getDescription()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_6

    #@59
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getEndTimestamp()J

    #@5c
    move-result-wide v2

    #@5d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@60
    move-result-object v2

    #@61
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getEndTimestamp()J

    #@64
    move-result-wide v4

    #@65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_6

    #@6f
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUri()Landroid/net/Uri;

    #@72
    move-result-object v2

    #@73
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUri()Landroid/net/Uri;

    #@76
    move-result-object v3

    #@77
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_6

    #@7d
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getLastUpdatedTimestamp()J

    #@80
    move-result-wide v2

    #@81
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@84
    move-result-object v2

    #@85
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getLastUpdatedTimestamp()J

    #@88
    move-result-wide v4

    #@89
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8c
    move-result-object v3

    #@8d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@90
    move-result v2

    #@91
    if-eqz v2, :cond_6

    #@93
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->iJ()Ljava/util/List;

    #@96
    move-result-object v2

    #@97
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->iJ()Ljava/util/List;

    #@9a
    move-result-object v3

    #@9b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9e
    move-result v2

    #@9f
    if-eqz v2, :cond_6

    #@a1
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@ac
    move-result v2

    #@ad
    if-eqz v2, :cond_6

    #@af
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->iK()J

    #@b2
    move-result-wide v2

    #@b3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b6
    move-result-object v2

    #@b7
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->iK()J

    #@ba
    move-result-wide v4

    #@bb
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@be
    move-result-object v3

    #@bf
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c2
    move-result v2

    #@c3
    if-eqz v2, :cond_6

    #@c5
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getStartTimestamp()J

    #@c8
    move-result-wide v2

    #@c9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@cc
    move-result-object v2

    #@cd
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getStartTimestamp()J

    #@d0
    move-result-wide v4

    #@d1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d4
    move-result-object v3

    #@d5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d8
    move-result v2

    #@d9
    if-eqz v2, :cond_6

    #@db
    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getState()I

    #@de
    move-result v2

    #@df
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e2
    move-result-object v2

    #@e3
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getState()I

    #@e6
    move-result v3

    #@e7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ea
    move-result-object v3

    #@eb
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_6

    #@f1
    :cond_f1
    move v0, v1

    #@f2
    goto/16 :goto_6
.end method

.method static b(Lcom/google/android/gms/games/quest/Quest;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Game"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "QuestId"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "AcceptedTimestamp"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getAcceptedTimestamp()J

    #@1d
    move-result-wide v2

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@25
    move-result-object v0

    #@26
    const-string v1, "BannerImageUri"

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUri()Landroid/net/Uri;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2f
    move-result-object v0

    #@30
    const-string v1, "BannerImageUrl"

    #@32
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUrl()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "Description"

    #@3c
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getDescription()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@43
    move-result-object v0

    #@44
    const-string v1, "EndTimestamp"

    #@46
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getEndTimestamp()J

    #@49
    move-result-wide v2

    #@4a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@51
    move-result-object v0

    #@52
    const-string v1, "IconImageUri"

    #@54
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUri()Landroid/net/Uri;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@5b
    move-result-object v0

    #@5c
    const-string v1, "IconImageUrl"

    #@5e
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUrl()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@65
    move-result-object v0

    #@66
    const-string v1, "LastUpdatedTimestamp"

    #@68
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getLastUpdatedTimestamp()J

    #@6b
    move-result-wide v2

    #@6c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@73
    move-result-object v0

    #@74
    const-string v1, "Milestones"

    #@76
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->iJ()Ljava/util/List;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@7d
    move-result-object v0

    #@7e
    const-string v1, "Name"

    #@80
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@87
    move-result-object v0

    #@88
    const-string v1, "NotifyTimestamp"

    #@8a
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->iK()J

    #@8d
    move-result-wide v2

    #@8e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@95
    move-result-object v0

    #@96
    const-string v1, "StartTimestamp"

    #@98
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getStartTimestamp()J

    #@9b
    move-result-wide v2

    #@9c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@a3
    move-result-object v0

    #@a4
    const-string v1, "State"

    #@a6
    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Quest;->getState()I

    #@a9
    move-result v2

    #@aa
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b1
    move-result-object v0

    #@b2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@b5
    move-result-object v0

    #@b6
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/quest/Quest;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->freeze()Lcom/google/android/gms/games/quest/Quest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAcceptedTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TQ:J

    #@2
    return-wide v0
.end method

.method public getBannerImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TR:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getBannerImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrentMilestone()Lcom/google/android/gms/games/quest/Milestone;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->iJ()Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->Mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->Mp:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getEndTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TT:J

    #@2
    return-wide v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@2
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TU:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TV:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TB:J

    #@2
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getQuestId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStartTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TX:J

    #@2
    return-wide v0
.end method

.method public getState()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->mState:I

    #@2
    return v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->AT:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->xM:I

    #@2
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
    .registers 3
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
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TY:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public iK()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TW:J

    #@2
    return-wide v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isEndingSoon()Z
    .registers 7

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/quest/QuestEntity;->TW:J

    #@2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    const-wide/32 v4, 0x1b7740

    #@9
    add-long/2addr v2, v4

    #@a
    cmp-long v0, v0, v2

    #@c
    if-gtz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
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
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/quest/QuestEntityCreator;->a(Lcom/google/android/gms/games/quest/QuestEntity;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
