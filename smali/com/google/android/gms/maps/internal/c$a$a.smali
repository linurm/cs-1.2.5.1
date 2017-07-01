.class Lcom/google/android/gms/maps/internal/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private kq:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_39

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    if-eqz p2, :cond_3b

    #@18
    const/4 v0, 0x1

    #@19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x3

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/IMapViewDelegate$a;->aC(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_40

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    return-object v0

    #@39
    :cond_39
    const/4 v0, 0x0

    #@3a
    goto :goto_13

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    :try_start_3c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    #@3f
    goto :goto_20

    #@40
    :catchall_40
    move-exception v0

    #@41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    throw v0
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_39

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    if-eqz p2, :cond_3b

    #@18
    const/4 v0, 0x1

    #@19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x7

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$a;->aV(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_40

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    return-object v0

    #@39
    :cond_39
    const/4 v0, 0x0

    #@3a
    goto :goto_13

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    :try_start_3c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    #@3f
    goto :goto_20

    #@40
    :catchall_40
    move-exception v0

    #@41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    throw v0
.end method

.method public a(Lcom/google/android/gms/dynamic/d;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2a

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/4 v3, 0x6

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    return-void

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    goto :goto_13

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public h(Lcom/google/android/gms/dynamic/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_27

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x1

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    return-void

    #@27
    :cond_27
    const/4 v0, 0x0

    #@28
    goto :goto_13

    #@29
    :catchall_29
    move-exception v0

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    throw v0
.end method

.method public i(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2f

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x2

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->aB(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_31

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    return-object v0

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    goto :goto_13

    #@31
    :catchall_31
    move-exception v0

    #@32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    throw v0
.end method

.method public j(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_30

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x8

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate$a;->aU(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_32

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    return-object v0

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_13

    #@32
    :catchall_32
    move-exception v0

    #@33
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    throw v0
.end method

.method public jH()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x4

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate$a;->av(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    return-object v0

    #@26
    :catchall_26
    move-exception v0

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    throw v0
.end method

.method public jI()Lcom/google/android/gms/maps/model/internal/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x5

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/a$a;->aX(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/a;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    return-object v0

    #@26
    :catchall_26
    move-exception v0

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    throw v0
.end method
