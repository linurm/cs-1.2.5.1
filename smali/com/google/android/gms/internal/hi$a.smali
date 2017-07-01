.class public abstract Lcom/google/android/gms/internal/hi$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/hi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hi$a$a;
    }
.end annotation


# direct methods
.method public static L(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hi;
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/hi;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/hi;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/hi$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hi$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    sparse-switch p1, :sswitch_data_5b6

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v10

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v2

    #@22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_4a

    #@38
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/os/Bundle;

    #@40
    move-object v7, v0

    #@41
    :goto_41
    move-object v0, p0

    #@42
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    move v0, v10

    #@49
    goto :goto_9

    #@4a
    :cond_4a
    move-object v7, v0

    #@4b
    goto :goto_41

    #@4c
    :sswitch_4c
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@54
    move-result-object v1

    #@55
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v2

    #@5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_6f

    #@67
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@69
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Landroid/os/Bundle;

    #@6f
    :cond_6f
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    move v0, v10

    #@76
    goto :goto_9

    #@77
    :sswitch_77
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7f
    move-result-object v0

    #@80
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v1

    #@88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@8f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    move v0, v10

    #@93
    goto/16 :goto_9

    #@95
    :sswitch_95
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9d
    move-result-object v0

    #@9e
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v1

    #@a6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;I)V

    #@a9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    move v0, v10

    #@ad
    goto/16 :goto_9

    #@af
    :sswitch_af
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@b1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b7
    move-result-object v1

    #@b8
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v2

    #@c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v4

    #@c8
    if-eqz v4, :cond_d2

    #@ca
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cc
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cf
    move-result-object v0

    #@d0
    check-cast v0, Landroid/os/Bundle;

    #@d2
    :cond_d2
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->b(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@d5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d8
    move v0, v10

    #@d9
    goto/16 :goto_9

    #@db
    :sswitch_db
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@dd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e3
    move-result-object v1

    #@e4
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@e7
    move-result-object v1

    #@e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@eb
    move-result v2

    #@ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f3
    move-result v4

    #@f4
    if-eqz v4, :cond_fe

    #@f6
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f8
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fb
    move-result-object v0

    #@fc
    check-cast v0, Landroid/os/Bundle;

    #@fe
    :cond_fe
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->c(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@104
    move v0, v10

    #@105
    goto/16 :goto_9

    #@107
    :sswitch_107
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@109
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10f
    move-result-object v1

    #@110
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@113
    move-result-object v1

    #@114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@117
    move-result v2

    #@118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11b
    move-result-object v3

    #@11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11f
    move-result v4

    #@120
    if-eqz v4, :cond_12a

    #@122
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@124
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@127
    move-result-object v0

    #@128
    check-cast v0, Landroid/os/Bundle;

    #@12a
    :cond_12a
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->d(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@12d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@130
    move v0, v10

    #@131
    goto/16 :goto_9

    #@133
    :sswitch_133
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@135
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13b
    move-result-object v1

    #@13c
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@13f
    move-result-object v1

    #@140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@143
    move-result v2

    #@144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@147
    move-result-object v3

    #@148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v4

    #@14c
    if-eqz v4, :cond_156

    #@14e
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@150
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@153
    move-result-object v0

    #@154
    check-cast v0, Landroid/os/Bundle;

    #@156
    :cond_156
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->e(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15c
    move v0, v10

    #@15d
    goto/16 :goto_9

    #@15f
    :sswitch_15f
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@161
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@167
    move-result-object v1

    #@168
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@16b
    move-result-object v1

    #@16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@16f
    move-result v2

    #@170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@173
    move-result-object v3

    #@174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@177
    move-result-object v4

    #@178
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@17b
    move-result-object v5

    #@17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17f
    move-result-object v6

    #@180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@183
    move-result-object v7

    #@184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@187
    move-result-object v8

    #@188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v9

    #@18c
    if-eqz v9, :cond_1a1

    #@18e
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@190
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@193
    move-result-object v0

    #@194
    check-cast v0, Landroid/os/Bundle;

    #@196
    move-object v9, v0

    #@197
    :goto_197
    move-object v0, p0

    #@198
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    #@19b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@19e
    move v0, v10

    #@19f
    goto/16 :goto_9

    #@1a1
    :cond_1a1
    move-object v9, v0

    #@1a2
    goto :goto_197

    #@1a3
    :sswitch_1a3
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@1a5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ab
    move-result-object v0

    #@1ac
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@1af
    move-result-object v1

    #@1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b3
    move-result v2

    #@1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b7
    move-result-object v3

    #@1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bb
    move-result-object v4

    #@1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1bf
    move-result-object v5

    #@1c0
    move-object v0, p0

    #@1c1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@1c4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c7
    move v0, v10

    #@1c8
    goto/16 :goto_9

    #@1ca
    :sswitch_1ca
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@1cc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d2
    move-result-object v1

    #@1d3
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@1d6
    move-result-object v1

    #@1d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1da
    move-result v2

    #@1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1de
    move-result-object v3

    #@1df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e2
    move-result v4

    #@1e3
    if-eqz v4, :cond_1ed

    #@1e5
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e7
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ea
    move-result-object v0

    #@1eb
    check-cast v0, Landroid/os/Bundle;

    #@1ed
    :cond_1ed
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->f(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@1f0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f3
    move v0, v10

    #@1f4
    goto/16 :goto_9

    #@1f6
    :sswitch_1f6
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@1f8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1fe
    move-result-object v1

    #@1ff
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@202
    move-result-object v1

    #@203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@206
    move-result v2

    #@207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20a
    move-result-object v3

    #@20b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20e
    move-result v4

    #@20f
    if-eqz v4, :cond_219

    #@211
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@213
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@216
    move-result-object v0

    #@217
    check-cast v0, Landroid/os/Bundle;

    #@219
    :cond_219
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->g(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@21c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21f
    move v0, v10

    #@220
    goto/16 :goto_9

    #@222
    :sswitch_222
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@224
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22a
    move-result-object v1

    #@22b
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@22e
    move-result-object v1

    #@22f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@232
    move-result v2

    #@233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@236
    move-result-object v3

    #@237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@23a
    move-result v4

    #@23b
    if-eqz v4, :cond_245

    #@23d
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@242
    move-result-object v0

    #@243
    check-cast v0, Landroid/os/Bundle;

    #@245
    :cond_245
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->h(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24b
    move v0, v10

    #@24c
    goto/16 :goto_9

    #@24e
    :sswitch_24e
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@250
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@253
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@256
    move-result-object v1

    #@257
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@25a
    move-result-object v1

    #@25b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25e
    move-result v2

    #@25f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@262
    move-result-object v3

    #@263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@266
    move-result v4

    #@267
    if-eqz v4, :cond_271

    #@269
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26e
    move-result-object v0

    #@26f
    check-cast v0, Landroid/os/Bundle;

    #@271
    :cond_271
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->i(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@277
    move v0, v10

    #@278
    goto/16 :goto_9

    #@27a
    :sswitch_27a
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@27c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@282
    move-result-object v1

    #@283
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@286
    move-result-object v1

    #@287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@28a
    move-result v2

    #@28b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28e
    move-result-object v3

    #@28f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@292
    move-result v4

    #@293
    if-eqz v4, :cond_29d

    #@295
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@297
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29a
    move-result-object v0

    #@29b
    check-cast v0, Landroid/os/Bundle;

    #@29d
    :cond_29d
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->j(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@2a0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a3
    move v0, v10

    #@2a4
    goto/16 :goto_9

    #@2a6
    :sswitch_2a6
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@2a8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ae
    move-result-object v1

    #@2af
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@2b2
    move-result-object v1

    #@2b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b6
    move-result v2

    #@2b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ba
    move-result-object v3

    #@2bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2be
    move-result v4

    #@2bf
    if-eqz v4, :cond_2c9

    #@2c1
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c3
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c6
    move-result-object v0

    #@2c7
    check-cast v0, Landroid/os/Bundle;

    #@2c9
    :cond_2c9
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->k(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@2cc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cf
    move v0, v10

    #@2d0
    goto/16 :goto_9

    #@2d2
    :sswitch_2d2
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@2d4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2da
    move-result-object v1

    #@2db
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@2de
    move-result-object v1

    #@2df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2e2
    move-result v2

    #@2e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e6
    move-result-object v3

    #@2e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2ea
    move-result v4

    #@2eb
    if-eqz v4, :cond_2f5

    #@2ed
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ef
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f2
    move-result-object v0

    #@2f3
    check-cast v0, Landroid/os/Bundle;

    #@2f5
    :cond_2f5
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->l(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@2f8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fb
    move v0, v10

    #@2fc
    goto/16 :goto_9

    #@2fe
    :sswitch_2fe
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@300
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@303
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@306
    move-result-object v1

    #@307
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@30a
    move-result-object v1

    #@30b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@30e
    move-result v2

    #@30f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@312
    move-result-object v3

    #@313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@316
    move-result v4

    #@317
    if-eqz v4, :cond_321

    #@319
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31e
    move-result-object v0

    #@31f
    check-cast v0, Landroid/os/Bundle;

    #@321
    :cond_321
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->m(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@327
    move v0, v10

    #@328
    goto/16 :goto_9

    #@32a
    :sswitch_32a
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@32c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@332
    move-result-object v1

    #@333
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@336
    move-result-object v1

    #@337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33a
    move-result v2

    #@33b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33e
    move-result-object v3

    #@33f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@342
    move-result-object v4

    #@343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@346
    move-result v5

    #@347
    if-eqz v5, :cond_35c

    #@349
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34e
    move-result-object v0

    #@34f
    check-cast v0, Landroid/os/Bundle;

    #@351
    move-object v5, v0

    #@352
    :goto_352
    move-object v0, p0

    #@353
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@359
    move v0, v10

    #@35a
    goto/16 :goto_9

    #@35c
    :cond_35c
    move-object v5, v0

    #@35d
    goto :goto_352

    #@35e
    :sswitch_35e
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@360
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@363
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@366
    move-result-object v1

    #@367
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@36a
    move-result-object v1

    #@36b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@36e
    move-result v2

    #@36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@372
    move-result-object v3

    #@373
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@376
    move-result-object v4

    #@377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37a
    move-result-object v5

    #@37b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37e
    move-result v6

    #@37f
    if-eqz v6, :cond_394

    #@381
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@383
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@386
    move-result-object v0

    #@387
    check-cast v0, Landroid/os/Bundle;

    #@389
    move-object v6, v0

    #@38a
    :goto_38a
    move-object v0, p0

    #@38b
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@38e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@391
    move v0, v10

    #@392
    goto/16 :goto_9

    #@394
    :cond_394
    move-object v6, v0

    #@395
    goto :goto_38a

    #@396
    :sswitch_396
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@398
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@39e
    move-result-object v0

    #@39f
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@3a2
    move-result-object v0

    #@3a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a6
    move-result v1

    #@3a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3aa
    move-result-object v2

    #@3ab
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->b(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@3ae
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b1
    move v0, v10

    #@3b2
    goto/16 :goto_9

    #@3b4
    :sswitch_3b4
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@3b6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3bc
    move-result-object v0

    #@3bd
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@3c0
    move-result-object v0

    #@3c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3c4
    move-result v1

    #@3c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c8
    move-result-object v2

    #@3c9
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->c(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@3cc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3cf
    move v0, v10

    #@3d0
    goto/16 :goto_9

    #@3d2
    :sswitch_3d2
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@3d4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3da
    move-result-object v1

    #@3db
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@3de
    move-result-object v1

    #@3df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e2
    move-result v2

    #@3e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e6
    move-result-object v3

    #@3e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3ea
    move-result v4

    #@3eb
    if-eqz v4, :cond_3f5

    #@3ed
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ef
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f2
    move-result-object v0

    #@3f3
    check-cast v0, Landroid/os/Bundle;

    #@3f5
    :cond_3f5
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->n(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@3f8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fb
    move v0, v10

    #@3fc
    goto/16 :goto_9

    #@3fe
    :sswitch_3fe
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@400
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@403
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@406
    move-result-object v0

    #@407
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@40a
    move-result-object v0

    #@40b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@40e
    move-result v1

    #@40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@412
    move-result-object v2

    #@413
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->d(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@419
    move v0, v10

    #@41a
    goto/16 :goto_9

    #@41c
    :sswitch_41c
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@41e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@421
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@424
    move-result-object v1

    #@425
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@428
    move-result-object v1

    #@429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42c
    move-result v2

    #@42d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@430
    move-result-object v3

    #@431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@434
    move-result v4

    #@435
    if-eqz v4, :cond_43f

    #@437
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@439
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43c
    move-result-object v0

    #@43d
    check-cast v0, Landroid/os/Bundle;

    #@43f
    :cond_43f
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->o(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@445
    move v0, v10

    #@446
    goto/16 :goto_9

    #@448
    :sswitch_448
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@44a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@450
    move-result-object v0

    #@451
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@454
    move-result-object v0

    #@455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@458
    move-result v1

    #@459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45c
    move-result-object v2

    #@45d
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->e(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@463
    move v0, v10

    #@464
    goto/16 :goto_9

    #@466
    :sswitch_466
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@468
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@46e
    move-result-object v1

    #@46f
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@472
    move-result-object v1

    #@473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@476
    move-result v2

    #@477
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47a
    move-result-object v3

    #@47b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47e
    move-result v4

    #@47f
    if-eqz v4, :cond_489

    #@481
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@483
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@486
    move-result-object v0

    #@487
    check-cast v0, Landroid/os/Bundle;

    #@489
    :cond_489
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/hi$a;->p(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@48c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48f
    move v0, v10

    #@490
    goto/16 :goto_9

    #@492
    :sswitch_492
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@494
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@49a
    move-result-object v0

    #@49b
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@49e
    move-result-object v1

    #@49f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4a2
    move-result v2

    #@4a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a6
    move-result-object v3

    #@4a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4aa
    move-result-object v4

    #@4ab
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@4ae
    move-result-object v5

    #@4af
    move-object v0, p0

    #@4b0
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/hi$a;->b(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@4b3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b6
    move v0, v10

    #@4b7
    goto/16 :goto_9

    #@4b9
    :sswitch_4b9
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@4bb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4c1
    move-result-object v1

    #@4c2
    invoke-static {v1}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@4c5
    move-result-object v1

    #@4c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4c9
    move-result v2

    #@4ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4cd
    move-result-object v3

    #@4ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d1
    move-result-object v4

    #@4d2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@4d5
    move-result-object v5

    #@4d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4d9
    move-result v6

    #@4da
    if-eqz v6, :cond_4ef

    #@4dc
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4de
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4e1
    move-result-object v0

    #@4e2
    check-cast v0, Landroid/os/Bundle;

    #@4e4
    move-object v6, v0

    #@4e5
    :goto_4e5
    move-object v0, p0

    #@4e6
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    #@4e9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ec
    move v0, v10

    #@4ed
    goto/16 :goto_9

    #@4ef
    :cond_4ef
    move-object v6, v0

    #@4f0
    goto :goto_4e5

    #@4f1
    :sswitch_4f1
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@4f3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f9
    move-result-object v0

    #@4fa
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@4fd
    move-result-object v0

    #@4fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@501
    move-result v1

    #@502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@505
    move-result-object v2

    #@506
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->f(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@50c
    move v0, v10

    #@50d
    goto/16 :goto_9

    #@50f
    :sswitch_50f
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@511
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@514
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@517
    move-result-object v0

    #@518
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@51b
    move-result-object v0

    #@51c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@51f
    move-result v1

    #@520
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@523
    move-result-object v2

    #@524
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->g(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@52a
    move v0, v10

    #@52b
    goto/16 :goto_9

    #@52d
    :sswitch_52d
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@52f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@532
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@535
    move-result-object v0

    #@536
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@539
    move-result-object v1

    #@53a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53d
    move-result v2

    #@53e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@541
    move-result-object v3

    #@542
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@545
    move-result-object v4

    #@546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@549
    move-result-object v5

    #@54a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@54d
    move-result-object v6

    #@54e
    move-object v0, p0

    #@54f
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@555
    move v0, v10

    #@556
    goto/16 :goto_9

    #@558
    :sswitch_558
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@55a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@560
    move-result-object v0

    #@561
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@564
    move-result-object v0

    #@565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@568
    move-result v1

    #@569
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@56c
    move-result-object v2

    #@56d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@570
    move-result-object v3

    #@571
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/hi$a;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;)V

    #@574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@577
    move v0, v10

    #@578
    goto/16 :goto_9

    #@57a
    :sswitch_57a
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@57c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@582
    move-result-object v0

    #@583
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@586
    move-result-object v0

    #@587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@58a
    move-result v1

    #@58b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@58e
    move-result-object v2

    #@58f
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->h(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@595
    move v0, v10

    #@596
    goto/16 :goto_9

    #@598
    :sswitch_598
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@59a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5a0
    move-result-object v0

    #@5a1
    invoke-static {v0}, Lcom/google/android/gms/internal/hh$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hh;

    #@5a4
    move-result-object v0

    #@5a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a8
    move-result v1

    #@5a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5ac
    move-result-object v2

    #@5ad
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/hi$a;->i(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@5b0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b3
    move v0, v10

    #@5b4
    goto/16 :goto_9

    #@5b6
    :sswitch_data_5b6
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_4c
        0x3 -> :sswitch_77
        0x4 -> :sswitch_95
        0x5 -> :sswitch_af
        0x6 -> :sswitch_db
        0x7 -> :sswitch_107
        0x8 -> :sswitch_133
        0x9 -> :sswitch_15f
        0xa -> :sswitch_1a3
        0xb -> :sswitch_1ca
        0xc -> :sswitch_1f6
        0xd -> :sswitch_222
        0xe -> :sswitch_24e
        0xf -> :sswitch_27a
        0x10 -> :sswitch_2a6
        0x11 -> :sswitch_2d2
        0x12 -> :sswitch_2fe
        0x13 -> :sswitch_32a
        0x14 -> :sswitch_35e
        0x15 -> :sswitch_396
        0x16 -> :sswitch_3b4
        0x17 -> :sswitch_3d2
        0x18 -> :sswitch_3fe
        0x19 -> :sswitch_41c
        0x1a -> :sswitch_448
        0x1b -> :sswitch_466
        0x1c -> :sswitch_492
        0x1e -> :sswitch_4b9
        0x1f -> :sswitch_4f1
        0x20 -> :sswitch_50f
        0x21 -> :sswitch_52d
        0x22 -> :sswitch_558
        0x23 -> :sswitch_57a
        0x24 -> :sswitch_598
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
