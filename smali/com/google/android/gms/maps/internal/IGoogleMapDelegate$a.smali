.class public abstract Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;
    }
.end annotation


# direct methods
.method public static ay(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
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
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    sparse-switch p1, :sswitch_data_464

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    move v0, v2

    #@11
    goto :goto_a

    #@12
    :sswitch_12
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    if-eqz v1, :cond_28

    #@20
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/maps/model/CameraPosition;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    move v0, v2

    #@27
    goto :goto_a

    #@28
    :cond_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    move v0, v2

    #@2c
    goto :goto_a

    #@2d
    :sswitch_2d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getMaxZoomLevel()F

    #@35
    move-result v0

    #@36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@3c
    move v0, v2

    #@3d
    goto :goto_a

    #@3e
    :sswitch_3e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getMinZoomLevel()F

    #@46
    move-result v0

    #@47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@4d
    move v0, v2

    #@4e
    goto :goto_a

    #@4f
    :sswitch_4f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@57
    move-result-object v0

    #@58
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->moveCamera(Lcom/google/android/gms/dynamic/d;)V

    #@5f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    move v0, v2

    #@63
    goto :goto_a

    #@64
    :sswitch_64
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6c
    move-result-object v0

    #@6d
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->animateCamera(Lcom/google/android/gms/dynamic/d;)V

    #@74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@77
    move v0, v2

    #@78
    goto :goto_a

    #@79
    :sswitch_79
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@7b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@81
    move-result-object v0

    #@82
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@89
    move-result-object v1

    #@8a
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/b$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/b;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->animateCameraWithCallback(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/internal/b;)V

    #@91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    move v0, v2

    #@95
    goto/16 :goto_a

    #@97
    :sswitch_97
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9f
    move-result-object v0

    #@a0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v1

    #@a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ab
    move-result-object v3

    #@ac
    invoke-static {v3}, Lcom/google/android/gms/maps/internal/b$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/b;

    #@af
    move-result-object v3

    #@b0
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->animateCameraWithDurationAndCallback(Lcom/google/android/gms/dynamic/d;ILcom/google/android/gms/maps/internal/b;)V

    #@b3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    move v0, v2

    #@b7
    goto/16 :goto_a

    #@b9
    :sswitch_b9
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@bb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->stopAnimation()V

    #@c1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4
    move v0, v2

    #@c5
    goto/16 :goto_a

    #@c7
    :sswitch_c7
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@c9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cf
    move-result v0

    #@d0
    if-eqz v0, :cond_eb

    #@d2
    sget-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/PolylineOptionsCreator;

    #@d4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolylineOptions;

    #@d7
    move-result-object v0

    #@d8
    :goto_d8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    #@db
    move-result-object v0

    #@dc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    if-eqz v0, :cond_e5

    #@e1
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;->asBinder()Landroid/os/IBinder;

    #@e4
    move-result-object v1

    #@e5
    :cond_e5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e8
    move v0, v2

    #@e9
    goto/16 :goto_a

    #@eb
    :cond_eb
    move-object v0, v1

    #@ec
    goto :goto_d8

    #@ed
    :sswitch_ed
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@ef
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f5
    move-result v0

    #@f6
    if-eqz v0, :cond_111

    #@f8
    sget-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/PolygonOptionsCreator;

    #@fa
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolygonOptions;

    #@fd
    move-result-object v0

    #@fe
    :goto_fe
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/internal/g;

    #@101
    move-result-object v0

    #@102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    if-eqz v0, :cond_10b

    #@107
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->asBinder()Landroid/os/IBinder;

    #@10a
    move-result-object v1

    #@10b
    :cond_10b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10e
    move v0, v2

    #@10f
    goto/16 :goto_a

    #@111
    :cond_111
    move-object v0, v1

    #@112
    goto :goto_fe

    #@113
    :sswitch_113
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11b
    move-result v0

    #@11c
    if-eqz v0, :cond_137

    #@11e
    sget-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/MarkerOptionsCreator;

    #@120
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;

    #@123
    move-result-object v0

    #@124
    :goto_124
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/internal/f;

    #@127
    move-result-object v0

    #@128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12b
    if-eqz v0, :cond_131

    #@12d
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->asBinder()Landroid/os/IBinder;

    #@130
    move-result-object v1

    #@131
    :cond_131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@134
    move v0, v2

    #@135
    goto/16 :goto_a

    #@137
    :cond_137
    move-object v0, v1

    #@138
    goto :goto_124

    #@139
    :sswitch_139
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@13b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@141
    move-result v0

    #@142
    if-eqz v0, :cond_15d

    #@144
    sget-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;

    #@146
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    #@149
    move-result-object v0

    #@14a
    :goto_14a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/internal/c;

    #@14d
    move-result-object v0

    #@14e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@151
    if-eqz v0, :cond_157

    #@153
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/c;->asBinder()Landroid/os/IBinder;

    #@156
    move-result-object v1

    #@157
    :cond_157
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15a
    move v0, v2

    #@15b
    goto/16 :goto_a

    #@15d
    :cond_15d
    move-object v0, v1

    #@15e
    goto :goto_14a

    #@15f
    :sswitch_15f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@161
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@167
    move-result v0

    #@168
    if-eqz v0, :cond_183

    #@16a
    sget-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;

    #@16c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    #@16f
    move-result-object v0

    #@170
    :goto_170
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/h;

    #@173
    move-result-object v0

    #@174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@177
    if-eqz v0, :cond_17d

    #@179
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/h;->asBinder()Landroid/os/IBinder;

    #@17c
    move-result-object v1

    #@17d
    :cond_17d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@180
    move v0, v2

    #@181
    goto/16 :goto_a

    #@183
    :cond_183
    move-object v0, v1

    #@184
    goto :goto_170

    #@185
    :sswitch_185
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@187
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18a
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->clear()V

    #@18d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@190
    move v0, v2

    #@191
    goto/16 :goto_a

    #@193
    :sswitch_193
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@195
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@198
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getMapType()I

    #@19b
    move-result v0

    #@19c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@19f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a2
    move v0, v2

    #@1a3
    goto/16 :goto_a

    #@1a5
    :sswitch_1a5
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@1a7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1ad
    move-result v0

    #@1ae
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setMapType(I)V

    #@1b1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b4
    move v0, v2

    #@1b5
    goto/16 :goto_a

    #@1b7
    :sswitch_1b7
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@1b9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bc
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->isTrafficEnabled()Z

    #@1bf
    move-result v1

    #@1c0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c3
    if-eqz v1, :cond_1c6

    #@1c5
    move v0, v2

    #@1c6
    :cond_1c6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c9
    move v0, v2

    #@1ca
    goto/16 :goto_a

    #@1cc
    :sswitch_1cc
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@1ce
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d4
    move-result v1

    #@1d5
    if-eqz v1, :cond_1d8

    #@1d7
    move v0, v2

    #@1d8
    :cond_1d8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setTrafficEnabled(Z)V

    #@1db
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1de
    move v0, v2

    #@1df
    goto/16 :goto_a

    #@1e1
    :sswitch_1e1
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@1e3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e6
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->isIndoorEnabled()Z

    #@1e9
    move-result v1

    #@1ea
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ed
    if-eqz v1, :cond_1f0

    #@1ef
    move v0, v2

    #@1f0
    :cond_1f0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f3
    move v0, v2

    #@1f4
    goto/16 :goto_a

    #@1f6
    :sswitch_1f6
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@1f8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1fe
    move-result v1

    #@1ff
    if-eqz v1, :cond_212

    #@201
    move v1, v2

    #@202
    :goto_202
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setIndoorEnabled(Z)Z

    #@205
    move-result v1

    #@206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@209
    if-eqz v1, :cond_20c

    #@20b
    move v0, v2

    #@20c
    :cond_20c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20f
    move v0, v2

    #@210
    goto/16 :goto_a

    #@212
    :cond_212
    move v1, v0

    #@213
    goto :goto_202

    #@214
    :sswitch_214
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@216
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@219
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->isMyLocationEnabled()Z

    #@21c
    move-result v1

    #@21d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@220
    if-eqz v1, :cond_223

    #@222
    move v0, v2

    #@223
    :cond_223
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@226
    move v0, v2

    #@227
    goto/16 :goto_a

    #@229
    :sswitch_229
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@22b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@231
    move-result v1

    #@232
    if-eqz v1, :cond_235

    #@234
    move v0, v2

    #@235
    :cond_235
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setMyLocationEnabled(Z)V

    #@238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@23b
    move v0, v2

    #@23c
    goto/16 :goto_a

    #@23e
    :sswitch_23e
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@240
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@243
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getMyLocation()Landroid/location/Location;

    #@246
    move-result-object v1

    #@247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24a
    if-eqz v1, :cond_255

    #@24c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24f
    invoke-virtual {v1, p3, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@252
    move v0, v2

    #@253
    goto/16 :goto_a

    #@255
    :cond_255
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@258
    move v0, v2

    #@259
    goto/16 :goto_a

    #@25b
    :sswitch_25b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@25d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@263
    move-result-object v0

    #@264
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$a;->aA(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;

    #@267
    move-result-object v0

    #@268
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setLocationSource(Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;)V

    #@26b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@26e
    move v0, v2

    #@26f
    goto/16 :goto_a

    #@271
    :sswitch_271
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@273
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@276
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getUiSettings()Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    #@279
    move-result-object v0

    #@27a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27d
    if-eqz v0, :cond_283

    #@27f
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->asBinder()Landroid/os/IBinder;

    #@282
    move-result-object v1

    #@283
    :cond_283
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@286
    move v0, v2

    #@287
    goto/16 :goto_a

    #@289
    :sswitch_289
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@28b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getProjection()Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    #@291
    move-result-object v0

    #@292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@295
    if-eqz v0, :cond_29b

    #@297
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate;->asBinder()Landroid/os/IBinder;

    #@29a
    move-result-object v1

    #@29b
    :cond_29b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@29e
    move v0, v2

    #@29f
    goto/16 :goto_a

    #@2a1
    :sswitch_2a1
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@2a3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a9
    move-result-object v0

    #@2aa
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/e$a;->aD(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/e;

    #@2ad
    move-result-object v0

    #@2ae
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnCameraChangeListener(Lcom/google/android/gms/maps/internal/e;)V

    #@2b1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b4
    move v0, v2

    #@2b5
    goto/16 :goto_a

    #@2b7
    :sswitch_2b7
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@2b9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2bf
    move-result-object v0

    #@2c0
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/i$a;->aH(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/i;

    #@2c3
    move-result-object v0

    #@2c4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnMapClickListener(Lcom/google/android/gms/maps/internal/i;)V

    #@2c7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ca
    move v0, v2

    #@2cb
    goto/16 :goto_a

    #@2cd
    :sswitch_2cd
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@2cf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d5
    move-result-object v0

    #@2d6
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/k$a;->aJ(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/k;

    #@2d9
    move-result-object v0

    #@2da
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/k;)V

    #@2dd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e0
    move v0, v2

    #@2e1
    goto/16 :goto_a

    #@2e3
    :sswitch_2e3
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@2e5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2eb
    move-result-object v0

    #@2ec
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/l$a;->aK(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/l;

    #@2ef
    move-result-object v0

    #@2f0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/l;)V

    #@2f3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f6
    move v0, v2

    #@2f7
    goto/16 :goto_a

    #@2f9
    :sswitch_2f9
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@2fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@301
    move-result-object v0

    #@302
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/m$a;->aL(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/m;

    #@305
    move-result-object v0

    #@306
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/m;)V

    #@309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@30c
    move v0, v2

    #@30d
    goto/16 :goto_a

    #@30f
    :sswitch_30f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@311
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@314
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@317
    move-result-object v0

    #@318
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/g$a;->aF(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/g;

    #@31b
    move-result-object v0

    #@31c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/g;)V

    #@31f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@322
    move v0, v2

    #@323
    goto/16 :goto_a

    #@325
    :sswitch_325
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@327
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32d
    move-result-object v0

    #@32e
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/d$a;->az(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/d;

    #@331
    move-result-object v0

    #@332
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/d;)V

    #@335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@338
    move v0, v2

    #@339
    goto/16 :goto_a

    #@33b
    :sswitch_33b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@33d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@340
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getTestingHelper()Lcom/google/android/gms/dynamic/d;

    #@343
    move-result-object v0

    #@344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@347
    if-eqz v0, :cond_34d

    #@349
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@34c
    move-result-object v1

    #@34d
    :cond_34d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@350
    move v0, v2

    #@351
    goto/16 :goto_a

    #@353
    :sswitch_353
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@355
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@35b
    move-result v0

    #@35c
    if-eqz v0, :cond_377

    #@35e
    sget-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;

    #@360
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CircleOptions;

    #@363
    move-result-object v0

    #@364
    :goto_364
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/internal/b;

    #@367
    move-result-object v0

    #@368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@36b
    if-eqz v0, :cond_371

    #@36d
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/b;->asBinder()Landroid/os/IBinder;

    #@370
    move-result-object v1

    #@371
    :cond_371
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@374
    move v0, v2

    #@375
    goto/16 :goto_a

    #@377
    :cond_377
    move-object v0, v1

    #@378
    goto :goto_364

    #@379
    :sswitch_379
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@37b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@381
    move-result-object v0

    #@382
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/o$a;->aN(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/o;

    #@385
    move-result-object v0

    #@386
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/internal/o;)V

    #@389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@38c
    move v0, v2

    #@38d
    goto/16 :goto_a

    #@38f
    :sswitch_38f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@391
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@394
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@397
    move-result-object v0

    #@398
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/n$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/n;

    #@39b
    move-result-object v0

    #@39c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/internal/n;)V

    #@39f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a2
    move v0, v2

    #@3a3
    goto/16 :goto_a

    #@3a5
    :sswitch_3a5
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@3a7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ad
    move-result-object v0

    #@3ae
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/s$a;->aS(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/s;

    #@3b1
    move-result-object v0

    #@3b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3b5
    move-result-object v1

    #@3b6
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@3b9
    move-result-object v1

    #@3ba
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->snapshot(Lcom/google/android/gms/maps/internal/s;Lcom/google/android/gms/dynamic/d;)V

    #@3bd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c0
    move v0, v2

    #@3c1
    goto/16 :goto_a

    #@3c3
    :sswitch_3c3
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@3c5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3cb
    move-result v0

    #@3cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3cf
    move-result v1

    #@3d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d3
    move-result v3

    #@3d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d7
    move-result v4

    #@3d8
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setPadding(IIII)V

    #@3db
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3de
    move v0, v2

    #@3df
    goto/16 :goto_a

    #@3e1
    :sswitch_3e1
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@3e3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e6
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->isBuildingsEnabled()Z

    #@3e9
    move-result v1

    #@3ea
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ed
    if-eqz v1, :cond_3f0

    #@3ef
    move v0, v2

    #@3f0
    :cond_3f0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3f3
    move v0, v2

    #@3f4
    goto/16 :goto_a

    #@3f6
    :sswitch_3f6
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@3f8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3fe
    move-result v1

    #@3ff
    if-eqz v1, :cond_402

    #@401
    move v0, v2

    #@402
    :cond_402
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setBuildingsEnabled(Z)V

    #@405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@408
    move v0, v2

    #@409
    goto/16 :goto_a

    #@40b
    :sswitch_40b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@40d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@410
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@413
    move-result-object v0

    #@414
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/j$a;->aI(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/j;

    #@417
    move-result-object v0

    #@418
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/j;)V

    #@41b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@41e
    move v0, v2

    #@41f
    goto/16 :goto_a

    #@421
    :sswitch_421
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@423
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@426
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->getFocusedBuilding()Lcom/google/android/gms/maps/model/internal/d;

    #@429
    move-result-object v0

    #@42a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42d
    if-eqz v0, :cond_433

    #@42f
    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/d;->asBinder()Landroid/os/IBinder;

    #@432
    move-result-object v1

    #@433
    :cond_433
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@436
    move v0, v2

    #@437
    goto/16 :goto_a

    #@439
    :sswitch_439
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@43b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@441
    move-result-object v0

    #@442
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/f$a;->aE(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/f;

    #@445
    move-result-object v0

    #@446
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/internal/f;)V

    #@449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@44c
    move v0, v2

    #@44d
    goto/16 :goto_a

    #@44f
    :sswitch_44f
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    #@451
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@457
    move-result v1

    #@458
    if-eqz v1, :cond_45b

    #@45a
    move v0, v2

    #@45b
    :cond_45b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$a;->setWatermarkEnabled(Z)V

    #@45e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@461
    move v0, v2

    #@462
    goto/16 :goto_a

    #@464
    :sswitch_data_464
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_64
        0x6 -> :sswitch_79
        0x7 -> :sswitch_97
        0x8 -> :sswitch_b9
        0x9 -> :sswitch_c7
        0xa -> :sswitch_ed
        0xb -> :sswitch_113
        0xc -> :sswitch_139
        0xd -> :sswitch_15f
        0xe -> :sswitch_185
        0xf -> :sswitch_193
        0x10 -> :sswitch_1a5
        0x11 -> :sswitch_1b7
        0x12 -> :sswitch_1cc
        0x13 -> :sswitch_1e1
        0x14 -> :sswitch_1f6
        0x15 -> :sswitch_214
        0x16 -> :sswitch_229
        0x17 -> :sswitch_23e
        0x18 -> :sswitch_25b
        0x19 -> :sswitch_271
        0x1a -> :sswitch_289
        0x1b -> :sswitch_2a1
        0x1c -> :sswitch_2b7
        0x1d -> :sswitch_2cd
        0x1e -> :sswitch_2e3
        0x1f -> :sswitch_2f9
        0x20 -> :sswitch_30f
        0x21 -> :sswitch_325
        0x22 -> :sswitch_33b
        0x23 -> :sswitch_353
        0x24 -> :sswitch_379
        0x25 -> :sswitch_38f
        0x26 -> :sswitch_3a5
        0x27 -> :sswitch_3c3
        0x28 -> :sswitch_3e1
        0x29 -> :sswitch_3f6
        0x2a -> :sswitch_40b
        0x2c -> :sswitch_421
        0x2d -> :sswitch_439
        0x33 -> :sswitch_44f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
