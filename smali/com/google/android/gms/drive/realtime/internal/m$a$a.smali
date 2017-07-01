.class Lcom/google/android/gms/drive/realtime/internal/m$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/m$a;
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
    iput-object p1, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/gms/drive/realtime/internal/j;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1e

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public a(Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;Lcom/google/android/gms/drive/realtime/internal/o;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_32

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/o;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x12

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_37

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    :try_start_33
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    #@36
    goto :goto_17

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0

    #@3f
    :cond_3f
    const/4 v0, 0x0

    #@40
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;Lcom/google/android/gms/drive/realtime/internal/o;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_32

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/o;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x13

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_37

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    :try_start_33
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    #@36
    goto :goto_17

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0

    #@3f
    :cond_3f
    const/4 v0, 0x0

    #@40
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;Lcom/google/android/gms/drive/realtime/internal/n;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_32

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/n;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x1a

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_37

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    :try_start_33
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    #@36
    goto :goto_17

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0

    #@3f
    :cond_3f
    const/4 v0, 0x0

    #@40
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/c;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_27

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/c;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x2

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

.method public a(Lcom/google/android/gms/drive/realtime/internal/d;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x20

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/e;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/e;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x1f

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/h;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/h;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x24

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/i;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/i;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x22

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/j;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x16

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/l;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/l;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x1d

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public a(Lcom/google/android/gms/drive/realtime/internal/o;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_27

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/o;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x3

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

.method public a(Ljava/lang/String;IILcom/google/android/gms/drive/realtime/internal/g;)V
    .registers 10
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    if-eqz p4, :cond_31

    #@18
    invoke-interface {p4}, Lcom/google/android/gms/drive/realtime/internal/g;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    :goto_1c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x11

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    return-void

    #@31
    :cond_31
    const/4 v0, 0x0

    #@32
    goto :goto_1c

    #@33
    :catchall_33
    move-exception v0

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    throw v0
.end method

.method public a(Ljava/lang/String;IILcom/google/android/gms/drive/realtime/internal/j;)V
    .registers 10
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    if-eqz p4, :cond_31

    #@18
    invoke-interface {p4}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    :goto_1c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0xb

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    return-void

    #@31
    :cond_31
    const/4 v0, 0x0

    #@32
    goto :goto_1c

    #@33
    :catchall_33
    move-exception v0

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    throw v0
.end method

.method public a(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/g;)V
    .registers 10
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    if-eqz p3, :cond_38

    #@15
    const/4 v0, 0x1

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    :goto_1d
    if-eqz p4, :cond_45

    #@1f
    invoke-interface {p4}, Lcom/google/android/gms/drive/realtime/internal/g;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    :goto_23
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x10

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3d

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v0, 0x0

    #@39
    :try_start_39
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    #@3c
    goto :goto_1d

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0

    #@45
    :cond_45
    const/4 v0, 0x0

    #@46
    goto :goto_23
.end method

.method public a(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/j;)V
    .registers 10
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    if-eqz p3, :cond_38

    #@15
    const/4 v0, 0x1

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    :goto_1d
    if-eqz p4, :cond_45

    #@1f
    invoke-interface {p4}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    :goto_23
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0xf

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3d

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v0, 0x0

    #@39
    :try_start_39
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    #@3c
    goto :goto_1d

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0

    #@45
    :cond_45
    const/4 v0, 0x0

    #@46
    goto :goto_23
.end method

.method public a(Ljava/lang/String;ILcom/google/android/gms/drive/realtime/internal/o;)V
    .registers 9
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    if-eqz p3, :cond_2e

    #@15
    invoke-interface {p3}, Lcom/google/android/gms/drive/realtime/internal/o;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    :goto_19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1c

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    return-void

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    goto :goto_19

    #@30
    :catchall_30
    move-exception v0

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    throw v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/drive/realtime/internal/j;)V
    .registers 11
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    if-eqz p5, :cond_34

    #@1b
    invoke-interface {p5}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v0

    #@1f
    :goto_1f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x25

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    return-void

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    goto :goto_1f

    #@36
    :catchall_36
    move-exception v0

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V
    .registers 10
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    if-eqz p4, :cond_31

    #@18
    invoke-interface {p4}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    :goto_1c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0xa

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    return-void

    #@31
    :cond_31
    const/4 v0, 0x0

    #@32
    goto :goto_1c

    #@33
    :catchall_33
    move-exception v0

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/j;)V
    .registers 9
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_34

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p3, :cond_41

    #@1c
    invoke-interface {p3}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    :goto_20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@25
    const/4 v3, 0x6

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_39

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    return-void

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    :try_start_35
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    #@38
    goto :goto_1a

    #@39
    :catchall_39
    move-exception v0

    #@3a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    throw v0

    #@41
    :cond_41
    const/4 v0, 0x0

    #@42
    goto :goto_20
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/f;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x14

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2a

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/4 v3, 0x7

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
    goto :goto_16

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

.method public a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/k;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/k;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1b

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2a

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/l;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/4 v3, 0x5

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
    goto :goto_16

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

.method public a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/n;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2a

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/n;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/4 v3, 0x1

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
    goto :goto_16

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

.method public a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/o;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/o;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x26

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V
    .registers 9
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    if-eqz p3, :cond_2d

    #@15
    invoke-interface {p3}, Lcom/google/android/gms/drive/realtime/internal/f;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    :goto_19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/4 v3, 0x4

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-void

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_19

    #@2f
    :catchall_2f
    move-exception v0

    #@30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/g;)V
    .registers 9
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    if-eqz p3, :cond_2e

    #@15
    invoke-interface {p3}, Lcom/google/android/gms/drive/realtime/internal/g;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    :goto_19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x15

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    return-void

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    goto :goto_19

    #@30
    :catchall_30
    move-exception v0

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V
    .registers 9
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    if-eqz p3, :cond_2e

    #@15
    invoke-interface {p3}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    :goto_19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0xc

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    return-void

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    goto :goto_19

    #@30
    :catchall_30
    move-exception v0

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Lcom/google/android/gms/drive/realtime/internal/c;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/c;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x21

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public b(Lcom/google/android/gms/drive/realtime/internal/j;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/j;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x17

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public b(Lcom/google/android/gms/drive/realtime/internal/o;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/o;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x23

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/f;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0xd

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/l;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x8

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/n;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/n;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x9

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/o;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/o;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x27

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public c(Lcom/google/android/gms/drive/realtime/internal/c;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/c;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x18

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public c(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2b

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/drive/realtime/internal/l;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0xe

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-void

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_16

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

.method public d(Lcom/google/android/gms/drive/realtime/internal/c;)V
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/realtime/internal/c;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x19

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

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
    goto :goto_13

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method
