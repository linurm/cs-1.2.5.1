.class public Lcom/google/android/gms/games/GameEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/GameEntity;",
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

.method static a(Lcom/google/android/gms/games/GameEntity;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getApplicationId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/4 v1, 0x2

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDisplayName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@15
    const/4 v1, 0x3

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getPrimaryCategory()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getSecondaryCategory()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDescription()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDeveloperName()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getIconImageUri()Landroid/net/Uri;

    #@39
    move-result-object v2

    #@3a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getHiResImageUri()Landroid/net/Uri;

    #@42
    move-result-object v2

    #@43
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@46
    const/16 v1, 0x9

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getFeaturedImageUri()Landroid/net/Uri;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@4f
    const/16 v1, 0xa

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gM()Z

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@58
    const/16 v1, 0xb

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gO()Z

    #@5d
    move-result v2

    #@5e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@61
    const/16 v1, 0xc

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gP()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@6a
    const/16 v1, 0xd

    #@6c
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gQ()I

    #@6f
    move-result v2

    #@70
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@73
    const/16 v1, 0xe

    #@75
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getAchievementTotalCount()I

    #@78
    move-result v2

    #@79
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@7c
    const/16 v1, 0xf

    #@7e
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getLeaderboardCount()I

    #@81
    move-result v2

    #@82
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@85
    const/16 v1, 0x11

    #@87
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isTurnBasedMultiplayerEnabled()Z

    #@8a
    move-result v2

    #@8b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@8e
    const/16 v1, 0x10

    #@90
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isRealTimeMultiplayerEnabled()Z

    #@93
    move-result v2

    #@94
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@97
    const/16 v1, 0x3e8

    #@99
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getVersionCode()I

    #@9c
    move-result v2

    #@9d
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a0
    const/16 v1, 0x13

    #@a2
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getHiResImageUrl()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@a9
    const/16 v1, 0x12

    #@ab
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getIconImageUrl()Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@b2
    const/16 v1, 0x15

    #@b4
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isMuted()Z

    #@b7
    move-result v2

    #@b8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@bb
    const/16 v1, 0x14

    #@bd
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getFeaturedImageUrl()Ljava/lang/String;

    #@c0
    move-result-object v2

    #@c1
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@c4
    const/16 v1, 0x17

    #@c6
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->areSnapshotsEnabled()Z

    #@c9
    move-result v2

    #@ca
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@cd
    const/16 v1, 0x16

    #@cf
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gN()Z

    #@d2
    move-result v2

    #@d3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@d6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@d9
    return-void
.end method


# virtual methods
.method public bd(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
    .registers 30

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v26

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v6, 0x0

    #@9
    const/4 v7, 0x0

    #@a
    const/4 v8, 0x0

    #@b
    const/4 v9, 0x0

    #@c
    const/4 v10, 0x0

    #@d
    const/4 v11, 0x0

    #@e
    const/4 v12, 0x0

    #@f
    const/4 v13, 0x0

    #@10
    const/4 v14, 0x0

    #@11
    const/4 v15, 0x0

    #@12
    const/16 v16, 0x0

    #@14
    const/16 v17, 0x0

    #@16
    const/16 v18, 0x0

    #@18
    const/16 v19, 0x0

    #@1a
    const/16 v20, 0x0

    #@1c
    const/16 v21, 0x0

    #@1e
    const/16 v22, 0x0

    #@20
    const/16 v23, 0x0

    #@22
    const/16 v24, 0x0

    #@24
    const/16 v25, 0x0

    #@26
    :goto_26
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@29
    move-result v1

    #@2a
    move/from16 v0, v26

    #@2c
    if-ge v1, v0, :cond_102

    #@2e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@31
    move-result v1

    #@32
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@35
    move-result v27

    #@36
    sparse-switch v27, :sswitch_data_12e

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@3e
    goto :goto_26

    #@3f
    :sswitch_3f
    move-object/from16 v0, p1

    #@41
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    goto :goto_26

    #@46
    :sswitch_46
    move-object/from16 v0, p1

    #@48
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    goto :goto_26

    #@4d
    :sswitch_4d
    move-object/from16 v0, p1

    #@4f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    goto :goto_26

    #@54
    :sswitch_54
    move-object/from16 v0, p1

    #@56
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    goto :goto_26

    #@5b
    :sswitch_5b
    move-object/from16 v0, p1

    #@5d
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    goto :goto_26

    #@62
    :sswitch_62
    move-object/from16 v0, p1

    #@64
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    goto :goto_26

    #@69
    :sswitch_69
    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b
    move-object/from16 v0, p1

    #@6d
    invoke-static {v0, v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@70
    move-result-object v1

    #@71
    check-cast v1, Landroid/net/Uri;

    #@73
    move-object v9, v1

    #@74
    goto :goto_26

    #@75
    :sswitch_75
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@77
    move-object/from16 v0, p1

    #@79
    invoke-static {v0, v1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@7c
    move-result-object v1

    #@7d
    check-cast v1, Landroid/net/Uri;

    #@7f
    move-object v10, v1

    #@80
    goto :goto_26

    #@81
    :sswitch_81
    sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@83
    move-object/from16 v0, p1

    #@85
    invoke-static {v0, v1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@88
    move-result-object v1

    #@89
    check-cast v1, Landroid/net/Uri;

    #@8b
    move-object v11, v1

    #@8c
    goto :goto_26

    #@8d
    :sswitch_8d
    move-object/from16 v0, p1

    #@8f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@92
    move-result v12

    #@93
    goto :goto_26

    #@94
    :sswitch_94
    move-object/from16 v0, p1

    #@96
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@99
    move-result v13

    #@9a
    goto :goto_26

    #@9b
    :sswitch_9b
    move-object/from16 v0, p1

    #@9d
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@a0
    move-result-object v14

    #@a1
    goto :goto_26

    #@a2
    :sswitch_a2
    move-object/from16 v0, p1

    #@a4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@a7
    move-result v15

    #@a8
    goto/16 :goto_26

    #@aa
    :sswitch_aa
    move-object/from16 v0, p1

    #@ac
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@af
    move-result v16

    #@b0
    goto/16 :goto_26

    #@b2
    :sswitch_b2
    move-object/from16 v0, p1

    #@b4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@b7
    move-result v17

    #@b8
    goto/16 :goto_26

    #@ba
    :sswitch_ba
    move-object/from16 v0, p1

    #@bc
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@bf
    move-result v19

    #@c0
    goto/16 :goto_26

    #@c2
    :sswitch_c2
    move-object/from16 v0, p1

    #@c4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@c7
    move-result v18

    #@c8
    goto/16 :goto_26

    #@ca
    :sswitch_ca
    move-object/from16 v0, p1

    #@cc
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@cf
    move-result v2

    #@d0
    goto/16 :goto_26

    #@d2
    :sswitch_d2
    move-object/from16 v0, p1

    #@d4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@d7
    move-result-object v21

    #@d8
    goto/16 :goto_26

    #@da
    :sswitch_da
    move-object/from16 v0, p1

    #@dc
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@df
    move-result-object v20

    #@e0
    goto/16 :goto_26

    #@e2
    :sswitch_e2
    move-object/from16 v0, p1

    #@e4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@e7
    move-result v23

    #@e8
    goto/16 :goto_26

    #@ea
    :sswitch_ea
    move-object/from16 v0, p1

    #@ec
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@ef
    move-result-object v22

    #@f0
    goto/16 :goto_26

    #@f2
    :sswitch_f2
    move-object/from16 v0, p1

    #@f4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@f7
    move-result v25

    #@f8
    goto/16 :goto_26

    #@fa
    :sswitch_fa
    move-object/from16 v0, p1

    #@fc
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@ff
    move-result v24

    #@100
    goto/16 :goto_26

    #@102
    :cond_102
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@105
    move-result v1

    #@106
    move/from16 v0, v26

    #@108
    if-eq v1, v0, :cond_127

    #@10a
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@10c
    new-instance v2, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string v3, "Overread allowed size end="

    #@113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v2

    #@117
    move/from16 v0, v26

    #@119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v2

    #@11d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v2

    #@121
    move-object/from16 v0, p1

    #@123
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@126
    throw v1

    #@127
    :cond_127
    new-instance v1, Lcom/google/android/gms/games/GameEntity;

    #@129
    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/games/GameEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@12c
    return-object v1

    #@12d
    nop

    #@12e
    :sswitch_data_12e
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_46
        0x3 -> :sswitch_4d
        0x4 -> :sswitch_54
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_62
        0x7 -> :sswitch_69
        0x8 -> :sswitch_75
        0x9 -> :sswitch_81
        0xa -> :sswitch_8d
        0xb -> :sswitch_94
        0xc -> :sswitch_9b
        0xd -> :sswitch_a2
        0xe -> :sswitch_aa
        0xf -> :sswitch_b2
        0x10 -> :sswitch_c2
        0x11 -> :sswitch_ba
        0x12 -> :sswitch_da
        0x13 -> :sswitch_d2
        0x14 -> :sswitch_ea
        0x15 -> :sswitch_e2
        0x16 -> :sswitch_fa
        0x17 -> :sswitch_f2
        0x3e8 -> :sswitch_ca
    .end sparse-switch
.end method

.method public cb(I)[Lcom/google/android/gms/games/GameEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/GameEntity;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GameEntityCreator;->bd(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GameEntityCreator;->cb(I)[Lcom/google/android/gms/games/GameEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
