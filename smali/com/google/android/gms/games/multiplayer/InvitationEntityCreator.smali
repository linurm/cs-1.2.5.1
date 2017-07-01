.class public Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/multiplayer/InvitationEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/InvitationEntity;Landroid/os/Parcel;I)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInvitationId()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getCreationTimestamp()J

    #@22
    move-result-wide v2

    #@23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInvitationType()I

    #@2a
    move-result v2

    #@2b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    #@32
    move-result-object v2

    #@33
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@36
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getParticipants()Ljava/util/ArrayList;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@3e
    const/4 v1, 0x7

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getVariant()I

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@46
    const/16 v1, 0x8

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getAvailableAutoMatchSlots()I

    #@4b
    move-result v2

    #@4c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@4f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@52
    return-void
.end method


# virtual methods
.method public bl(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;
    .registers 15

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v11

    #@6
    const-wide/16 v4, 0x0

    #@8
    move-object v3, v2

    #@9
    move-object v7, v2

    #@a
    move-object v8, v2

    #@b
    move v6, v1

    #@c
    move v9, v1

    #@d
    move v10, v1

    #@e
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@11
    move-result v0

    #@12
    if-ge v0, v11, :cond_5c

    #@14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@17
    move-result v0

    #@18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1b
    move-result v12

    #@1c
    sparse-switch v12, :sswitch_data_82

    #@1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@22
    goto :goto_e

    #@23
    :sswitch_23
    sget-object v2, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    #@2b
    move-object v2, v0

    #@2c
    goto :goto_e

    #@2d
    :sswitch_2d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@30
    move-result v1

    #@31
    goto :goto_e

    #@32
    :sswitch_32
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    goto :goto_e

    #@37
    :sswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@3a
    move-result-wide v4

    #@3b
    goto :goto_e

    #@3c
    :sswitch_3c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3f
    move-result v6

    #@40
    goto :goto_e

    #@41
    :sswitch_41
    sget-object v7, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43
    invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@49
    move-object v7, v0

    #@4a
    goto :goto_e

    #@4b
    :sswitch_4b
    sget-object v8, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@50
    move-result-object v8

    #@51
    goto :goto_e

    #@52
    :sswitch_52
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@55
    move-result v9

    #@56
    goto :goto_e

    #@57
    :sswitch_57
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@5a
    move-result v10

    #@5b
    goto :goto_e

    #@5c
    :cond_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@5f
    move-result v0

    #@60
    if-eq v0, v11, :cond_7b

    #@62
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@64
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string v2, "Overread allowed size end="

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@7a
    throw v0

    #@7b
    :cond_7b
    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@7d
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;JILcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/util/ArrayList;II)V

    #@80
    return-object v0

    #@81
    nop

    #@82
    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_32
        0x3 -> :sswitch_37
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_41
        0x6 -> :sswitch_4b
        0x7 -> :sswitch_52
        0x8 -> :sswitch_57
        0x3e8 -> :sswitch_2d
    .end sparse-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;->bl(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cx(I)[Lcom/google/android/gms/games/multiplayer/InvitationEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;->cx(I)[Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
