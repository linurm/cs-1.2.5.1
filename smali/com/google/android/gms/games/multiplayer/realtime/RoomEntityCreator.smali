.class public Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;",
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

.method static a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getRoomId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getCreatorId()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getCreationTimestamp()J

    #@22
    move-result-wide v2

    #@23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getStatus()I

    #@2a
    move-result v2

    #@2b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getDescription()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@36
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getVariant()I

    #@3a
    move-result v2

    #@3b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@3e
    const/4 v1, 0x7

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@42
    move-result-object v2

    #@43
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    #@46
    const/16 v1, 0x8

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getParticipants()Ljava/util/ArrayList;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@4f
    const/16 v1, 0x9

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getAutoMatchWaitEstimateSeconds()I

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@58
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@5b
    return-void
.end method


# virtual methods
.method public bo(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
    .registers 16

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    const-wide/16 v4, 0x0

    #@8
    move-object v3, v2

    #@9
    move-object v7, v2

    #@a
    move-object v9, v2

    #@b
    move-object v10, v2

    #@c
    move v6, v1

    #@d
    move v8, v1

    #@e
    move v11, v1

    #@f
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@12
    move-result v12

    #@13
    if-ge v12, v0, :cond_58

    #@15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@18
    move-result v12

    #@19
    invoke-static {v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1c
    move-result v13

    #@1d
    sparse-switch v13, :sswitch_data_7e

    #@20
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@23
    goto :goto_f

    #@24
    :sswitch_24
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    goto :goto_f

    #@29
    :sswitch_29
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2c
    move-result v1

    #@2d
    goto :goto_f

    #@2e
    :sswitch_2e
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    goto :goto_f

    #@33
    :sswitch_33
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@36
    move-result-wide v4

    #@37
    goto :goto_f

    #@38
    :sswitch_38
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3b
    move-result v6

    #@3c
    goto :goto_f

    #@3d
    :sswitch_3d
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    goto :goto_f

    #@42
    :sswitch_42
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@45
    move-result v8

    #@46
    goto :goto_f

    #@47
    :sswitch_47
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@4a
    move-result-object v9

    #@4b
    goto :goto_f

    #@4c
    :sswitch_4c
    sget-object v10, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-static {p1, v12, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@51
    move-result-object v10

    #@52
    goto :goto_f

    #@53
    :sswitch_53
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@56
    move-result v11

    #@57
    goto :goto_f

    #@58
    :cond_58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@5b
    move-result v12

    #@5c
    if-eq v12, v0, :cond_77

    #@5e
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@60
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string v3, "Overread allowed size end="

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@76
    throw v1

    #@77
    :cond_77
    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@79
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;-><init>(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;ILandroid/os/Bundle;Ljava/util/ArrayList;I)V

    #@7c
    return-object v0

    #@7d
    nop

    #@7e
    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_33
        0x4 -> :sswitch_38
        0x5 -> :sswitch_3d
        0x6 -> :sswitch_42
        0x7 -> :sswitch_47
        0x8 -> :sswitch_4c
        0x9 -> :sswitch_53
        0x3e8 -> :sswitch_29
    .end sparse-switch
.end method

.method public cA(I)[Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;->bo(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;->cA(I)[Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
