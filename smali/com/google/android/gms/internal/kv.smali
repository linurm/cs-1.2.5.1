.class public Lcom/google/android/gms/internal/kv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ks$b;",
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

.method static a(Lcom/google/android/gms/internal/ks$b;Landroid/os/Parcel;I)V
    .registers 10

    #@0
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b;->kk()Ljava/util/Set;

    #@b
    move-result-object v1

    #@c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1d

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b;->getVersionCode()I

    #@19
    move-result v2

    #@1a
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1d
    :cond_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2e

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b;->kO()Lcom/google/android/gms/internal/ks$b$a;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p1, v4, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2e
    :cond_2e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v2

    #@32
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_3f

    #@38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b;->kP()Lcom/google/android/gms/internal/ks$b$b;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {p1, v5, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@3f
    :cond_3f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v2

    #@43
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_50

    #@49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b;->getLayout()I

    #@4c
    move-result v1

    #@4d
    invoke-static {p1, v6, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@50
    :cond_50
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@53
    return-void
.end method


# virtual methods
.method public bI(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$b;
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v6

    #@6
    new-instance v1, Ljava/util/HashSet;

    #@8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@b
    move-object v4, v3

    #@c
    move v5, v2

    #@d
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@10
    move-result v0

    #@11
    if-ge v0, v6, :cond_60

    #@13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@16
    move-result v0

    #@17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1a
    move-result v7

    #@1b
    packed-switch v7, :pswitch_data_86

    #@1e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@21
    goto :goto_d

    #@22
    :pswitch_22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@25
    move-result v2

    #@26
    const/4 v0, 0x1

    #@27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v0

    #@2b
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_d

    #@2f
    :pswitch_2f
    sget-object v3, Lcom/google/android/gms/internal/ks$b$a;->CREATOR:Lcom/google/android/gms/internal/kw;

    #@31
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/google/android/gms/internal/ks$b$a;

    #@37
    const/4 v3, 0x2

    #@38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v3

    #@3c
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    move-object v3, v0

    #@40
    goto :goto_d

    #@41
    :pswitch_41
    sget-object v4, Lcom/google/android/gms/internal/ks$b$b;->CREATOR:Lcom/google/android/gms/internal/kx;

    #@43
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Lcom/google/android/gms/internal/ks$b$b;

    #@49
    const/4 v4, 0x3

    #@4a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v4

    #@4e
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@51
    move-object v4, v0

    #@52
    goto :goto_d

    #@53
    :pswitch_53
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@56
    move-result v5

    #@57
    const/4 v0, 0x4

    #@58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v0

    #@5c
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_d

    #@60
    :cond_60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@63
    move-result v0

    #@64
    if-eq v0, v6, :cond_7f

    #@66
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@68
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string v2, "Overread allowed size end="

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@7e
    throw v0

    #@7f
    :cond_7f
    new-instance v0, Lcom/google/android/gms/internal/ks$b;

    #@81
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ks$b;-><init>(Ljava/util/Set;ILcom/google/android/gms/internal/ks$b$a;Lcom/google/android/gms/internal/ks$b$b;I)V

    #@84
    return-object v0

    #@85
    nop

    #@86
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2f
        :pswitch_41
        :pswitch_53
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kv;->bI(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$b;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public df(I)[Lcom/google/android/gms/internal/ks$b;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ks$b;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kv;->df(I)[Lcom/google/android/gms/internal/ks$b;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
