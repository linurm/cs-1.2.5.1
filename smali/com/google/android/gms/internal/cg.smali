.class public Lcom/google/android/gms/internal/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ch;",
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

.method static a(Lcom/google/android/gms/internal/ch;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/ch;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/ch;->ov:Lcom/google/android/gms/internal/ce;

    #@e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11
    const/4 v1, 0x3

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ch;->aU()Landroid/os/IBinder;

    #@15
    move-result-object v2

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ch;->aV()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@21
    const/4 v1, 0x5

    #@22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ch;->aW()Landroid/os/IBinder;

    #@25
    move-result-object v2

    #@26
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@29
    const/4 v1, 0x6

    #@2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ch;->aX()Landroid/os/IBinder;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@31
    const/4 v1, 0x7

    #@32
    iget-object v2, p0, Lcom/google/android/gms/internal/ch;->oA:Ljava/lang/String;

    #@34
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@37
    const/16 v1, 0x8

    #@39
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ch;->oB:Z

    #@3b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@3e
    const/16 v1, 0x9

    #@40
    iget-object v2, p0, Lcom/google/android/gms/internal/ch;->oC:Ljava/lang/String;

    #@42
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@45
    const/16 v1, 0xa

    #@47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ch;->aZ()Landroid/os/IBinder;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@4e
    const/16 v1, 0xb

    #@50
    iget v2, p0, Lcom/google/android/gms/internal/ch;->orientation:I

    #@52
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@55
    const/16 v1, 0xc

    #@57
    iget v2, p0, Lcom/google/android/gms/internal/ch;->oE:I

    #@59
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@5c
    const/16 v1, 0xd

    #@5e
    iget-object v2, p0, Lcom/google/android/gms/internal/ch;->ob:Ljava/lang/String;

    #@60
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@63
    const/16 v1, 0xe

    #@65
    iget-object v2, p0, Lcom/google/android/gms/internal/ch;->kQ:Lcom/google/android/gms/internal/ev;

    #@67
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@6a
    const/16 v1, 0xf

    #@6c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ch;->aY()Landroid/os/IBinder;

    #@6f
    move-result-object v2

    #@70
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@73
    const/16 v1, 0x11

    #@75
    iget-object v2, p0, Lcom/google/android/gms/internal/ch;->oH:Lcom/google/android/gms/internal/v;

    #@77
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@7a
    const/16 v1, 0x10

    #@7c
    iget-object v2, p0, Lcom/google/android/gms/internal/ch;->oG:Ljava/lang/String;

    #@7e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@81
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@84
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cg;->f(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ch;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public f(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ch;
    .registers 24

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v20

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
    const/16 v19, 0x0

    #@19
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@1c
    move-result v2

    #@1d
    move/from16 v0, v20

    #@1f
    if-ge v2, v0, :cond_c2

    #@21
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@24
    move-result v2

    #@25
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@28
    move-result v21

    #@29
    packed-switch v21, :pswitch_data_ee

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@31
    goto :goto_19

    #@32
    :pswitch_32
    move-object/from16 v0, p1

    #@34
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@37
    move-result v3

    #@38
    goto :goto_19

    #@39
    :pswitch_39
    sget-object v4, Lcom/google/android/gms/internal/ce;->CREATOR:Lcom/google/android/gms/internal/cd;

    #@3b
    move-object/from16 v0, p1

    #@3d
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Lcom/google/android/gms/internal/ce;

    #@43
    move-object v4, v2

    #@44
    goto :goto_19

    #@45
    :pswitch_45
    move-object/from16 v0, p1

    #@47
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@4a
    move-result-object v5

    #@4b
    goto :goto_19

    #@4c
    :pswitch_4c
    move-object/from16 v0, p1

    #@4e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@51
    move-result-object v6

    #@52
    goto :goto_19

    #@53
    :pswitch_53
    move-object/from16 v0, p1

    #@55
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@58
    move-result-object v7

    #@59
    goto :goto_19

    #@5a
    :pswitch_5a
    move-object/from16 v0, p1

    #@5c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@5f
    move-result-object v8

    #@60
    goto :goto_19

    #@61
    :pswitch_61
    move-object/from16 v0, p1

    #@63
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    goto :goto_19

    #@68
    :pswitch_68
    move-object/from16 v0, p1

    #@6a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@6d
    move-result v10

    #@6e
    goto :goto_19

    #@6f
    :pswitch_6f
    move-object/from16 v0, p1

    #@71
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@74
    move-result-object v11

    #@75
    goto :goto_19

    #@76
    :pswitch_76
    move-object/from16 v0, p1

    #@78
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@7b
    move-result-object v12

    #@7c
    goto :goto_19

    #@7d
    :pswitch_7d
    move-object/from16 v0, p1

    #@7f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@82
    move-result v13

    #@83
    goto :goto_19

    #@84
    :pswitch_84
    move-object/from16 v0, p1

    #@86
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@89
    move-result v14

    #@8a
    goto :goto_19

    #@8b
    :pswitch_8b
    move-object/from16 v0, p1

    #@8d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@90
    move-result-object v15

    #@91
    goto :goto_19

    #@92
    :pswitch_92
    sget-object v16, Lcom/google/android/gms/internal/ev;->CREATOR:Lcom/google/android/gms/internal/ew;

    #@94
    move-object/from16 v0, p1

    #@96
    move-object/from16 v1, v16

    #@98
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@9b
    move-result-object v2

    #@9c
    check-cast v2, Lcom/google/android/gms/internal/ev;

    #@9e
    move-object/from16 v16, v2

    #@a0
    goto/16 :goto_19

    #@a2
    :pswitch_a2
    move-object/from16 v0, p1

    #@a4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@a7
    move-result-object v17

    #@a8
    goto/16 :goto_19

    #@aa
    :pswitch_aa
    sget-object v19, Lcom/google/android/gms/internal/v;->CREATOR:Lcom/google/android/gms/internal/w;

    #@ac
    move-object/from16 v0, p1

    #@ae
    move-object/from16 v1, v19

    #@b0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@b3
    move-result-object v2

    #@b4
    check-cast v2, Lcom/google/android/gms/internal/v;

    #@b6
    move-object/from16 v19, v2

    #@b8
    goto/16 :goto_19

    #@ba
    :pswitch_ba
    move-object/from16 v0, p1

    #@bc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@bf
    move-result-object v18

    #@c0
    goto/16 :goto_19

    #@c2
    :cond_c2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@c5
    move-result v2

    #@c6
    move/from16 v0, v20

    #@c8
    if-eq v2, v0, :cond_e7

    #@ca
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@cc
    new-instance v3, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string v4, "Overread allowed size end="

    #@d3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v3

    #@d7
    move/from16 v0, v20

    #@d9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v3

    #@dd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v3

    #@e1
    move-object/from16 v0, p1

    #@e3
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@e6
    throw v2

    #@e7
    :cond_e7
    new-instance v2, Lcom/google/android/gms/internal/ch;

    #@e9
    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/ch;-><init>(ILcom/google/android/gms/internal/ce;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/internal/v;)V

    #@ec
    return-object v2

    #@ed
    nop

    #@ee
    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_32
        :pswitch_39
        :pswitch_45
        :pswitch_4c
        :pswitch_53
        :pswitch_5a
        :pswitch_61
        :pswitch_68
        :pswitch_6f
        :pswitch_76
        :pswitch_7d
        :pswitch_84
        :pswitch_8b
        :pswitch_92
        :pswitch_a2
        :pswitch_ba
        :pswitch_aa
    .end packed-switch
.end method

.method public j(I)[Lcom/google/android/gms/internal/ch;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ch;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cg;->j(I)[Lcom/google/android/gms/internal/ch;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
