.class public Lcom/google/android/gms/games/PlayerEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/PlayerEntity;",
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

.method static a(Lcom/google/android/gms/games/PlayerEntity;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getPlayerId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/4 v1, 0x2

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@15
    const/4 v1, 0x3

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    #@21
    move-result-object v2

    #@22
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getRetrievedTimestamp()J

    #@29
    move-result-wide v2

    #@2a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->gS()I

    #@31
    move-result v2

    #@32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getLastPlayedWithTimestamp()J

    #@39
    move-result-wide v2

    #@3a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUrl()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@46
    const/16 v1, 0x9

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUrl()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@4f
    const/16 v1, 0xe

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getTitle()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@58
    const/16 v1, 0xf

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->gU()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@61
    const/16 v1, 0x11

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->gT()Z

    #@66
    move-result v2

    #@67
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@6a
    const/16 v1, 0x10

    #@6c
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    #@6f
    move-result-object v2

    #@70
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@73
    const/16 v1, 0x3e8

    #@75
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getVersionCode()I

    #@78
    move-result v2

    #@79
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@7c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@7f
    return-void
.end method


# virtual methods
.method public be(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;
    .registers 23

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v19

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
    const/4 v10, 0x0

    #@c
    const-wide/16 v11, 0x0

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
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@1a
    move-result v2

    #@1b
    move/from16 v0, v19

    #@1d
    if-ge v2, v0, :cond_ae

    #@1f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@22
    move-result v2

    #@23
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@26
    move-result v20

    #@27
    sparse-switch v20, :sswitch_data_da

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@2f
    goto :goto_17

    #@30
    :sswitch_30
    move-object/from16 v0, p1

    #@32
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    goto :goto_17

    #@37
    :sswitch_37
    move-object/from16 v0, p1

    #@39
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    goto :goto_17

    #@3e
    :sswitch_3e
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    move-object/from16 v0, p1

    #@42
    invoke-static {v0, v2, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroid/net/Uri;

    #@48
    move-object v6, v2

    #@49
    goto :goto_17

    #@4a
    :sswitch_4a
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-static {v0, v2, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Landroid/net/Uri;

    #@54
    move-object v7, v2

    #@55
    goto :goto_17

    #@56
    :sswitch_56
    move-object/from16 v0, p1

    #@58
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@5b
    move-result-wide v8

    #@5c
    goto :goto_17

    #@5d
    :sswitch_5d
    move-object/from16 v0, p1

    #@5f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@62
    move-result v10

    #@63
    goto :goto_17

    #@64
    :sswitch_64
    move-object/from16 v0, p1

    #@66
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@69
    move-result-wide v11

    #@6a
    goto :goto_17

    #@6b
    :sswitch_6b
    move-object/from16 v0, p1

    #@6d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@70
    move-result-object v13

    #@71
    goto :goto_17

    #@72
    :sswitch_72
    move-object/from16 v0, p1

    #@74
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@77
    move-result-object v14

    #@78
    goto :goto_17

    #@79
    :sswitch_79
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@7e
    move-result-object v15

    #@7f
    goto :goto_17

    #@80
    :sswitch_80
    sget-object v16, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->CREATOR:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntityCreator;

    #@82
    move-object/from16 v0, p1

    #@84
    move-object/from16 v1, v16

    #@86
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@89
    move-result-object v2

    #@8a
    check-cast v2, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@8c
    move-object/from16 v16, v2

    #@8e
    goto :goto_17

    #@8f
    :sswitch_8f
    move-object/from16 v0, p1

    #@91
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@94
    move-result v18

    #@95
    goto :goto_17

    #@96
    :sswitch_96
    sget-object v17, Lcom/google/android/gms/games/PlayerLevelInfo;->CREATOR:Lcom/google/android/gms/games/PlayerLevelInfoCreator;

    #@98
    move-object/from16 v0, p1

    #@9a
    move-object/from16 v1, v17

    #@9c
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@9f
    move-result-object v2

    #@a0
    check-cast v2, Lcom/google/android/gms/games/PlayerLevelInfo;

    #@a2
    move-object/from16 v17, v2

    #@a4
    goto/16 :goto_17

    #@a6
    :sswitch_a6
    move-object/from16 v0, p1

    #@a8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@ab
    move-result v3

    #@ac
    goto/16 :goto_17

    #@ae
    :cond_ae
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@b1
    move-result v2

    #@b2
    move/from16 v0, v19

    #@b4
    if-eq v2, v0, :cond_d3

    #@b6
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@b8
    new-instance v3, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string v4, "Overread allowed size end="

    #@bf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    move/from16 v0, v19

    #@c5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v3

    #@cd
    move-object/from16 v0, p1

    #@cf
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@d2
    throw v2

    #@d3
    :cond_d3
    new-instance v2, Lcom/google/android/gms/games/PlayerEntity;

    #@d5
    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/games/PlayerEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Lcom/google/android/gms/games/PlayerLevelInfo;Z)V

    #@d8
    return-object v2

    #@d9
    nop

    #@da
    :sswitch_data_da
    .sparse-switch
        0x1 -> :sswitch_30
        0x2 -> :sswitch_37
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_56
        0x6 -> :sswitch_5d
        0x7 -> :sswitch_64
        0x8 -> :sswitch_6b
        0x9 -> :sswitch_72
        0xe -> :sswitch_79
        0xf -> :sswitch_80
        0x10 -> :sswitch_96
        0x11 -> :sswitch_8f
        0x3e8 -> :sswitch_a6
    .end sparse-switch
.end method

.method public cc(I)[Lcom/google/android/gms/games/PlayerEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/PlayerEntity;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerEntityCreator;->be(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerEntityCreator;->cc(I)[Lcom/google/android/gms/games/PlayerEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
