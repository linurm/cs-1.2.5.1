.class public Lcom/google/android/gms/internal/id;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ib$a;",
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

.method static a(Lcom/google/android/gms/internal/ib$a;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/internal/ib$a;->versionCode:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/internal/ib$a;->className:Ljava/lang/String;

    #@e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/internal/ib$a;->Ho:Ljava/util/ArrayList;

    #@14
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@1a
    return-void
.end method


# virtual methods
.method public K(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ib$a;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v3

    #@5
    const/4 v1, 0x0

    #@6
    move v2, v1

    #@7
    move-object v1, v0

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v4

    #@c
    if-ge v4, v3, :cond_2e

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v4

    #@12
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v5

    #@16
    packed-switch v5, :pswitch_data_54

    #@19
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1c
    goto :goto_8

    #@1d
    :pswitch_1d
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@20
    move-result v2

    #@21
    goto :goto_8

    #@22
    :pswitch_22
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    goto :goto_8

    #@27
    :pswitch_27
    sget-object v0, Lcom/google/android/gms/internal/ib$b;->CREATOR:Lcom/google/android/gms/internal/ia;

    #@29
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2c
    move-result-object v0

    #@2d
    goto :goto_8

    #@2e
    :cond_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@31
    move-result v4

    #@32
    if-eq v4, v3, :cond_4d

    #@34
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string v2, "Overread allowed size end="

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@4c
    throw v0

    #@4d
    :cond_4d
    new-instance v3, Lcom/google/android/gms/internal/ib$a;

    #@4f
    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ib$a;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    #@52
    return-object v3

    #@53
    nop

    #@54
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public az(I)[Lcom/google/android/gms/internal/ib$a;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ib$a;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/id;->K(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ib$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/id;->az(I)[Lcom/google/android/gms/internal/ib$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
