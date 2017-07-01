.class public abstract Lcom/google/android/gms/maps/model/internal/g$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/g$a$a;
    }
.end annotation


# direct methods
.method public static bd(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/g;
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
    const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/g;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/g;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/g$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/g$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_17a

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->remove()V

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    goto :goto_9

    #@1c
    :sswitch_1c
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->getId()Ljava/lang/String;

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
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/g$a;->setPoints(Ljava/util/List;)V

    #@3a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d
    goto :goto_9

    #@3e
    :sswitch_3e
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->getPoints()Ljava/util/List;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4d
    goto :goto_9

    #@4e
    :sswitch_4e
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/g$a;->setHoles(Ljava/util/List;)V

    #@62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@65
    goto :goto_9

    #@66
    :sswitch_66
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@68
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->getHoles()Ljava/util/List;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@75
    goto :goto_9

    #@76
    :sswitch_76
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@78
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@7e
    move-result v1

    #@7f
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/g$a;->setStrokeWidth(F)V

    #@82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@85
    goto :goto_9

    #@86
    :sswitch_86
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@88
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->getStrokeWidth()F

    #@8e
    move-result v1

    #@8f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@95
    goto/16 :goto_9

    #@97
    :sswitch_97
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@99
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v1

    #@a0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/g$a;->setStrokeColor(I)V

    #@a3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    goto/16 :goto_9

    #@a8
    :sswitch_a8
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@aa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->getStrokeColor()I

    #@b0
    move-result v1

    #@b1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b7
    goto/16 :goto_9

    #@b9
    :sswitch_b9
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@bb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v1

    #@c2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/g$a;->setFillColor(I)V

    #@c5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8
    goto/16 :goto_9

    #@ca
    :sswitch_ca
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@cc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cf
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->getFillColor()I

    #@d2
    move-result v1

    #@d3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d9
    goto/16 :goto_9

    #@db
    :sswitch_db
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@dd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@e3
    move-result v1

    #@e4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/g$a;->setZIndex(F)V

    #@e7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ea
    goto/16 :goto_9

    #@ec
    :sswitch_ec
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@ee
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f1
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->getZIndex()F

    #@f4
    move-result v1

    #@f5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@fb
    goto/16 :goto_9

    #@fd
    :sswitch_fd
    const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@ff
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v2

    #@106
    if-eqz v2, :cond_109

    #@108
    move v1, v0

    #@109
    :cond_109
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/g$a;->setVisible(Z)V

    #@10c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10f
    goto/16 :goto_9

    #@111
    :sswitch_111
    const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@113
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->isVisible()Z

    #@119
    move-result v2

    #@11a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    if-eqz v2, :cond_120

    #@11f
    move v1, v0

    #@120
    :cond_120
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@123
    goto/16 :goto_9

    #@125
    :sswitch_125
    const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@127
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v2

    #@12e
    if-eqz v2, :cond_131

    #@130
    move v1, v0

    #@131
    :cond_131
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/g$a;->setGeodesic(Z)V

    #@134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@137
    goto/16 :goto_9

    #@139
    :sswitch_139
    const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@13b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->isGeodesic()Z

    #@141
    move-result v2

    #@142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@145
    if-eqz v2, :cond_148

    #@147
    move v1, v0

    #@148
    :cond_148
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14b
    goto/16 :goto_9

    #@14d
    :sswitch_14d
    const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@14f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@155
    move-result-object v2

    #@156
    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/g$a;->bd(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/g;

    #@159
    move-result-object v2

    #@15a
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/g$a;->a(Lcom/google/android/gms/maps/model/internal/g;)Z

    #@15d
    move-result v2

    #@15e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@161
    if-eqz v2, :cond_164

    #@163
    move v1, v0

    #@164
    :cond_164
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@167
    goto/16 :goto_9

    #@169
    :sswitch_169
    const-string v1, "com.google.android.gms.maps.model.internal.IPolygonDelegate"

    #@16b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/g$a;->hashCodeRemote()I

    #@171
    move-result v1

    #@172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@175
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@178
    goto/16 :goto_9

    #@17a
    :sswitch_data_17a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3e
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_66
        0x7 -> :sswitch_76
        0x8 -> :sswitch_86
        0x9 -> :sswitch_97
        0xa -> :sswitch_a8
        0xb -> :sswitch_b9
        0xc -> :sswitch_ca
        0xd -> :sswitch_db
        0xe -> :sswitch_ec
        0xf -> :sswitch_fd
        0x10 -> :sswitch_111
        0x11 -> :sswitch_125
        0x12 -> :sswitch_139
        0x13 -> :sswitch_14d
        0x14 -> :sswitch_169
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
