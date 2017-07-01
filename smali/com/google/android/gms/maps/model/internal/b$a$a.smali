.class Lcom/google/android/gms/maps/model/internal/b$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/b$a;
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
    iput-object p1, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/internal/b;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v2

    #@5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    :try_start_9
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_30

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/maps/model/internal/b;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    iget-object v1, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x11

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@22
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_32

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_29

    #@28
    const/4 v0, 0x1

    #@29
    :cond_29
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    return v0

    #@30
    :cond_30
    const/4 v1, 0x0

    #@31
    goto :goto_14

    #@32
    :catchall_32
    move-exception v0

    #@33
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@39
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x4

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2a

    #@1d
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@1f
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2c

    #@22
    move-result-object v0

    #@23
    :goto_23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    return-object v0

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    goto :goto_23

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

.method public getFillColor()I
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0xc

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    move-result v0

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return v0

    #@23
    :catchall_23
    move-exception v0

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    throw v0
.end method

.method public getId()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x2

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    return-object v0

    #@22
    :catchall_22
    move-exception v0

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    throw v0
.end method

.method public getRadius()D
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x6

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readDouble()D
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    #@1a
    move-result-wide v4

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    return-wide v4

    #@22
    :catchall_22
    move-exception v0

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    throw v0
.end method

.method public getStrokeColor()I
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0xa

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    move-result v0

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return v0

    #@23
    :catchall_23
    move-exception v0

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    throw v0
.end method

.method public getStrokeWidth()F
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x8

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    move-result v0

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return v0

    #@23
    :catchall_23
    move-exception v0

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    throw v0
.end method

.method public getZIndex()F
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0xe

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    move-result v0

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return v0

    #@23
    :catchall_23
    move-exception v0

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    throw v0
.end method

.method public hashCodeRemote()I
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x12

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    move-result v0

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return v0

    #@23
    :catchall_23
    move-exception v0

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    throw v0
.end method

.method public isVisible()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    :try_start_9
    const-string v3, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x10

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_20

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    return v0

    #@27
    :catchall_27
    move-exception v0

    #@28
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    throw v0
.end method

.method public remove()V
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x1

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    return-void

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    throw v0
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x3

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2d

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    return-void

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    :try_start_29
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    #@2c
    goto :goto_17

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    throw v0
.end method

.method public setFillColor(I)V
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0xb

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    return-void

    #@22
    :catchall_22
    move-exception v0

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    throw v0
.end method

.method public setRadius(D)V
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/4 v3, 0x5

    #@13
    const/4 v4, 0x0

    #@14
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    #@1a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    return-void

    #@21
    :catchall_21
    move-exception v0

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    throw v0
.end method

.method public setStrokeColor(I)V
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x9

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    return-void

    #@22
    :catchall_22
    move-exception v0

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    throw v0
.end method

.method public setStrokeWidth(F)V
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/4 v3, 0x7

    #@13
    const/4 v4, 0x0

    #@14
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    #@1a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    return-void

    #@21
    :catchall_21
    move-exception v0

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    throw v0
.end method

.method public setVisible(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    :try_start_9
    const-string v3, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_11

    #@10
    const/4 v0, 0x1

    #@11
    :cond_11
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xf

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_26

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    return-void

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

.method public setZIndex(F)V
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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0xd

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    return-void

    #@22
    :catchall_22
    move-exception v0

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    throw v0
.end method
