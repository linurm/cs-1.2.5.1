.class public abstract Lcom/google/android/gms/internal/lm$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/lm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lm$a$a;
    }
.end annotation


# direct methods
.method public static bq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lm;
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
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/lm;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/lm;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/lm$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lm$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    sparse-switch p1, :sswitch_data_1a8

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v3

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_40

    #@1c
    sget-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@24
    move-object v1, v0

    #@25
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_42

    #@2b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/os/Bundle;

    #@33
    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36
    move-result-object v2

    #@37
    invoke-static {v2}, Lcom/google/android/gms/internal/lp$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/lm$a;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V

    #@3e
    move v0, v3

    #@3f
    goto :goto_9

    #@40
    :cond_40
    move-object v1, v2

    #@41
    goto :goto_25

    #@42
    :cond_42
    move-object v0, v2

    #@43
    goto :goto_33

    #@44
    :sswitch_44
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_73

    #@4f
    sget-object v0, Lcom/google/android/gms/wallet/FullWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@51
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Lcom/google/android/gms/wallet/FullWalletRequest;

    #@57
    move-object v1, v0

    #@58
    :goto_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_75

    #@5e
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/os/Bundle;

    #@66
    :goto_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@69
    move-result-object v2

    #@6a
    invoke-static {v2}, Lcom/google/android/gms/internal/lp$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/lm$a;->a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V

    #@71
    move v0, v3

    #@72
    goto :goto_9

    #@73
    :cond_73
    move-object v1, v2

    #@74
    goto :goto_58

    #@75
    :cond_75
    move-object v0, v2

    #@76
    goto :goto_66

    #@77
    :sswitch_77
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_a0

    #@8a
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8f
    move-result-object v0

    #@90
    check-cast v0, Landroid/os/Bundle;

    #@92
    :goto_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@95
    move-result-object v2

    #@96
    invoke-static {v2}, Lcom/google/android/gms/internal/lp$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {p0, v1, v4, v0, v2}, Lcom/google/android/gms/internal/lm$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V

    #@9d
    move v0, v3

    #@9e
    goto/16 :goto_9

    #@a0
    :cond_a0
    move-object v0, v2

    #@a1
    goto :goto_92

    #@a2
    :sswitch_a2
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@a4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v0

    #@ab
    if-eqz v0, :cond_ca

    #@ad
    sget-object v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@af
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b2
    move-result-object v0

    #@b3
    check-cast v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@b5
    move-object v1, v0

    #@b6
    :goto_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v0

    #@ba
    if-eqz v0, :cond_cc

    #@bc
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@be
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c1
    move-result-object v0

    #@c2
    check-cast v0, Landroid/os/Bundle;

    #@c4
    :goto_c4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lm$a;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V

    #@c7
    move v0, v3

    #@c8
    goto/16 :goto_9

    #@ca
    :cond_ca
    move-object v1, v2

    #@cb
    goto :goto_b6

    #@cc
    :cond_cc
    move-object v0, v2

    #@cd
    goto :goto_c4

    #@ce
    :sswitch_ce
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@d0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v0

    #@d7
    if-eqz v0, :cond_ef

    #@d9
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@db
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@de
    move-result-object v0

    #@df
    check-cast v0, Landroid/os/Bundle;

    #@e1
    :goto_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e4
    move-result-object v1

    #@e5
    invoke-static {v1}, Lcom/google/android/gms/internal/lp$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;

    #@e8
    move-result-object v1

    #@e9
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm$a;->a(Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V

    #@ec
    move v0, v3

    #@ed
    goto/16 :goto_9

    #@ef
    :cond_ef
    move-object v0, v2

    #@f0
    goto :goto_e1

    #@f1
    :sswitch_f1
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@f3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f9
    move-result v0

    #@fa
    if-eqz v0, :cond_121

    #@fc
    sget-object v0, Lcom/google/android/gms/wallet/d;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fe
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@101
    move-result-object v0

    #@102
    check-cast v0, Lcom/google/android/gms/wallet/d;

    #@104
    move-object v1, v0

    #@105
    :goto_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@108
    move-result v0

    #@109
    if-eqz v0, :cond_123

    #@10b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@110
    move-result-object v0

    #@111
    check-cast v0, Landroid/os/Bundle;

    #@113
    :goto_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@116
    move-result-object v2

    #@117
    invoke-static {v2}, Lcom/google/android/gms/internal/lp$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;

    #@11a
    move-result-object v2

    #@11b
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/lm$a;->a(Lcom/google/android/gms/wallet/d;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V

    #@11e
    move v0, v3

    #@11f
    goto/16 :goto_9

    #@121
    :cond_121
    move-object v1, v2

    #@122
    goto :goto_105

    #@123
    :cond_123
    move-object v0, v2

    #@124
    goto :goto_113

    #@125
    :sswitch_125
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v0

    #@12e
    if-eqz v0, :cond_155

    #@130
    sget-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@132
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@135
    move-result-object v0

    #@136
    check-cast v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    #@138
    move-object v1, v0

    #@139
    :goto_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v0

    #@13d
    if-eqz v0, :cond_157

    #@13f
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@141
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@144
    move-result-object v0

    #@145
    check-cast v0, Landroid/os/Bundle;

    #@147
    :goto_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14a
    move-result-object v2

    #@14b
    invoke-static {v2}, Lcom/google/android/gms/internal/lo$a;->bs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lo;

    #@14e
    move-result-object v2

    #@14f
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/lm$a;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lo;)V

    #@152
    move v0, v3

    #@153
    goto/16 :goto_9

    #@155
    :cond_155
    move-object v1, v2

    #@156
    goto :goto_139

    #@157
    :cond_157
    move-object v0, v2

    #@158
    goto :goto_147

    #@159
    :sswitch_159
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@15b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@161
    move-result v0

    #@162
    if-eqz v0, :cond_189

    #@164
    sget-object v0, Lcom/google/android/gms/internal/lg;->CREATOR:Landroid/os/Parcelable$Creator;

    #@166
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@169
    move-result-object v0

    #@16a
    check-cast v0, Lcom/google/android/gms/internal/lg;

    #@16c
    move-object v1, v0

    #@16d
    :goto_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v0

    #@171
    if-eqz v0, :cond_18b

    #@173
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@175
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@178
    move-result-object v0

    #@179
    check-cast v0, Landroid/os/Bundle;

    #@17b
    :goto_17b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17e
    move-result-object v2

    #@17f
    invoke-static {v2}, Lcom/google/android/gms/internal/lp$a;->bt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;

    #@182
    move-result-object v2

    #@183
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/lm$a;->a(Lcom/google/android/gms/internal/lg;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V

    #@186
    move v0, v3

    #@187
    goto/16 :goto_9

    #@189
    :cond_189
    move-object v1, v2

    #@18a
    goto :goto_16d

    #@18b
    :cond_18b
    move-object v0, v2

    #@18c
    goto :goto_17b

    #@18d
    :sswitch_18d
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@18f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@195
    move-result v0

    #@196
    if-eqz v0, :cond_1a6

    #@198
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19d
    move-result-object v0

    #@19e
    check-cast v0, Landroid/os/Bundle;

    #@1a0
    :goto_1a0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm$a;->o(Landroid/os/Bundle;)V

    #@1a3
    move v0, v3

    #@1a4
    goto/16 :goto_9

    #@1a6
    :cond_1a6
    move-object v0, v2

    #@1a7
    goto :goto_1a0

    #@1a8
    :sswitch_data_1a8
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_44
        0x3 -> :sswitch_77
        0x4 -> :sswitch_a2
        0x5 -> :sswitch_ce
        0x6 -> :sswitch_f1
        0x7 -> :sswitch_125
        0x8 -> :sswitch_159
        0x9 -> :sswitch_18d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
