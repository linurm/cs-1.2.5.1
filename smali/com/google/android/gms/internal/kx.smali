.class public Lcom/google/android/gms/internal/kx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ks$b$b;",
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

.method static a(Lcom/google/android/gms/internal/ks$b$b;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b$b;->kk()Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b$b;->getVersionCode()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b$b;->getHeight()I

    #@2a
    move-result v2

    #@2b
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b$b;->getUrl()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {p1, v5, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$b$b;->getWidth()I

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
.method public bK(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$b$b;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    new-instance v1, Ljava/util/HashSet;

    #@7
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@a
    const/4 v4, 0x0

    #@b
    move v3, v2

    #@c
    move v5, v2

    #@d
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@10
    move-result v6

    #@11
    if-ge v6, v0, :cond_56

    #@13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@16
    move-result v6

    #@17
    invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1a
    move-result v7

    #@1b
    packed-switch v7, :pswitch_data_7c

    #@1e
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@21
    goto :goto_d

    #@22
    :pswitch_22
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@25
    move-result v2

    #@26
    const/4 v6, 0x1

    #@27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v6

    #@2b
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_d

    #@2f
    :pswitch_2f
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@32
    move-result v3

    #@33
    const/4 v6, 0x2

    #@34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v6

    #@38
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_d

    #@3c
    :pswitch_3c
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    const/4 v6, 0x3

    #@41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v6

    #@45
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_d

    #@49
    :pswitch_49
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@4c
    move-result v5

    #@4d
    const/4 v6, 0x4

    #@4e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v6

    #@52
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@55
    goto :goto_d

    #@56
    :cond_56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@59
    move-result v6

    #@5a
    if-eq v6, v0, :cond_75

    #@5c
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@5e
    new-instance v2, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string v3, "Overread allowed size end="

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@74
    throw v1

    #@75
    :cond_75
    new-instance v0, Lcom/google/android/gms/internal/ks$b$b;

    #@77
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ks$b$b;-><init>(Ljava/util/Set;IILjava/lang/String;I)V

    #@7a
    return-object v0

    #@7b
    nop

    #@7c
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2f
        :pswitch_3c
        :pswitch_49
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kx;->bK(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$b$b;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dh(I)[Lcom/google/android/gms/internal/ks$b$b;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ks$b$b;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kx;->dh(I)[Lcom/google/android/gms/internal/ks$b$b;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
