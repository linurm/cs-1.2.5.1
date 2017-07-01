.class public abstract Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a$a;
    }
.end annotation


# direct methods
.method public static aB(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
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
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    sparse-switch p1, :sswitch_data_13e

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    move v0, v3

    #@11
    goto :goto_a

    #@12
    :sswitch_12
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->getMap()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    if-eqz v0, :cond_29

    #@20
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    :goto_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    move v0, v3

    #@28
    goto :goto_a

    #@29
    :cond_29
    move-object v0, v1

    #@2a
    goto :goto_24

    #@2b
    :sswitch_2b
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_5b

    #@3e
    sget-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    #@40
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@43
    move-result-object v0

    #@44
    move-object v2, v0

    #@45
    :goto_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_5d

    #@4b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Landroid/os/Bundle;

    #@53
    :goto_53
    invoke-virtual {p0, v4, v2, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onInflate(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V

    #@56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    move v0, v3

    #@5a
    goto :goto_a

    #@5b
    :cond_5b
    move-object v2, v1

    #@5c
    goto :goto_45

    #@5d
    :cond_5d
    move-object v0, v1

    #@5e
    goto :goto_53

    #@5f
    :sswitch_5f
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_7a

    #@6a
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Landroid/os/Bundle;

    #@72
    :goto_72
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onCreate(Landroid/os/Bundle;)V

    #@75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@78
    move v0, v3

    #@79
    goto :goto_a

    #@7a
    :cond_7a
    move-object v0, v1

    #@7b
    goto :goto_72

    #@7c
    :sswitch_7c
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@84
    move-result-object v0

    #@85
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8c
    move-result-object v0

    #@8d
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v0

    #@95
    if-eqz v0, :cond_b2

    #@97
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@99
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v0

    #@9d
    check-cast v0, Landroid/os/Bundle;

    #@9f
    :goto_9f
    invoke-virtual {p0, v2, v4, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onCreateView(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/d;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/d;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    if-eqz v0, :cond_ac

    #@a8
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@ab
    move-result-object v1

    #@ac
    :cond_ac
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@af
    move v0, v3

    #@b0
    goto/16 :goto_a

    #@b2
    :cond_b2
    move-object v0, v1

    #@b3
    goto :goto_9f

    #@b4
    :sswitch_b4
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@b6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b9
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onResume()V

    #@bc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    move v0, v3

    #@c0
    goto/16 :goto_a

    #@c2
    :sswitch_c2
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onPause()V

    #@ca
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd
    move v0, v3

    #@ce
    goto/16 :goto_a

    #@d0
    :sswitch_d0
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@d2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onDestroyView()V

    #@d8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@db
    move v0, v3

    #@dc
    goto/16 :goto_a

    #@de
    :sswitch_de
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onDestroy()V

    #@e6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    move v0, v3

    #@ea
    goto/16 :goto_a

    #@ec
    :sswitch_ec
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@ee
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f1
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onLowMemory()V

    #@f4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f7
    move v0, v3

    #@f8
    goto/16 :goto_a

    #@fa
    :sswitch_fa
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@fc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v0

    #@103
    if-eqz v0, :cond_11e

    #@105
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@107
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10a
    move-result-object v0

    #@10b
    check-cast v0, Landroid/os/Bundle;

    #@10d
    :goto_10d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@113
    if-eqz v0, :cond_120

    #@115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@118
    invoke-virtual {v0, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@11b
    move v0, v3

    #@11c
    goto/16 :goto_a

    #@11e
    :cond_11e
    move-object v0, v1

    #@11f
    goto :goto_10d

    #@120
    :cond_120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@123
    move v0, v3

    #@124
    goto/16 :goto_a

    #@126
    :sswitch_126
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    #@128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12b
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->isReady()Z

    #@12e
    move-result v0

    #@12f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@132
    if-eqz v0, :cond_13b

    #@134
    move v0, v3

    #@135
    :goto_135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@138
    move v0, v3

    #@139
    goto/16 :goto_a

    #@13b
    :cond_13b
    move v0, v2

    #@13c
    goto :goto_135

    #@13d
    nop

    #@13e
    :sswitch_data_13e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_5f
        0x4 -> :sswitch_7c
        0x5 -> :sswitch_b4
        0x6 -> :sswitch_c2
        0x7 -> :sswitch_d0
        0x8 -> :sswitch_de
        0x9 -> :sswitch_ec
        0xa -> :sswitch_fa
        0xb -> :sswitch_126
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
