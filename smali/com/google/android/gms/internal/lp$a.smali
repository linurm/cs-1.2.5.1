.class public abstract Lcom/google/android/gms/internal/lp$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/lp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lp$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/lp$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/lp;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/lp;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/lp$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lp$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    #@0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    sparse-switch p1, :sswitch_data_102

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v3

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_3f

    #@20
    sget-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    #@28
    move-object v1, v0

    #@29
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_41

    #@2f
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/os/Bundle;

    #@37
    :goto_37
    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/lp$a;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    #@3a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d
    move v0, v3

    #@3e
    goto :goto_9

    #@3f
    :cond_3f
    move-object v1, v2

    #@40
    goto :goto_29

    #@41
    :cond_41
    move-object v0, v2

    #@42
    goto :goto_37

    #@43
    :sswitch_43
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v4

    #@4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_71

    #@52
    sget-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/google/android/gms/wallet/FullWallet;

    #@5a
    move-object v1, v0

    #@5b
    :goto_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_73

    #@61
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@63
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Landroid/os/Bundle;

    #@69
    :goto_69
    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/lp$a;->a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V

    #@6c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f
    move v0, v3

    #@70
    goto :goto_9

    #@71
    :cond_71
    move-object v1, v2

    #@72
    goto :goto_5b

    #@73
    :cond_73
    move-object v0, v2

    #@74
    goto :goto_69

    #@75
    :sswitch_75
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v4

    #@7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_9c

    #@84
    move v1, v3

    #@85
    :goto_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v0

    #@89
    if-eqz v0, :cond_9f

    #@8b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@90
    move-result-object v0

    #@91
    check-cast v0, Landroid/os/Bundle;

    #@93
    :goto_93
    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/lp$a;->a(IZLandroid/os/Bundle;)V

    #@96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@99
    move v0, v3

    #@9a
    goto/16 :goto_9

    #@9c
    :cond_9c
    const/4 v0, 0x0

    #@9d
    move v1, v0

    #@9e
    goto :goto_85

    #@9f
    :cond_9f
    move-object v0, v2

    #@a0
    goto :goto_93

    #@a1
    :sswitch_a1
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@a3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v1

    #@aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v0

    #@ae
    if-eqz v0, :cond_c1

    #@b0
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b2
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b5
    move-result-object v0

    #@b6
    check-cast v0, Landroid/os/Bundle;

    #@b8
    :goto_b8
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lp$a;->i(ILandroid/os/Bundle;)V

    #@bb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    move v0, v3

    #@bf
    goto/16 :goto_9

    #@c1
    :cond_c1
    move-object v0, v2

    #@c2
    goto :goto_b8

    #@c3
    :sswitch_c3
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@c5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v0

    #@cc
    if-eqz v0, :cond_fb

    #@ce
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@d0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@d3
    move-result-object v0

    #@d4
    move-object v1, v0

    #@d5
    :goto_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v0

    #@d9
    if-eqz v0, :cond_fd

    #@db
    sget-object v0, Lcom/google/android/gms/internal/li;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dd
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e0
    move-result-object v0

    #@e1
    check-cast v0, Lcom/google/android/gms/internal/li;

    #@e3
    move-object v4, v0

    #@e4
    :goto_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e7
    move-result v0

    #@e8
    if-eqz v0, :cond_ff

    #@ea
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ec
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ef
    move-result-object v0

    #@f0
    check-cast v0, Landroid/os/Bundle;

    #@f2
    :goto_f2
    invoke-virtual {p0, v1, v4, v0}, Lcom/google/android/gms/internal/lp$a;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/li;Landroid/os/Bundle;)V

    #@f5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    move v0, v3

    #@f9
    goto/16 :goto_9

    #@fb
    :cond_fb
    move-object v1, v2

    #@fc
    goto :goto_d5

    #@fd
    :cond_fd
    move-object v4, v2

    #@fe
    goto :goto_e4

    #@ff
    :cond_ff
    move-object v0, v2

    #@100
    goto :goto_f2

    #@101
    nop

    #@102
    :sswitch_data_102
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_43
        0x3 -> :sswitch_75
        0x4 -> :sswitch_a1
        0x5 -> :sswitch_c3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
