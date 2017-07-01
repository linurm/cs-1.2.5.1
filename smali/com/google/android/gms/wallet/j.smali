.class public Lcom/google/android/gms/wallet/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/LoyaltyWalletObject;",
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

.method static a(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eC:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->aji:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajj:Ljava/lang/String;

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajk:Ljava/lang/String;

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajl:Ljava/lang/String;

    #@28
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2b
    const/4 v1, 0x7

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajm:Ljava/lang/String;

    #@2e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@31
    const/16 v1, 0x8

    #@33
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajn:Ljava/lang/String;

    #@35
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@38
    const/16 v1, 0x9

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajo:Ljava/lang/String;

    #@3c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3f
    const/16 v1, 0xa

    #@41
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajp:Ljava/lang/String;

    #@43
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@46
    const/16 v1, 0xb

    #@48
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajq:Ljava/lang/String;

    #@4a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@4d
    const/16 v1, 0xc

    #@4f
    iget v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I

    #@51
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@54
    const/16 v1, 0xd

    #@56
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajr:Ljava/util/ArrayList;

    #@58
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@5b
    const/16 v1, 0xe

    #@5d
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajs:Lcom/google/android/gms/wallet/wobs/l;

    #@5f
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@62
    const/16 v1, 0xf

    #@64
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajt:Ljava/util/ArrayList;

    #@66
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@69
    const/16 v1, 0x11

    #@6b
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajv:Ljava/lang/String;

    #@6d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@70
    const/16 v1, 0x10

    #@72
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->aju:Ljava/lang/String;

    #@74
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@77
    const/16 v1, 0x13

    #@79
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajx:Z

    #@7b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@7e
    const/16 v1, 0x12

    #@80
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajw:Ljava/util/ArrayList;

    #@82
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@85
    const/16 v1, 0x15

    #@87
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajz:Ljava/util/ArrayList;

    #@89
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@8c
    const/16 v1, 0x14

    #@8e
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajy:Ljava/util/ArrayList;

    #@90
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@93
    const/16 v1, 0x17

    #@95
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajB:Lcom/google/android/gms/wallet/wobs/f;

    #@97
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@9a
    const/16 v1, 0x16

    #@9c
    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajA:Ljava/util/ArrayList;

    #@9e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@a1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@a4
    return-void
.end method


# virtual methods
.method public bY(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/LoyaltyWalletObject;
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
    const/4 v13, 0x0

    #@f
    const/4 v14, 0x0

    #@10
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@13
    move-result-object v15

    #@14
    const/16 v16, 0x0

    #@16
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@19
    move-result-object v17

    #@1a
    const/16 v18, 0x0

    #@1c
    const/16 v19, 0x0

    #@1e
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@21
    move-result-object v20

    #@22
    const/16 v21, 0x0

    #@24
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@27
    move-result-object v22

    #@28
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@2b
    move-result-object v23

    #@2c
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@2f
    move-result-object v24

    #@30
    const/16 v25, 0x0

    #@32
    :goto_32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@35
    move-result v2

    #@36
    move/from16 v0, v26

    #@38
    if-ge v2, v0, :cond_11c

    #@3a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@3d
    move-result v2

    #@3e
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@41
    move-result v27

    #@42
    packed-switch v27, :pswitch_data_148

    #@45
    move-object/from16 v0, p1

    #@47
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@4a
    goto :goto_32

    #@4b
    :pswitch_4b
    move-object/from16 v0, p1

    #@4d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@50
    move-result v3

    #@51
    goto :goto_32

    #@52
    :pswitch_52
    move-object/from16 v0, p1

    #@54
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    goto :goto_32

    #@59
    :pswitch_59
    move-object/from16 v0, p1

    #@5b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    goto :goto_32

    #@60
    :pswitch_60
    move-object/from16 v0, p1

    #@62
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    goto :goto_32

    #@67
    :pswitch_67
    move-object/from16 v0, p1

    #@69
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    goto :goto_32

    #@6e
    :pswitch_6e
    move-object/from16 v0, p1

    #@70
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@73
    move-result-object v8

    #@74
    goto :goto_32

    #@75
    :pswitch_75
    move-object/from16 v0, p1

    #@77
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    goto :goto_32

    #@7c
    :pswitch_7c
    move-object/from16 v0, p1

    #@7e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    goto :goto_32

    #@83
    :pswitch_83
    move-object/from16 v0, p1

    #@85
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@88
    move-result-object v11

    #@89
    goto :goto_32

    #@8a
    :pswitch_8a
    move-object/from16 v0, p1

    #@8c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@8f
    move-result-object v12

    #@90
    goto :goto_32

    #@91
    :pswitch_91
    move-object/from16 v0, p1

    #@93
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@96
    move-result-object v13

    #@97
    goto :goto_32

    #@98
    :pswitch_98
    move-object/from16 v0, p1

    #@9a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@9d
    move-result v14

    #@9e
    goto :goto_32

    #@9f
    :pswitch_9f
    sget-object v15, Lcom/google/android/gms/wallet/wobs/p;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a1
    move-object/from16 v0, p1

    #@a3
    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@a6
    move-result-object v15

    #@a7
    goto :goto_32

    #@a8
    :pswitch_a8
    sget-object v16, Lcom/google/android/gms/wallet/wobs/l;->CREATOR:Landroid/os/Parcelable$Creator;

    #@aa
    move-object/from16 v0, p1

    #@ac
    move-object/from16 v1, v16

    #@ae
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@b1
    move-result-object v2

    #@b2
    check-cast v2, Lcom/google/android/gms/wallet/wobs/l;

    #@b4
    move-object/from16 v16, v2

    #@b6
    goto/16 :goto_32

    #@b8
    :pswitch_b8
    sget-object v17, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@ba
    move-object/from16 v0, p1

    #@bc
    move-object/from16 v1, v17

    #@be
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@c1
    move-result-object v17

    #@c2
    goto/16 :goto_32

    #@c4
    :pswitch_c4
    move-object/from16 v0, p1

    #@c6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@c9
    move-result-object v19

    #@ca
    goto/16 :goto_32

    #@cc
    :pswitch_cc
    move-object/from16 v0, p1

    #@ce
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@d1
    move-result-object v18

    #@d2
    goto/16 :goto_32

    #@d4
    :pswitch_d4
    move-object/from16 v0, p1

    #@d6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@d9
    move-result v21

    #@da
    goto/16 :goto_32

    #@dc
    :pswitch_dc
    sget-object v20, Lcom/google/android/gms/wallet/wobs/d;->CREATOR:Landroid/os/Parcelable$Creator;

    #@de
    move-object/from16 v0, p1

    #@e0
    move-object/from16 v1, v20

    #@e2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@e5
    move-result-object v20

    #@e6
    goto/16 :goto_32

    #@e8
    :pswitch_e8
    sget-object v23, Lcom/google/android/gms/wallet/wobs/j;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ea
    move-object/from16 v0, p1

    #@ec
    move-object/from16 v1, v23

    #@ee
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@f1
    move-result-object v23

    #@f2
    goto/16 :goto_32

    #@f4
    :pswitch_f4
    sget-object v22, Lcom/google/android/gms/wallet/wobs/n;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f6
    move-object/from16 v0, p1

    #@f8
    move-object/from16 v1, v22

    #@fa
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@fd
    move-result-object v22

    #@fe
    goto/16 :goto_32

    #@100
    :pswitch_100
    sget-object v25, Lcom/google/android/gms/wallet/wobs/f;->CREATOR:Landroid/os/Parcelable$Creator;

    #@102
    move-object/from16 v0, p1

    #@104
    move-object/from16 v1, v25

    #@106
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@109
    move-result-object v2

    #@10a
    check-cast v2, Lcom/google/android/gms/wallet/wobs/f;

    #@10c
    move-object/from16 v25, v2

    #@10e
    goto/16 :goto_32

    #@110
    :pswitch_110
    sget-object v24, Lcom/google/android/gms/wallet/wobs/n;->CREATOR:Landroid/os/Parcelable$Creator;

    #@112
    move-object/from16 v0, p1

    #@114
    move-object/from16 v1, v24

    #@116
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@119
    move-result-object v24

    #@11a
    goto/16 :goto_32

    #@11c
    :cond_11c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@11f
    move-result v2

    #@120
    move/from16 v0, v26

    #@122
    if-eq v2, v0, :cond_141

    #@124
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@126
    new-instance v3, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string v4, "Overread allowed size end="

    #@12d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v3

    #@131
    move/from16 v0, v26

    #@133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@136
    move-result-object v3

    #@137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v3

    #@13b
    move-object/from16 v0, p1

    #@13d
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@140
    throw v2

    #@141
    :cond_141
    new-instance v2, Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@143
    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/wallet/LoyaltyWalletObject;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/l;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/f;)V

    #@146
    return-object v2

    #@147
    nop

    #@148
    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_52
        :pswitch_59
        :pswitch_60
        :pswitch_67
        :pswitch_6e
        :pswitch_75
        :pswitch_7c
        :pswitch_83
        :pswitch_8a
        :pswitch_91
        :pswitch_98
        :pswitch_9f
        :pswitch_a8
        :pswitch_b8
        :pswitch_cc
        :pswitch_c4
        :pswitch_dc
        :pswitch_d4
        :pswitch_f4
        :pswitch_e8
        :pswitch_110
        :pswitch_100
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j;->bY(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dE(I)[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j;->dE(I)[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
