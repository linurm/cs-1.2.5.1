.class public final Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Participant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/ParticipantEntity$ParticipantEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ap:I

.field private final Ln:Ljava/lang/String;

.field private final MC:Ljava/lang/String;

.field private final MD:Ljava/lang/String;

.field private final Mr:Landroid/net/Uri;

.field private final Ms:Landroid/net/Uri;

.field private final Nj:Lcom/google/android/gms/games/PlayerEntity;

.field private final Nn:Ljava/lang/String;

.field private final Oq:Ljava/lang/String;

.field private final Tb:I

.field private final Tc:Z

.field private final Td:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity$ParticipantEntityCreatorCompat;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity$ParticipantEntityCreatorCompat;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLcom/google/android/gms/games/PlayerEntity;ILcom/google/android/gms/games/multiplayer/ParticipantResult;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Oq:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ln:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Mr:Landroid/net/Uri;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ms:Landroid/net/Uri;

    #@d
    iput p6, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Tb:I

    #@f
    iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nn:Ljava/lang/String;

    #@11
    iput-boolean p8, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Tc:Z

    #@13
    iput-object p9, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@15
    iput p10, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ap:I

    #@17
    iput-object p11, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Td:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@19
    iput-object p12, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->MC:Ljava/lang/String;

    #@1b
    iput-object p13, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->MD:Ljava/lang/String;

    #@1d
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/Participant;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    const/4 v0, 0x3

    #@4
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->xM:I

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Oq:Ljava/lang/String;

    #@c
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ln:Ljava/lang/String;

    #@12
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Mr:Landroid/net/Uri;

    #@18
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ms:Landroid/net/Uri;

    #@1e
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Tb:I

    #@24
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->gW()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nn:Ljava/lang/String;

    #@2a
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    #@2d
    move-result v0

    #@2e
    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Tc:Z

    #@30
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    #@33
    move-result-object v1

    #@34
    if-nez v1, :cond_52

    #@36
    const/4 v0, 0x0

    #@37
    :goto_37
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@39
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ap:I

    #@3f
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Td:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@45
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUrl()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->MC:Ljava/lang/String;

    #@4b
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUrl()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->MD:Ljava/lang/String;

    #@51
    return-void

    #@52
    :cond_52
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    #@54
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    #@57
    goto :goto_37
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/Participant;)I
    .registers 4

    #@0
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    #@8
    move-result-object v2

    #@9
    aput-object v2, v0, v1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

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
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->gW()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x3

    #@1e
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@25
    move-result-object v2

    #@26
    aput-object v2, v0, v1

    #@28
    const/4 v1, 0x4

    #@29
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    aput-object v2, v0, v1

    #@2f
    const/4 v1, 0x5

    #@30
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    #@33
    move-result-object v2

    #@34
    aput-object v2, v0, v1

    #@36
    const/4 v1, 0x6

    #@37
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    #@3a
    move-result-object v2

    #@3b
    aput-object v2, v0, v1

    #@3d
    const/4 v1, 0x7

    #@3e
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    #@41
    move-result v2

    #@42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v2

    #@46
    aput-object v2, v0, v1

    #@48
    const/16 v1, 0x8

    #@4a
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@4d
    move-result-object v2

    #@4e
    aput-object v2, v0, v1

    #@50
    const/16 v1, 0x9

    #@52
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

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

.method static a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/Participant;

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
    check-cast p1, Lcom/google/android/gms/games/multiplayer/Participant;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    #@1c
    move-result v2

    #@1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

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
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->gW()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->gW()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_6

    #@3d
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    #@40
    move-result v2

    #@41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@44
    move-result-object v2

    #@45
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    #@48
    move-result v3

    #@49
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_6

    #@53
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_6

    #@61
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    #@64
    move-result-object v2

    #@65
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_6

    #@6f
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    #@72
    move-result-object v2

    #@73
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    #@76
    move-result-object v3

    #@77
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_6

    #@7d
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    #@80
    move-result v2

    #@81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v2

    #@85
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    #@88
    move-result v3

    #@89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8c
    move-result-object v3

    #@8d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@90
    move-result v2

    #@91
    if-eqz v2, :cond_6

    #@93
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@96
    move-result-object v2

    #@97
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@9a
    move-result-object v3

    #@9b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9e
    move-result v2

    #@9f
    if-eqz v2, :cond_6

    #@a1
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

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

.method static synthetic aQ(Ljava/lang/String;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->aA(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "ParticipantId"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "Player"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "Status"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    #@1d
    move-result v2

    #@1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@25
    move-result-object v0

    #@26
    const-string v1, "ClientAddress"

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->gW()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2f
    move-result-object v0

    #@30
    const-string v1, "ConnectedToRoom"

    #@32
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    #@35
    move-result v2

    #@36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3d
    move-result-object v0

    #@3e
    const-string v1, "DisplayName"

    #@40
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@47
    move-result-object v0

    #@48
    const-string v1, "IconImage"

    #@4a
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@51
    move-result-object v0

    #@52
    const-string v1, "IconImageUrl"

    #@54
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUrl()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@5b
    move-result-object v0

    #@5c
    const-string v1, "HiResImage"

    #@5e
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@65
    move-result-object v0

    #@66
    const-string v1, "HiResImageUrl"

    #@68
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUrl()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@6f
    move-result-object v0

    #@70
    const-string v1, "Capabilities"

    #@72
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    #@75
    move-result v2

    #@76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@7d
    move-result-object v0

    #@7e
    const-string v1, "Result"

    #@80
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@8b
    move-result-object v0

    #@8c
    return-object v0
.end method

.method static synthetic b(Ljava/lang/Integer;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->c(Ljava/lang/Integer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic gR()Ljava/lang/Integer;
    .registers 1

    #@0
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->fq()Ljava/lang/Integer;

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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->freeze()Lcom/google/android/gms/games/multiplayer/Participant;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public gW()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCapabilities()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ap:I

    #@2
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    if-nez v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ln:Ljava/lang/String;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    if-nez v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ln:Ljava/lang/String;

    #@6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName(Landroid/database/CharArrayBuffer;)V

    #@f
    goto :goto_9
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    if-nez v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ms:Landroid/net/Uri;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    if-nez v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->MD:Ljava/lang/String;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUrl()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    if-nez v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Mr:Landroid/net/Uri;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    if-nez v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->MC:Ljava/lang/String;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUrl()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Oq:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@2
    return-object v0
.end method

.method public getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Td:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Tb:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isConnectedToRoom()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Tc:Z

    #@2
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
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;

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
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->fr()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_d

    #@9
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;->a(Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Landroid/os/Parcel;I)V

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Oq:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ln:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Mr:Landroid/net/Uri;

    #@19
    if-nez v0, :cond_49

    #@1b
    move-object v0, v1

    #@1c
    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ms:Landroid/net/Uri;

    #@21
    if-nez v0, :cond_50

    #@23
    :goto_23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@26
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Tb:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nn:Ljava/lang/String;

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@30
    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Tc:Z

    #@32
    if-eqz v0, :cond_57

    #@34
    move v0, v2

    #@35
    :goto_35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@3a
    if-nez v0, :cond_59

    #@3c
    :goto_3c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@41
    if-eqz v0, :cond_c

    #@43
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Nj:Lcom/google/android/gms/games/PlayerEntity;

    #@45
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@48
    goto :goto_c

    #@49
    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Mr:Landroid/net/Uri;

    #@4b
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    goto :goto_1c

    #@50
    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->Ms:Landroid/net/Uri;

    #@52
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    goto :goto_23

    #@57
    :cond_57
    move v0, v3

    #@58
    goto :goto_35

    #@59
    :cond_59
    move v3, v2

    #@5a
    goto :goto_3c
.end method
