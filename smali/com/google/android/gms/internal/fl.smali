.class public Lcom/google/android/gms/internal/fl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/fk;",
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

.method static a(Lcom/google/android/gms/internal/fk;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->xU:Ljava/lang/String;

    #@8
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@b
    const/16 v1, 0x3e8

    #@d
    iget v2, p0, Lcom/google/android/gms/internal/fk;->xM:I

    #@f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@12
    const/4 v1, 0x3

    #@13
    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->xV:Lcom/google/android/gms/internal/fp;

    #@15
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@18
    const/4 v1, 0x4

    #@19
    iget v2, p0, Lcom/google/android/gms/internal/fk;->xW:I

    #@1b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1e
    const/4 v1, 0x5

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->xX:[B

    #@21
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    #@24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@27
    return-void
.end method


# virtual methods
.method public F(I)[Lcom/google/android/gms/internal/fk;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/fk;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fl;->n(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fk;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public n(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fk;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v6

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v4, -0x1

    #@7
    move-object v3, v2

    #@8
    move-object v5, v2

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v0

    #@d
    if-ge v0, v6, :cond_3c

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v7

    #@17
    sparse-switch v7, :sswitch_data_62

    #@1a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :sswitch_1e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    goto :goto_9

    #@23
    :sswitch_23
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@26
    move-result v1

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    sget-object v3, Lcom/google/android/gms/internal/fp;->CREATOR:Lcom/google/android/gms/internal/fq;

    #@2a
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/google/android/gms/internal/fp;

    #@30
    move-object v3, v0

    #@31
    goto :goto_9

    #@32
    :sswitch_32
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@35
    move-result v4

    #@36
    goto :goto_9

    #@37
    :sswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@3a
    move-result-object v5

    #@3b
    goto :goto_9

    #@3c
    :cond_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@3f
    move-result v0

    #@40
    if-eq v0, v6, :cond_5b

    #@42
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string v2, "Overread allowed size end="

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@5a
    throw v0

    #@5b
    :cond_5b
    new-instance v0, Lcom/google/android/gms/internal/fk;

    #@5d
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/fp;I[B)V

    #@60
    return-object v0

    #@61
    nop

    #@62
    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_1e
        0x3 -> :sswitch_28
        0x4 -> :sswitch_32
        0x5 -> :sswitch_37
        0x3e8 -> :sswitch_23
    .end sparse-switch
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fl;->F(I)[Lcom/google/android/gms/internal/fk;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
