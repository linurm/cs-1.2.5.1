.class public abstract Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a$a;
    }
.end annotation


# direct methods
.method public static av(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
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
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    sparse-switch p1, :sswitch_data_18c

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v2

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->zoomIn()Lcom/google/android/gms/dynamic/d;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    if-eqz v1, :cond_23

    #@1f
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    move v0, v2

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->zoomOut()Lcom/google/android/gms/dynamic/d;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    if-eqz v1, :cond_3a

    #@36
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@39
    move-result-object v0

    #@3a
    :cond_3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@3d
    move v0, v2

    #@3e
    goto :goto_9

    #@3f
    :sswitch_3f
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@47
    move-result v1

    #@48
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@4b
    move-result v3

    #@4c
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->scrollBy(FF)Lcom/google/android/gms/dynamic/d;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    if-eqz v1, :cond_59

    #@55
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@58
    move-result-object v0

    #@59
    :cond_59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@5c
    move v0, v2

    #@5d
    goto :goto_9

    #@5e
    :sswitch_5e
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@60
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@66
    move-result v1

    #@67
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->zoomTo(F)Lcom/google/android/gms/dynamic/d;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e
    if-eqz v1, :cond_74

    #@70
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@73
    move-result-object v0

    #@74
    :cond_74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@77
    move v0, v2

    #@78
    goto :goto_9

    #@79
    :sswitch_79
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@7b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@81
    move-result v1

    #@82
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->zoomBy(F)Lcom/google/android/gms/dynamic/d;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@89
    if-eqz v1, :cond_8f

    #@8b
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@8e
    move-result-object v0

    #@8f
    :cond_8f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@92
    move v0, v2

    #@93
    goto/16 :goto_9

    #@95
    :sswitch_95
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@97
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@9d
    move-result v1

    #@9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v3

    #@a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v4

    #@a6
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->zoomByWithFocus(FII)Lcom/google/android/gms/dynamic/d;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad
    if-eqz v1, :cond_b3

    #@af
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@b2
    move-result-object v0

    #@b3
    :cond_b3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@b6
    move v0, v2

    #@b7
    goto/16 :goto_9

    #@b9
    :sswitch_b9
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@bb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v1

    #@c2
    if-eqz v1, :cond_dd

    #@c4
    sget-object v1, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/CameraPositionCreator;

    #@c6
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/CameraPositionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;

    #@c9
    move-result-object v1

    #@ca
    :goto_ca
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/dynamic/d;

    #@cd
    move-result-object v1

    #@ce
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    if-eqz v1, :cond_d7

    #@d3
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@d6
    move-result-object v0

    #@d7
    :cond_d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@da
    move v0, v2

    #@db
    goto/16 :goto_9

    #@dd
    :cond_dd
    move-object v1, v0

    #@de
    goto :goto_ca

    #@df
    :sswitch_df
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@e1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e7
    move-result v1

    #@e8
    if-eqz v1, :cond_103

    #@ea
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@ec
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    #@ef
    move-result-object v1

    #@f0
    :goto_f0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/d;

    #@f3
    move-result-object v1

    #@f4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f7
    if-eqz v1, :cond_fd

    #@f9
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@fc
    move-result-object v0

    #@fd
    :cond_fd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@100
    move v0, v2

    #@101
    goto/16 :goto_9

    #@103
    :cond_103
    move-object v1, v0

    #@104
    goto :goto_f0

    #@105
    :sswitch_105
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@107
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v1

    #@10e
    if-eqz v1, :cond_12d

    #@110
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@112
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    #@115
    move-result-object v1

    #@116
    :goto_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@119
    move-result v3

    #@11a
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/dynamic/d;

    #@11d
    move-result-object v1

    #@11e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@121
    if-eqz v1, :cond_127

    #@123
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@126
    move-result-object v0

    #@127
    :cond_127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12a
    move v0, v2

    #@12b
    goto/16 :goto_9

    #@12d
    :cond_12d
    move-object v1, v0

    #@12e
    goto :goto_116

    #@12f
    :sswitch_12f
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@131
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v1

    #@138
    if-eqz v1, :cond_157

    #@13a
    sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@13c
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    #@13f
    move-result-object v1

    #@140
    :goto_140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@143
    move-result v3

    #@144
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/dynamic/d;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@14b
    if-eqz v1, :cond_151

    #@14d
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@150
    move-result-object v0

    #@151
    :cond_151
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@154
    move v0, v2

    #@155
    goto/16 :goto_9

    #@157
    :cond_157
    move-object v1, v0

    #@158
    goto :goto_140

    #@159
    :sswitch_159
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    #@15b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@161
    move-result v1

    #@162
    if-eqz v1, :cond_189

    #@164
    sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@166
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    #@169
    move-result-object v1

    #@16a
    :goto_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@16d
    move-result v3

    #@16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@171
    move-result v4

    #@172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v5

    #@176
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->newLatLngBoundsWithSize(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/dynamic/d;

    #@179
    move-result-object v1

    #@17a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    if-eqz v1, :cond_183

    #@17f
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@182
    move-result-object v0

    #@183
    :cond_183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@186
    move v0, v2

    #@187
    goto/16 :goto_9

    #@189
    :cond_189
    move-object v1, v0

    #@18a
    goto :goto_16a

    #@18b
    nop

    #@18c
    :sswitch_data_18c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_28
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_79
        0x6 -> :sswitch_95
        0x7 -> :sswitch_b9
        0x8 -> :sswitch_df
        0x9 -> :sswitch_105
        0xa -> :sswitch_12f
        0xb -> :sswitch_159
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
