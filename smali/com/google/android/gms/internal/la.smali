.class public Lcom/google/android/gms/internal/la;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ks$f;",
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

.method static a(Lcom/google/android/gms/internal/ks$f;Landroid/os/Parcel;I)V
    .registers 11

    #@0
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x4

    #@2
    const/4 v5, 0x3

    #@3
    const/4 v3, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->kk()Ljava/util/Set;

    #@c
    move-result-object v1

    #@d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1e

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getVersionCode()I

    #@1a
    move-result v2

    #@1b
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1e
    :cond_1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2f

    #@28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getDepartment()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {p1, v3, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2f
    :cond_2f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v2

    #@33
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_40

    #@39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getDescription()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {p1, v5, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@40
    :cond_40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v2

    #@44
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_51

    #@4a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getEndDate()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {p1, v6, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@51
    :cond_51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v2

    #@55
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_62

    #@5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getLocation()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {p1, v7, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@62
    :cond_62
    const/4 v2, 0x6

    #@63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v2

    #@67
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_75

    #@6d
    const/4 v2, 0x6

    #@6e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getName()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@75
    :cond_75
    const/4 v2, 0x7

    #@76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v2

    #@7a
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7d
    move-result v2

    #@7e
    if-eqz v2, :cond_88

    #@80
    const/4 v2, 0x7

    #@81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->isPrimary()Z

    #@84
    move-result v3

    #@85
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@88
    :cond_88
    const/16 v2, 0x8

    #@8a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v2

    #@8e
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_9d

    #@94
    const/16 v2, 0x8

    #@96
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getStartDate()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@9d
    :cond_9d
    const/16 v2, 0x9

    #@9f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2
    move-result-object v2

    #@a3
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_b2

    #@a9
    const/16 v2, 0x9

    #@ab
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getTitle()Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@b2
    :cond_b2
    const/16 v2, 0xa

    #@b4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b7
    move-result-object v2

    #@b8
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@bb
    move-result v1

    #@bc
    if-eqz v1, :cond_c7

    #@be
    const/16 v1, 0xa

    #@c0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$f;->getType()I

    #@c3
    move-result v2

    #@c4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c7
    :cond_c7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@ca
    return-void
.end method


# virtual methods
.method public bN(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$f;
    .registers 16

    #@0
    const/4 v8, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    new-instance v1, Ljava/util/HashSet;

    #@8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@b
    move-object v4, v3

    #@c
    move-object v5, v3

    #@d
    move-object v6, v3

    #@e
    move-object v7, v3

    #@f
    move-object v9, v3

    #@10
    move-object v10, v3

    #@11
    move v2, v8

    #@12
    move v11, v8

    #@13
    :goto_13
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@16
    move-result v12

    #@17
    if-ge v12, v0, :cond_af

    #@19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1c
    move-result v12

    #@1d
    invoke-static {v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@20
    move-result v13

    #@21
    packed-switch v13, :pswitch_data_d4

    #@24
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@27
    goto :goto_13

    #@28
    :pswitch_28
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2b
    move-result v2

    #@2c
    const/4 v12, 0x1

    #@2d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v12

    #@31
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@34
    goto :goto_13

    #@35
    :pswitch_35
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    const/4 v12, 0x2

    #@3a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v12

    #@3e
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_13

    #@42
    :pswitch_42
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    const/4 v12, 0x3

    #@47
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v12

    #@4b
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4e
    goto :goto_13

    #@4f
    :pswitch_4f
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    const/4 v12, 0x4

    #@54
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v12

    #@58
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_13

    #@5c
    :pswitch_5c
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    const/4 v12, 0x5

    #@61
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v12

    #@65
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@68
    goto :goto_13

    #@69
    :pswitch_69
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    const/4 v12, 0x6

    #@6e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v12

    #@72
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_13

    #@76
    :pswitch_76
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@79
    move-result v8

    #@7a
    const/4 v12, 0x7

    #@7b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v12

    #@7f
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@82
    goto :goto_13

    #@83
    :pswitch_83
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    const/16 v12, 0x8

    #@89
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8c
    move-result-object v12

    #@8d
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@90
    goto :goto_13

    #@91
    :pswitch_91
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@94
    move-result-object v10

    #@95
    const/16 v12, 0x9

    #@97
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9a
    move-result-object v12

    #@9b
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9e
    goto/16 :goto_13

    #@a0
    :pswitch_a0
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@a3
    move-result v11

    #@a4
    const/16 v12, 0xa

    #@a6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v12

    #@aa
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ad
    goto/16 :goto_13

    #@af
    :cond_af
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b2
    move-result v12

    #@b3
    if-eq v12, v0, :cond_ce

    #@b5
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@b7
    new-instance v2, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string v3, "Overread allowed size end="

    #@be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v0

    #@ca
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@cd
    throw v1

    #@ce
    :cond_ce
    new-instance v0, Lcom/google/android/gms/internal/ks$f;

    #@d0
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ks$f;-><init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    #@d3
    return-object v0

    #@d4
    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_28
        :pswitch_35
        :pswitch_42
        :pswitch_4f
        :pswitch_5c
        :pswitch_69
        :pswitch_76
        :pswitch_83
        :pswitch_91
        :pswitch_a0
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/la;->bN(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$f;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dk(I)[Lcom/google/android/gms/internal/ks$f;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ks$f;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/la;->dk(I)[Lcom/google/android/gms/internal/ks$f;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
