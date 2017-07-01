.class public final Lcom/google/android/gms/games/multiplayer/InvitationEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/InvitationEntity$InvitationEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/multiplayer/InvitationEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final NQ:Ljava/lang/String;

.field private final Rt:Lcom/google/android/gms/games/GameEntity;

.field private final SU:J

.field private final SV:I

.field private final SW:Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

.field private final SX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final SY:I

.field private final SZ:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity$InvitationEntityCreatorCompat;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity$InvitationEntityCreatorCompat;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;JILcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/util/ArrayList;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/GameEntity;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            ">;II)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->NQ:Ljava/lang/String;

    #@9
    iput-wide p4, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SU:J

    #@b
    iput p6, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SV:I

    #@d
    iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SW:Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@f
    iput-object p8, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SX:Ljava/util/ArrayList;

    #@11
    iput p9, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SY:I

    #@13
    iput p10, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SZ:I

    #@15
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .registers 9

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->xM:I

    #@6
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    #@8
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getGame()Lcom/google/android/gms/games/Game;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->NQ:Ljava/lang/String;

    #@17
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getCreationTimestamp()J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SU:J

    #@1d
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationType()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SV:I

    #@23
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getVariant()I

    #@26
    move-result v0

    #@27
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SY:I

    #@29
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getAvailableAutoMatchSlots()I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SZ:I

    #@2f
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@32
    move-result-object v0

    #@33
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    const/4 v1, 0x0

    #@38
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getParticipants()Ljava/util/ArrayList;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v5

    #@40
    new-instance v0, Ljava/util/ArrayList;

    #@42
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@45
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SX:Ljava/util/ArrayList;

    #@47
    const/4 v0, 0x0

    #@48
    move v2, v0

    #@49
    :goto_49
    if-ge v2, v5, :cond_6b

    #@4b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    #@51
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v6

    #@59
    if-eqz v6, :cond_5c

    #@5b
    move-object v1, v0

    #@5c
    :cond_5c
    iget-object v6, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SX:Ljava/util/ArrayList;

    #@5e
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->freeze()Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@64
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@67
    add-int/lit8 v0, v2, 0x1

    #@69
    move v2, v0

    #@6a
    goto :goto_49

    #@6b
    :cond_6b
    const-string v0, "Must have a valid inviter!"

    #@6d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Participant;->freeze()Ljava/lang/Object;

    #@73
    move-result-object v0

    #@74
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@76
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SW:Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@78
    return-void
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/Invitation;)I
    .registers 5

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getGame()Lcom/google/android/gms/games/Game;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getCreationTimestamp()J

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
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationType()I

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    aput-object v2, v0, v1

    #@28
    const/4 v1, 0x4

    #@29
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@2c
    move-result-object v2

    #@2d
    aput-object v2, v0, v1

    #@2f
    const/4 v1, 0x5

    #@30
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getParticipants()Ljava/util/ArrayList;

    #@33
    move-result-object v2

    #@34
    aput-object v2, v0, v1

    #@36
    const/4 v1, 0x6

    #@37
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getVariant()I

    #@3a
    move-result v2

    #@3b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v2

    #@3f
    aput-object v2, v0, v1

    #@41
    const/4 v1, 0x7

    #@42
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getAvailableAutoMatchSlots()I

    #@45
    move-result v2

    #@46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v2

    #@4a
    aput-object v2, v0, v1

    #@4c
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@4f
    move-result v0

    #@50
    return v0
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/Invitation;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_9b

    #@9
    check-cast p1, Lcom/google/android/gms/games/multiplayer/Invitation;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getGame()Lcom/google/android/gms/games/Game;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getGame()Lcom/google/android/gms/games/Game;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getCreationTimestamp()J

    #@2a
    move-result-wide v2

    #@2b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getCreationTimestamp()J

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
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationType()I

    #@40
    move-result v2

    #@41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationType()I

    #@48
    move-result v3

    #@49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_6

    #@53
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@56
    move-result-object v2

    #@57
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_6

    #@61
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getParticipants()Ljava/util/ArrayList;

    #@64
    move-result-object v2

    #@65
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getParticipants()Ljava/util/ArrayList;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_6

    #@6f
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getVariant()I

    #@72
    move-result v2

    #@73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@76
    move-result-object v2

    #@77
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getVariant()I

    #@7a
    move-result v3

    #@7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v3

    #@7f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@82
    move-result v2

    #@83
    if-eqz v2, :cond_6

    #@85
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getAvailableAutoMatchSlots()I

    #@88
    move-result v2

    #@89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8c
    move-result-object v2

    #@8d
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getAvailableAutoMatchSlots()I

    #@90
    move-result v3

    #@91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v3

    #@95
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_6

    #@9b
    :cond_9b
    move v0, v1

    #@9c
    goto/16 :goto_6
.end method

.method static synthetic aQ(Ljava/lang/String;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->aA(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static b(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Game"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "InvitationId"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "CreationTimestamp"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getCreationTimestamp()J

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
    const-string v1, "InvitationType"

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationType()I

    #@2b
    move-result v2

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@33
    move-result-object v0

    #@34
    const-string v1, "Inviter"

    #@36
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3d
    move-result-object v0

    #@3e
    const-string v1, "Participants"

    #@40
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getParticipants()Ljava/util/ArrayList;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@47
    move-result-object v0

    #@48
    const-string v1, "Variant"

    #@4a
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getVariant()I

    #@4d
    move-result v2

    #@4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@55
    move-result-object v0

    #@56
    const-string v1, "AvailableAutoMatchSlots"

    #@58
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getAvailableAutoMatchSlots()I

    #@5b
    move-result v2

    #@5c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    return-object v0
.end method

.method static synthetic b(Ljava/lang/Integer;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->c(Ljava/lang/Integer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic gR()Ljava/lang/Integer;
    .registers 1

    #@0
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->fq()Ljava/lang/Integer;

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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAvailableAutoMatchSlots()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SZ:I

    #@2
    return v0
.end method

.method public getCreationTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SU:J

    #@2
    return-wide v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@2
    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->NQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInvitationType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SV:I

    #@2
    return v0
.end method

.method public getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SW:Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@2
    return-object v0
.end method

.method public getParticipants()Ljava/util/ArrayList;
    .registers 3
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
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SX:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public getVariant()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SY:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->xM:I

    #@2
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
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->fr()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;->a(Lcom/google/android/gms/games/multiplayer/InvitationEntity;Landroid/os/Parcel;I)V

    #@9
    :cond_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@c
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->NQ:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SU:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SV:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SW:Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@20
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SX:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v2

    #@29
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    const/4 v0, 0x0

    #@2d
    move v1, v0

    #@2e
    :goto_2e
    if-ge v1, v2, :cond_9

    #@30
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->SX:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@38
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@3b
    add-int/lit8 v0, v1, 0x1

    #@3d
    move v1, v0

    #@3e
    goto :goto_2e
.end method
