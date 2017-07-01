.class public Lcom/google/android/gms/internal/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ds;",
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

.method static a(Lcom/google/android/gms/internal/ds;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/ds;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->pW:Landroid/os/Bundle;

    #@e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@14
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@1a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->kN:Ljava/lang/String;

    #@20
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@26
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->pY:Landroid/content/pm/PackageInfo;

    #@2c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2f
    const/16 v1, 0x8

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->pZ:Ljava/lang/String;

    #@33
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@36
    const/16 v1, 0x9

    #@38
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->qa:Ljava/lang/String;

    #@3a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3d
    const/16 v1, 0xa

    #@3f
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->qb:Ljava/lang/String;

    #@41
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@44
    const/16 v1, 0xb

    #@46
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@48
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@4b
    const/16 v1, 0xc

    #@4d
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->qc:Landroid/os/Bundle;

    #@4f
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    #@52
    const/16 v1, 0xd

    #@54
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->qd:Ljava/lang/String;

    #@56
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@59
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@5c
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dt;->h(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ds;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public h(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ds;
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
    if-ge v1, v15, :cond_9e

    #@17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1e
    move-result v16

    #@1f
    packed-switch v16, :pswitch_data_c6

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@27
    goto :goto_11

    #@28
    :pswitch_28
    move-object/from16 v0, p1

    #@2a
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2d
    move-result v2

    #@2e
    goto :goto_11

    #@2f
    :pswitch_2f
    move-object/from16 v0, p1

    #@31
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@34
    move-result-object v3

    #@35
    goto :goto_11

    #@36
    :pswitch_36
    sget-object v4, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    #@38
    move-object/from16 v0, p1

    #@3a
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Lcom/google/android/gms/internal/ai;

    #@40
    move-object v4, v1

    #@41
    goto :goto_11

    #@42
    :pswitch_42
    sget-object v5, Lcom/google/android/gms/internal/al;->CREATOR:Lcom/google/android/gms/internal/am;

    #@44
    move-object/from16 v0, p1

    #@46
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Lcom/google/android/gms/internal/al;

    #@4c
    move-object v5, v1

    #@4d
    goto :goto_11

    #@4e
    :pswitch_4e
    move-object/from16 v0, p1

    #@50
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    goto :goto_11

    #@55
    :pswitch_55
    sget-object v7, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57
    move-object/from16 v0, p1

    #@59
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    #@5f
    move-object v7, v1

    #@60
    goto :goto_11

    #@61
    :pswitch_61
    sget-object v8, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@63
    move-object/from16 v0, p1

    #@65
    invoke-static {v0, v1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@68
    move-result-object v1

    #@69
    check-cast v1, Landroid/content/pm/PackageInfo;

    #@6b
    move-object v8, v1

    #@6c
    goto :goto_11

    #@6d
    :pswitch_6d
    move-object/from16 v0, p1

    #@6f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@72
    move-result-object v9

    #@73
    goto :goto_11

    #@74
    :pswitch_74
    move-object/from16 v0, p1

    #@76
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@79
    move-result-object v10

    #@7a
    goto :goto_11

    #@7b
    :pswitch_7b
    move-object/from16 v0, p1

    #@7d
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@80
    move-result-object v11

    #@81
    goto :goto_11

    #@82
    :pswitch_82
    sget-object v12, Lcom/google/android/gms/internal/ev;->CREATOR:Lcom/google/android/gms/internal/ew;

    #@84
    move-object/from16 v0, p1

    #@86
    invoke-static {v0, v1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@89
    move-result-object v1

    #@8a
    check-cast v1, Lcom/google/android/gms/internal/ev;

    #@8c
    move-object v12, v1

    #@8d
    goto :goto_11

    #@8e
    :pswitch_8e
    move-object/from16 v0, p1

    #@90
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@93
    move-result-object v13

    #@94
    goto/16 :goto_11

    #@96
    :pswitch_96
    move-object/from16 v0, p1

    #@98
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@9b
    move-result-object v14

    #@9c
    goto/16 :goto_11

    #@9e
    :cond_9e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@a1
    move-result v1

    #@a2
    if-eq v1, v15, :cond_bf

    #@a4
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@a6
    new-instance v2, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string v3, "Overread allowed size end="

    #@ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    move-object/from16 v0, p1

    #@bb
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@be
    throw v1

    #@bf
    :cond_bf
    new-instance v1, Lcom/google/android/gms/internal/ds;

    #@c1
    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ds;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V

    #@c4
    return-object v1

    #@c5
    nop

    #@c6
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2f
        :pswitch_36
        :pswitch_42
        :pswitch_4e
        :pswitch_55
        :pswitch_61
        :pswitch_6d
        :pswitch_74
        :pswitch_7b
        :pswitch_82
        :pswitch_8e
        :pswitch_96
    .end packed-switch
.end method

.method public m(I)[Lcom/google/android/gms/internal/ds;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ds;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dt;->m(I)[Lcom/google/android/gms/internal/ds;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
