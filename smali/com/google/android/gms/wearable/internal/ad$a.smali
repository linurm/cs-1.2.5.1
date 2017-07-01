.class public abstract Lcom/google/android/gms/wearable/internal/ad$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/ad$a$a;
    }
.end annotation


# direct methods
.method public static by(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ad;
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
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/ad;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/wearable/internal/ad$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ad$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    sparse-switch p1, :sswitch_data_200

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2c

    #@24
    sget-object v0, Lcom/google/android/gms/wearable/c;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/wearable/c;

    #@2c
    :cond_2c
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/c;)V

    #@2f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    move v0, v1

    #@33
    goto :goto_9

    #@34
    :sswitch_34
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;)V

    #@44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    move v0, v1

    #@48
    goto :goto_9

    #@49
    :sswitch_49
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@51
    move-result-object v0

    #@52
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->b(Lcom/google/android/gms/wearable/internal/ab;)V

    #@59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c
    move v0, v1

    #@5d
    goto :goto_9

    #@5e
    :sswitch_5e
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@66
    move-result-object v0

    #@67
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->c(Lcom/google/android/gms/wearable/internal/ab;)V

    #@6e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@71
    move v0, v1

    #@72
    goto :goto_9

    #@73
    :sswitch_73
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    #@75
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7b
    move-result-object v2

    #@7c
    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_8e

    #@86
    sget-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Lcom/google/android/gms/wearable/PutDataRequest;

    #@8e
    :cond_8e
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/PutDataRequest;)V

    #@91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    move v0, v1

    #@95
    goto/16 :goto_9

    #@97
    :sswitch_97
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    #@99
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9f
    move-result-object v2

    #@a0
    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v3

    #@a8
    if-eqz v3, :cond_b2

    #@aa
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ac
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@af
    move-result-object v0

    #@b0
    check-cast v0, Landroid/net/Uri;

    #@b2
    :cond_b2
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    #@b5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    move v0, v1

    #@b9
    goto/16 :goto_9

    #@bb
    :sswitch_bb
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@bd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c3
    move-result-object v0

    #@c4
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->d(Lcom/google/android/gms/wearable/internal/ab;)V

    #@cb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ce
    move v0, v1

    #@cf
    goto/16 :goto_9

    #@d1
    :sswitch_d1
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    #@d3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d9
    move-result-object v2

    #@da
    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@dd
    move-result-object v2

    #@de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v3

    #@e2
    if-eqz v3, :cond_ec

    #@e4
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e6
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e9
    move-result-object v0

    #@ea
    check-cast v0, Landroid/net/Uri;

    #@ec
    :cond_ec
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->b(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    #@ef
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2
    move v0, v1

    #@f3
    goto/16 :goto_9

    #@f5
    :sswitch_f5
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    #@f7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fd
    move-result-object v2

    #@fe
    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@101
    move-result-object v2

    #@102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v3

    #@106
    if-eqz v3, :cond_110

    #@108
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10d
    move-result-object v0

    #@10e
    check-cast v0, Landroid/net/Uri;

    #@110
    :cond_110
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->c(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    #@113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@116
    move v0, v1

    #@117
    goto/16 :goto_9

    #@119
    :sswitch_119
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@11b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@121
    move-result-object v0

    #@122
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@125
    move-result-object v0

    #@126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@129
    move-result-object v2

    #@12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12d
    move-result-object v3

    #@12e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@131
    move-result-object v4

    #@132
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Ljava/lang/String;Ljava/lang/String;[B)V

    #@135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@138
    move v0, v1

    #@139
    goto/16 :goto_9

    #@13b
    :sswitch_13b
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    #@13d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@143
    move-result-object v2

    #@144
    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@147
    move-result-object v2

    #@148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v3

    #@14c
    if-eqz v3, :cond_156

    #@14e
    sget-object v0, Lcom/google/android/gms/wearable/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    #@150
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@153
    move-result-object v0

    #@154
    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    #@156
    :cond_156
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/Asset;)V

    #@159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15c
    move v0, v1

    #@15d
    goto/16 :goto_9

    #@15f
    :sswitch_15f
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@161
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@167
    move-result-object v0

    #@168
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@16b
    move-result-object v0

    #@16c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->e(Lcom/google/android/gms/wearable/internal/ab;)V

    #@16f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@172
    move v0, v1

    #@173
    goto/16 :goto_9

    #@175
    :sswitch_175
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@177
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17d
    move-result-object v0

    #@17e
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@181
    move-result-object v0

    #@182
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->f(Lcom/google/android/gms/wearable/internal/ab;)V

    #@185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@188
    move v0, v1

    #@189
    goto/16 :goto_9

    #@18b
    :sswitch_18b
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    #@18d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@193
    move-result-object v2

    #@194
    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@197
    move-result-object v2

    #@198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19b
    move-result v3

    #@19c
    if-eqz v3, :cond_1a6

    #@19e
    sget-object v0, Lcom/google/android/gms/wearable/internal/b;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a0
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a3
    move-result-object v0

    #@1a4
    check-cast v0, Lcom/google/android/gms/wearable/internal/b;

    #@1a6
    :cond_1a6
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/b;)V

    #@1a9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ac
    move v0, v1

    #@1ad
    goto/16 :goto_9

    #@1af
    :sswitch_1af
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    #@1b1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b7
    move-result-object v2

    #@1b8
    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@1bb
    move-result-object v2

    #@1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1bf
    move-result v3

    #@1c0
    if-eqz v3, :cond_1ca

    #@1c2
    sget-object v0, Lcom/google/android/gms/wearable/internal/ao;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c4
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c7
    move-result-object v0

    #@1c8
    check-cast v0, Lcom/google/android/gms/wearable/internal/ao;

    #@1ca
    :cond_1ca
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/ao;)V

    #@1cd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d0
    move v0, v1

    #@1d1
    goto/16 :goto_9

    #@1d3
    :sswitch_1d3
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@1d5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1db
    move-result-object v0

    #@1dc
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@1df
    move-result-object v0

    #@1e0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->g(Lcom/google/android/gms/wearable/internal/ab;)V

    #@1e3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e6
    move v0, v1

    #@1e7
    goto/16 :goto_9

    #@1e9
    :sswitch_1e9
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@1eb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f1
    move-result-object v0

    #@1f2
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    #@1f5
    move-result-object v0

    #@1f6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->h(Lcom/google/android/gms/wearable/internal/ab;)V

    #@1f9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc
    move v0, v1

    #@1fd
    goto/16 :goto_9

    #@1ff
    nop

    #@200
    :sswitch_data_200
    .sparse-switch
        0x2 -> :sswitch_11
        0x3 -> :sswitch_34
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_73
        0x7 -> :sswitch_97
        0x8 -> :sswitch_bb
        0x9 -> :sswitch_d1
        0xb -> :sswitch_f5
        0xc -> :sswitch_119
        0xd -> :sswitch_13b
        0xe -> :sswitch_15f
        0xf -> :sswitch_175
        0x10 -> :sswitch_18b
        0x11 -> :sswitch_1af
        0x12 -> :sswitch_1d3
        0x13 -> :sswitch_1e9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
