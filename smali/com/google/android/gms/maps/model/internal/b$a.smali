.class public abstract Lcom/google/android/gms/maps/model/internal/b$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/b$a$a;
    }
.end annotation


# direct methods
.method public static aY(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/b;
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/b;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/b;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/b$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/b$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    sparse-switch p1, :sswitch_data_15c

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->remove()V

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    goto :goto_9

    #@1c
    :sswitch_1c
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getId()Ljava/lang/String;

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
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

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
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/b$a;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

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
    const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

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
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@61
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    #@67
    move-result-wide v2

    #@68
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/maps/model/internal/b$a;->setRadius(D)V

    #@6b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e
    goto :goto_9

    #@6f
    :sswitch_6f
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@71
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getRadius()D

    #@77
    move-result-wide v2

    #@78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    #@7e
    goto :goto_9

    #@7f
    :sswitch_7f
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@81
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@87
    move-result v1

    #@88
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/b$a;->setStrokeWidth(F)V

    #@8b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e
    goto/16 :goto_9

    #@90
    :sswitch_90
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@92
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getStrokeWidth()F

    #@98
    move-result v1

    #@99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@9f
    goto/16 :goto_9

    #@a1
    :sswitch_a1
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v1

    #@aa
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/b$a;->setStrokeColor(I)V

    #@ad
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b0
    goto/16 :goto_9

    #@b2
    :sswitch_b2
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@b4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getStrokeColor()I

    #@ba
    move-result v1

    #@bb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    goto/16 :goto_9

    #@c3
    :sswitch_c3
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@c5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v1

    #@cc
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/b$a;->setFillColor(I)V

    #@cf
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2
    goto/16 :goto_9

    #@d4
    :sswitch_d4
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@d6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getFillColor()I

    #@dc
    move-result v1

    #@dd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e3
    goto/16 :goto_9

    #@e5
    :sswitch_e5
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@e7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@ed
    move-result v1

    #@ee
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/b$a;->setZIndex(F)V

    #@f1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4
    goto/16 :goto_9

    #@f6
    :sswitch_f6
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@f8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getZIndex()F

    #@fe
    move-result v1

    #@ff
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@102
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@105
    goto/16 :goto_9

    #@107
    :sswitch_107
    const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@109
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10f
    move-result v2

    #@110
    if-eqz v2, :cond_113

    #@112
    move v1, v0

    #@113
    :cond_113
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/b$a;->setVisible(Z)V

    #@116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@119
    goto/16 :goto_9

    #@11b
    :sswitch_11b
    const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@11d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@120
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->isVisible()Z

    #@123
    move-result v2

    #@124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@127
    if-eqz v2, :cond_12a

    #@129
    move v1, v0

    #@12a
    :cond_12a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12d
    goto/16 :goto_9

    #@12f
    :sswitch_12f
    const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@131
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@137
    move-result-object v2

    #@138
    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/b$a;->aY(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/b;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/b$a;->a(Lcom/google/android/gms/maps/model/internal/b;)Z

    #@13f
    move-result v2

    #@140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@143
    if-eqz v2, :cond_146

    #@145
    move v1, v0

    #@146
    :cond_146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@149
    goto/16 :goto_9

    #@14b
    :sswitch_14b
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@14d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->hashCodeRemote()I

    #@153
    move-result v1

    #@154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15a
    goto/16 :goto_9

    #@15c
    :sswitch_data_15c
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
        0xa -> :sswitch_b2
        0xb -> :sswitch_c3
        0xc -> :sswitch_d4
        0xd -> :sswitch_e5
        0xe -> :sswitch_f6
        0xf -> :sswitch_107
        0x10 -> :sswitch_11b
        0x11 -> :sswitch_12f
        0x12 -> :sswitch_14b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
