.class public Lcom/google/android/gms/internal/kz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ks$d;",
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

.method static a(Lcom/google/android/gms/internal/ks$d;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$d;->kk()Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$d;->getVersionCode()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$d;->getFamilyName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$d;->getFormatted()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$d;->getGivenName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$d;->getHonorificPrefix()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$d;->getHonorificSuffix()Ljava/lang/String;

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
    move-result v1

    #@7e
    if-eqz v1, :cond_88

    #@80
    const/4 v1, 0x7

    #@81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$d;->getMiddleName()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@88
    :cond_88
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@8b
    return-void
.end method


# virtual methods
.method public bM(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$d;
    .registers 13

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v0

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
    move-object v8, v3

    #@10
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@13
    move-result v9

    #@14
    if-ge v9, v0, :cond_80

    #@16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@19
    move-result v9

    #@1a
    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1d
    move-result v10

    #@1e
    packed-switch v10, :pswitch_data_a6

    #@21
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@24
    goto :goto_10

    #@25
    :pswitch_25
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@28
    move-result v2

    #@29
    const/4 v9, 0x1

    #@2a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v9

    #@2e
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_10

    #@32
    :pswitch_32
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    const/4 v9, 0x2

    #@37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v9

    #@3b
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_10

    #@3f
    :pswitch_3f
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    const/4 v9, 0x3

    #@44
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v9

    #@48
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_10

    #@4c
    :pswitch_4c
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    const/4 v9, 0x4

    #@51
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v9

    #@55
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@58
    goto :goto_10

    #@59
    :pswitch_59
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    const/4 v9, 0x5

    #@5e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v9

    #@62
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@65
    goto :goto_10

    #@66
    :pswitch_66
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    const/4 v9, 0x6

    #@6b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v9

    #@6f
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_10

    #@73
    :pswitch_73
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@76
    move-result-object v8

    #@77
    const/4 v9, 0x7

    #@78
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v9

    #@7c
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7f
    goto :goto_10

    #@80
    :cond_80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@83
    move-result v9

    #@84
    if-eq v9, v0, :cond_9f

    #@86
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@88
    new-instance v2, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string v3, "Overread allowed size end="

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@9e
    throw v1

    #@9f
    :cond_9f
    new-instance v0, Lcom/google/android/gms/internal/ks$d;

    #@a1
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ks$d;-><init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a4
    return-object v0

    #@a5
    nop

    #@a6
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_25
        :pswitch_32
        :pswitch_3f
        :pswitch_4c
        :pswitch_59
        :pswitch_66
        :pswitch_73
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kz;->bM(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$d;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dj(I)[Lcom/google/android/gms/internal/ks$d;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ks$d;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kz;->dj(I)[Lcom/google/android/gms/internal/ks$d;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
