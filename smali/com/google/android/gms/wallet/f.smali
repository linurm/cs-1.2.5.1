.class public Lcom/google/android/gms/wallet/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/FullWallet;",
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

.method static a(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/FullWallet;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiQ:Ljava/lang/String;

    #@10
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiR:Ljava/lang/String;

    #@16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiS:Lcom/google/android/gms/wallet/ProxyCard;

    #@1c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiT:Ljava/lang/String;

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiU:Lcom/google/android/gms/wallet/Address;

    #@28
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2b
    const/4 v1, 0x7

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiV:Lcom/google/android/gms/wallet/Address;

    #@2e
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@31
    const/16 v1, 0x8

    #@33
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiW:[Ljava/lang/String;

    #@35
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    #@38
    const/16 v1, 0x9

    #@3a
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@3c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@3f
    const/16 v1, 0xa

    #@41
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiY:Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@43
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@46
    const/16 v1, 0xb

    #@48
    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiZ:[Lcom/google/android/gms/wallet/InstrumentInfo;

    #@4a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@4d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@50
    return-void
.end method


# virtual methods
.method public bU(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/FullWallet;
    .registers 16

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v12

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
    move-object v11, v2

    #@f
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@12
    move-result v0

    #@13
    if-ge v0, v12, :cond_79

    #@15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@18
    move-result v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1c
    move-result v13

    #@1d
    packed-switch v13, :pswitch_data_9e

    #@20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@23
    goto :goto_f

    #@24
    :pswitch_24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@27
    move-result v1

    #@28
    goto :goto_f

    #@29
    :pswitch_29
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    goto :goto_f

    #@2e
    :pswitch_2e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    goto :goto_f

    #@33
    :pswitch_33
    sget-object v4, Lcom/google/android/gms/wallet/ProxyCard;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lcom/google/android/gms/wallet/ProxyCard;

    #@3b
    move-object v4, v0

    #@3c
    goto :goto_f

    #@3d
    :pswitch_3d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    goto :goto_f

    #@42
    :pswitch_42
    sget-object v6, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44
    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/google/android/gms/wallet/Address;

    #@4a
    move-object v6, v0

    #@4b
    goto :goto_f

    #@4c
    :pswitch_4c
    sget-object v7, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/google/android/gms/wallet/Address;

    #@54
    move-object v7, v0

    #@55
    goto :goto_f

    #@56
    :pswitch_56
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Ljava/lang/String;

    #@59
    move-result-object v8

    #@5a
    goto :goto_f

    #@5b
    :pswitch_5b
    sget-object v9, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5d
    invoke-static {p1, v0, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@63
    move-object v9, v0

    #@64
    goto :goto_f

    #@65
    :pswitch_65
    sget-object v10, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@67
    invoke-static {p1, v0, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@6d
    move-object v10, v0

    #@6e
    goto :goto_f

    #@6f
    :pswitch_6f
    sget-object v11, Lcom/google/android/gms/wallet/InstrumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@71
    invoke-static {p1, v0, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, [Lcom/google/android/gms/wallet/InstrumentInfo;

    #@77
    move-object v11, v0

    #@78
    goto :goto_f

    #@79
    :cond_79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@7c
    move-result v0

    #@7d
    if-eq v0, v12, :cond_98

    #@7f
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@81
    new-instance v1, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string v2, "Overread allowed size end="

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@97
    throw v0

    #@98
    :cond_98
    new-instance v0, Lcom/google/android/gms/wallet/FullWallet;

    #@9a
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/wallet/FullWallet;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V

    #@9d
    return-object v0

    #@9e
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_3d
        :pswitch_42
        :pswitch_4c
        :pswitch_56
        :pswitch_5b
        :pswitch_65
        :pswitch_6f
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/f;->bU(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/FullWallet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dA(I)[Lcom/google/android/gms/wallet/FullWallet;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/wallet/FullWallet;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/f;->dA(I)[Lcom/google/android/gms/wallet/FullWallet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
