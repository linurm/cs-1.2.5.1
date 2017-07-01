.class public Lcom/google/android/gms/wallet/fragment/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;",
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

.method static a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    iget v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->xM:I

    #@7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@a
    const/4 v1, 0x2

    #@b
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->getEnvironment()I

    #@e
    move-result v2

    #@f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@12
    const/4 v1, 0x3

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->getTheme()I

    #@16
    move-result v2

    #@17
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1a
    const/4 v1, 0x4

    #@1b
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->getFragmentStyle()Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@1e
    move-result-object v2

    #@1f
    const/4 v3, 0x0

    #@20
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@23
    const/4 v1, 0x5

    #@24
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->getMode()I

    #@27
    move-result v2

    #@28
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@2e
    return-void
.end method


# virtual methods
.method public ch(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 10

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v6

    #@6
    const/4 v4, 0x0

    #@7
    move v3, v1

    #@8
    move v5, v2

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
    packed-switch v7, :pswitch_data_62

    #@1a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1d
    goto :goto_9

    #@1e
    :pswitch_1e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@21
    move-result v1

    #@22
    goto :goto_9

    #@23
    :pswitch_23
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@26
    move-result v2

    #@27
    goto :goto_9

    #@28
    :pswitch_28
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2b
    move-result v3

    #@2c
    goto :goto_9

    #@2d
    :pswitch_2d
    sget-object v4, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    #@35
    move-object v4, v0

    #@36
    goto :goto_9

    #@37
    :pswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3a
    move-result v5

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
    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@5d
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;-><init>(IIILcom/google/android/gms/wallet/fragment/WalletFragmentStyle;I)V

    #@60
    return-object v0

    #@61
    nop

    #@62
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_37
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/fragment/b;->ch(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dO(I)[Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/fragment/b;->dO(I)[Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
