.class public Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;",
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

.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->ia()Lcom/google/android/gms/games/GameEntity;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hR()I

    #@1a
    move-result v2

    #@1b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hS()Z

    #@22
    move-result v2

    #@23
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hT()I

    #@2a
    move-result v2

    #@2b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hU()J

    #@32
    move-result-wide v2

    #@33
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@36
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hV()J

    #@3a
    move-result-wide v2

    #@3b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@3e
    const/4 v1, 0x7

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hW()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@46
    const/16 v1, 0x8

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hX()J

    #@4b
    move-result-wide v2

    #@4c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@4f
    const/16 v1, 0x9

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hY()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@58
    const/16 v1, 0xa

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hQ()Ljava/util/ArrayList;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@61
    const/16 v1, 0xb

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hZ()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@66
    move-result-object v2

    #@67
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@6a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@6d
    return-void
.end method


# virtual methods
.method public bg(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
    .registers 22

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v18

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    const/4 v7, 0x0

    #@9
    const-wide/16 v8, 0x0

    #@b
    const-wide/16 v10, 0x0

    #@d
    const/4 v12, 0x0

    #@e
    const-wide/16 v13, 0x0

    #@10
    const/4 v15, 0x0

    #@11
    const/16 v16, 0x0

    #@13
    const/16 v17, 0x0

    #@15
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@18
    move-result v2

    #@19
    move/from16 v0, v18

    #@1b
    if-ge v2, v0, :cond_93

    #@1d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@20
    move-result v2

    #@21
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@24
    move-result v19

    #@25
    sparse-switch v19, :sswitch_data_be

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@2d
    goto :goto_15

    #@2e
    :sswitch_2e
    sget-object v4, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Lcom/google/android/gms/games/GameEntity;

    #@38
    move-object v4, v2

    #@39
    goto :goto_15

    #@3a
    :sswitch_3a
    move-object/from16 v0, p1

    #@3c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3f
    move-result v3

    #@40
    goto :goto_15

    #@41
    :sswitch_41
    move-object/from16 v0, p1

    #@43
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@46
    move-result v5

    #@47
    goto :goto_15

    #@48
    :sswitch_48
    move-object/from16 v0, p1

    #@4a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@4d
    move-result v6

    #@4e
    goto :goto_15

    #@4f
    :sswitch_4f
    move-object/from16 v0, p1

    #@51
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@54
    move-result v7

    #@55
    goto :goto_15

    #@56
    :sswitch_56
    move-object/from16 v0, p1

    #@58
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@5b
    move-result-wide v8

    #@5c
    goto :goto_15

    #@5d
    :sswitch_5d
    move-object/from16 v0, p1

    #@5f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@62
    move-result-wide v10

    #@63
    goto :goto_15

    #@64
    :sswitch_64
    move-object/from16 v0, p1

    #@66
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@69
    move-result-object v12

    #@6a
    goto :goto_15

    #@6b
    :sswitch_6b
    move-object/from16 v0, p1

    #@6d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@70
    move-result-wide v13

    #@71
    goto :goto_15

    #@72
    :sswitch_72
    move-object/from16 v0, p1

    #@74
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@77
    move-result-object v15

    #@78
    goto :goto_15

    #@79
    :sswitch_79
    sget-object v16, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;

    #@7b
    move-object/from16 v0, p1

    #@7d
    move-object/from16 v1, v16

    #@7f
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@82
    move-result-object v16

    #@83
    goto :goto_15

    #@84
    :sswitch_84
    sget-object v17, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntityCreator;

    #@86
    move-object/from16 v0, p1

    #@88
    move-object/from16 v1, v17

    #@8a
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@8d
    move-result-object v2

    #@8e
    check-cast v2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@90
    move-object/from16 v17, v2

    #@92
    goto :goto_15

    #@93
    :cond_93
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@96
    move-result v2

    #@97
    move/from16 v0, v18

    #@99
    if-eq v2, v0, :cond_b8

    #@9b
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@9d
    new-instance v3, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string v4, "Overread allowed size end="

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    move/from16 v0, v18

    #@aa
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    move-object/from16 v0, p1

    #@b4
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@b7
    throw v2

    #@b8
    :cond_b8
    new-instance v2, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@ba
    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;-><init>(ILcom/google/android/gms/games/GameEntity;IZIJJLjava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;)V

    #@bd
    return-object v2

    #@be
    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_41
        0x3 -> :sswitch_48
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_56
        0x6 -> :sswitch_5d
        0x7 -> :sswitch_64
        0x8 -> :sswitch_6b
        0x9 -> :sswitch_72
        0xa -> :sswitch_79
        0xb -> :sswitch_84
        0x3e8 -> :sswitch_3a
    .end sparse-switch
.end method

.method public co(I)[Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;->bg(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;->co(I)[Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
