.class public final Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/multiplayer/Invitation;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;


# instance fields
.field private final RH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/InvitationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->CREATOR:Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/InvitationEntity;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@7
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->ii()V

    #@a
    return-void
.end method

.method private ii()V
    .registers 6

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_3c

    #@a
    move v0, v1

    #@b
    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    #@16
    iget-object v2, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v3

    #@1c
    move v2, v1

    #@1d
    :goto_1d
    if-ge v2, v3, :cond_3e

    #@1f
    iget-object v1, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/google/android/gms/games/multiplayer/Invitation;

    #@27
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@2a
    move-result-object v4

    #@2b
    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    const-string v4, "All the invitations must be from the same inviter"

    #@35
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/gx;->a(ZLjava/lang/Object;)V

    #@38
    add-int/lit8 v1, v2, 0x1

    #@3a
    move v2, v1

    #@3b
    goto :goto_1d

    #@3c
    :cond_3c
    move v0, v2

    #@3d
    goto :goto_b

    #@3e
    :cond_3e
    return-void
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
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    instance-of v0, p1, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;

    #@4
    if-nez v0, :cond_8

    #@6
    move v0, v2

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    if-ne p0, p1, :cond_c

    #@a
    move v0, v3

    #@b
    goto :goto_7

    #@c
    :cond_c
    check-cast p1, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;

    #@e
    iget-object v0, p1, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v0

    #@14
    iget-object v1, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v1

    #@1a
    if-eq v0, v1, :cond_1e

    #@1c
    move v0, v2

    #@1d
    goto :goto_7

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v5

    #@24
    move v4, v2

    #@25
    :goto_25
    if-ge v4, v5, :cond_43

    #@27
    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    #@2f
    iget-object v1, p1, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Lcom/google/android/gms/games/multiplayer/Invitation;

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-nez v0, :cond_3f

    #@3d
    move v0, v2

    #@3e
    goto :goto_7

    #@3f
    :cond_3f
    add-int/lit8 v0, v4, 0x1

    #@41
    move v4, v0

    #@42
    goto :goto_25

    #@43
    :cond_43
    move v0, v3

    #@44
    goto :goto_7
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAvailableAutoMatchSlots()I
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Method not supported on a cluster"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getCreationTimestamp()J
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Method not supported on a cluster"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Method not supported on a cluster"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInvitationId()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getInvitationType()I
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Method not supported on a cluster"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@c
    move-result-object v0

    #@d
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
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Method not supported on a cluster"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getVariant()I
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Method not supported on a cluster"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public ij()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitation;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->RH:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;->a(Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
