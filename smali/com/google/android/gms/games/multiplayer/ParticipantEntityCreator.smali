.class public Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
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

.method static a(Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getParticipantId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getDisplayName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getIconImageUri()Landroid/net/Uri;

    #@22
    move-result-object v2

    #@23
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getHiResImageUri()Landroid/net/Uri;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getStatus()I

    #@32
    move-result v2

    #@33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@36
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->gW()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3e
    const/4 v1, 0x7

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->isConnectedToRoom()Z

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@46
    const/16 v1, 0x8

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getPlayer()Lcom/google/android/gms/games/Player;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@4f
    const/16 v1, 0x9

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getCapabilities()I

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@58
    const/16 v1, 0xa

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@61
    const/16 v1, 0xb

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getIconImageUrl()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@6a
    const/16 v1, 0xc

    #@6c
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getHiResImageUrl()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@73
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@76
    return-void
.end method


# virtual methods
.method public bm(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
    .registers 19

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v15

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
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@14
    move-result v1

    #@15
    if-ge v1, v15, :cond_98

    #@17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1e
    move-result v16

    #@1f
    sparse-switch v16, :sswitch_data_c0

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@27
    goto :goto_11

    #@28
    :sswitch_28
    move-object/from16 v0, p1

    #@2a
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    goto :goto_11

    #@2f
    :sswitch_2f
    move-object/from16 v0, p1

    #@31
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@34
    move-result v2

    #@35
    goto :goto_11

    #@36
    :sswitch_36
    move-object/from16 v0, p1

    #@38
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    goto :goto_11

    #@3d
    :sswitch_3d
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Landroid/net/Uri;

    #@47
    move-object v5, v1

    #@48
    goto :goto_11

    #@49
    :sswitch_49
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4b
    move-object/from16 v0, p1

    #@4d
    invoke-static {v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@50
    move-result-object v1

    #@51
    check-cast v1, Landroid/net/Uri;

    #@53
    move-object v6, v1

    #@54
    goto :goto_11

    #@55
    :sswitch_55
    move-object/from16 v0, p1

    #@57
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@5a
    move-result v7

    #@5b
    goto :goto_11

    #@5c
    :sswitch_5c
    move-object/from16 v0, p1

    #@5e
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    goto :goto_11

    #@63
    :sswitch_63
    move-object/from16 v0, p1

    #@65
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@68
    move-result v9

    #@69
    goto :goto_11

    #@6a
    :sswitch_6a
    sget-object v10, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6c
    move-object/from16 v0, p1

    #@6e
    invoke-static {v0, v1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@71
    move-result-object v1

    #@72
    check-cast v1, Lcom/google/android/gms/games/PlayerEntity;

    #@74
    move-object v10, v1

    #@75
    goto :goto_11

    #@76
    :sswitch_76
    move-object/from16 v0, p1

    #@78
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@7b
    move-result v11

    #@7c
    goto :goto_11

    #@7d
    :sswitch_7d
    sget-object v12, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

    #@7f
    move-object/from16 v0, p1

    #@81
    invoke-static {v0, v1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@84
    move-result-object v1

    #@85
    check-cast v1, Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@87
    move-object v12, v1

    #@88
    goto :goto_11

    #@89
    :sswitch_89
    move-object/from16 v0, p1

    #@8b
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@8e
    move-result-object v13

    #@8f
    goto :goto_11

    #@90
    :sswitch_90
    move-object/from16 v0, p1

    #@92
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@95
    move-result-object v14

    #@96
    goto/16 :goto_11

    #@98
    :cond_98
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@9b
    move-result v1

    #@9c
    if-eq v1, v15, :cond_b9

    #@9e
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@a0
    new-instance v2, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string v3, "Overread allowed size end="

    #@a7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v2

    #@ab
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    move-object/from16 v0, p1

    #@b5
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@b8
    throw v1

    #@b9
    :cond_b9
    new-instance v1, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@bb
    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLcom/google/android/gms/games/PlayerEntity;ILcom/google/android/gms/games/multiplayer/ParticipantResult;Ljava/lang/String;Ljava/lang/String;)V

    #@be
    return-object v1

    #@bf
    nop

    #@c0
    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_36
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_49
        0x5 -> :sswitch_55
        0x6 -> :sswitch_5c
        0x7 -> :sswitch_63
        0x8 -> :sswitch_6a
        0x9 -> :sswitch_76
        0xa -> :sswitch_7d
        0xb -> :sswitch_89
        0xc -> :sswitch_90
        0x3e8 -> :sswitch_2f
    .end sparse-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;->bm(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cy(I)[Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;->cy(I)[Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
