.class public abstract Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IProjectionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IProjectionDelegate$a$a;
    }
.end annotation


# direct methods
.method public static aR(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IProjectionDelegate;
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
    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    sparse-switch p1, :sswitch_data_70

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const-string v1, "com.google.android.gms.maps.internal.IProjectionDelegate"

    #@d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    goto :goto_a

    #@11
    :sswitch_11
    const-string v1, "com.google.android.gms.maps.internal.IProjectionDelegate"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;->fromScreenLocation(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/model/LatLng;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    if-eqz v1, :cond_2e

    #@27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    goto :goto_a

    #@2e
    :cond_2e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    goto :goto_a

    #@32
    :sswitch_32
    const-string v1, "com.google.android.gms.maps.internal.IProjectionDelegate"

    #@34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_54

    #@3d
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@3f
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    #@42
    move-result-object v1

    #@43
    :goto_43
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/d;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    if-eqz v1, :cond_50

    #@4c
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@4f
    move-result-object v2

    #@50
    :cond_50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@53
    goto :goto_a

    #@54
    :cond_54
    move-object v1, v2

    #@55
    goto :goto_43

    #@56
    :sswitch_56
    const-string v1, "com.google.android.gms.maps.internal.IProjectionDelegate"

    #@58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$a;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    if-eqz v1, :cond_6b

    #@64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/maps/model/VisibleRegion;->writeToParcel(Landroid/os/Parcel;I)V

    #@6a
    goto :goto_a

    #@6b
    :cond_6b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    goto :goto_a

    #@6f
    nop

    #@70
    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_32
        0x3 -> :sswitch_56
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
