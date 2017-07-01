.class public Lcom/google/android/gms/wallet/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
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

.method static a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiR:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajF:Z

    #@16
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajG:Z

    #@1c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajH:Z

    #@22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajI:Ljava/lang/String;

    #@28
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2b
    const/4 v1, 0x7

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiL:Ljava/lang/String;

    #@2e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@31
    const/16 v1, 0x8

    #@33
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajJ:Ljava/lang/String;

    #@35
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@38
    const/16 v1, 0x9

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aja:Lcom/google/android/gms/wallet/Cart;

    #@3c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@3f
    const/16 v1, 0xa

    #@41
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajK:Z

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@46
    const/16 v1, 0xb

    #@48
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajL:Z

    #@4a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@4d
    const/16 v1, 0xc

    #@4f
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajM:[Lcom/google/android/gms/wallet/CountrySpecification;

    #@51
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@54
    const/16 v1, 0xd

    #@56
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajN:Z

    #@58
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@5b
    const/16 v1, 0xe

    #@5d
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajO:Z

    #@5f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@62
    const/16 v1, 0xf

    #@64
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajP:Ljava/util/ArrayList;

    #@66
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@69
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@6c
    return-void
.end method


# virtual methods
.method public ca(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
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
    const/4 v15, 0x1

    #@11
    const/16 v16, 0x1

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
    if-ge v2, v0, :cond_a7

    #@1d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@20
    move-result v2

    #@21
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@24
    move-result v19

    #@25
    packed-switch v19, :pswitch_data_d2

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@2d
    goto :goto_15

    #@2e
    :pswitch_2e
    move-object/from16 v0, p1

    #@30
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@33
    move-result v3

    #@34
    goto :goto_15

    #@35
    :pswitch_35
    move-object/from16 v0, p1

    #@37
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    goto :goto_15

    #@3c
    :pswitch_3c
    move-object/from16 v0, p1

    #@3e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@41
    move-result v5

    #@42
    goto :goto_15

    #@43
    :pswitch_43
    move-object/from16 v0, p1

    #@45
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@48
    move-result v6

    #@49
    goto :goto_15

    #@4a
    :pswitch_4a
    move-object/from16 v0, p1

    #@4c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@4f
    move-result v7

    #@50
    goto :goto_15

    #@51
    :pswitch_51
    move-object/from16 v0, p1

    #@53
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    goto :goto_15

    #@58
    :pswitch_58
    move-object/from16 v0, p1

    #@5a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    goto :goto_15

    #@5f
    :pswitch_5f
    move-object/from16 v0, p1

    #@61
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@64
    move-result-object v10

    #@65
    goto :goto_15

    #@66
    :pswitch_66
    sget-object v11, Lcom/google/android/gms/wallet/Cart;->CREATOR:Landroid/os/Parcelable$Creator;

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-static {v0, v2, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Lcom/google/android/gms/wallet/Cart;

    #@70
    move-object v11, v2

    #@71
    goto :goto_15

    #@72
    :pswitch_72
    move-object/from16 v0, p1

    #@74
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@77
    move-result v12

    #@78
    goto :goto_15

    #@79
    :pswitch_79
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@7e
    move-result v13

    #@7f
    goto :goto_15

    #@80
    :pswitch_80
    sget-object v14, Lcom/google/android/gms/wallet/CountrySpecification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@82
    move-object/from16 v0, p1

    #@84
    invoke-static {v0, v2, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@87
    move-result-object v2

    #@88
    check-cast v2, [Lcom/google/android/gms/wallet/CountrySpecification;

    #@8a
    move-object v14, v2

    #@8b
    goto :goto_15

    #@8c
    :pswitch_8c
    move-object/from16 v0, p1

    #@8e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@91
    move-result v15

    #@92
    goto :goto_15

    #@93
    :pswitch_93
    move-object/from16 v0, p1

    #@95
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@98
    move-result v16

    #@99
    goto/16 :goto_15

    #@9b
    :pswitch_9b
    sget-object v17, Lcom/google/android/gms/identity/intents/model/CountrySpecification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9d
    move-object/from16 v0, p1

    #@9f
    move-object/from16 v1, v17

    #@a1
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@a4
    move-result-object v17

    #@a5
    goto/16 :goto_15

    #@a7
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@aa
    move-result v2

    #@ab
    move/from16 v0, v18

    #@ad
    if-eq v2, v0, :cond_cc

    #@af
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@b1
    new-instance v3, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string v4, "Overread allowed size end="

    #@b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    move/from16 v0, v18

    #@be
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v3

    #@c6
    move-object/from16 v0, p1

    #@c8
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@cb
    throw v2

    #@cc
    :cond_cc
    new-instance v2, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@ce
    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;)V

    #@d1
    return-object v2

    #@d2
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_35
        :pswitch_3c
        :pswitch_43
        :pswitch_4a
        :pswitch_51
        :pswitch_58
        :pswitch_5f
        :pswitch_66
        :pswitch_72
        :pswitch_79
        :pswitch_80
        :pswitch_8c
        :pswitch_93
        :pswitch_9b
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/l;->ca(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dG(I)[Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/l;->dG(I)[Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
