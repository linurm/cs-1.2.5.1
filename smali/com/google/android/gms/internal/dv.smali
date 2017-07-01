.class public Lcom/google/android/gms/internal/dv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/du;",
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

.method static a(Lcom/google/android/gms/internal/du;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/du;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->oA:Ljava/lang/String;

    #@e
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->qe:Ljava/lang/String;

    #@14
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->nt:Ljava/util/List;

    #@1a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget v2, p0, Lcom/google/android/gms/internal/du;->errorCode:I

    #@20
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->nu:Ljava/util/List;

    #@26
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget-wide v2, p0, Lcom/google/android/gms/internal/du;->qf:J

    #@2c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@2f
    const/16 v1, 0x8

    #@31
    iget-boolean v2, p0, Lcom/google/android/gms/internal/du;->qg:Z

    #@33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@36
    const/16 v1, 0x9

    #@38
    iget-wide v2, p0, Lcom/google/android/gms/internal/du;->qh:J

    #@3a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@3d
    const/16 v1, 0xa

    #@3f
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->qi:Ljava/util/List;

    #@41
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@44
    const/16 v1, 0xb

    #@46
    iget-wide v2, p0, Lcom/google/android/gms/internal/du;->nx:J

    #@48
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@4b
    const/16 v1, 0xc

    #@4d
    iget v2, p0, Lcom/google/android/gms/internal/du;->orientation:I

    #@4f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@52
    const/16 v1, 0xd

    #@54
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->qj:Ljava/lang/String;

    #@56
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@59
    const/16 v1, 0xe

    #@5b
    iget-wide v2, p0, Lcom/google/android/gms/internal/du;->qk:J

    #@5d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@60
    const/16 v1, 0xf

    #@62
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->ql:Ljava/lang/String;

    #@64
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@67
    const/16 v1, 0x13

    #@69
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->qn:Ljava/lang/String;

    #@6b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@6e
    const/16 v1, 0x12

    #@70
    iget-boolean v2, p0, Lcom/google/android/gms/internal/du;->qm:Z

    #@72
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@75
    const/16 v1, 0x15

    #@77
    iget-object v2, p0, Lcom/google/android/gms/internal/du;->qo:Ljava/lang/String;

    #@79
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@7c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@7f
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dv;->i(Landroid/os/Parcel;)Lcom/google/android/gms/internal/du;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public i(Landroid/os/Parcel;)Lcom/google/android/gms/internal/du;
    .registers 29

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v2

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    const/4 v7, 0x0

    #@8
    const/4 v8, 0x0

    #@9
    const/4 v9, 0x0

    #@a
    const-wide/16 v10, 0x0

    #@c
    const/4 v12, 0x0

    #@d
    const-wide/16 v13, 0x0

    #@f
    const/4 v15, 0x0

    #@10
    const-wide/16 v16, 0x0

    #@12
    const/16 v18, 0x0

    #@14
    const/16 v19, 0x0

    #@16
    const-wide/16 v20, 0x0

    #@18
    const/16 v22, 0x0

    #@1a
    const/16 v23, 0x0

    #@1c
    const/16 v24, 0x0

    #@1e
    const/16 v25, 0x0

    #@20
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@23
    move-result v3

    #@24
    if-ge v3, v2, :cond_b8

    #@26
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@29
    move-result v3

    #@2a
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@2d
    move-result v26

    #@2e
    packed-switch v26, :pswitch_data_e0

    #@31
    :pswitch_31
    move-object/from16 v0, p1

    #@33
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@36
    goto :goto_20

    #@37
    :pswitch_37
    move-object/from16 v0, p1

    #@39
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3c
    move-result v4

    #@3d
    goto :goto_20

    #@3e
    :pswitch_3e
    move-object/from16 v0, p1

    #@40
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    goto :goto_20

    #@45
    :pswitch_45
    move-object/from16 v0, p1

    #@47
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    goto :goto_20

    #@4c
    :pswitch_4c
    move-object/from16 v0, p1

    #@4e
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    #@51
    move-result-object v7

    #@52
    goto :goto_20

    #@53
    :pswitch_53
    move-object/from16 v0, p1

    #@55
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@58
    move-result v8

    #@59
    goto :goto_20

    #@5a
    :pswitch_5a
    move-object/from16 v0, p1

    #@5c
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    #@5f
    move-result-object v9

    #@60
    goto :goto_20

    #@61
    :pswitch_61
    move-object/from16 v0, p1

    #@63
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@66
    move-result-wide v10

    #@67
    goto :goto_20

    #@68
    :pswitch_68
    move-object/from16 v0, p1

    #@6a
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@6d
    move-result v12

    #@6e
    goto :goto_20

    #@6f
    :pswitch_6f
    move-object/from16 v0, p1

    #@71
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@74
    move-result-wide v13

    #@75
    goto :goto_20

    #@76
    :pswitch_76
    move-object/from16 v0, p1

    #@78
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    #@7b
    move-result-object v15

    #@7c
    goto :goto_20

    #@7d
    :pswitch_7d
    move-object/from16 v0, p1

    #@7f
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@82
    move-result-wide v16

    #@83
    goto :goto_20

    #@84
    :pswitch_84
    move-object/from16 v0, p1

    #@86
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@89
    move-result v18

    #@8a
    goto :goto_20

    #@8b
    :pswitch_8b
    move-object/from16 v0, p1

    #@8d
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@90
    move-result-object v19

    #@91
    goto :goto_20

    #@92
    :pswitch_92
    move-object/from16 v0, p1

    #@94
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@97
    move-result-wide v20

    #@98
    goto :goto_20

    #@99
    :pswitch_99
    move-object/from16 v0, p1

    #@9b
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@9e
    move-result-object v22

    #@9f
    goto :goto_20

    #@a0
    :pswitch_a0
    move-object/from16 v0, p1

    #@a2
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@a5
    move-result-object v24

    #@a6
    goto/16 :goto_20

    #@a8
    :pswitch_a8
    move-object/from16 v0, p1

    #@aa
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@ad
    move-result v23

    #@ae
    goto/16 :goto_20

    #@b0
    :pswitch_b0
    move-object/from16 v0, p1

    #@b2
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@b5
    move-result-object v25

    #@b6
    goto/16 :goto_20

    #@b8
    :cond_b8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@bb
    move-result v3

    #@bc
    if-eq v3, v2, :cond_d9

    #@be
    new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@c0
    new-instance v4, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string v5, "Overread allowed size end="

    #@c7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v2

    #@cf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v2

    #@d3
    move-object/from16 v0, p1

    #@d5
    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@d8
    throw v3

    #@d9
    :cond_d9
    new-instance v3, Lcom/google/android/gms/internal/du;

    #@db
    invoke-direct/range {v3 .. v25}, Lcom/google/android/gms/internal/du;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@de
    return-object v3

    #@df
    nop

    #@e0
    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_3e
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
        :pswitch_99
        :pswitch_31
        :pswitch_31
        :pswitch_a8
        :pswitch_a0
        :pswitch_31
        :pswitch_b0
    .end packed-switch
.end method

.method public n(I)[Lcom/google/android/gms/internal/du;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/du;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dv;->n(I)[Lcom/google/android/gms/internal/du;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
