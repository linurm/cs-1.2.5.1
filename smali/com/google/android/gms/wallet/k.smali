.class public Lcom/google/android/gms/wallet/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/MaskedWallet;",
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

.method static a(Lcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiQ:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiR:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiW:[Ljava/lang/String;

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiT:Ljava/lang/String;

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiU:Lcom/google/android/gms/wallet/Address;

    #@28
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2b
    const/4 v1, 0x7

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiV:Lcom/google/android/gms/wallet/Address;

    #@2e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@31
    const/16 v1, 0x8

    #@33
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajC:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@35
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@38
    const/16 v1, 0x9

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajD:[Lcom/google/android/gms/wallet/OfferWalletObject;

    #@3c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@3f
    const/16 v1, 0xa

    #@41
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@43
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@46
    const/16 v1, 0xb

    #@48
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@4a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@4d
    const/16 v1, 0xc

    #@4f
    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

    #@51
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@54
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@57
    return-void
.end method


# virtual methods
.method public bZ(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 18

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v14

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
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@13
    move-result v1

    #@14
    if-ge v1, v14, :cond_a0

    #@16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@19
    move-result v1

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1d
    move-result v15

    #@1e
    packed-switch v15, :pswitch_data_c8

    #@21
    move-object/from16 v0, p1

    #@23
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@26
    goto :goto_10

    #@27
    :pswitch_27
    move-object/from16 v0, p1

    #@29
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2c
    move-result v2

    #@2d
    goto :goto_10

    #@2e
    :pswitch_2e
    move-object/from16 v0, p1

    #@30
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    goto :goto_10

    #@35
    :pswitch_35
    move-object/from16 v0, p1

    #@37
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    goto :goto_10

    #@3c
    :pswitch_3c
    move-object/from16 v0, p1

    #@3e
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    goto :goto_10

    #@43
    :pswitch_43
    move-object/from16 v0, p1

    #@45
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    goto :goto_10

    #@4a
    :pswitch_4a
    sget-object v7, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Lcom/google/android/gms/wallet/Address;

    #@54
    move-object v7, v1

    #@55
    goto :goto_10

    #@56
    :pswitch_56
    sget-object v8, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@58
    move-object/from16 v0, p1

    #@5a
    invoke-static {v0, v1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Lcom/google/android/gms/wallet/Address;

    #@60
    move-object v8, v1

    #@61
    goto :goto_10

    #@62
    :pswitch_62
    sget-object v9, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64
    move-object/from16 v0, p1

    #@66
    invoke-static {v0, v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    check-cast v1, [Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    #@6c
    move-object v9, v1

    #@6d
    goto :goto_10

    #@6e
    :pswitch_6e
    sget-object v10, Lcom/google/android/gms/wallet/OfferWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    #@70
    move-object/from16 v0, p1

    #@72
    invoke-static {v0, v1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@75
    move-result-object v1

    #@76
    check-cast v1, [Lcom/google/android/gms/wallet/OfferWalletObject;

    #@78
    move-object v10, v1

    #@79
    goto :goto_10

    #@7a
    :pswitch_7a
    sget-object v11, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7c
    move-object/from16 v0, p1

    #@7e
    invoke-static {v0, v1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@81
    move-result-object v1

    #@82
    check-cast v1, Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@84
    move-object v11, v1

    #@85
    goto :goto_10

    #@86
    :pswitch_86
    sget-object v12, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88
    move-object/from16 v0, p1

    #@8a
    invoke-static {v0, v1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@8d
    move-result-object v1

    #@8e
    check-cast v1, Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@90
    move-object v12, v1

    #@91
    goto/16 :goto_10

    #@93
    :pswitch_93
    sget-object v13, Lcom/google/android/gms/wallet/InstrumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@95
    move-object/from16 v0, p1

    #@97
    invoke-static {v0, v1, v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@9a
    move-result-object v1

    #@9b
    check-cast v1, [Lcom/google/android/gms/wallet/InstrumentInfo;

    #@9d
    move-object v13, v1

    #@9e
    goto/16 :goto_10

    #@a0
    :cond_a0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@a3
    move-result v1

    #@a4
    if-eq v1, v14, :cond_c1

    #@a6
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@a8
    new-instance v2, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string v3, "Overread allowed size end="

    #@af
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v2

    #@b7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v2

    #@bb
    move-object/from16 v0, p1

    #@bd
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@c0
    throw v1

    #@c1
    :cond_c1
    new-instance v1, Lcom/google/android/gms/wallet/MaskedWallet;

    #@c3
    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/wallet/MaskedWallet;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Lcom/google/android/gms/wallet/LoyaltyWalletObject;[Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V

    #@c6
    return-object v1

    #@c7
    nop

    #@c8
    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2e
        :pswitch_35
        :pswitch_3c
        :pswitch_43
        :pswitch_4a
        :pswitch_56
        :pswitch_62
        :pswitch_6e
        :pswitch_7a
        :pswitch_86
        :pswitch_93
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/k;->bZ(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/MaskedWallet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dF(I)[Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/MaskedWallet;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/k;->dF(I)[Lcom/google/android/gms/wallet/MaskedWallet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
