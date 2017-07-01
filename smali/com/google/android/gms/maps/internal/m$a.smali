.class public abstract Lcom/google/android/gms/maps/internal/m$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/m$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/internal/m$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static aL(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/m;
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
    const-string v0, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/m;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/m;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/m$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/m$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    #@0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    sparse-switch p1, :sswitch_data_4c

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v1, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    #@b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    goto :goto_8

    #@f
    :sswitch_f
    const-string v1, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    #@11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Lcom/google/android/gms/maps/model/internal/f$a;->bc(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/f;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/m$a;->b(Lcom/google/android/gms/maps/model/internal/f;)V

    #@1f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22
    goto :goto_8

    #@23
    :sswitch_23
    const-string v1, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    #@25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Lcom/google/android/gms/maps/model/internal/f$a;->bc(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/f;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/m$a;->d(Lcom/google/android/gms/maps/model/internal/f;)V

    #@33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@36
    goto :goto_8

    #@37
    :sswitch_37
    const-string v1, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    #@39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v1}, Lcom/google/android/gms/maps/model/internal/f$a;->bc(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/f;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/m$a;->c(Lcom/google/android/gms/maps/model/internal/f;)V

    #@47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    goto :goto_8

    #@4b
    nop

    #@4c
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_37
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
