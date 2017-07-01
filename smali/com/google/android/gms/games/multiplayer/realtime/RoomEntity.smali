.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/Room;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity$RoomEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Mp:Ljava/lang/String;

.field private final NS:Ljava/lang/String;

.field private final SU:J

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

.field private final To:Landroid/os/Bundle;

.field private final Ts:Ljava/lang/String;

.field private final Tt:I

.field private final Tu:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity$RoomEntityCreatorCompat;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity$RoomEntityCreatorCompat;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;ILandroid/os/Bundle;Ljava/util/ArrayList;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            ">;I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->NS:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Ts:Ljava/lang/String;

    #@9
    iput-wide p4, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:J

    #@b
    iput p6, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tt:I

    #@d
    iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mp:Ljava/lang/String;

    #@f
    iput p8, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SY:I

    #@11
    iput-object p9, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->To:Landroid/os/Bundle;

    #@13
    iput-object p10, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SX:Ljava/util/ArrayList;

    #@15
    iput p11, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tu:I

    #@17
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 7

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->xM:I

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->NS:Ljava/lang/String;

    #@c
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Ts:Ljava/lang/String;

    #@12
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:J

    #@18
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tt:I

    #@1e
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mp:Ljava/lang/String;

    #@24
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SY:I

    #@2a
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->To:Landroid/os/Bundle;

    #@30
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v3

    #@38
    new-instance v0, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@3d
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SX:Ljava/util/ArrayList;

    #@3f
    const/4 v0, 0x0

    #@40
    move v1, v0

    #@41
    :goto_41
    if-ge v1, v3, :cond_58

    #@43
    iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SX:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    #@4b
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->freeze()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@51
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    add-int/lit8 v0, v1, 0x1

    #@56
    move v1, v0

    #@57
    goto :goto_41

    #@58
    :cond_58
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I

    #@5b
    move-result v0

    #@5c
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tu:I

    #@5e
    return-void
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/realtime/Room;)I
    .registers 5

    #@0
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J

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
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I

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
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    aput-object v2, v0, v1

    #@2f
    const/4 v1, 0x5

    #@30
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    #@33
    move-result v2

    #@34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v2

    #@38
    aput-object v2, v0, v1

    #@3a
    const/4 v1, 0x6

    #@3b
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@3e
    move-result-object v2

    #@3f
    aput-object v2, v0, v1

    #@41
    const/4 v1, 0x7

    #@42
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@45
    move-result-object v2

    #@46
    aput-object v2, v0, v1

    #@48
    const/16 v1, 0x8

    #@4a
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I

    #@4d
    move-result v2

    #@4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v2

    #@52
    aput-object v2, v0, v1

    #@54
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@57
    move-result v0

    #@58
    return v0
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)I
    .registers 7

    #@0
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    const/4 v0, 0x0

    #@9
    move v1, v0

    #@a
    :goto_a
    if-ge v1, v3, :cond_25

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    #@12
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_21

    #@1c
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    #@1f
    move-result v0

    #@20
    return v0

    #@21
    :cond_21
    add-int/lit8 v0, v1, 0x1

    #@23
    move v1, v0

    #@24
    goto :goto_a

    #@25
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string v2, "Participant "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string v2, " is not in room "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_a9

    #@9
    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J

    #@2a
    move-result-wide v2

    #@2b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J

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
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I

    #@40
    move-result v2

    #@41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I

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
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_6

    #@61
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    #@64
    move-result v2

    #@65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v2

    #@69
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    #@6c
    move-result v3

    #@6d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v3

    #@71
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@74
    move-result v2

    #@75
    if-eqz v2, :cond_6

    #@77
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@7a
    move-result-object v2

    #@7b
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@7e
    move-result-object v3

    #@7f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@82
    move-result v2

    #@83
    if-eqz v2, :cond_6

    #@85
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@88
    move-result-object v2

    #@89
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@8c
    move-result-object v3

    #@8d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@90
    move-result v2

    #@91
    if-eqz v2, :cond_6

    #@93
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I

    #@96
    move-result v2

    #@97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9a
    move-result-object v2

    #@9b
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I

    #@9e
    move-result v3

    #@9f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2
    move-result-object v3

    #@a3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_6

    #@a9
    :cond_a9
    move v0, v1

    #@aa
    goto/16 :goto_6
.end method

.method static synthetic aQ(Ljava/lang/String;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->aA(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static b(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "RoomId"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "CreatorId"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "CreationTimestamp"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J

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
    const-string v1, "RoomStatus"

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I

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
    const-string v1, "Description"

    #@36
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3d
    move-result-object v0

    #@3e
    const-string v1, "Variant"

    #@40
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    #@43
    move-result v2

    #@44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@4b
    move-result-object v0

    #@4c
    const-string v1, "AutoMatchCriteria"

    #@4e
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@55
    move-result-object v0

    #@56
    const-string v1, "Participants"

    #@58
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@5f
    move-result-object v0

    #@60
    const-string v1, "AutoMatchWaitEstimateSeconds"

    #@62
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I

    #@65
    move-result v2

    #@66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    return-object v0
.end method

.method static b(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    const/4 v0, 0x0

    #@9
    move v1, v0

    #@a
    :goto_a
    if-ge v1, v3, :cond_2b

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    #@12
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    #@15
    move-result-object v4

    #@16
    if-eqz v4, :cond_27

    #@18
    invoke-interface {v4}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_27

    #@22
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    :goto_26
    return-object v0

    #@27
    :cond_27
    add-int/lit8 v0, v1, 0x1

    #@29
    move v1, v0

    #@2a
    goto :goto_a

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_26
.end method

.method static synthetic b(Ljava/lang/Integer;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->c(Ljava/lang/Integer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static c(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 7

    #@0
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    const/4 v0, 0x0

    #@9
    move v1, v0

    #@a
    :goto_a
    if-ge v1, v3, :cond_21

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    #@12
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1d

    #@1c
    return-object v0

    #@1d
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    #@1f
    move v1, v0

    #@20
    goto :goto_a

    #@21
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v2, "Participant "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string v2, " is not in match "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0
.end method

.method static c(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    new-instance v4, Ljava/util/ArrayList;

    #@a
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    const/4 v0, 0x0

    #@e
    move v1, v0

    #@f
    :goto_f
    if-ge v1, v3, :cond_22

    #@11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    #@17
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    add-int/lit8 v0, v1, 0x1

    #@20
    move v1, v0

    #@21
    goto :goto_f

    #@22
    :cond_22
    return-object v4
.end method

.method static synthetic gR()Ljava/lang/Integer;
    .registers 1

    #@0
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->fq()Ljava/lang/Integer;

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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->freeze()Lcom/google/android/gms/games/multiplayer/realtime/Room;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAutoMatchCriteria()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->To:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getAutoMatchWaitEstimateSeconds()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tu:I

    #@2
    return v0
.end method

.method public getCreationTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:J

    #@2
    return-wide v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Ts:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mp:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->c(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getParticipantId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->b(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getParticipantIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->c(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getParticipantStatus(Ljava/lang/String;)I
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
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
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SX:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->NS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tt:I

    #@2
    return v0
.end method

.method public getVariant()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SY:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;)I

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
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->b(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->fr()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;Landroid/os/Parcel;I)V

    #@9
    :cond_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->NS:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Ts:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tt:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mp:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SY:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->To:Landroid/os/Bundle;

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SX:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v2

    #@33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    const/4 v0, 0x0

    #@37
    move v1, v0

    #@38
    :goto_38
    if-ge v1, v2, :cond_9

    #@3a
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SX:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@42
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@45
    add-int/lit8 v0, v1, 0x1

    #@47
    move v1, v0

    #@48
    goto :goto_38
.end method
