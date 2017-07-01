.class Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/IRoomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IRoomService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private kq:Landroid/os/IBinder;


# virtual methods
.method public G(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    :try_start_5
    const-string v2, "com.google.android.gms.games.internal.IRoomService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    if-eqz p1, :cond_1c

    #@c
    :goto_c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x3f0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    #@18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    return-void

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_c

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    throw v0
.end method

.method public a(Landroid/os/IBinder;Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;)V
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
    move-result-object v1

    #@5
    :try_start_5
    const-string v2, "com.google.android.gms.games.internal.IRoomService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    if-eqz p2, :cond_13

    #@f
    invoke-interface {p2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :cond_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v2, 0x3e9

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return-void

    #@23
    :catchall_23
    move-exception v0

    #@24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    throw v0
.end method

.method public a(Lcom/google/android/gms/common/data/DataHolder;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v2

    #@6
    :try_start_6
    const-string v3, "com.google.android.gms.games.internal.IRoomService"

    #@8
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    if-eqz p1, :cond_28

    #@d
    const/4 v3, 0x1

    #@e
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    :goto_15
    if-eqz p2, :cond_18

    #@17
    move v0, v1

    #@18
    :cond_18
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1d
    const/16 v1, 0x3ee

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x1

    #@21
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_2d

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    return-void

    #@28
    :cond_28
    const/4 v3, 0x0

    #@29
    :try_start_29
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    #@2c
    goto :goto_15

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method

.method public a([BLjava/lang/String;I)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@14
    const/16 v2, 0x3f1

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    #@1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    throw v0
.end method

.method public a([B[Ljava/lang/String;)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x3f2

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    #@18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    return-void

    #@1c
    :catchall_1c
    move-exception v0

    #@1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public be(Ljava/lang/String;)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3f5

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    #@15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    throw v0
.end method

.method public bf(Ljava/lang/String;)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3f6

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    #@15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@14
    const/16 v2, 0x3ec

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    #@1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    throw v0
.end method

.method public hF()V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@b
    const/16 v2, 0x3ea

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    #@12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1a
    throw v0
.end method

.method public hG()V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@b
    const/16 v2, 0x3eb

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    #@12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1a
    throw v0
.end method

.method public hH()V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@b
    const/16 v2, 0x3ed

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    #@12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1a
    throw v0
.end method

.method public hI()V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@b
    const/16 v2, 0x3ef

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    #@12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1a
    throw v0
.end method

.method public r(Ljava/lang/String;I)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x3f3

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    #@18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    return-void

    #@1c
    :catchall_1c
    move-exception v0

    #@1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    throw v0
.end method

.method public s(Ljava/lang/String;I)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x3f4

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    #@18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    return-void

    #@1c
    :catchall_1c
    move-exception v0

    #@1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    throw v0
.end method
