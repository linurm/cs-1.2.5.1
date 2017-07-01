.class public Lcom/google/android/gms/internal/jl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/jk;",
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

.method static a(Lcom/google/android/gms/internal/jk;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->jc()I

    #@8
    move-result v2

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/16 v1, 0x3e8

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->getVersionCode()I

    #@11
    move-result v2

    #@12
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@15
    const/4 v1, 0x2

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->je()I

    #@19
    move-result v2

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1d
    const/4 v1, 0x3

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->jf()Lcom/google/android/gms/internal/jm;

    #@21
    move-result-object v2

    #@22
    const/4 v3, 0x0

    #@23
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@26
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@29
    return-void
.end method


# virtual methods
.method public bu(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jk;
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v4

    #@5
    const/4 v1, -0x1

    #@6
    const/4 v0, 0x0

    #@7
    move v3, v2

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v5

    #@c
    if-ge v5, v4, :cond_35

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v5

    #@12
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v6

    #@16
    sparse-switch v6, :sswitch_data_5a

    #@19
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1c
    goto :goto_8

    #@1d
    :sswitch_1d
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@20
    move-result v2

    #@21
    goto :goto_8

    #@22
    :sswitch_22
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@25
    move-result v3

    #@26
    goto :goto_8

    #@27
    :sswitch_27
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2a
    move-result v1

    #@2b
    goto :goto_8

    #@2c
    :sswitch_2c
    sget-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Lcom/google/android/gms/internal/jn;

    #@2e
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/google/android/gms/internal/jm;

    #@34
    goto :goto_8

    #@35
    :cond_35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@38
    move-result v5

    #@39
    if-eq v5, v4, :cond_54

    #@3b
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v2, "Overread allowed size end="

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@53
    throw v0

    #@54
    :cond_54
    new-instance v4, Lcom/google/android/gms/internal/jk;

    #@56
    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/internal/jk;-><init>(IIILcom/google/android/gms/internal/jm;)V

    #@59
    return-object v4

    #@5a
    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_27
        0x3 -> :sswitch_2c
        0x3e8 -> :sswitch_22
    .end sparse-switch
.end method

.method public cP(I)[Lcom/google/android/gms/internal/jk;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/jk;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jl;->bu(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jk;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jl;->cP(I)[Lcom/google/android/gms/internal/jk;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
