.class public Lcom/google/android/gms/internal/ku;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ks$a;",
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

.method static a(Lcom/google/android/gms/internal/ks$a;Landroid/os/Parcel;I)V
    .registers 9

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$a;->kk()Ljava/util/Set;

    #@a
    move-result-object v1

    #@b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1c

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$a;->getVersionCode()I

    #@18
    move-result v2

    #@19
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1c
    :cond_1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2d

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$a;->getMax()I

    #@29
    move-result v2

    #@2a
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2d
    :cond_2d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v2

    #@31
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3e

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$a;->getMin()I

    #@3a
    move-result v1

    #@3b
    invoke-static {p1, v5, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@3e
    :cond_3e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@41
    return-void
.end method


# virtual methods
.method public bH(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$a;
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v3

    #@5
    new-instance v4, Ljava/util/HashSet;

    #@7
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@a
    move v1, v0

    #@b
    move v2, v0

    #@c
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v5

    #@10
    if-ge v5, v3, :cond_48

    #@12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@15
    move-result v5

    #@16
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@19
    move-result v6

    #@1a
    packed-switch v6, :pswitch_data_6e

    #@1d
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@20
    goto :goto_c

    #@21
    :pswitch_21
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@24
    move-result v2

    #@25
    const/4 v5, 0x1

    #@26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v5

    #@2a
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_c

    #@2e
    :pswitch_2e
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@31
    move-result v1

    #@32
    const/4 v5, 0x2

    #@33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_c

    #@3b
    :pswitch_3b
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3e
    move-result v0

    #@3f
    const/4 v5, 0x3

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v5

    #@44
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_c

    #@48
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@4b
    move-result v5

    #@4c
    if-eq v5, v3, :cond_67

    #@4e
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@50
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string v2, "Overread allowed size end="

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@66
    throw v0

    #@67
    :cond_67
    new-instance v3, Lcom/google/android/gms/internal/ks$a;

    #@69
    invoke-direct {v3, v4, v2, v1, v0}, Lcom/google/android/gms/internal/ks$a;-><init>(Ljava/util/Set;III)V

    #@6c
    return-object v3

    #@6d
    nop

    #@6e
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2e
        :pswitch_3b
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ku;->bH(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public de(I)[Lcom/google/android/gms/internal/ks$a;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ks$a;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ku;->de(I)[Lcom/google/android/gms/internal/ks$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
