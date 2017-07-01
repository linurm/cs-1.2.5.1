.class public Lcom/google/android/gms/internal/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ai;",
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

.method static a(Lcom/google/android/gms/internal/ai;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/ai;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-wide v2, p0, Lcom/google/android/gms/internal/ai;->lS:J

    #@e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->extras:Landroid/os/Bundle;

    #@14
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    #@17
    const/4 v1, 0x4

    #@18
    iget v2, p0, Lcom/google/android/gms/internal/ai;->lT:I

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@20
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ai;->lV:Z

    #@26
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget v2, p0, Lcom/google/android/gms/internal/ai;->lW:I

    #@2c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2f
    const/16 v1, 0x8

    #@31
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ai;->lX:Z

    #@33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@36
    const/16 v1, 0x9

    #@38
    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->lY:Ljava/lang/String;

    #@3a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3d
    const/16 v1, 0xa

    #@3f
    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->lZ:Lcom/google/android/gms/internal/aw;

    #@41
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@44
    const/16 v1, 0xb

    #@46
    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->ma:Landroid/location/Location;

    #@48
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@4b
    const/16 v1, 0xc

    #@4d
    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->mb:Ljava/lang/String;

    #@4f
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@52
    const/16 v1, 0xd

    #@54
    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->mc:Landroid/os/Bundle;

    #@56
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    #@59
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@5c
    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ai;
    .registers 21

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v17

    #@4
    const/4 v3, 0x0

    #@5
    const-wide/16 v4, 0x0

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
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@16
    move-result v2

    #@17
    move/from16 v0, v17

    #@19
    if-ge v2, v0, :cond_91

    #@1b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1e
    move-result v2

    #@1f
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@22
    move-result v18

    #@23
    packed-switch v18, :pswitch_data_bc

    #@26
    move-object/from16 v0, p1

    #@28
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@2b
    goto :goto_13

    #@2c
    :pswitch_2c
    move-object/from16 v0, p1

    #@2e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@31
    move-result v3

    #@32
    goto :goto_13

    #@33
    :pswitch_33
    move-object/from16 v0, p1

    #@35
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@38
    move-result-wide v4

    #@39
    goto :goto_13

    #@3a
    :pswitch_3a
    move-object/from16 v0, p1

    #@3c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@3f
    move-result-object v6

    #@40
    goto :goto_13

    #@41
    :pswitch_41
    move-object/from16 v0, p1

    #@43
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@46
    move-result v7

    #@47
    goto :goto_13

    #@48
    :pswitch_48
    move-object/from16 v0, p1

    #@4a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    #@4d
    move-result-object v8

    #@4e
    goto :goto_13

    #@4f
    :pswitch_4f
    move-object/from16 v0, p1

    #@51
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@54
    move-result v9

    #@55
    goto :goto_13

    #@56
    :pswitch_56
    move-object/from16 v0, p1

    #@58
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@5b
    move-result v10

    #@5c
    goto :goto_13

    #@5d
    :pswitch_5d
    move-object/from16 v0, p1

    #@5f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@62
    move-result v11

    #@63
    goto :goto_13

    #@64
    :pswitch_64
    move-object/from16 v0, p1

    #@66
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@69
    move-result-object v12

    #@6a
    goto :goto_13

    #@6b
    :pswitch_6b
    sget-object v13, Lcom/google/android/gms/internal/aw;->CREATOR:Lcom/google/android/gms/internal/ax;

    #@6d
    move-object/from16 v0, p1

    #@6f
    invoke-static {v0, v2, v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@72
    move-result-object v2

    #@73
    check-cast v2, Lcom/google/android/gms/internal/aw;

    #@75
    move-object v13, v2

    #@76
    goto :goto_13

    #@77
    :pswitch_77
    sget-object v14, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v2, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@7e
    move-result-object v2

    #@7f
    check-cast v2, Landroid/location/Location;

    #@81
    move-object v14, v2

    #@82
    goto :goto_13

    #@83
    :pswitch_83
    move-object/from16 v0, p1

    #@85
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@88
    move-result-object v15

    #@89
    goto :goto_13

    #@8a
    :pswitch_8a
    move-object/from16 v0, p1

    #@8c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@8f
    move-result-object v16

    #@90
    goto :goto_13

    #@91
    :cond_91
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@94
    move-result v2

    #@95
    move/from16 v0, v17

    #@97
    if-eq v2, v0, :cond_b6

    #@99
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@9b
    new-instance v3, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string v4, "Overread allowed size end="

    #@a2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    move/from16 v0, v17

    #@a8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v3

    #@ac
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    move-object/from16 v0, p1

    #@b2
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@b5
    throw v2

    #@b6
    :cond_b6
    new-instance v2, Lcom/google/android/gms/internal/ai;

    #@b8
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ai;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/aw;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V

    #@bb
    return-object v2

    #@bc
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_33
        :pswitch_3a
        :pswitch_41
        :pswitch_48
        :pswitch_4f
        :pswitch_56
        :pswitch_5d
        :pswitch_64
        :pswitch_6b
        :pswitch_77
        :pswitch_83
        :pswitch_8a
    .end packed-switch
.end method

.method public c(I)[Lcom/google/android/gms/internal/ai;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ai;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aj;->b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ai;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aj;->c(I)[Lcom/google/android/gms/internal/ai;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
