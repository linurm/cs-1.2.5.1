.class Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private kq:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    if-eqz p1, :cond_23

    #@b
    const/4 v0, 0x1

    #@c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1, v1, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    :goto_13
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v2, 0x400

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_28

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return-void

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    :try_start_24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    #@27
    goto :goto_13

    #@28
    :catchall_28
    move-exception v0

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/ConnectionInfo;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    if-eqz p1, :cond_20

    #@b
    const/4 v0, 0x1

    #@c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/games/internal/ConnectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x3fe

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    #@1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    return-void

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    :try_start_21
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    #@24
    goto :goto_13

    #@25
    :catchall_25
    move-exception v0

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    throw v0
.end method

.method public a(Ljava/lang/String;[BI)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@f
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@14
    const/16 v2, 0x3ea

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

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x3f0

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

.method public al(Landroid/os/IBinder;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3fd

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

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x3f1

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

.method public bg(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3eb

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

.method public bh(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3ec

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

.method public bi(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3ed

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

.method public bj(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3ee

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

.method public bk(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3ef

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

.method public bl(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3fa

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

.method public bm(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3fb

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

.method public c(IILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@14
    const/16 v2, 0x3e9

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

.method public c(Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

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

.method public ck(I)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3fc

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

.method public d(Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

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

.method public e(Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

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

.method public f(Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x3f5

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

.method public g(Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x3f9

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

.method public hJ()V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@b
    const/16 v2, 0x3f8

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

.method public hK()V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@b
    const/16 v2, 0x3ff

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

.method public onP2PConnected(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

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

.method public onP2PDisconnected(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0x3f7

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

.method public t(Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@11
    const/16 v2, 0x401

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
