.class public Lcom/google/android/gms/wallet/wobs/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/wobs/CommonWalletObject;",
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

.method static a(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->eC:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajq:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->name:Ljava/lang/String;

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajj:Ljava/lang/String;

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajm:Ljava/lang/String;

    #@28
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2b
    const/4 v1, 0x7

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajn:Ljava/lang/String;

    #@2e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@31
    const/16 v1, 0x8

    #@33
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajo:Ljava/lang/String;

    #@35
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@38
    const/16 v1, 0x9

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajp:Ljava/lang/String;

    #@3c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3f
    const/16 v1, 0xa

    #@41
    iget v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->state:I

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@46
    const/16 v1, 0xb

    #@48
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajr:Ljava/util/ArrayList;

    #@4a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@4d
    const/16 v1, 0xc

    #@4f
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajs:Lcom/google/android/gms/wallet/wobs/l;

    #@51
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@54
    const/16 v1, 0xd

    #@56
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajt:Ljava/util/ArrayList;

    #@58
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@5b
    const/16 v1, 0xe

    #@5d
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->aju:Ljava/lang/String;

    #@5f
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@62
    const/16 v1, 0xf

    #@64
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajv:Ljava/lang/String;

    #@66
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@69
    const/16 v1, 0x11

    #@6b
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajx:Z

    #@6d
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@70
    const/16 v1, 0x10

    #@72
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajw:Ljava/util/ArrayList;

    #@74
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@77
    const/16 v1, 0x13

    #@79
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajz:Ljava/util/ArrayList;

    #@7b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@7e
    const/16 v1, 0x12

    #@80
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajy:Ljava/util/ArrayList;

    #@82
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@85
    const/16 v1, 0x14

    #@87
    iget-object v2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->ajA:Ljava/util/ArrayList;

    #@89
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@8c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@8f
    return-void
.end method


# virtual methods
.method public cj(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
    .registers 27

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v23

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
    const/4 v8, 0x0

    #@a
    const/4 v9, 0x0

    #@b
    const/4 v10, 0x0

    #@c
    const/4 v11, 0x0

    #@d
    const/4 v12, 0x0

    #@e
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@11
    move-result-object v13

    #@12
    const/4 v14, 0x0

    #@13
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@16
    move-result-object v15

    #@17
    const/16 v16, 0x0

    #@19
    const/16 v17, 0x0

    #@1b
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@1e
    move-result-object v18

    #@1f
    const/16 v19, 0x0

    #@21
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@24
    move-result-object v20

    #@25
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@28
    move-result-object v21

    #@29
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@2c
    move-result-object v22

    #@2d
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@30
    move-result v2

    #@31
    move/from16 v0, v23

    #@33
    if-ge v2, v0, :cond_f2

    #@35
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@38
    move-result v2

    #@39
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@3c
    move-result v24

    #@3d
    packed-switch v24, :pswitch_data_11e

    #@40
    move-object/from16 v0, p1

    #@42
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@45
    goto :goto_2d

    #@46
    :pswitch_46
    move-object/from16 v0, p1

    #@48
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@4b
    move-result v3

    #@4c
    goto :goto_2d

    #@4d
    :pswitch_4d
    move-object/from16 v0, p1

    #@4f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    goto :goto_2d

    #@54
    :pswitch_54
    move-object/from16 v0, p1

    #@56
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    goto :goto_2d

    #@5b
    :pswitch_5b
    move-object/from16 v0, p1

    #@5d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    goto :goto_2d

    #@62
    :pswitch_62
    move-object/from16 v0, p1

    #@64
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    goto :goto_2d

    #@69
    :pswitch_69
    move-object/from16 v0, p1

    #@6b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    goto :goto_2d

    #@70
    :pswitch_70
    move-object/from16 v0, p1

    #@72
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    goto :goto_2d

    #@77
    :pswitch_77
    move-object/from16 v0, p1

    #@79
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@7c
    move-result-object v10

    #@7d
    goto :goto_2d

    #@7e
    :pswitch_7e
    move-object/from16 v0, p1

    #@80
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@83
    move-result-object v11

    #@84
    goto :goto_2d

    #@85
    :pswitch_85
    move-object/from16 v0, p1

    #@87
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@8a
    move-result v12

    #@8b
    goto :goto_2d

    #@8c
    :pswitch_8c
    sget-object v13, Lcom/google/android/gms/wallet/wobs/p;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8e
    move-object/from16 v0, p1

    #@90
    invoke-static {v0, v2, v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@93
    move-result-object v13

    #@94
    goto :goto_2d

    #@95
    :pswitch_95
    sget-object v14, Lcom/google/android/gms/wallet/wobs/l;->CREATOR:Landroid/os/Parcelable$Creator;

    #@97
    move-object/from16 v0, p1

    #@99
    invoke-static {v0, v2, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@9c
    move-result-object v2

    #@9d
    check-cast v2, Lcom/google/android/gms/wallet/wobs/l;

    #@9f
    move-object v14, v2

    #@a0
    goto :goto_2d

    #@a1
    :pswitch_a1
    sget-object v15, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@a3
    move-object/from16 v0, p1

    #@a5
    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@a8
    move-result-object v15

    #@a9
    goto :goto_2d

    #@aa
    :pswitch_aa
    move-object/from16 v0, p1

    #@ac
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@af
    move-result-object v16

    #@b0
    goto/16 :goto_2d

    #@b2
    :pswitch_b2
    move-object/from16 v0, p1

    #@b4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@b7
    move-result-object v17

    #@b8
    goto/16 :goto_2d

    #@ba
    :pswitch_ba
    move-object/from16 v0, p1

    #@bc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@bf
    move-result v19

    #@c0
    goto/16 :goto_2d

    #@c2
    :pswitch_c2
    sget-object v18, Lcom/google/android/gms/wallet/wobs/d;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c4
    move-object/from16 v0, p1

    #@c6
    move-object/from16 v1, v18

    #@c8
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@cb
    move-result-object v18

    #@cc
    goto/16 :goto_2d

    #@ce
    :pswitch_ce
    sget-object v21, Lcom/google/android/gms/wallet/wobs/j;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d0
    move-object/from16 v0, p1

    #@d2
    move-object/from16 v1, v21

    #@d4
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@d7
    move-result-object v21

    #@d8
    goto/16 :goto_2d

    #@da
    :pswitch_da
    sget-object v20, Lcom/google/android/gms/wallet/wobs/n;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dc
    move-object/from16 v0, p1

    #@de
    move-object/from16 v1, v20

    #@e0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@e3
    move-result-object v20

    #@e4
    goto/16 :goto_2d

    #@e6
    :pswitch_e6
    sget-object v22, Lcom/google/android/gms/wallet/wobs/n;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e8
    move-object/from16 v0, p1

    #@ea
    move-object/from16 v1, v22

    #@ec
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@ef
    move-result-object v22

    #@f0
    goto/16 :goto_2d

    #@f2
    :cond_f2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@f5
    move-result v2

    #@f6
    move/from16 v0, v23

    #@f8
    if-eq v2, v0, :cond_117

    #@fa
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@fc
    new-instance v3, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string v4, "Overread allowed size end="

    #@103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v3

    #@107
    move/from16 v0, v23

    #@109
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v3

    #@10d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v3

    #@111
    move-object/from16 v0, p1

    #@113
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@116
    throw v2

    #@117
    :cond_117
    new-instance v2, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@119
    invoke-direct/range {v2 .. v22}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/l;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@11c
    return-object v2

    #@11d
    nop

    #@11e
    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_46
        :pswitch_4d
        :pswitch_54
        :pswitch_5b
        :pswitch_62
        :pswitch_69
        :pswitch_70
        :pswitch_77
        :pswitch_7e
        :pswitch_85
        :pswitch_8c
        :pswitch_95
        :pswitch_a1
        :pswitch_aa
        :pswitch_b2
        :pswitch_c2
        :pswitch_ba
        :pswitch_da
        :pswitch_ce
        :pswitch_e6
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/wobs/a;->cj(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dR(I)[Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/wobs/a;->dR(I)[Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
