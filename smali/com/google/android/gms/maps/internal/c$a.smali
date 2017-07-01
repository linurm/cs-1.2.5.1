.class public abstract Lcom/google/android/gms/maps/internal/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/c$a$a;
    }
.end annotation


# direct methods
.method public static ax(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/c;
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
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/c;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/c;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/c$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/c$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    sparse-switch p1, :sswitch_data_10a

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v2

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/c$a;->h(Lcom/google/android/gms/dynamic/d;)V

    #@21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    move v0, v2

    #@25
    goto :goto_9

    #@26
    :sswitch_26
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    #@28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/c$a;->i(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    if-eqz v1, :cond_40

    #@3c
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->asBinder()Landroid/os/IBinder;

    #@3f
    move-result-object v0

    #@40
    :cond_40
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@43
    move v0, v2

    #@44
    goto :goto_9

    #@45
    :sswitch_45
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    #@47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4d
    move-result-object v1

    #@4e
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_70

    #@58
    sget-object v1, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    #@5a
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@5d
    move-result-object v1

    #@5e
    :goto_5e
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/maps/internal/c$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@65
    if-eqz v1, :cond_6b

    #@67
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->asBinder()Landroid/os/IBinder;

    #@6a
    move-result-object v0

    #@6b
    :cond_6b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@6e
    move v0, v2

    #@6f
    goto :goto_9

    #@70
    :cond_70
    move-object v1, v0

    #@71
    goto :goto_5e

    #@72
    :sswitch_72
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    #@74
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/c$a;->jH()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e
    if-eqz v1, :cond_84

    #@80
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->asBinder()Landroid/os/IBinder;

    #@83
    move-result-object v0

    #@84
    :cond_84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@87
    move v0, v2

    #@88
    goto :goto_9

    #@89
    :sswitch_89
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    #@8b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/c$a;->jI()Lcom/google/android/gms/maps/model/internal/a;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    if-eqz v1, :cond_9b

    #@97
    invoke-interface {v1}, Lcom/google/android/gms/maps/model/internal/a;->asBinder()Landroid/os/IBinder;

    #@9a
    move-result-object v0

    #@9b
    :cond_9b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@9e
    move v0, v2

    #@9f
    goto/16 :goto_9

    #@a1
    :sswitch_a1
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a9
    move-result-object v0

    #@aa
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v1

    #@b2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/internal/c$a;->a(Lcom/google/android/gms/dynamic/d;I)V

    #@b5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    move v0, v2

    #@b9
    goto/16 :goto_9

    #@bb
    :sswitch_bb
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    #@bd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c3
    move-result-object v1

    #@c4
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@c7
    move-result-object v3

    #@c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v1

    #@cc
    if-eqz v1, :cond_e7

    #@ce
    sget-object v1, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;

    #@d0
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    #@d3
    move-result-object v1

    #@d4
    :goto_d4
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/maps/internal/c$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@db
    if-eqz v1, :cond_e1

    #@dd
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->asBinder()Landroid/os/IBinder;

    #@e0
    move-result-object v0

    #@e1
    :cond_e1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e4
    move v0, v2

    #@e5
    goto/16 :goto_9

    #@e7
    :cond_e7
    move-object v1, v0

    #@e8
    goto :goto_d4

    #@e9
    :sswitch_e9
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    #@eb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f1
    move-result-object v1

    #@f2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@f5
    move-result-object v1

    #@f6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/c$a;->j(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    #@f9
    move-result-object v1

    #@fa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@fd
    if-eqz v1, :cond_103

    #@ff
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->asBinder()Landroid/os/IBinder;

    #@102
    move-result-object v0

    #@103
    :cond_103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@106
    move v0, v2

    #@107
    goto/16 :goto_9

    #@109
    nop

    #@10a
    :sswitch_data_10a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_45
        0x4 -> :sswitch_72
        0x5 -> :sswitch_89
        0x6 -> :sswitch_a1
        0x7 -> :sswitch_bb
        0x8 -> :sswitch_e9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
