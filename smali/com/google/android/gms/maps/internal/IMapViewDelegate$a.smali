.class public abstract Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IMapViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IMapViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IMapViewDelegate$a$a;
    }
.end annotation


# direct methods
.method public static aC(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;
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
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x1

    #@2
    sparse-switch p1, :sswitch_data_b8

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->getMap()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    if-eqz v2, :cond_23

    #@1f
    invoke-interface {v2}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    move v0, v1

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    const-string v2, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_3b

    #@33
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/os/Bundle;

    #@3b
    :cond_3b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->onCreate(Landroid/os/Bundle;)V

    #@3e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    move v0, v1

    #@42
    goto :goto_9

    #@43
    :sswitch_43
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->onResume()V

    #@4b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e
    move v0, v1

    #@4f
    goto :goto_9

    #@50
    :sswitch_50
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->onPause()V

    #@58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    move v0, v1

    #@5c
    goto :goto_9

    #@5d
    :sswitch_5d
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@5f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->onDestroy()V

    #@65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    move v0, v1

    #@69
    goto :goto_9

    #@6a
    :sswitch_6a
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@6c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->onLowMemory()V

    #@72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    move v0, v1

    #@76
    goto :goto_9

    #@77
    :sswitch_77
    const-string v2, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@79
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v2

    #@80
    if-eqz v2, :cond_8a

    #@82
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@84
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@87
    move-result-object v0

    #@88
    check-cast v0, Landroid/os/Bundle;

    #@8a
    :cond_8a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@8d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    if-eqz v0, :cond_9b

    #@92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@95
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@98
    :goto_98
    move v0, v1

    #@99
    goto/16 :goto_9

    #@9b
    :cond_9b
    const/4 v0, 0x0

    #@9c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9f
    goto :goto_98

    #@a0
    :sswitch_a0
    const-string v2, "com.google.android.gms.maps.internal.IMapViewDelegate"

    #@a2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->getView()Lcom/google/android/gms/dynamic/d;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    if-eqz v2, :cond_b2

    #@ae
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@b1
    move-result-object v0

    #@b2
    :cond_b2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@b5
    move v0, v1

    #@b6
    goto/16 :goto_9

    #@b8
    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_28
        0x3 -> :sswitch_43
        0x4 -> :sswitch_50
        0x5 -> :sswitch_5d
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_77
        0x8 -> :sswitch_a0
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
