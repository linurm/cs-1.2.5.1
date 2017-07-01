.class public Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getGame()Lcom/google/android/gms/games/Game;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@d
    const/4 v1, 0x2

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getMatchId()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@15
    const/4 v1, 0x3

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getCreatorId()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getCreationTimestamp()J

    #@21
    move-result-wide v2

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getLastUpdaterId()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getLastUpdatedTimestamp()J

    #@31
    move-result-wide v2

    #@32
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getPendingParticipantId()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getStatus()I

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@46
    const/16 v1, 0xa

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getVariant()I

    #@4b
    move-result v2

    #@4c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@4f
    const/16 v1, 0xb

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getVersion()I

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@58
    const/16 v1, 0xc

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getData()[B

    #@5d
    move-result-object v2

    #@5e
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    #@61
    const/16 v1, 0xd

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getParticipants()Ljava/util/ArrayList;

    #@66
    move-result-object v2

    #@67
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@6a
    const/16 v1, 0xe

    #@6c
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getRematchId()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@73
    const/16 v1, 0xf

    #@75
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getPreviousMatchData()[B

    #@78
    move-result-object v2

    #@79
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    #@7c
    const/16 v1, 0x11

    #@7e
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@81
    move-result-object v2

    #@82
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    #@85
    const/16 v1, 0x10

    #@87
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getMatchNumber()I

    #@8a
    move-result v2

    #@8b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@8e
    const/16 v1, 0x3e8

    #@90
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getVersionCode()I

    #@93
    move-result v2

    #@94
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@97
    const/16 v1, 0x13

    #@99
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->isLocallyModified()Z

    #@9c
    move-result v2

    #@9d
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@a0
    const/16 v1, 0x12

    #@a2
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getTurnStatus()I

    #@a5
    move-result v2

    #@a6
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a9
    const/16 v1, 0x15

    #@ab
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getDescriptionParticipantId()Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@b2
    const/16 v1, 0x14

    #@b4
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getDescription()Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@bb
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@be
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;
    .registers 30

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v26

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    const-wide/16 v7, 0x0

    #@a
    const/4 v9, 0x0

    #@b
    const-wide/16 v10, 0x0

    #@d
    const/4 v12, 0x0

    #@e
    const/4 v13, 0x0

    #@f
    const/4 v14, 0x0

    #@10
    const/4 v15, 0x0

    #@11
    const/16 v16, 0x0

    #@13
    const/16 v17, 0x0

    #@15
    const/16 v18, 0x0

    #@17
    const/16 v19, 0x0

    #@19
    const/16 v20, 0x0

    #@1b
    const/16 v21, 0x0

    #@1d
    const/16 v22, 0x0

    #@1f
    const/16 v23, 0x0

    #@21
    const/16 v24, 0x0

    #@23
    const/16 v25, 0x0

    #@25
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@28
    move-result v2

    #@29
    move/from16 v0, v26

    #@2b
    if-ge v2, v0, :cond_e2

    #@2d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@30
    move-result v2

    #@31
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@34
    move-result v27

    #@35
    sparse-switch v27, :sswitch_data_10e

    #@38
    move-object/from16 v0, p1

    #@3a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@3d
    goto :goto_25

    #@3e
    :sswitch_3e
    sget-object v4, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    move-object/from16 v0, p1

    #@42
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Lcom/google/android/gms/games/GameEntity;

    #@48
    move-object v4, v2

    #@49
    goto :goto_25

    #@4a
    :sswitch_4a
    move-object/from16 v0, p1

    #@4c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    goto :goto_25

    #@51
    :sswitch_51
    move-object/from16 v0, p1

    #@53
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    goto :goto_25

    #@58
    :sswitch_58
    move-object/from16 v0, p1

    #@5a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@5d
    move-result-wide v7

    #@5e
    goto :goto_25

    #@5f
    :sswitch_5f
    move-object/from16 v0, p1

    #@61
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@64
    move-result-object v9

    #@65
    goto :goto_25

    #@66
    :sswitch_66
    move-object/from16 v0, p1

    #@68
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@6b
    move-result-wide v10

    #@6c
    goto :goto_25

    #@6d
    :sswitch_6d
    move-object/from16 v0, p1

    #@6f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@72
    move-result-object v12

    #@73
    goto :goto_25

    #@74
    :sswitch_74
    move-object/from16 v0, p1

    #@76
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@79
    move-result v13

    #@7a
    goto :goto_25

    #@7b
    :sswitch_7b
    move-object/from16 v0, p1

    #@7d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@80
    move-result v14

    #@81
    goto :goto_25

    #@82
    :sswitch_82
    move-object/from16 v0, p1

    #@84
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@87
    move-result v15

    #@88
    goto :goto_25

    #@89
    :sswitch_89
    move-object/from16 v0, p1

    #@8b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@8e
    move-result-object v16

    #@8f
    goto :goto_25

    #@90
    :sswitch_90
    sget-object v17, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@92
    move-object/from16 v0, p1

    #@94
    move-object/from16 v1, v17

    #@96
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@99
    move-result-object v17

    #@9a
    goto :goto_25

    #@9b
    :sswitch_9b
    move-object/from16 v0, p1

    #@9d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@a0
    move-result-object v18

    #@a1
    goto :goto_25

    #@a2
    :sswitch_a2
    move-object/from16 v0, p1

    #@a4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@a7
    move-result-object v19

    #@a8
    goto/16 :goto_25

    #@aa
    :sswitch_aa
    move-object/from16 v0, p1

    #@ac
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@af
    move-result-object v21

    #@b0
    goto/16 :goto_25

    #@b2
    :sswitch_b2
    move-object/from16 v0, p1

    #@b4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@b7
    move-result v20

    #@b8
    goto/16 :goto_25

    #@ba
    :sswitch_ba
    move-object/from16 v0, p1

    #@bc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@bf
    move-result v3

    #@c0
    goto/16 :goto_25

    #@c2
    :sswitch_c2
    move-object/from16 v0, p1

    #@c4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@c7
    move-result v23

    #@c8
    goto/16 :goto_25

    #@ca
    :sswitch_ca
    move-object/from16 v0, p1

    #@cc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@cf
    move-result v22

    #@d0
    goto/16 :goto_25

    #@d2
    :sswitch_d2
    move-object/from16 v0, p1

    #@d4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@d7
    move-result-object v25

    #@d8
    goto/16 :goto_25

    #@da
    :sswitch_da
    move-object/from16 v0, p1

    #@dc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@df
    move-result-object v24

    #@e0
    goto/16 :goto_25

    #@e2
    :cond_e2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@e5
    move-result v2

    #@e6
    move/from16 v0, v26

    #@e8
    if-eq v2, v0, :cond_107

    #@ea
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@ec
    new-instance v3, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string v4, "Overread allowed size end="

    #@f3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v3

    #@f7
    move/from16 v0, v26

    #@f9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v3

    #@fd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v3

    #@101
    move-object/from16 v0, p1

    #@103
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@106
    throw v2

    #@107
    :cond_107
    new-instance v2, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    #@109
    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;III[BLjava/util/ArrayList;Ljava/lang/String;[BILandroid/os/Bundle;IZLjava/lang/String;Ljava/lang/String;)V

    #@10c
    return-object v2

    #@10d
    nop

    #@10e
    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_4a
        0x3 -> :sswitch_51
        0x4 -> :sswitch_58
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_66
        0x7 -> :sswitch_6d
        0x8 -> :sswitch_74
        0xa -> :sswitch_7b
        0xb -> :sswitch_82
        0xc -> :sswitch_89
        0xd -> :sswitch_90
        0xe -> :sswitch_9b
        0xf -> :sswitch_a2
        0x10 -> :sswitch_b2
        0x11 -> :sswitch_aa
        0x12 -> :sswitch_ca
        0x13 -> :sswitch_c2
        0x14 -> :sswitch_da
        0x15 -> :sswitch_d2
        0x3e8 -> :sswitch_ba
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;->newArray(I)[Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
