.class public abstract Lcom/google/android/gms/internal/lk$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/lk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lk$a$a;
    }
.end annotation


# direct methods
.method public static bo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lk;
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
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/lk;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/lk;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/lk$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lk$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    sparse-switch p1, :sswitch_data_1aa

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    move v0, v3

    #@11
    goto :goto_a

    #@12
    :sswitch_12
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_44

    #@25
    sget-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@2d
    move-object v1, v0

    #@2e
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_46

    #@34
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/os/Bundle;

    #@3c
    :goto_3c
    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/lk$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Bundle;)V

    #@3f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    move v0, v3

    #@43
    goto :goto_a

    #@44
    :cond_44
    move-object v1, v2

    #@45
    goto :goto_2e

    #@46
    :cond_46
    move-object v0, v2

    #@47
    goto :goto_3c

    #@48
    :sswitch_48
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@4a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_63

    #@53
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@55
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Landroid/os/Bundle;

    #@5b
    :goto_5b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lk$a;->onCreate(Landroid/os/Bundle;)V

    #@5e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@61
    move v0, v3

    #@62
    goto :goto_a

    #@63
    :cond_63
    move-object v0, v2

    #@64
    goto :goto_5b

    #@65
    :sswitch_65
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6d
    move-result-object v0

    #@6e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@75
    move-result-object v0

    #@76
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_9b

    #@80
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@82
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@85
    move-result-object v0

    #@86
    check-cast v0, Landroid/os/Bundle;

    #@88
    :goto_88
    invoke-virtual {p0, v1, v4, v0}, Lcom/google/android/gms/internal/lk$a;->onCreateView(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/d;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/d;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    if-eqz v0, :cond_95

    #@91
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@94
    move-result-object v2

    #@95
    :cond_95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@98
    move v0, v3

    #@99
    goto/16 :goto_a

    #@9b
    :cond_9b
    move-object v0, v2

    #@9c
    goto :goto_88

    #@9d
    :sswitch_9d
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@9f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lk$a;->onStart()V

    #@a5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    move v0, v3

    #@a9
    goto/16 :goto_a

    #@ab
    :sswitch_ab
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@ad
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lk$a;->onResume()V

    #@b3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    move v0, v3

    #@b7
    goto/16 :goto_a

    #@b9
    :sswitch_b9
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@bb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lk$a;->onPause()V

    #@c1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4
    move v0, v3

    #@c5
    goto/16 :goto_a

    #@c7
    :sswitch_c7
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@c9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lk$a;->onStop()V

    #@cf
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2
    move v0, v3

    #@d3
    goto/16 :goto_a

    #@d5
    :sswitch_d5
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@d7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v0

    #@de
    if-eqz v0, :cond_f9

    #@e0
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e2
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e5
    move-result-object v0

    #@e6
    check-cast v0, Landroid/os/Bundle;

    #@e8
    :goto_e8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lk$a;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@eb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    if-eqz v0, :cond_fb

    #@f0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f3
    invoke-virtual {v0, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@f6
    move v0, v3

    #@f7
    goto/16 :goto_a

    #@f9
    :cond_f9
    move-object v0, v2

    #@fa
    goto :goto_e8

    #@fb
    :cond_fb
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@fe
    move v0, v3

    #@ff
    goto/16 :goto_a

    #@101
    :sswitch_101
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v1

    #@10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v4

    #@10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v0

    #@112
    if-eqz v0, :cond_125

    #@114
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@116
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@119
    move-result-object v0

    #@11a
    check-cast v0, Landroid/content/Intent;

    #@11c
    :goto_11c
    invoke-virtual {p0, v1, v4, v0}, Lcom/google/android/gms/internal/lk$a;->onActivityResult(IILandroid/content/Intent;)V

    #@11f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@122
    move v0, v3

    #@123
    goto/16 :goto_a

    #@125
    :cond_125
    move-object v0, v2

    #@126
    goto :goto_11c

    #@127
    :sswitch_127
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12f
    move-result v0

    #@130
    if-eqz v0, :cond_143

    #@132
    sget-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@134
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@137
    move-result-object v0

    #@138
    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    #@13a
    :goto_13a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lk$a;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    #@13d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@140
    move v0, v3

    #@141
    goto/16 :goto_a

    #@143
    :cond_143
    move-object v0, v2

    #@144
    goto :goto_13a

    #@145
    :sswitch_145
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v0

    #@14e
    if-eqz v0, :cond_161

    #@150
    sget-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@152
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@155
    move-result-object v0

    #@156
    check-cast v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@158
    :goto_158
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lk$a;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    #@15b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15e
    move v0, v3

    #@15f
    goto/16 :goto_a

    #@161
    :cond_161
    move-object v0, v2

    #@162
    goto :goto_158

    #@163
    :sswitch_163
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@165
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@16b
    move-result v0

    #@16c
    if-eqz v0, :cond_178

    #@16e
    move v0, v3

    #@16f
    :goto_16f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lk$a;->setEnabled(Z)V

    #@172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@175
    move v0, v3

    #@176
    goto/16 :goto_a

    #@178
    :cond_178
    move v0, v1

    #@179
    goto :goto_16f

    #@17a
    :sswitch_17a
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@17c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lk$a;->getState()I

    #@182
    move-result v0

    #@183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@189
    move v0, v3

    #@18a
    goto/16 :goto_a

    #@18c
    :sswitch_18c
    const-string v0, "com.google.android.gms.wallet.fragment.internal.IWalletFragmentDelegate"

    #@18e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@194
    move-result v0

    #@195
    if-eqz v0, :cond_1a8

    #@197
    sget-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@199
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19c
    move-result-object v0

    #@19d
    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    #@19f
    :goto_19f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lk$a;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V

    #@1a2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a5
    move v0, v3

    #@1a6
    goto/16 :goto_a

    #@1a8
    :cond_1a8
    move-object v0, v2

    #@1a9
    goto :goto_19f

    #@1aa
    :sswitch_data_1aa
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_48
        0x3 -> :sswitch_65
        0x4 -> :sswitch_9d
        0x5 -> :sswitch_ab
        0x6 -> :sswitch_b9
        0x7 -> :sswitch_c7
        0x8 -> :sswitch_d5
        0x9 -> :sswitch_101
        0xa -> :sswitch_127
        0xb -> :sswitch_145
        0xc -> :sswitch_163
        0xd -> :sswitch_17a
        0xe -> :sswitch_18c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
