.class public Lcom/google/android/gms/internal/lc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ks$h;",
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

.method static a(Lcom/google/android/gms/internal/ks$h;Landroid/os/Parcel;I)V
    .registers 11

    #@0
    const/4 v7, 0x6

    #@1
    const/4 v6, 0x5

    #@2
    const/4 v5, 0x4

    #@3
    const/4 v4, 0x3

    #@4
    const/4 v3, 0x1

    #@5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$h;->kk()Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$h;->getVersionCode()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$h;->kX()I

    #@2b
    move-result v2

    #@2c
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$h;->getValue()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {p1, v5, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$h;->getLabel()Ljava/lang/String;

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
    move-result v1

    #@59
    if-eqz v1, :cond_62

    #@5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$h;->getType()I

    #@5e
    move-result v1

    #@5f
    invoke-static {p1, v7, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@62
    :cond_62
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@65
    return-void
.end method


# virtual methods
.method public bP(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$h;
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    new-instance v1, Ljava/util/HashSet;

    #@8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@b
    move-object v5, v3

    #@c
    move v4, v2

    #@d
    move v6, v2

    #@e
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@11
    move-result v7

    #@12
    if-ge v7, v0, :cond_64

    #@14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@17
    move-result v7

    #@18
    invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1b
    move-result v8

    #@1c
    packed-switch v8, :pswitch_data_8a

    #@1f
    :pswitch_1f
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@22
    goto :goto_e

    #@23
    :pswitch_23
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@26
    move-result v2

    #@27
    const/4 v7, 0x1

    #@28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v7

    #@2c
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_e

    #@30
    :pswitch_30
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@33
    move-result v6

    #@34
    const/4 v7, 0x3

    #@35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v7

    #@39
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_e

    #@3d
    :pswitch_3d
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    const/4 v7, 0x4

    #@42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v7

    #@46
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@49
    goto :goto_e

    #@4a
    :pswitch_4a
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    const/4 v7, 0x5

    #@4f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v7

    #@53
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_e

    #@57
    :pswitch_57
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@5a
    move-result v4

    #@5b
    const/4 v7, 0x6

    #@5c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v7

    #@60
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@63
    goto :goto_e

    #@64
    :cond_64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@67
    move-result v7

    #@68
    if-eq v7, v0, :cond_83

    #@6a
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@6c
    new-instance v2, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string v3, "Overread allowed size end="

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@82
    throw v1

    #@83
    :cond_83
    new-instance v0, Lcom/google/android/gms/internal/ks$h;

    #@85
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ks$h;-><init>(Ljava/util/Set;ILjava/lang/String;ILjava/lang/String;I)V

    #@88
    return-object v0

    #@89
    nop

    #@8a
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
        :pswitch_30
        :pswitch_3d
        :pswitch_4a
        :pswitch_57
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lc;->bP(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$h;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dm(I)[Lcom/google/android/gms/internal/ks$h;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ks$h;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lc;->dm(I)[Lcom/google/android/gms/internal/ks$h;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
