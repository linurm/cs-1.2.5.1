.class public abstract Lcom/google/android/gms/maps/model/internal/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/c$a$a;
    }
.end annotation


# direct methods
.method public static aZ(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/c;
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
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/c;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/c;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/c$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/c$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    sparse-switch p1, :sswitch_data_1c2

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    move v0, v1

    #@11
    goto :goto_a

    #@12
    :sswitch_12
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->remove()V

    #@1a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    move v0, v1

    #@1e
    goto :goto_a

    #@1f
    :sswitch_1f
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getId()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    move v0, v1

    #@2f
    goto :goto_a

    #@30
    :sswitch_30
    const-string v2, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_41

    #@3b
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@3d
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    #@40
    move-result-object v0

    #@41
    :cond_41
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    #@44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    move v0, v1

    #@48
    goto :goto_a

    #@49
    :sswitch_49
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    if-eqz v0, :cond_5f

    #@57
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    #@5d
    move v0, v1

    #@5e
    goto :goto_a

    #@5f
    :cond_5f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    move v0, v1

    #@63
    goto :goto_a

    #@64
    :sswitch_64
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@6c
    move-result v0

    #@6d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setDimensions(F)V

    #@70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    move v0, v1

    #@74
    goto :goto_a

    #@75
    :sswitch_75
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@7d
    move-result v0

    #@7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@81
    move-result v2

    #@82
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/maps/model/internal/c$a;->a(FF)V

    #@85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@88
    move v0, v1

    #@89
    goto :goto_a

    #@8a
    :sswitch_8a
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@8c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getWidth()F

    #@92
    move-result v0

    #@93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@99
    move v0, v1

    #@9a
    goto/16 :goto_a

    #@9c
    :sswitch_9c
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@9e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a1
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getHeight()F

    #@a4
    move-result v0

    #@a5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@ab
    move v0, v1

    #@ac
    goto/16 :goto_a

    #@ae
    :sswitch_ae
    const-string v2, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@b0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v2

    #@b7
    if-eqz v2, :cond_bf

    #@b9
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@bb
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    #@be
    move-result-object v0

    #@bf
    :cond_bf
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    #@c2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    move v0, v1

    #@c6
    goto/16 :goto_a

    #@c8
    :sswitch_c8
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@ca
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    #@d0
    move-result-object v0

    #@d1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d4
    if-eqz v0, :cond_df

    #@d6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d9
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->writeToParcel(Landroid/os/Parcel;I)V

    #@dc
    move v0, v1

    #@dd
    goto/16 :goto_a

    #@df
    :cond_df
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e2
    move v0, v1

    #@e3
    goto/16 :goto_a

    #@e5
    :sswitch_e5
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@e7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@ed
    move-result v0

    #@ee
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setBearing(F)V

    #@f1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4
    move v0, v1

    #@f5
    goto/16 :goto_a

    #@f7
    :sswitch_f7
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@f9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fc
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getBearing()F

    #@ff
    move-result v0

    #@100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@106
    move v0, v1

    #@107
    goto/16 :goto_a

    #@109
    :sswitch_109
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@10b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@111
    move-result v0

    #@112
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setZIndex(F)V

    #@115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@118
    move v0, v1

    #@119
    goto/16 :goto_a

    #@11b
    :sswitch_11b
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@11d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@120
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getZIndex()F

    #@123
    move-result v0

    #@124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@12a
    move v0, v1

    #@12b
    goto/16 :goto_a

    #@12d
    :sswitch_12d
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@12f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@135
    move-result v0

    #@136
    if-eqz v0, :cond_142

    #@138
    move v0, v1

    #@139
    :goto_139
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setVisible(Z)V

    #@13c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13f
    move v0, v1

    #@140
    goto/16 :goto_a

    #@142
    :cond_142
    move v0, v2

    #@143
    goto :goto_139

    #@144
    :sswitch_144
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@149
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->isVisible()Z

    #@14c
    move-result v0

    #@14d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@150
    if-eqz v0, :cond_153

    #@152
    move v2, v1

    #@153
    :cond_153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@156
    move v0, v1

    #@157
    goto/16 :goto_a

    #@159
    :sswitch_159
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@15b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@161
    move-result v0

    #@162
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setTransparency(F)V

    #@165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@168
    move v0, v1

    #@169
    goto/16 :goto_a

    #@16b
    :sswitch_16b
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@16d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@170
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getTransparency()F

    #@173
    move-result v0

    #@174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@177
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@17a
    move v0, v1

    #@17b
    goto/16 :goto_a

    #@17d
    :sswitch_17d
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@17f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@185
    move-result-object v0

    #@186
    invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/c$a;->aZ(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/c;

    #@189
    move-result-object v0

    #@18a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->a(Lcom/google/android/gms/maps/model/internal/c;)Z

    #@18d
    move-result v0

    #@18e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    if-eqz v0, :cond_194

    #@193
    move v2, v1

    #@194
    :cond_194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@197
    move v0, v1

    #@198
    goto/16 :goto_a

    #@19a
    :sswitch_19a
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@19c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->hashCodeRemote()I

    #@1a2
    move-result v0

    #@1a3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a9
    move v0, v1

    #@1aa
    goto/16 :goto_a

    #@1ac
    :sswitch_1ac
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    #@1ae
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b4
    move-result-object v0

    #@1b5
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1b8
    move-result-object v0

    #@1b9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->l(Lcom/google/android/gms/dynamic/d;)V

    #@1bc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bf
    move v0, v1

    #@1c0
    goto/16 :goto_a

    #@1c2
    :sswitch_data_1c2
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_30
        0x4 -> :sswitch_49
        0x5 -> :sswitch_64
        0x6 -> :sswitch_75
        0x7 -> :sswitch_8a
        0x8 -> :sswitch_9c
        0x9 -> :sswitch_ae
        0xa -> :sswitch_c8
        0xb -> :sswitch_e5
        0xc -> :sswitch_f7
        0xd -> :sswitch_109
        0xe -> :sswitch_11b
        0xf -> :sswitch_12d
        0x10 -> :sswitch_144
        0x11 -> :sswitch_159
        0x12 -> :sswitch_16b
        0x13 -> :sswitch_17d
        0x14 -> :sswitch_19a
        0x15 -> :sswitch_1ac
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
