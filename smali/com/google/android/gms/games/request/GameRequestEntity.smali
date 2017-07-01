.class public final Lcom/google/android/gms/games/request/GameRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/request/GameRequest;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/request/GameRequestEntityCreator;


# instance fields
.field private final AT:I

.field private final OB:Ljava/lang/String;

.field private final Rt:Lcom/google/android/gms/games/GameEntity;

.field private final SU:J

.field private final TF:[B

.field private final Tb:I

.field private final Ua:Lcom/google/android/gms/games/PlayerEntity;

.field private final Ub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/PlayerEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final Uc:J

.field private final Ud:Landroid/os/Bundle;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/request/GameRequestEntityCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/request/GameRequestEntityCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/request/GameRequestEntity;->CREATOR:Lcom/google/android/gms/games/request/GameRequestEntityCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/GameEntity;Lcom/google/android/gms/games/PlayerEntity;[BLjava/lang/String;Ljava/util/ArrayList;IJJLandroid/os/Bundle;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/GameEntity;",
            "Lcom/google/android/gms/games/PlayerEntity;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/PlayerEntity;",
            ">;IJJ",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ua:Lcom/google/android/gms/games/PlayerEntity;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->TF:[B

    #@b
    iput-object p5, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->OB:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ub:Ljava/util/ArrayList;

    #@f
    iput p7, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->AT:I

    #@11
    iput-wide p8, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->SU:J

    #@13
    iput-wide p10, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Uc:J

    #@15
    iput-object p12, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ud:Landroid/os/Bundle;

    #@17
    iput p13, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Tb:I

    #@19
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/request/GameRequest;)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v1, 0x2

    #@5
    iput v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->xM:I

    #@7
    new-instance v1, Lcom/google/android/gms/games/GameEntity;

    #@9
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getGame()Lcom/google/android/gms/games/Game;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    #@10
    iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@12
    new-instance v1, Lcom/google/android/gms/games/PlayerEntity;

    #@14
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getSender()Lcom/google/android/gms/games/Player;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    #@1b
    iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ua:Lcom/google/android/gms/games/PlayerEntity;

    #@1d
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getRequestId()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->OB:Ljava/lang/String;

    #@23
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getType()I

    #@26
    move-result v1

    #@27
    iput v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->AT:I

    #@29
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getCreationTimestamp()J

    #@2c
    move-result-wide v2

    #@2d
    iput-wide v2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->SU:J

    #@2f
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getExpirationTimestamp()J

    #@32
    move-result-wide v2

    #@33
    iput-wide v2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Uc:J

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getStatus()I

    #@38
    move-result v1

    #@39
    iput v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Tb:I

    #@3b
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getData()[B

    #@3e
    move-result-object v1

    #@3f
    if-nez v1, :cond_81

    #@41
    const/4 v1, 0x0

    #@42
    iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->TF:[B

    #@44
    :goto_44
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getRecipients()Ljava/util/List;

    #@47
    move-result-object v2

    #@48
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@4b
    move-result v3

    #@4c
    new-instance v1, Ljava/util/ArrayList;

    #@4e
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@51
    iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ub:Ljava/util/ArrayList;

    #@53
    new-instance v1, Landroid/os/Bundle;

    #@55
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@58
    iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ud:Landroid/os/Bundle;

    #@5a
    move v1, v0

    #@5b
    :goto_5b
    if-ge v1, v3, :cond_8d

    #@5d
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/google/android/gms/games/Player;

    #@63
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Lcom/google/android/gms/games/Player;

    #@69
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    iget-object v5, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ub:Ljava/util/ArrayList;

    #@6f
    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    #@71
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@74
    iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ud:Landroid/os/Bundle;

    #@76
    invoke-interface {p1, v4}, Lcom/google/android/gms/games/request/GameRequest;->getRecipientStatus(Ljava/lang/String;)I

    #@79
    move-result v5

    #@7a
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7d
    add-int/lit8 v0, v1, 0x1

    #@7f
    move v1, v0

    #@80
    goto :goto_5b

    #@81
    :cond_81
    array-length v2, v1

    #@82
    new-array v2, v2, [B

    #@84
    iput-object v2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->TF:[B

    #@86
    iget-object v2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->TF:[B

    #@88
    array-length v3, v1

    #@89
    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8c
    goto :goto_44

    #@8d
    :cond_8d
    return-void
.end method

.method static a(Lcom/google/android/gms/games/request/GameRequest;)I
    .registers 5

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getGame()Lcom/google/android/gms/games/Game;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRecipients()Ljava/util/List;

    #@f
    move-result-object v2

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRequestId()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v0, v1

    #@19
    const/4 v1, 0x3

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getSender()Lcom/google/android/gms/games/Player;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x4

    #@21
    invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->b(Lcom/google/android/gms/games/request/GameRequest;)[I

    #@24
    move-result-object v2

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x5

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getType()I

    #@2b
    move-result v2

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    aput-object v2, v0, v1

    #@32
    const/4 v1, 0x6

    #@33
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getCreationTimestamp()J

    #@36
    move-result-wide v2

    #@37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3a
    move-result-object v2

    #@3b
    aput-object v2, v0, v1

    #@3d
    const/4 v1, 0x7

    #@3e
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getExpirationTimestamp()J

    #@41
    move-result-wide v2

    #@42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@45
    move-result-object v2

    #@46
    aput-object v2, v0, v1

    #@48
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@4b
    move-result v0

    #@4c
    return v0
.end method

.method static a(Lcom/google/android/gms/games/request/GameRequest;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/request/GameRequest;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_93

    #@9
    check-cast p1, Lcom/google/android/gms/games/request/GameRequest;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getGame()Lcom/google/android/gms/games/Game;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getGame()Lcom/google/android/gms/games/Game;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getRecipients()Ljava/util/List;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRecipients()Ljava/util/List;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getRequestId()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRequestId()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getSender()Lcom/google/android/gms/games/Player;

    #@38
    move-result-object v2

    #@39
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getSender()Lcom/google/android/gms/games/Player;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_6

    #@43
    invoke-static {p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->b(Lcom/google/android/gms/games/request/GameRequest;)[I

    #@46
    move-result-object v2

    #@47
    invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->b(Lcom/google/android/gms/games/request/GameRequest;)[I

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_6

    #@51
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getType()I

    #@54
    move-result v2

    #@55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v2

    #@59
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getType()I

    #@5c
    move-result v3

    #@5d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_6

    #@67
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getCreationTimestamp()J

    #@6a
    move-result-wide v2

    #@6b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6e
    move-result-object v2

    #@6f
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getCreationTimestamp()J

    #@72
    move-result-wide v4

    #@73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@76
    move-result-object v3

    #@77
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_6

    #@7d
    invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->getExpirationTimestamp()J

    #@80
    move-result-wide v2

    #@81
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@84
    move-result-object v2

    #@85
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getExpirationTimestamp()J

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
    :cond_93
    move v0, v1

    #@94
    goto/16 :goto_6
.end method

.method private static b(Lcom/google/android/gms/games/request/GameRequest;)[I
    .registers 6

    #@0
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRecipients()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    new-array v4, v3, [I

    #@a
    const/4 v0, 0x0

    #@b
    move v1, v0

    #@c
    :goto_c
    if-ge v1, v3, :cond_22

    #@e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/google/android/gms/games/Player;

    #@14
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-interface {p0, v0}, Lcom/google/android/gms/games/request/GameRequest;->getRecipientStatus(Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    aput v0, v4, v1

    #@1e
    add-int/lit8 v0, v1, 0x1

    #@20
    move v1, v0

    #@21
    goto :goto_c

    #@22
    :cond_22
    return-object v4
.end method

.method static c(Lcom/google/android/gms/games/request/GameRequest;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Game"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "Sender"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getSender()Lcom/google/android/gms/games/Player;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "Recipients"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRecipients()Ljava/util/List;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@21
    move-result-object v0

    #@22
    const-string v1, "Data"

    #@24
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getData()[B

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, "RequestId"

    #@2e
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getRequestId()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@35
    move-result-object v0

    #@36
    const-string v1, "Type"

    #@38
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getType()I

    #@3b
    move-result v2

    #@3c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@43
    move-result-object v0

    #@44
    const-string v1, "CreationTimestamp"

    #@46
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getCreationTimestamp()J

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
    const-string v1, "ExpirationTimestamp"

    #@54
    invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->getExpirationTimestamp()J

    #@57
    move-result-wide v2

    #@58
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/request/GameRequest;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->freeze()Lcom/google/android/gms/games/request/GameRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCreationTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->SU:J

    #@2
    return-wide v0
.end method

.method public getData()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->TF:[B

    #@2
    return-object v0
.end method

.method public getExpirationTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Uc:J

    #@2
    return-wide v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Rt:Lcom/google/android/gms/games/GameEntity;

    #@2
    return-object v0
.end method

.method public getRecipientStatus(Ljava/lang/String;)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ud:Landroid/os/Bundle;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getRecipients()Ljava/util/List;
    .registers 3
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
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ub:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->OB:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSender()Lcom/google/android/gms/games/Player;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ua:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Tb:I

    #@2
    return v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->AT:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->xM:I

    #@2
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

.method public iL()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->Ud:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public isConsumed(Ljava/lang/String;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->getRecipientStatus(Ljava/lang/String;)I

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
    invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->c(Lcom/google/android/gms/games/request/GameRequest;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/request/GameRequestEntityCreator;->a(Lcom/google/android/gms/games/request/GameRequestEntity;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
