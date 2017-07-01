.class public Lcom/google/android/gms/internal/jv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ju;",
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

.method static a(Lcom/google/android/gms/internal/ju;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->getName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/16 v1, 0x3e8

    #@f
    iget v2, p0, Lcom/google/android/gms/internal/ju;->xM:I

    #@11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->jk()Lcom/google/android/gms/maps/model/LatLng;

    #@18
    move-result-object v2

    #@19
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->getAddress()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@24
    const/4 v1, 0x4

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->jl()Ljava/util/List;

    #@28
    move-result-object v2

    #@29
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@2c
    const/4 v1, 0x5

    #@2d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->getPhoneNumber()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@34
    const/4 v1, 0x6

    #@35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->jm()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@3f
    return-void
.end method


# virtual methods
.method public bz(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ju;
    .registers 12

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v8

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
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v0

    #@f
    if-ge v0, v8, :cond_4a

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v9

    #@19
    sparse-switch v9, :sswitch_data_70

    #@1c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1f
    goto :goto_b

    #@20
    :sswitch_20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    goto :goto_b

    #@25
    :sswitch_25
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@28
    move-result v1

    #@29
    goto :goto_b

    #@2a
    :sswitch_2a
    sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@2c
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@32
    move-object v3, v0

    #@33
    goto :goto_b

    #@34
    :sswitch_34
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    goto :goto_b

    #@39
    :sswitch_39
    sget-object v5, Lcom/google/android/gms/internal/js;->CREATOR:Lcom/google/android/gms/internal/jt;

    #@3b
    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@3e
    move-result-object v5

    #@3f
    goto :goto_b

    #@40
    :sswitch_40
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    goto :goto_b

    #@45
    :sswitch_45
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    goto :goto_b

    #@4a
    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@4d
    move-result v0

    #@4e
    if-eq v0, v8, :cond_69

    #@50
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@52
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string v2, "Overread allowed size end="

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@68
    throw v0

    #@69
    :cond_69
    new-instance v0, Lcom/google/android/gms/internal/ju;

    #@6b
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ju;-><init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@6e
    return-object v0

    #@6f
    nop

    #@70
    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_34
        0x4 -> :sswitch_39
        0x5 -> :sswitch_40
        0x6 -> :sswitch_45
        0x3e8 -> :sswitch_25
    .end sparse-switch
.end method

.method public cU(I)[Lcom/google/android/gms/internal/ju;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ju;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jv;->bz(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ju;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jv;->cU(I)[Lcom/google/android/gms/internal/ju;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
