.class public abstract Lcom/google/android/gms/wearable/internal/ab$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/ab$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;
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
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/ab;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/wearable/internal/ab;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/wearable/internal/ab$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ab$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
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
    sparse-switch p1, :sswitch_data_13e

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_24

    #@1c
    sget-object v0, Lcom/google/android/gms/wearable/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/google/android/gms/wearable/internal/r;

    #@24
    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/r;)V

    #@27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    move v0, v1

    #@2b
    goto :goto_9

    #@2c
    :sswitch_2c
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_3f

    #@37
    sget-object v0, Lcom/google/android/gms/wearable/internal/am;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Lcom/google/android/gms/wearable/internal/am;

    #@3f
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/am;)V

    #@42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@45
    move v0, v1

    #@46
    goto :goto_9

    #@47
    :sswitch_47
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_5a

    #@52
    sget-object v0, Lcom/google/android/gms/wearable/internal/v;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/google/android/gms/wearable/internal/v;

    #@5a
    :cond_5a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/v;)V

    #@5d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    move v0, v1

    #@61
    goto :goto_9

    #@62
    :sswitch_62
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_73

    #@6d
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@6f
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@72
    move-result-object v0

    #@73
    :cond_73
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->Z(Lcom/google/android/gms/common/data/DataHolder;)V

    #@76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    move v0, v1

    #@7a
    goto :goto_9

    #@7b
    :sswitch_7b
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@7d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v2

    #@84
    if-eqz v2, :cond_8e

    #@86
    sget-object v0, Lcom/google/android/gms/wearable/internal/p;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Lcom/google/android/gms/wearable/internal/p;

    #@8e
    :cond_8e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/p;)V

    #@91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    move v0, v1

    #@95
    goto/16 :goto_9

    #@97
    :sswitch_97
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@99
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v2

    #@a0
    if-eqz v2, :cond_aa

    #@a2
    sget-object v0, Lcom/google/android/gms/wearable/internal/aq;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a4
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a7
    move-result-object v0

    #@a8
    check-cast v0, Lcom/google/android/gms/wearable/internal/aq;

    #@aa
    :cond_aa
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/aq;)V

    #@ad
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b0
    move v0, v1

    #@b1
    goto/16 :goto_9

    #@b3
    :sswitch_b3
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@b5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v2

    #@bc
    if-eqz v2, :cond_c6

    #@be
    sget-object v0, Lcom/google/android/gms/wearable/internal/x;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c0
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c3
    move-result-object v0

    #@c4
    check-cast v0, Lcom/google/android/gms/wearable/internal/x;

    #@c6
    :cond_c6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/x;)V

    #@c9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc
    move v0, v1

    #@cd
    goto/16 :goto_9

    #@cf
    :sswitch_cf
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@d1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v2

    #@d8
    if-eqz v2, :cond_e2

    #@da
    sget-object v0, Lcom/google/android/gms/wearable/internal/z;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dc
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@df
    move-result-object v0

    #@e0
    check-cast v0, Lcom/google/android/gms/wearable/internal/z;

    #@e2
    :cond_e2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/z;)V

    #@e5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e8
    move v0, v1

    #@e9
    goto/16 :goto_9

    #@eb
    :sswitch_eb
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@ed
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f3
    move-result v2

    #@f4
    if-eqz v2, :cond_fe

    #@f6
    sget-object v0, Lcom/google/android/gms/wearable/internal/t;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f8
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fb
    move-result-object v0

    #@fc
    check-cast v0, Lcom/google/android/gms/wearable/internal/t;

    #@fe
    :cond_fe
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/t;)V

    #@101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@104
    move v0, v1

    #@105
    goto/16 :goto_9

    #@107
    :sswitch_107
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@109
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10f
    move-result v2

    #@110
    if-eqz v2, :cond_118

    #@112
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@114
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@117
    move-result-object v0

    #@118
    :cond_118
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/common/api/Status;)V

    #@11b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@11e
    move v0, v1

    #@11f
    goto/16 :goto_9

    #@121
    :sswitch_121
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    #@123
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@129
    move-result v2

    #@12a
    if-eqz v2, :cond_134

    #@12c
    sget-object v0, Lcom/google/android/gms/wearable/internal/as;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@131
    move-result-object v0

    #@132
    check-cast v0, Lcom/google/android/gms/wearable/internal/as;

    #@134
    :cond_134
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/as;)V

    #@137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13a
    move v0, v1

    #@13b
    goto/16 :goto_9

    #@13d
    nop

    #@13e
    :sswitch_data_13e
    .sparse-switch
        0x2 -> :sswitch_11
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_47
        0x5 -> :sswitch_62
        0x6 -> :sswitch_7b
        0x7 -> :sswitch_97
        0x8 -> :sswitch_b3
        0x9 -> :sswitch_cf
        0xa -> :sswitch_eb
        0xb -> :sswitch_107
        0xc -> :sswitch_121
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
