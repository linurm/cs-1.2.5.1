.class public Lcom/google/android/gms/wallet/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/Address;",
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

.method static a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/Address;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->UH:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->UI:Ljava/lang/String;

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->UJ:Ljava/lang/String;

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->rf:Ljava/lang/String;

    #@28
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2b
    const/4 v1, 0x7

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->aiI:Ljava/lang/String;

    #@2e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@31
    const/16 v1, 0x8

    #@33
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->aiJ:Ljava/lang/String;

    #@35
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@38
    const/16 v1, 0x9

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->UO:Ljava/lang/String;

    #@3c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3f
    const/16 v1, 0xa

    #@41
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->UQ:Ljava/lang/String;

    #@43
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@46
    const/16 v1, 0xb

    #@48
    iget-boolean v2, p0, Lcom/google/android/gms/wallet/Address;->UR:Z

    #@4a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@4d
    const/16 v1, 0xc

    #@4f
    iget-object v2, p0, Lcom/google/android/gms/wallet/Address;->US:Ljava/lang/String;

    #@51
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@54
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@57
    return-void
.end method


# virtual methods
.method public bQ(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/Address;
    .registers 18

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v1

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
    move-result v14

    #@14
    if-ge v14, v1, :cond_7b

    #@16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@19
    move-result v14

    #@1a
    invoke-static {v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1d
    move-result v15

    #@1e
    packed-switch v15, :pswitch_data_a2

    #@21
    move-object/from16 v0, p1

    #@23
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@26
    goto :goto_10

    #@27
    :pswitch_27
    move-object/from16 v0, p1

    #@29
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2c
    move-result v2

    #@2d
    goto :goto_10

    #@2e
    :pswitch_2e
    move-object/from16 v0, p1

    #@30
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    goto :goto_10

    #@35
    :pswitch_35
    move-object/from16 v0, p1

    #@37
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    goto :goto_10

    #@3c
    :pswitch_3c
    move-object/from16 v0, p1

    #@3e
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    goto :goto_10

    #@43
    :pswitch_43
    move-object/from16 v0, p1

    #@45
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    goto :goto_10

    #@4a
    :pswitch_4a
    move-object/from16 v0, p1

    #@4c
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    goto :goto_10

    #@51
    :pswitch_51
    move-object/from16 v0, p1

    #@53
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    goto :goto_10

    #@58
    :pswitch_58
    move-object/from16 v0, p1

    #@5a
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    goto :goto_10

    #@5f
    :pswitch_5f
    move-object/from16 v0, p1

    #@61
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@64
    move-result-object v10

    #@65
    goto :goto_10

    #@66
    :pswitch_66
    move-object/from16 v0, p1

    #@68
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@6b
    move-result-object v11

    #@6c
    goto :goto_10

    #@6d
    :pswitch_6d
    move-object/from16 v0, p1

    #@6f
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@72
    move-result v12

    #@73
    goto :goto_10

    #@74
    :pswitch_74
    move-object/from16 v0, p1

    #@76
    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@79
    move-result-object v13

    #@7a
    goto :goto_10

    #@7b
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@7e
    move-result v14

    #@7f
    if-eq v14, v1, :cond_9c

    #@81
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@83
    new-instance v3, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string v4, "Overread allowed size end="

    #@8a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    move-object/from16 v0, p1

    #@98
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@9b
    throw v2

    #@9c
    :cond_9c
    new-instance v1, Lcom/google/android/gms/wallet/Address;

    #@9e
    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/wallet/Address;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    #@a1
    return-object v1

    #@a2
    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2e
        :pswitch_35
        :pswitch_3c
        :pswitch_43
        :pswitch_4a
        :pswitch_51
        :pswitch_58
        :pswitch_5f
        :pswitch_66
        :pswitch_6d
        :pswitch_74
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/a;->bQ(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/Address;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dw(I)[Lcom/google/android/gms/wallet/Address;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/Address;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/a;->dw(I)[Lcom/google/android/gms/wallet/Address;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
