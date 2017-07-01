.class public Lcom/google/android/gms/wallet/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/OfferWalletObject;",
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

.method static a(Lcom/google/android/gms/wallet/OfferWalletObject;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/OfferWalletObject;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->eC:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajT:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajU:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@1c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@22
    return-void
.end method


# virtual methods
.method public cc(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/OfferWalletObject;
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v4

    #@5
    const/4 v1, 0x0

    #@6
    move-object v2, v0

    #@7
    move v3, v1

    #@8
    move-object v1, v0

    #@9
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v5

    #@d
    if-ge v5, v4, :cond_36

    #@f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@12
    move-result v5

    #@13
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@16
    move-result v6

    #@17
    packed-switch v6, :pswitch_data_5c

    #@1a
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :pswitch_1e
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v3

    #@22
    goto :goto_9

    #@23
    :pswitch_23
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    goto :goto_9

    #@28
    :pswitch_28
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    goto :goto_9

    #@2d
    :pswitch_2d
    sget-object v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    #@35
    goto :goto_9

    #@36
    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@39
    move-result v5

    #@3a
    if-eq v5, v4, :cond_55

    #@3c
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string v2, "Overread allowed size end="

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@54
    throw v0

    #@55
    :cond_55
    new-instance v4, Lcom/google/android/gms/wallet/OfferWalletObject;

    #@57
    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/wallet/OfferWalletObject;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/CommonWalletObject;)V

    #@5a
    return-object v4

    #@5b
    nop

    #@5c
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/n;->cc(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/OfferWalletObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dI(I)[Lcom/google/android/gms/wallet/OfferWalletObject;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/OfferWalletObject;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/n;->dI(I)[Lcom/google/android/gms/wallet/OfferWalletObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
