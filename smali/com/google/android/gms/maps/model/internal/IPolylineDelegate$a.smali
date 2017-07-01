.class public abstract Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a$a;
    }
.end annotation


# direct methods
.method public static be(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
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
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_12e

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->remove()V

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    goto :goto_9

    #@1c
    :sswitch_1c
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getId()Ljava/lang/String;

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
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setPoints(Ljava/util/List;)V

    #@3a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d
    goto :goto_9

    #@3e
    :sswitch_3e
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getPoints()Ljava/util/List;

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
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@56
    move-result v1

    #@57
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setWidth(F)V

    #@5a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d
    goto :goto_9

    #@5e
    :sswitch_5e
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@60
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getWidth()F

    #@66
    move-result v1

    #@67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@6d
    goto :goto_9

    #@6e
    :sswitch_6e
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v1

    #@77
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setColor(I)V

    #@7a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d
    goto :goto_9

    #@7e
    :sswitch_7e
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@80
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getColor()I

    #@86
    move-result v1

    #@87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8d
    goto/16 :goto_9

    #@8f
    :sswitch_8f
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@91
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@97
    move-result v1

    #@98
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setZIndex(F)V

    #@9b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e
    goto/16 :goto_9

    #@a0
    :sswitch_a0
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@a2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getZIndex()F

    #@a8
    move-result v1

    #@a9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@af
    goto/16 :goto_9

    #@b1
    :sswitch_b1
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@b3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v2

    #@ba
    if-eqz v2, :cond_bd

    #@bc
    move v1, v0

    #@bd
    :cond_bd
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setVisible(Z)V

    #@c0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3
    goto/16 :goto_9

    #@c5
    :sswitch_c5
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@c7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->isVisible()Z

    #@cd
    move-result v2

    #@ce
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    if-eqz v2, :cond_d4

    #@d3
    move v1, v0

    #@d4
    :cond_d4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d7
    goto/16 :goto_9

    #@d9
    :sswitch_d9
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@db
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v2

    #@e2
    if-eqz v2, :cond_e5

    #@e4
    move v1, v0

    #@e5
    :cond_e5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setGeodesic(Z)V

    #@e8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@eb
    goto/16 :goto_9

    #@ed
    :sswitch_ed
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@ef
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f2
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->isGeodesic()Z

    #@f5
    move-result v2

    #@f6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9
    if-eqz v2, :cond_fc

    #@fb
    move v1, v0

    #@fc
    :cond_fc
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ff
    goto/16 :goto_9

    #@101
    :sswitch_101
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@103
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@109
    move-result-object v2

    #@10a
    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->be(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    #@10d
    move-result-object v2

    #@10e
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->equalsRemote(Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;)Z

    #@111
    move-result v2

    #@112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@115
    if-eqz v2, :cond_118

    #@117
    move v1, v0

    #@118
    :cond_118
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11b
    goto/16 :goto_9

    #@11d
    :sswitch_11d
    const-string v1, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    #@11f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->hashCodeRemote()I

    #@125
    move-result v1

    #@126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12c
    goto/16 :goto_9

    #@12e
    :sswitch_data_12e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3e
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_5e
        0x7 -> :sswitch_6e
        0x8 -> :sswitch_7e
        0x9 -> :sswitch_8f
        0xa -> :sswitch_a0
        0xb -> :sswitch_b1
        0xc -> :sswitch_c5
        0xd -> :sswitch_d9
        0xe -> :sswitch_ed
        0xf -> :sswitch_101
        0x10 -> :sswitch_11d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
