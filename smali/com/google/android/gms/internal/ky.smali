.class public Lcom/google/android/gms/internal/ky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ks$c;",
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

.method static a(Lcom/google/android/gms/internal/ks$c;Landroid/os/Parcel;I)V
    .registers 8

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$c;->kk()Ljava/util/Set;

    #@9
    move-result-object v1

    #@a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1b

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$c;->getVersionCode()I

    #@17
    move-result v2

    #@18
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1b
    :cond_1b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2c

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$c;->getUrl()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2c
    :cond_2c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@2f
    return-void
.end method


# virtual methods
.method public bL(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$c;
    .registers 8

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v2

    #@4
    new-instance v3, Ljava/util/HashSet;

    #@6
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v4

    #@f
    if-ge v4, v2, :cond_3a

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v5

    #@19
    packed-switch v5, :pswitch_data_60

    #@1c
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1f
    goto :goto_b

    #@20
    :pswitch_20
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@23
    move-result v1

    #@24
    const/4 v4, 0x1

    #@25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_b

    #@2d
    :pswitch_2d
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    const/4 v4, 0x2

    #@32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v4

    #@36
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_b

    #@3a
    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@3d
    move-result v4

    #@3e
    if-eq v4, v2, :cond_59

    #@40
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string v3, "Overread allowed size end="

    #@49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@58
    throw v0

    #@59
    :cond_59
    new-instance v2, Lcom/google/android/gms/internal/ks$c;

    #@5b
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/ks$c;-><init>(Ljava/util/Set;ILjava/lang/String;)V

    #@5e
    return-object v2

    #@5f
    nop

    #@60
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_20
        :pswitch_2d
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ky;->bL(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$c;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public di(I)[Lcom/google/android/gms/internal/ks$c;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ks$c;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ky;->di(I)[Lcom/google/android/gms/internal/ks$c;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
