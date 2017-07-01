.class public Lcom/google/android/gms/wallet/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/Cart;",
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

.method static a(Lcom/google/android/gms/wallet/Cart;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/Cart;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wallet/Cart;->aiK:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/Cart;->aiL:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/wallet/Cart;->aiM:Ljava/util/ArrayList;

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@22
    return-void
.end method


# virtual methods
.method public bR(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/Cart;
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v4

    #@5
    const/4 v2, 0x0

    #@6
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    move v3, v2

    #@c
    move-object v2, v1

    #@d
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@10
    move-result v5

    #@11
    if-ge v5, v4, :cond_38

    #@13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@16
    move-result v5

    #@17
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1a
    move-result v6

    #@1b
    packed-switch v6, :pswitch_data_5e

    #@1e
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@21
    goto :goto_d

    #@22
    :pswitch_22
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@25
    move-result v3

    #@26
    goto :goto_d

    #@27
    :pswitch_27
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    goto :goto_d

    #@2c
    :pswitch_2c
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    goto :goto_d

    #@31
    :pswitch_31
    sget-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@36
    move-result-object v0

    #@37
    goto :goto_d

    #@38
    :cond_38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@3b
    move-result v5

    #@3c
    if-eq v5, v4, :cond_57

    #@3e
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string v2, "Overread allowed size end="

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@56
    throw v0

    #@57
    :cond_57
    new-instance v4, Lcom/google/android/gms/wallet/Cart;

    #@59
    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/wallet/Cart;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@5c
    return-object v4

    #@5d
    nop

    #@5e
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_27
        :pswitch_2c
        :pswitch_31
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/b;->bR(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/Cart;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dx(I)[Lcom/google/android/gms/wallet/Cart;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/Cart;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/b;->dx(I)[Lcom/google/android/gms/wallet/Cart;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
