.class public Lcom/google/android/gms/identity/intents/model/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/identity/intents/model/UserAddress;",
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

.method static a(Lcom/google/android/gms/identity/intents/model/UserAddress;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/identity/intents/model/UserAddress;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UH:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UI:Ljava/lang/String;

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UJ:Ljava/lang/String;

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UK:Ljava/lang/String;

    #@28
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2b
    const/4 v1, 0x7

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UL:Ljava/lang/String;

    #@2e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@31
    const/16 v1, 0x8

    #@33
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UM:Ljava/lang/String;

    #@35
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@38
    const/16 v1, 0x9

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UN:Ljava/lang/String;

    #@3c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3f
    const/16 v1, 0xa

    #@41
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->rf:Ljava/lang/String;

    #@43
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@46
    const/16 v1, 0xb

    #@48
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UO:Ljava/lang/String;

    #@4a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@4d
    const/16 v1, 0xc

    #@4f
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UP:Ljava/lang/String;

    #@51
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@54
    const/16 v1, 0xd

    #@56
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UQ:Ljava/lang/String;

    #@58
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@5b
    const/16 v1, 0xe

    #@5d
    iget-boolean v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UR:Z

    #@5f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@62
    const/16 v1, 0xf

    #@64
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->US:Ljava/lang/String;

    #@66
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@69
    const/16 v1, 0x10

    #@6b
    iget-object v2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UT:Ljava/lang/String;

    #@6d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@70
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@73
    return-void
.end method


# virtual methods
.method public br(Landroid/os/Parcel;)Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 23

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v2

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
    move-result v19

    #@1b
    move/from16 v0, v19

    #@1d
    if-ge v0, v2, :cond_c7

    #@1f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@22
    move-result v19

    #@23
    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@26
    move-result v20

    #@27
    packed-switch v20, :pswitch_data_f0

    #@2a
    move-object/from16 v0, p1

    #@2c
    move/from16 v1, v19

    #@2e
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@31
    goto :goto_17

    #@32
    :pswitch_32
    move-object/from16 v0, p1

    #@34
    move/from16 v1, v19

    #@36
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@39
    move-result v3

    #@3a
    goto :goto_17

    #@3b
    :pswitch_3b
    move-object/from16 v0, p1

    #@3d
    move/from16 v1, v19

    #@3f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    goto :goto_17

    #@44
    :pswitch_44
    move-object/from16 v0, p1

    #@46
    move/from16 v1, v19

    #@48
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    goto :goto_17

    #@4d
    :pswitch_4d
    move-object/from16 v0, p1

    #@4f
    move/from16 v1, v19

    #@51
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    goto :goto_17

    #@56
    :pswitch_56
    move-object/from16 v0, p1

    #@58
    move/from16 v1, v19

    #@5a
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    goto :goto_17

    #@5f
    :pswitch_5f
    move-object/from16 v0, p1

    #@61
    move/from16 v1, v19

    #@63
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@66
    move-result-object v8

    #@67
    goto :goto_17

    #@68
    :pswitch_68
    move-object/from16 v0, p1

    #@6a
    move/from16 v1, v19

    #@6c
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@6f
    move-result-object v9

    #@70
    goto :goto_17

    #@71
    :pswitch_71
    move-object/from16 v0, p1

    #@73
    move/from16 v1, v19

    #@75
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@78
    move-result-object v10

    #@79
    goto :goto_17

    #@7a
    :pswitch_7a
    move-object/from16 v0, p1

    #@7c
    move/from16 v1, v19

    #@7e
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@81
    move-result-object v11

    #@82
    goto :goto_17

    #@83
    :pswitch_83
    move-object/from16 v0, p1

    #@85
    move/from16 v1, v19

    #@87
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@8a
    move-result-object v12

    #@8b
    goto :goto_17

    #@8c
    :pswitch_8c
    move-object/from16 v0, p1

    #@8e
    move/from16 v1, v19

    #@90
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@93
    move-result-object v13

    #@94
    goto :goto_17

    #@95
    :pswitch_95
    move-object/from16 v0, p1

    #@97
    move/from16 v1, v19

    #@99
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@9c
    move-result-object v14

    #@9d
    goto/16 :goto_17

    #@9f
    :pswitch_9f
    move-object/from16 v0, p1

    #@a1
    move/from16 v1, v19

    #@a3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@a6
    move-result-object v15

    #@a7
    goto/16 :goto_17

    #@a9
    :pswitch_a9
    move-object/from16 v0, p1

    #@ab
    move/from16 v1, v19

    #@ad
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@b0
    move-result v16

    #@b1
    goto/16 :goto_17

    #@b3
    :pswitch_b3
    move-object/from16 v0, p1

    #@b5
    move/from16 v1, v19

    #@b7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@ba
    move-result-object v17

    #@bb
    goto/16 :goto_17

    #@bd
    :pswitch_bd
    move-object/from16 v0, p1

    #@bf
    move/from16 v1, v19

    #@c1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@c4
    move-result-object v18

    #@c5
    goto/16 :goto_17

    #@c7
    :cond_c7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@ca
    move-result v19

    #@cb
    move/from16 v0, v19

    #@cd
    if-eq v0, v2, :cond_ea

    #@cf
    new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@d1
    new-instance v4, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string v5, "Overread allowed size end="

    #@d8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v4

    #@dc
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v2

    #@e4
    move-object/from16 v0, p1

    #@e6
    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@e9
    throw v3

    #@ea
    :cond_ea
    new-instance v2, Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@ec
    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/identity/intents/model/UserAddress;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@ef
    return-object v2

    #@f0
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_3b
        :pswitch_44
        :pswitch_4d
        :pswitch_56
        :pswitch_5f
        :pswitch_68
        :pswitch_71
        :pswitch_7a
        :pswitch_83
        :pswitch_8c
        :pswitch_95
        :pswitch_9f
        :pswitch_a9
        :pswitch_b3
        :pswitch_bd
    .end packed-switch
.end method

.method public cE(I)[Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/model/b;->br(Landroid/os/Parcel;)Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/model/b;->cE(I)[Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
