.class public final Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
.super Ljava/lang/Object;


# instance fields
.field private final Tv:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

.field private final Tw:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final Tx:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final Ty:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_3d

    #@b
    new-instance v1, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    #@d
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@10
    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    #@12
    :goto_12
    const/4 v0, 0x1

    #@13
    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_40

    #@19
    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@1b
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@1e
    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tw:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@20
    :goto_20
    const/4 v0, 0x2

    #@21
    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    #@24
    move-result-object v0

    #@25
    if-eqz v0, :cond_43

    #@27
    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@29
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@2c
    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tx:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@2e
    :goto_2e
    const/4 v0, 0x3

    #@2f
    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    #@32
    move-result-object v0

    #@33
    if-eqz v0, :cond_46

    #@35
    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@37
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3a
    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ty:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@3c
    :goto_3c
    return-void

    #@3d
    :cond_3d
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    #@3f
    goto :goto_12

    #@40
    :cond_40
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tw:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@42
    goto :goto_20

    #@43
    :cond_43
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tx:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@45
    goto :goto_2e

    #@46
    :cond_46
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ty:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@48
    goto :goto_3c
.end method

.method private static a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/internal/constants/TurnBasedMatchTurnStatus;->cm(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    #@12
    goto :goto_b
.end method


# virtual methods
.method public close()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->close()V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tw:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@b
    if-eqz v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tw:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@f
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tx:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@14
    if-eqz v0, :cond_1b

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tx:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ty:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@1d
    if-eqz v0, :cond_24

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ty:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@21
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    #@24
    :cond_24
    return-void
.end method

.method public getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ty:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@2
    return-object v0
.end method

.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    #@2
    return-object v0
.end method

.method public getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tw:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@2
    return-object v0
.end method

.method public getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tx:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@2
    return-object v0
.end method

.method public hasData()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    #@3
    if-eqz v1, :cond_e

    #@5
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    #@7
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getCount()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_e

    #@d
    :cond_d
    :goto_d
    return v0

    #@e
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tw:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@10
    if-eqz v1, :cond_1a

    #@12
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tw:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@14
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    #@17
    move-result v1

    #@18
    if-gtz v1, :cond_d

    #@1a
    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tx:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@1c
    if-eqz v1, :cond_26

    #@1e
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tx:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@20
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    #@23
    move-result v1

    #@24
    if-gtz v1, :cond_d

    #@26
    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ty:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@28
    if-eqz v1, :cond_32

    #@2a
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ty:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    #@2c
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    #@2f
    move-result v1

    #@30
    if-gtz v1, :cond_d

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    goto :goto_d
.end method
