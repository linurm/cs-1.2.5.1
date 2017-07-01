.class public abstract Lcom/google/android/gms/maps/model/internal/a$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/a$a$a;
    }
.end annotation


# direct methods
.method public static aX(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/a;
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
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/a;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/a;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/a$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/a$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x1

    #@2
    sparse-switch p1, :sswitch_data_dc

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v2

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/a$a;->cX(I)Lcom/google/android/gms/dynamic/d;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    if-eqz v0, :cond_2c

    #@23
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v0

    #@27
    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2a
    move v0, v2

    #@2b
    goto :goto_9

    #@2c
    :cond_2c
    move-object v0, v1

    #@2d
    goto :goto_27

    #@2e
    :sswitch_2e
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/a$a;->bs(Ljava/lang/String;)Lcom/google/android/gms/dynamic/d;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e
    if-eqz v0, :cond_44

    #@40
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@43
    move-result-object v1

    #@44
    :cond_44
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@47
    move v0, v2

    #@48
    goto :goto_9

    #@49
    :sswitch_49
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/a$a;->bt(Ljava/lang/String;)Lcom/google/android/gms/dynamic/d;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    if-eqz v0, :cond_5f

    #@5b
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@5e
    move-result-object v1

    #@5f
    :cond_5f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@62
    move v0, v2

    #@63
    goto :goto_9

    #@64
    :sswitch_64
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/a$a;->jR()Lcom/google/android/gms/dynamic/d;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@70
    if-eqz v0, :cond_76

    #@72
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@75
    move-result-object v1

    #@76
    :cond_76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@79
    move v0, v2

    #@7a
    goto :goto_9

    #@7b
    :sswitch_7b
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@7d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@83
    move-result v0

    #@84
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/a$a;->c(F)Lcom/google/android/gms/dynamic/d;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b
    if-eqz v0, :cond_91

    #@8d
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@90
    move-result-object v1

    #@91
    :cond_91
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@94
    move v0, v2

    #@95
    goto/16 :goto_9

    #@97
    :sswitch_97
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v0

    #@a0
    if-eqz v0, :cond_bd

    #@a2
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a4
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a7
    move-result-object v0

    #@a8
    check-cast v0, Landroid/graphics/Bitmap;

    #@aa
    :goto_aa
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/a$a;->b(Landroid/graphics/Bitmap;)Lcom/google/android/gms/dynamic/d;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b1
    if-eqz v0, :cond_b7

    #@b3
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@b6
    move-result-object v1

    #@b7
    :cond_b7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@ba
    move v0, v2

    #@bb
    goto/16 :goto_9

    #@bd
    :cond_bd
    move-object v0, v1

    #@be
    goto :goto_aa

    #@bf
    :sswitch_bf
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    #@c1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/a$a;->bu(Ljava/lang/String;)Lcom/google/android/gms/dynamic/d;

    #@cb
    move-result-object v0

    #@cc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf
    if-eqz v0, :cond_d5

    #@d1
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@d4
    move-result-object v1

    #@d5
    :cond_d5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d8
    move v0, v2

    #@d9
    goto/16 :goto_9

    #@db
    nop

    #@dc
    :sswitch_data_dc
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_49
        0x4 -> :sswitch_64
        0x5 -> :sswitch_7b
        0x6 -> :sswitch_97
        0x7 -> :sswitch_bf
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
