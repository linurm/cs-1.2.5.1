.class public abstract Lcom/google/android/gms/maps/internal/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/d$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/internal/d$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static az(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/d;
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
    const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/d;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/d;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/d$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/d$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_50

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/f$a;->bc(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/f;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/d$a;->f(Lcom/google/android/gms/maps/model/internal/f;)Lcom/google/android/gms/dynamic/d;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    if-eqz v2, :cond_2b

    #@27
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v0

    #@2b
    :cond_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2e
    move v0, v1

    #@2f
    goto :goto_9

    #@30
    :sswitch_30
    const-string v2, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    #@32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@38
    move-result-object v2

    #@39
    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/f$a;->bc(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/f;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/d$a;->g(Lcom/google/android/gms/maps/model/internal/f;)Lcom/google/android/gms/dynamic/d;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    if-eqz v2, :cond_4a

    #@46
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@49
    move-result-object v0

    #@4a
    :cond_4a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@4d
    move v0, v1

    #@4e
    goto :goto_9

    #@4f
    nop

    #@50
    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_30
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
