.class public Lcom/google/android/gms/internal/kq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/kp;",
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

.method static a(Lcom/google/android/gms/internal/kp;Landroid/os/Parcel;I)V
    .registers 11

    #@0
    const/4 v7, 0x6

    #@1
    const/4 v6, 0x5

    #@2
    const/4 v5, 0x4

    #@3
    const/4 v4, 0x2

    #@4
    const/4 v3, 0x1

    #@5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kp;->kk()Ljava/util/Set;

    #@c
    move-result-object v1

    #@d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1e

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kp;->getVersionCode()I

    #@1a
    move-result v2

    #@1b
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1e
    :cond_1e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2f

    #@28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kp;->getId()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {p1, v4, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kp;->kB()Lcom/google/android/gms/internal/kn;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {p1, v5, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kp;->getStartDate()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {p1, v6, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kp;->kC()Lcom/google/android/gms/internal/kn;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {p1, v7, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@62
    :cond_62
    const/4 v2, 0x7

    #@63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v2

    #@67
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6a
    move-result v1

    #@6b
    if-eqz v1, :cond_75

    #@6d
    const/4 v1, 0x7

    #@6e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kp;->getType()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@75
    :cond_75
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@78
    return-void
.end method


# virtual methods
.method public bF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kp;
    .registers 12

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v8

    #@5
    new-instance v1, Ljava/util/HashSet;

    #@7
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@a
    const/4 v2, 0x0

    #@b
    move-object v4, v3

    #@c
    move-object v5, v3

    #@d
    move-object v6, v3

    #@e
    move-object v7, v3

    #@f
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@12
    move-result v0

    #@13
    if-ge v0, v8, :cond_7c

    #@15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@18
    move-result v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1c
    move-result v9

    #@1d
    packed-switch v9, :pswitch_data_a2

    #@20
    :pswitch_20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@23
    goto :goto_f

    #@24
    :pswitch_24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@27
    move-result v2

    #@28
    const/4 v0, 0x1

    #@29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v0

    #@2d
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_f

    #@31
    :pswitch_31
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    const/4 v0, 0x2

    #@36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v0

    #@3a
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_f

    #@3e
    :pswitch_3e
    sget-object v4, Lcom/google/android/gms/internal/kn;->CREATOR:Lcom/google/android/gms/internal/ko;

    #@40
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Lcom/google/android/gms/internal/kn;

    #@46
    const/4 v4, 0x4

    #@47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v4

    #@4b
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4e
    move-object v4, v0

    #@4f
    goto :goto_f

    #@50
    :pswitch_50
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    const/4 v0, 0x5

    #@55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v0

    #@59
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_f

    #@5d
    :pswitch_5d
    sget-object v6, Lcom/google/android/gms/internal/kn;->CREATOR:Lcom/google/android/gms/internal/ko;

    #@5f
    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Lcom/google/android/gms/internal/kn;

    #@65
    const/4 v6, 0x6

    #@66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v6

    #@6a
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6d
    move-object v6, v0

    #@6e
    goto :goto_f

    #@6f
    :pswitch_6f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@72
    move-result-object v7

    #@73
    const/4 v0, 0x7

    #@74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v0

    #@78
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b
    goto :goto_f

    #@7c
    :cond_7c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@7f
    move-result v0

    #@80
    if-eq v0, v8, :cond_9b

    #@82
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@84
    new-instance v1, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string v2, "Overread allowed size end="

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v1

    #@97
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@9a
    throw v0

    #@9b
    :cond_9b
    new-instance v0, Lcom/google/android/gms/internal/kp;

    #@9d
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/kp;-><init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;)V

    #@a0
    return-object v0

    #@a1
    nop

    #@a2
    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_24
        :pswitch_31
        :pswitch_20
        :pswitch_3e
        :pswitch_50
        :pswitch_5d
        :pswitch_6f
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kq;->bF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dc(I)[Lcom/google/android/gms/internal/kp;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/kp;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kq;->dc(I)[Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
