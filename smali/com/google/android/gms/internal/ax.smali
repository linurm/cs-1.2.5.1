.class public Lcom/google/android/gms/internal/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/aw;",
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

.method static a(Lcom/google/android/gms/internal/aw;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/aw;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mD:I

    #@e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@11
    const/4 v1, 0x3

    #@12
    iget v2, p0, Lcom/google/android/gms/internal/aw;->backgroundColor:I

    #@14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@17
    const/4 v1, 0x4

    #@18
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mE:I

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mF:I

    #@20
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@23
    const/4 v1, 0x6

    #@24
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mG:I

    #@26
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mH:I

    #@2c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2f
    const/16 v1, 0x8

    #@31
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mI:I

    #@33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@36
    const/16 v1, 0x9

    #@38
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mJ:I

    #@3a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@3d
    const/16 v1, 0xa

    #@3f
    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mK:Ljava/lang/String;

    #@41
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@44
    const/16 v1, 0xb

    #@46
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mL:I

    #@48
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@4b
    const/16 v1, 0xc

    #@4d
    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mM:Ljava/lang/String;

    #@4f
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@52
    const/16 v1, 0xd

    #@54
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mN:I

    #@56
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@59
    const/16 v1, 0xe

    #@5b
    iget v2, p0, Lcom/google/android/gms/internal/aw;->mO:I

    #@5d
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@60
    const/16 v1, 0xf

    #@62
    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mP:Ljava/lang/String;

    #@64
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@67
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@6a
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ax;->d(Landroid/os/Parcel;)Lcom/google/android/gms/internal/aw;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public d(Landroid/os/Parcel;)Lcom/google/android/gms/internal/aw;
    .registers 22

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
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@18
    move-result v18

    #@19
    move/from16 v0, v18

    #@1b
    if-ge v0, v2, :cond_bb

    #@1d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@20
    move-result v18

    #@21
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@24
    move-result v19

    #@25
    packed-switch v19, :pswitch_data_e4

    #@28
    move-object/from16 v0, p1

    #@2a
    move/from16 v1, v18

    #@2c
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@2f
    goto :goto_15

    #@30
    :pswitch_30
    move-object/from16 v0, p1

    #@32
    move/from16 v1, v18

    #@34
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@37
    move-result v3

    #@38
    goto :goto_15

    #@39
    :pswitch_39
    move-object/from16 v0, p1

    #@3b
    move/from16 v1, v18

    #@3d
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@40
    move-result v4

    #@41
    goto :goto_15

    #@42
    :pswitch_42
    move-object/from16 v0, p1

    #@44
    move/from16 v1, v18

    #@46
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@49
    move-result v5

    #@4a
    goto :goto_15

    #@4b
    :pswitch_4b
    move-object/from16 v0, p1

    #@4d
    move/from16 v1, v18

    #@4f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@52
    move-result v6

    #@53
    goto :goto_15

    #@54
    :pswitch_54
    move-object/from16 v0, p1

    #@56
    move/from16 v1, v18

    #@58
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@5b
    move-result v7

    #@5c
    goto :goto_15

    #@5d
    :pswitch_5d
    move-object/from16 v0, p1

    #@5f
    move/from16 v1, v18

    #@61
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@64
    move-result v8

    #@65
    goto :goto_15

    #@66
    :pswitch_66
    move-object/from16 v0, p1

    #@68
    move/from16 v1, v18

    #@6a
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@6d
    move-result v9

    #@6e
    goto :goto_15

    #@6f
    :pswitch_6f
    move-object/from16 v0, p1

    #@71
    move/from16 v1, v18

    #@73
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@76
    move-result v10

    #@77
    goto :goto_15

    #@78
    :pswitch_78
    move-object/from16 v0, p1

    #@7a
    move/from16 v1, v18

    #@7c
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@7f
    move-result v11

    #@80
    goto :goto_15

    #@81
    :pswitch_81
    move-object/from16 v0, p1

    #@83
    move/from16 v1, v18

    #@85
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@88
    move-result-object v12

    #@89
    goto :goto_15

    #@8a
    :pswitch_8a
    move-object/from16 v0, p1

    #@8c
    move/from16 v1, v18

    #@8e
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@91
    move-result v13

    #@92
    goto :goto_15

    #@93
    :pswitch_93
    move-object/from16 v0, p1

    #@95
    move/from16 v1, v18

    #@97
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@9a
    move-result-object v14

    #@9b
    goto/16 :goto_15

    #@9d
    :pswitch_9d
    move-object/from16 v0, p1

    #@9f
    move/from16 v1, v18

    #@a1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@a4
    move-result v15

    #@a5
    goto/16 :goto_15

    #@a7
    :pswitch_a7
    move-object/from16 v0, p1

    #@a9
    move/from16 v1, v18

    #@ab
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@ae
    move-result v16

    #@af
    goto/16 :goto_15

    #@b1
    :pswitch_b1
    move-object/from16 v0, p1

    #@b3
    move/from16 v1, v18

    #@b5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@b8
    move-result-object v17

    #@b9
    goto/16 :goto_15

    #@bb
    :cond_bb
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@be
    move-result v18

    #@bf
    move/from16 v0, v18

    #@c1
    if-eq v0, v2, :cond_de

    #@c3
    new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@c5
    new-instance v4, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string v5, "Overread allowed size end="

    #@cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v4

    #@d0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v2

    #@d4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v2

    #@d8
    move-object/from16 v0, p1

    #@da
    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@dd
    throw v3

    #@de
    :cond_de
    new-instance v2, Lcom/google/android/gms/internal/aw;

    #@e0
    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/aw;-><init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    #@e3
    return-object v2

    #@e4
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_30
        :pswitch_39
        :pswitch_42
        :pswitch_4b
        :pswitch_54
        :pswitch_5d
        :pswitch_66
        :pswitch_6f
        :pswitch_78
        :pswitch_81
        :pswitch_8a
        :pswitch_93
        :pswitch_9d
        :pswitch_a7
        :pswitch_b1
    .end packed-switch
.end method

.method public f(I)[Lcom/google/android/gms/internal/aw;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/aw;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ax;->f(I)[Lcom/google/android/gms/internal/aw;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
