.class public Lcom/google/android/gms/plus/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/plus/internal/h;",
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

.method static a(Lcom/google/android/gms/plus/internal/h;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->getAccountName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->jZ()[Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->ka()[Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->kb()[Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->kc()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@36
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->kd()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3e
    const/4 v1, 0x7

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->ke()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@46
    const/16 v1, 0x8

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->kf()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@4f
    const/16 v1, 0x9

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->kg()Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@54
    move-result-object v2

    #@55
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@58
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@5b
    return-void
.end method


# virtual methods
.method public bD(Landroid/os/Parcel;)Lcom/google/android/gms/plus/internal/h;
    .registers 15

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v11

    #@5
    const/4 v1, 0x0

    #@6
    move-object v3, v2

    #@7
    move-object v4, v2

    #@8
    move-object v5, v2

    #@9
    move-object v6, v2

    #@a
    move-object v7, v2

    #@b
    move-object v8, v2

    #@c
    move-object v9, v2

    #@d
    move-object v10, v2

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
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    goto :goto_e

    #@32
    :sswitch_32
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    goto :goto_e

    #@37
    :sswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    goto :goto_e

    #@3c
    :sswitch_3c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3f
    move-result-object v6

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
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    goto :goto_e

    #@4b
    :sswitch_4b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    goto :goto_e

    #@50
    :sswitch_50
    sget-object v10, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->CREATOR:Lcom/google/android/gms/plus/internal/f;

    #@52
    invoke-static {p1, v0, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@58
    move-object v10, v0

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
    new-instance v0, Lcom/google/android/gms/plus/internal/h;

    #@7b
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/plus/internal/h;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

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
        0x8 -> :sswitch_4b
        0x9 -> :sswitch_50
        0x3e8 -> :sswitch_28
    .end sparse-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/j;->bD(Landroid/os/Parcel;)Lcom/google/android/gms/plus/internal/h;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public da(I)[Lcom/google/android/gms/plus/internal/h;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/plus/internal/h;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/j;->da(I)[Lcom/google/android/gms/plus/internal/h;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
