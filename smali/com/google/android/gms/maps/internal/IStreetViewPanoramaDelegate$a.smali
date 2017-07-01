.class public abstract Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a$a;
    }
.end annotation


# direct methods
.method public static aT(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
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
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    sparse-switch p1, :sswitch_data_1ce

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v1

    #@a
    :goto_a
    return v1

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    goto :goto_a

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1d

    #@1c
    move v0, v1

    #@1d
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->enableZoom(Z)V

    #@20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@23
    goto :goto_a

    #@24
    :sswitch_24
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_30

    #@2f
    move v0, v1

    #@30
    :cond_30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->enablePanning(Z)V

    #@33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@36
    goto :goto_a

    #@37
    :sswitch_37
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_43

    #@42
    move v0, v1

    #@43
    :cond_43
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->enableUserNavigation(Z)V

    #@46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    goto :goto_a

    #@4a
    :sswitch_4a
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_56

    #@55
    move v0, v1

    #@56
    :cond_56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->enableStreetNames(Z)V

    #@59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c
    goto :goto_a

    #@5d
    :sswitch_5d
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->isZoomGesturesEnabled()Z

    #@65
    move-result v2

    #@66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@69
    if-eqz v2, :cond_6c

    #@6b
    move v0, v1

    #@6c
    :cond_6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    goto :goto_a

    #@70
    :sswitch_70
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@72
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->isPanningGesturesEnabled()Z

    #@78
    move-result v2

    #@79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    if-eqz v2, :cond_7f

    #@7e
    move v0, v1

    #@7f
    :cond_7f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@82
    goto :goto_a

    #@83
    :sswitch_83
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@85
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->isUserNavigationEnabled()Z

    #@8b
    move-result v2

    #@8c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    if-eqz v2, :cond_92

    #@91
    move v0, v1

    #@92
    :cond_92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@95
    goto/16 :goto_a

    #@97
    :sswitch_97
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@99
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->isStreetNamesEnabled()Z

    #@9f
    move-result v2

    #@a0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a3
    if-eqz v2, :cond_a6

    #@a5
    move v0, v1

    #@a6
    :cond_a6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    goto/16 :goto_a

    #@ab
    :sswitch_ab
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@ad
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_c8

    #@b6
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;

    #@b8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    #@bb
    move-result-object v0

    #@bc
    :goto_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@bf
    move-result-wide v2

    #@c0
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->animateTo(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V

    #@c3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c6
    goto/16 :goto_a

    #@c8
    :cond_c8
    move-object v0, v2

    #@c9
    goto :goto_bc

    #@ca
    :sswitch_ca
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@cc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cf
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->getPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    #@d2
    move-result-object v2

    #@d3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6
    if-eqz v2, :cond_e0

    #@d8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@db
    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->writeToParcel(Landroid/os/Parcel;I)V

    #@de
    goto/16 :goto_a

    #@e0
    :cond_e0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e3
    goto/16 :goto_a

    #@e5
    :sswitch_e5
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@e7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ed
    move-result-object v0

    #@ee
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setPositionWithID(Ljava/lang/String;)V

    #@f1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4
    goto/16 :goto_a

    #@f6
    :sswitch_f6
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@f8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v0

    #@ff
    if-eqz v0, :cond_107

    #@101
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@103
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    #@106
    move-result-object v2

    #@107
    :cond_107
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    #@10a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d
    goto/16 :goto_a

    #@10f
    :sswitch_10f
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@117
    move-result v0

    #@118
    if-eqz v0, :cond_120

    #@11a
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@11c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    #@11f
    move-result-object v2

    #@120
    :cond_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@123
    move-result v0

    #@124
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setPositionWithRadius(Lcom/google/android/gms/maps/model/LatLng;I)V

    #@127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a
    goto/16 :goto_a

    #@12c
    :sswitch_12c
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@12e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->getStreetViewPanoramaLocation()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    #@134
    move-result-object v2

    #@135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@138
    if-eqz v2, :cond_142

    #@13a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13d
    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->writeToParcel(Landroid/os/Parcel;I)V

    #@140
    goto/16 :goto_a

    #@142
    :cond_142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@145
    goto/16 :goto_a

    #@147
    :sswitch_147
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@149
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14f
    move-result-object v0

    #@150
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/q$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/q;

    #@153
    move-result-object v0

    #@154
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/internal/q;)V

    #@157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a
    goto/16 :goto_a

    #@15c
    :sswitch_15c
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@15e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@164
    move-result-object v0

    #@165
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/p$a;->aO(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/p;

    #@168
    move-result-object v0

    #@169
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/internal/p;)V

    #@16c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@16f
    goto/16 :goto_a

    #@171
    :sswitch_171
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@173
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@179
    move-result-object v0

    #@17a
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/r$a;->aQ(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/r;

    #@17d
    move-result-object v0

    #@17e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/internal/r;)V

    #@181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@184
    goto/16 :goto_a

    #@186
    :sswitch_186
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@188
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18e
    move-result-object v2

    #@18f
    invoke-static {v2}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@192
    move-result-object v2

    #@193
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->pointToOrientation(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    #@196
    move-result-object v2

    #@197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@19a
    if-eqz v2, :cond_1a4

    #@19c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19f
    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a2
    goto/16 :goto_a

    #@1a4
    :cond_1a4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a7
    goto/16 :goto_a

    #@1a9
    :sswitch_1a9
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    #@1ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b1
    move-result v0

    #@1b2
    if-eqz v0, :cond_1cc

    #@1b4
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;

    #@1b6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    #@1b9
    move-result-object v0

    #@1ba
    :goto_1ba
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->orientationToPoint(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/dynamic/d;

    #@1bd
    move-result-object v0

    #@1be
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c1
    if-eqz v0, :cond_1c7

    #@1c3
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@1c6
    move-result-object v2

    #@1c7
    :cond_1c7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1ca
    goto/16 :goto_a

    #@1cc
    :cond_1cc
    move-object v0, v2

    #@1cd
    goto :goto_1ba

    #@1ce
    :sswitch_data_1ce
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_24
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_5d
        0x6 -> :sswitch_70
        0x7 -> :sswitch_83
        0x8 -> :sswitch_97
        0x9 -> :sswitch_ab
        0xa -> :sswitch_ca
        0xb -> :sswitch_e5
        0xc -> :sswitch_f6
        0xd -> :sswitch_10f
        0xe -> :sswitch_12c
        0xf -> :sswitch_147
        0x10 -> :sswitch_15c
        0x11 -> :sswitch_171
        0x12 -> :sswitch_186
        0x13 -> :sswitch_1a9
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
