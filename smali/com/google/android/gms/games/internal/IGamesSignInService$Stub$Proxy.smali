.class Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesSignInService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private kq:Landroid/os/IBinder;


# virtual methods
.method public a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x138e

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x138d

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x138c

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_34

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x138b

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
    goto :goto_13

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

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x138f

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
    goto :goto_13

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

.method public b(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x1390

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
    goto :goto_13

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

.method public bc(Ljava/lang/String;)Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x1389

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
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

.method public bd(Ljava/lang/String;)Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x138a

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
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

.method public f(Ljava/lang/String;Z)Ljava/lang/String;
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    :try_start_9
    const-string v3, "com.google.android.gms.games.internal.IGamesSignInService"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    if-eqz p2, :cond_14

    #@13
    const/4 v0, 0x1

    #@14
    :cond_14
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x1391

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2d

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

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

.method public o(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x2329

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    return-void

    #@25
    :catchall_25
    move-exception v0

    #@26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    throw v0
.end method
