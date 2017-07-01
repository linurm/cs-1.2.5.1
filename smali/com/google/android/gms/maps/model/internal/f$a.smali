.class public abstract Lcom/google/android/gms/maps/model/internal/f$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/f$a$a;
    }
.end annotation


# direct methods
.method public static bc(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/f;
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
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/f;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/f;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/f$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/f$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    sparse-switch p1, :sswitch_data_1f8

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->remove()V

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    goto :goto_9

    #@1c
    :sswitch_1c
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->getId()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    goto :goto_9

    #@2c
    :sswitch_2c
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_44

    #@37
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@39
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    #@3c
    move-result-object v1

    #@3d
    :goto_3d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    #@40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@43
    goto :goto_9

    #@44
    :cond_44
    const/4 v1, 0x0

    #@45
    goto :goto_3d

    #@46
    :sswitch_46
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    if-eqz v2, :cond_5b

    #@54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    invoke-virtual {v2, p3, v0}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    #@5a
    goto :goto_9

    #@5b
    :cond_5b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    goto :goto_9

    #@5f
    :sswitch_5f
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@61
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->setTitle(Ljava/lang/String;)V

    #@6b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e
    goto :goto_9

    #@6f
    :sswitch_6f
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@71
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->getTitle()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7e
    goto :goto_9

    #@7f
    :sswitch_7f
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@81
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->setSnippet(Ljava/lang/String;)V

    #@8b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e
    goto/16 :goto_9

    #@90
    :sswitch_90
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@92
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->getSnippet()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9f
    goto/16 :goto_9

    #@a1
    :sswitch_a1
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@a3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v2

    #@aa
    if-eqz v2, :cond_ad

    #@ac
    move v1, v0

    #@ad
    :cond_ad
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->setDraggable(Z)V

    #@b0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3
    goto/16 :goto_9

    #@b5
    :sswitch_b5
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@b7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->isDraggable()Z

    #@bd
    move-result v2

    #@be
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1
    if-eqz v2, :cond_c4

    #@c3
    move v1, v0

    #@c4
    :cond_c4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c7
    goto/16 :goto_9

    #@c9
    :sswitch_c9
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@cb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->showInfoWindow()V

    #@d1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d4
    goto/16 :goto_9

    #@d6
    :sswitch_d6
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@d8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->hideInfoWindow()V

    #@de
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e1
    goto/16 :goto_9

    #@e3
    :sswitch_e3
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@e5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e8
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->isInfoWindowShown()Z

    #@eb
    move-result v2

    #@ec
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef
    if-eqz v2, :cond_f2

    #@f1
    move v1, v0

    #@f2
    :cond_f2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f5
    goto/16 :goto_9

    #@f7
    :sswitch_f7
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@f9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v2

    #@100
    if-eqz v2, :cond_103

    #@102
    move v1, v0

    #@103
    :cond_103
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->setVisible(Z)V

    #@106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@109
    goto/16 :goto_9

    #@10b
    :sswitch_10b
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@10d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->isVisible()Z

    #@113
    move-result v2

    #@114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    if-eqz v2, :cond_11a

    #@119
    move v1, v0

    #@11a
    :cond_11a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11d
    goto/16 :goto_9

    #@11f
    :sswitch_11f
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@121
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@127
    move-result-object v2

    #@128
    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/f$a;->bc(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/f;

    #@12b
    move-result-object v2

    #@12c
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/f$a;->h(Lcom/google/android/gms/maps/model/internal/f;)Z

    #@12f
    move-result v2

    #@130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@133
    if-eqz v2, :cond_136

    #@135
    move v1, v0

    #@136
    :cond_136
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@139
    goto/16 :goto_9

    #@13b
    :sswitch_13b
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@13d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->hashCodeRemote()I

    #@143
    move-result v1

    #@144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@147
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    goto/16 :goto_9

    #@14c
    :sswitch_14c
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@14e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@154
    move-result-object v1

    #@155
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@158
    move-result-object v1

    #@159
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->m(Lcom/google/android/gms/dynamic/d;)V

    #@15c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15f
    goto/16 :goto_9

    #@161
    :sswitch_161
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@163
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@166
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@169
    move-result v1

    #@16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@16d
    move-result v2

    #@16e
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/maps/model/internal/f$a;->setAnchor(FF)V

    #@171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@174
    goto/16 :goto_9

    #@176
    :sswitch_176
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@178
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@17e
    move-result v2

    #@17f
    if-eqz v2, :cond_182

    #@181
    move v1, v0

    #@182
    :cond_182
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->setFlat(Z)V

    #@185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@188
    goto/16 :goto_9

    #@18a
    :sswitch_18a
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@18c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->isFlat()Z

    #@192
    move-result v2

    #@193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@196
    if-eqz v2, :cond_199

    #@198
    move v1, v0

    #@199
    :cond_199
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19c
    goto/16 :goto_9

    #@19e
    :sswitch_19e
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@1a0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@1a6
    move-result v1

    #@1a7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->setRotation(F)V

    #@1aa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ad
    goto/16 :goto_9

    #@1af
    :sswitch_1af
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@1b1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->getRotation()F

    #@1b7
    move-result v1

    #@1b8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bb
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@1be
    goto/16 :goto_9

    #@1c0
    :sswitch_1c0
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@1c2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@1c8
    move-result v1

    #@1c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@1cc
    move-result v2

    #@1cd
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/maps/model/internal/f$a;->setInfoWindowAnchor(FF)V

    #@1d0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d3
    goto/16 :goto_9

    #@1d5
    :sswitch_1d5
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@1d7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@1dd
    move-result v1

    #@1de
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/f$a;->setAlpha(F)V

    #@1e1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4
    goto/16 :goto_9

    #@1e6
    :sswitch_1e6
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    #@1e8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1eb
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/f$a;->getAlpha()F

    #@1ee
    move-result v1

    #@1ef
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@1f5
    goto/16 :goto_9

    #@1f7
    nop

    #@1f8
    :sswitch_data_1f8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_46
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_90
        0x9 -> :sswitch_a1
        0xa -> :sswitch_b5
        0xb -> :sswitch_c9
        0xc -> :sswitch_d6
        0xd -> :sswitch_e3
        0xe -> :sswitch_f7
        0xf -> :sswitch_10b
        0x10 -> :sswitch_11f
        0x11 -> :sswitch_13b
        0x12 -> :sswitch_14c
        0x13 -> :sswitch_161
        0x14 -> :sswitch_176
        0x15 -> :sswitch_18a
        0x16 -> :sswitch_19e
        0x17 -> :sswitch_1af
        0x18 -> :sswitch_1c0
        0x19 -> :sswitch_1d5
        0x1a -> :sswitch_1e6
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
