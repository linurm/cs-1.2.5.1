.class public Lcom/google/android/gms/internal/fq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/fp;",
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

.method static a(Lcom/google/android/gms/internal/fp;Landroid/os/Parcel;I)V
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
    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->name:Ljava/lang/String;

    #@8
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@b
    const/16 v1, 0x3e8

    #@d
    iget v2, p0, Lcom/google/android/gms/internal/fp;->xM:I

    #@f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@12
    const/4 v1, 0x2

    #@13
    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->yb:Ljava/lang/String;

    #@15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@18
    const/4 v1, 0x3

    #@19
    iget-boolean v2, p0, Lcom/google/android/gms/internal/fp;->yc:Z

    #@1b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@1e
    const/4 v1, 0x4

    #@1f
    iget v2, p0, Lcom/google/android/gms/internal/fp;->weight:I

    #@21
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@24
    const/4 v1, 0x5

    #@25
    iget-boolean v2, p0, Lcom/google/android/gms/internal/fp;->yd:Z

    #@27
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@2a
    const/4 v1, 0x6

    #@2b
    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->ye:Ljava/lang/String;

    #@2d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@30
    const/4 v1, 0x7

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->yf:[Lcom/google/android/gms/internal/fm;

    #@33
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@36
    const/16 v1, 0x8

    #@38
    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->yg:[I

    #@3a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[IZ)V

    #@3d
    const/16 v1, 0xb

    #@3f
    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->yh:Ljava/lang/String;

    #@41
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@44
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@47
    return-void
.end method


# virtual methods
.method public J(I)[Lcom/google/android/gms/internal/fp;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/fp;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fq;->p(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fp;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fq;->J(I)[Lcom/google/android/gms/internal/fp;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public p(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fp;
    .registers 15

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v11

    #@6
    const/4 v5, 0x1

    #@7
    move-object v3, v2

    #@8
    move-object v7, v2

    #@9
    move-object v8, v2

    #@a
    move-object v9, v2

    #@b
    move-object v10, v2

    #@c
    move v6, v4

    #@d
    move v1, v4

    #@e
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@11
    move-result v0

    #@12
    if-ge v0, v11, :cond_5a

    #@14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@17
    move-result v0

    #@18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1b
    move-result v12

    #@1c
    sparse-switch v12, :sswitch_data_80

    #@1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@22
    goto :goto_e

    #@23
    :sswitch_23
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    goto :goto_e

    #@28
    :sswitch_28
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2b
    move-result v1

    #@2c
    goto :goto_e

    #@2d
    :sswitch_2d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    goto :goto_e

    #@32
    :sswitch_32
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@35
    move-result v4

    #@36
    goto :goto_e

    #@37
    :sswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3a
    move-result v5

    #@3b
    goto :goto_e

    #@3c
    :sswitch_3c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@3f
    move-result v6

    #@40
    goto :goto_e

    #@41
    :sswitch_41
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    goto :goto_e

    #@46
    :sswitch_46
    sget-object v8, Lcom/google/android/gms/internal/fm;->CREATOR:Lcom/google/android/gms/internal/fn;

    #@48
    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, [Lcom/google/android/gms/internal/fm;

    #@4e
    move-object v8, v0

    #@4f
    goto :goto_e

    #@50
    :sswitch_50
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)[I

    #@53
    move-result-object v9

    #@54
    goto :goto_e

    #@55
    :sswitch_55
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@58
    move-result-object v10

    #@59
    goto :goto_e

    #@5a
    :cond_5a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@5d
    move-result v0

    #@5e
    if-eq v0, v11, :cond_79

    #@60
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@62
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string v2, "Overread allowed size end="

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@78
    throw v0

    #@79
    :cond_79
    new-instance v0, Lcom/google/android/gms/internal/fp;

    #@7b
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/fp;-><init>(ILjava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/fm;[ILjava/lang/String;)V

    #@7e
    return-object v0

    #@7f
    nop

    #@80
    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_32
        0x4 -> :sswitch_37
        0x5 -> :sswitch_3c
        0x6 -> :sswitch_41
        0x7 -> :sswitch_46
        0x8 -> :sswitch_50
        0xb -> :sswitch_55
        0x3e8 -> :sswitch_28
    .end sparse-switch
.end method
