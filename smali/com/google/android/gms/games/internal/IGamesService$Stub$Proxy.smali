.class Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesService$Stub;
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
    iput-object p1, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public E(Z)V
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
    const-string v3, "com.google.android.gms.games.internal.IGamesService"

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x13cc

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

.method public F(Z)V
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
    const-string v3, "com.google.android.gms.games.internal.IGamesService"

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x2efa

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[BLjava/lang/String;Ljava/lang/String;)I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_35

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x13a9

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_37

    #@2d
    move-result v0

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    return v0

    #@35
    :cond_35
    const/4 v0, 0x0

    #@36
    goto :goto_13

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0
.end method

.method public a(IIZ)Landroid/content/Intent;
    .registers 9
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
    const-string v3, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    if-eqz p3, :cond_17

    #@16
    const/4 v0, 0x1

    #@17
    :cond_17
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x2330

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@25
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3a

    #@2b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_3c

    #@33
    :goto_33
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    return-object v0

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    goto :goto_33

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    throw v0
.end method

.method public a(I[BILjava/lang/String;)Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x271c

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_39

    #@2a
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/content/Intent;
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3b

    #@32
    :goto_32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    return-object v0

    #@39
    :cond_39
    const/4 v0, 0x0

    #@3a
    goto :goto_32

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3d

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1f
    const/16 v3, 0x2725

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@28
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_4a

    #@2e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/content/Intent;
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_42

    #@36
    :goto_36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    return-object v0

    #@3d
    :cond_3d
    const/4 v0, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    #@41
    goto :goto_17

    #@42
    :catchall_42
    move-exception v0

    #@43
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    throw v0

    #@4a
    :cond_4a
    const/4 v0, 0x0

    #@4b
    goto :goto_36
.end method

.method public a(Lcom/google/android/gms/games/internal/request/GameRequestCluster;Ljava/lang/String;)Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3a

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x2726

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@25
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_47

    #@2b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_3f

    #@33
    :goto_33
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    return-object v0

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    :try_start_3b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    #@3e
    goto :goto_17

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    throw v0

    #@47
    :cond_47
    const/4 v0, 0x0

    #@48
    goto :goto_33
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3a

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x2333

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@25
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_47

    #@2b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_3f

    #@33
    :goto_33
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    return-object v0

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    :try_start_3b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    #@3e
    goto :goto_17

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    throw v0

    #@47
    :cond_47
    const/4 v0, 0x0

    #@48
    goto :goto_33
.end method

.method public a(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    if-eqz p2, :cond_40

    #@14
    move v2, v0

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    if-eqz p3, :cond_42

    #@1a
    :goto_1a
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v1, 0x2ee1

    #@24
    const/4 v2, 0x0

    #@25
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    #@2b
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_44

    #@31
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33
    invoke-interface {v0, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/content/Intent;
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_46

    #@39
    :goto_39
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@3c
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3f
    return-object v0

    #@40
    :cond_40
    move v2, v1

    #@41
    goto :goto_15

    #@42
    :cond_42
    move v0, v1

    #@43
    goto :goto_1a

    #@44
    :cond_44
    const/4 v0, 0x0

    #@45
    goto :goto_39

    #@46
    :catchall_46
    move-exception v0

    #@47
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@4a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4d
    throw v0
.end method

.method public a([I)Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x2efe

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_30

    #@21
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/content/Intent;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    #@29
    :goto_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    return-object v0

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_29

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

.method public a([Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    const/4 v0, 0x0

    #@e
    invoke-virtual {v1, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@11
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    if-eqz p4, :cond_4b

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p4, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    if-eqz p5, :cond_58

    #@23
    const/4 v0, 0x1

    #@24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    const/4 v0, 0x0

    #@28
    invoke-virtual {p5, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2d
    const/16 v3, 0x2347

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@36
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_5d

    #@3c
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/content/Intent;
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_50

    #@44
    :goto_44
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    return-object v0

    #@4b
    :cond_4b
    const/4 v0, 0x0

    #@4c
    :try_start_4c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    #@4f
    goto :goto_21

    #@50
    :catchall_50
    move-exception v0

    #@51
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@57
    throw v0

    #@58
    :cond_58
    const/4 v0, 0x0

    #@59
    :try_start_59
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_50

    #@5c
    goto :goto_2b

    #@5d
    :cond_5d
    const/4 v0, 0x0

    #@5e
    goto :goto_44
.end method

.method public a(JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x1f53

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

.method public a(Landroid/os/IBinder;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    if-eqz p2, :cond_2c

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x138d

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_31

    #@25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    return-void

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    :try_start_2d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    #@30
    goto :goto_1a

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

.method public a(Lcom/google/android/gms/drive/Contents;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_29

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/Contents;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x2ef3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2e

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    return-void

    #@29
    :cond_29
    const/4 v0, 0x0

    #@2a
    :try_start_2a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    #@2d
    goto :goto_17

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x138a

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2720

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;III)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x2719

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IIZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3b

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p4, :cond_3d

    #@20
    move v2, v0

    #@21
    :goto_21
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    if-eqz p5, :cond_3f

    #@26
    :goto_26
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x13b4

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_41

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v2, 0x0

    #@3c
    goto :goto_15

    #@3d
    :cond_3d
    move v2, v1

    #@3e
    goto :goto_21

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_26

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;II[Ljava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1f
    if-eqz p5, :cond_3d

    #@21
    const/4 v0, 0x1

    #@22
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    const/4 v0, 0x0

    #@26
    invoke-virtual {p5, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v3, 0x1f44

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    goto :goto_13

    #@3d
    :cond_3d
    const/4 v0, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    #@41
    goto :goto_29

    #@42
    :catchall_42
    move-exception v0

    #@43
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_38

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    if-eqz p3, :cond_3a

    #@1d
    move v2, v0

    #@1e
    :goto_1e
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    if-eqz p4, :cond_3c

    #@23
    :goto_23
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v1, 0x1397

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_3e

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v2, 0x0

    #@39
    goto :goto_15

    #@3a
    :cond_3a
    move v2, v1

    #@3b
    goto :goto_1e

    #@3c
    :cond_3c
    move v0, v1

    #@3d
    goto :goto_23

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I[I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x2722

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x13c2

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1f52

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/Bundle;II)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    if-eqz p2, :cond_3a

    #@18
    const/4 v0, 0x1

    #@19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    :goto_20
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x139d

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3f

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
    goto :goto_13

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    :try_start_3b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    #@3e
    goto :goto_20

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_45

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@21
    if-eqz p5, :cond_47

    #@23
    const/4 v2, 0x1

    #@24
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    const/4 v2, 0x0

    #@28
    invoke-virtual {p5, v3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    :goto_2b
    if-eqz p6, :cond_54

    #@2d
    :goto_2d
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    invoke-virtual {v3, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@33
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@35
    const/16 v1, 0x13a6

    #@37
    const/4 v2, 0x0

    #@38
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3b
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_4c

    #@3e
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@44
    return-void

    #@45
    :cond_45
    const/4 v2, 0x0

    #@46
    goto :goto_15

    #@47
    :cond_47
    const/4 v2, 0x0

    #@48
    :try_start_48
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    #@4b
    goto :goto_2b

    #@4c
    :catchall_4c
    move-exception v0

    #@4d
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@50
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@53
    throw v0

    #@54
    :cond_54
    move v0, v1

    #@55
    goto :goto_2d
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
    .registers 12
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_38

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    if-eqz p4, :cond_20

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    invoke-virtual {v2, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v1, 0x13a7

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_3a

    #@31
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v1, 0x0

    #@39
    goto :goto_14

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1396

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x271b

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V
    .registers 12
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3b

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    if-eqz p6, :cond_26

    #@25
    const/4 v0, 0x1

    #@26
    :cond_26
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x139b

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_3d

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v1, 0x0

    #@3c
    goto :goto_14

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1f
    if-eqz p5, :cond_3d

    #@21
    const/4 v0, 0x1

    #@22
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    const/4 v0, 0x0

    #@26
    invoke-virtual {p5, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v3, 0x13a1

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    goto :goto_13

    #@3d
    :cond_3d
    const/4 v0, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    #@41
    goto :goto_29

    #@42
    :catchall_42
    move-exception v0

    #@43
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V
    .registers 10
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_35

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    if-eqz p4, :cond_20

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@25
    const/16 v1, 0x1f57

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_37

    #@2e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    return-void

    #@35
    :cond_35
    const/4 v1, 0x0

    #@36
    goto :goto_14

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3b

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p4, :cond_3d

    #@20
    move v2, v0

    #@21
    :goto_21
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    if-eqz p5, :cond_3f

    #@26
    :goto_26
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x13b5

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_41

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v2, 0x0

    #@3c
    goto :goto_15

    #@3d
    :cond_3d
    move v2, v1

    #@3e
    goto :goto_21

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_26

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_47

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p4, :cond_49

    #@20
    move v2, v0

    #@21
    :goto_21
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    if-eqz p5, :cond_4b

    #@26
    move v2, v0

    #@27
    :goto_27
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    if-eqz p6, :cond_4d

    #@2c
    move v2, v0

    #@2d
    :goto_2d
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    if-eqz p7, :cond_4f

    #@32
    :goto_32
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@37
    const/16 v1, 0x1965

    #@39
    const/4 v2, 0x0

    #@3a
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3d
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_51

    #@40
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@43
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@46
    return-void

    #@47
    :cond_47
    const/4 v2, 0x0

    #@48
    goto :goto_15

    #@49
    :cond_49
    move v2, v1

    #@4a
    goto :goto_21

    #@4b
    :cond_4b
    move v2, v1

    #@4c
    goto :goto_27

    #@4d
    :cond_4d
    move v2, v1

    #@4e
    goto :goto_2d

    #@4f
    :cond_4f
    move v0, v1

    #@50
    goto :goto_32

    #@51
    :catchall_51
    move-exception v0

    #@52
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@55
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@58
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I[I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x2723

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1398

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@1c
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x1b5a

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    if-eqz p4, :cond_3a

    #@1e
    const/4 v0, 0x1

    #@1f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    const/4 v0, 0x0

    #@23
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    :goto_26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x139f

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3f

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
    goto :goto_13

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    :try_start_3b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    #@3e
    goto :goto_26

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3f

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    if-eqz p3, :cond_41

    #@1b
    const/4 v0, 0x1

    #@1c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    const/4 v0, 0x0

    #@20
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->writeToParcel(Landroid/os/Parcel;I)V

    #@23
    :goto_23
    if-eqz p4, :cond_4e

    #@25
    const/4 v0, 0x1

    #@26
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    const/4 v0, 0x0

    #@2a
    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/drive/Contents;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2f
    const/16 v3, 0x2ee7

    #@31
    const/4 v4, 0x0

    #@32
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_46

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    return-void

    #@3f
    :cond_3f
    const/4 v0, 0x0

    #@40
    goto :goto_13

    #@41
    :cond_41
    const/4 v0, 0x0

    #@42
    :try_start_42
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    #@45
    goto :goto_23

    #@46
    :catchall_46
    move-exception v0

    #@47
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4d
    throw v0

    #@4e
    :cond_4e
    const/4 v0, 0x0

    #@4f
    :try_start_4f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_46

    #@52
    goto :goto_2d
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x13ae

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;II)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_34

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x1f41

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x271a

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_39

    #@30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    return-void

    #@37
    :cond_37
    const/4 v0, 0x0

    #@38
    goto :goto_13

    #@39
    :catchall_39
    move-exception v0

    #@3a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 13
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3e

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    if-eqz p7, :cond_29

    #@28
    const/4 v0, 0x1

    #@29
    :cond_29
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2e
    const/16 v1, 0x13af

    #@30
    const/4 v4, 0x0

    #@31
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_40

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3d
    return-void

    #@3e
    :cond_3e
    const/4 v1, 0x0

    #@3f
    goto :goto_14

    #@40
    :catchall_40
    move-exception v0

    #@41
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@44
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@47
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3e

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    if-eqz p5, :cond_40

    #@23
    move v2, v0

    #@24
    :goto_24
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    if-eqz p6, :cond_42

    #@29
    :goto_29
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2e
    const/16 v1, 0x2344

    #@30
    const/4 v2, 0x0

    #@31
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_44

    #@37
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3d
    return-void

    #@3e
    :cond_3e
    const/4 v2, 0x0

    #@3f
    goto :goto_15

    #@40
    :cond_40
    move v2, v1

    #@41
    goto :goto_24

    #@42
    :cond_42
    move v0, v1

    #@43
    goto :goto_29

    #@44
    :catchall_44
    move-exception v0

    #@45
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@48
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4b
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_42

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    if-eqz p4, :cond_44

    #@1e
    const/4 v0, 0x1

    #@1f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    const/4 v0, 0x0

    #@23
    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    :goto_26
    if-eqz p5, :cond_51

    #@28
    const/4 v0, 0x1

    #@29
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    const/4 v0, 0x0

    #@2d
    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/drive/Contents;->writeToParcel(Landroid/os/Parcel;I)V

    #@30
    :goto_30
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@32
    const/16 v3, 0x2f01

    #@34
    const/4 v4, 0x0

    #@35
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_49

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    return-void

    #@42
    :cond_42
    const/4 v0, 0x0

    #@43
    goto :goto_13

    #@44
    :cond_44
    const/4 v0, 0x0

    #@45
    :try_start_45
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    #@48
    goto :goto_26

    #@49
    :catchall_49
    move-exception v0

    #@4a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@50
    throw v0

    #@51
    :cond_51
    const/4 v0, 0x0

    #@52
    :try_start_52
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_49

    #@55
    goto :goto_30
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_35

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    if-eqz p4, :cond_20

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@25
    const/16 v1, 0x1772

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_37

    #@2e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    return-void

    #@35
    :cond_35
    const/4 v1, 0x0

    #@36
    goto :goto_14

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[IIZ)V
    .registers 12
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3b

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    #@20
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    if-eqz p6, :cond_26

    #@25
    const/4 v0, 0x1

    #@26
    :cond_26
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x2eef

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_3d

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v1, 0x0

    #@3c
    goto :goto_14

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x2718

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 11
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_38

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@20
    if-eqz p5, :cond_23

    #@22
    const/4 v0, 0x1

    #@23
    :cond_23
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v1, 0x2efc

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_3a

    #@31
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v1, 0x0

    #@39
    goto :goto_14

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    .registers 9
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_32

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    if-eqz p3, :cond_1d

    #@1c
    const/4 v0, 0x1

    #@1d
    :cond_1d
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v1, 0x13be

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v1, 0x0

    #@33
    goto :goto_14

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_35

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    const/4 v0, 0x0

    #@20
    invoke-virtual {v1, p5, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@25
    const/16 v3, 0x1f47

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_37

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    return-void

    #@35
    :cond_35
    const/4 v0, 0x0

    #@36
    goto :goto_13

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_32

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {v1, p4, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x1f48

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_34

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
    goto :goto_13

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1f51

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[Ljava/lang/String;I[BI)V
    .registers 12
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    #@22
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x2715

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_39

    #@30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    return-void

    #@37
    :cond_37
    const/4 v0, 0x0

    #@38
    goto :goto_13

    #@39
    :catchall_39
    move-exception v0

    #@3a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_2f

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_1a

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_1a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1f
    const/16 v1, 0x1771

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_31

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    return-void

    #@2f
    :cond_2f
    const/4 v1, 0x0

    #@30
    goto :goto_14

    #@31
    :catchall_31
    move-exception v0

    #@32
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZLandroid/os/Bundle;)V
    .registers 9
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
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3a

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    if-eqz p2, :cond_1b

    #@1a
    move v0, v1

    #@1b
    :cond_1b
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p3, :cond_3c

    #@20
    const/4 v0, 0x1

    #@21
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    const/4 v0, 0x0

    #@25
    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    :goto_28
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2a
    const/16 v1, 0x13c7

    #@2c
    const/4 v2, 0x0

    #@2d
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_41

    #@33
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@39
    return-void

    #@3a
    :cond_3a
    const/4 v2, 0x0

    #@3b
    goto :goto_15

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    :try_start_3d
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    #@40
    goto :goto_28

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z[Ljava/lang/String;)V
    .registers 9
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_32

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_1a

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_1a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v1, 0x2eff

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v1, 0x0

    #@33
    goto :goto_14

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1f43

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[IIZ)V
    .registers 10
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_35

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    if-eqz p4, :cond_20

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@25
    const/16 v1, 0x2eea

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_37

    #@2e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    return-void

    #@35
    :cond_35
    const/4 v1, 0x0

    #@36
    goto :goto_14

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0
.end method

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2716

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;Z)V
    .registers 9
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_32

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1a
    if-eqz p3, :cond_1d

    #@1c
    const/4 v0, 0x1

    #@1d
    :cond_1d
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v1, 0x2efd

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v1, 0x0

    #@33
    goto :goto_14

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    throw v0
.end method

.method public aR(Ljava/lang/String;)Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x232c

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_30

    #@21
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/content/Intent;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    #@29
    :goto_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    return-object v0

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_29

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

.method public aU(Ljava/lang/String;)Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x2f02

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_30

    #@21
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/content/Intent;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    #@29
    :goto_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    return-object v0

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_29

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

.method public aV(Ljava/lang/String;)Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x13c8

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

.method public aW(Ljava/lang/String;)Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x13ab

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

.method public aX(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x13ba

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

.method public aY(Ljava/lang/String;)I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x13c4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    #@1e
    move-result v0

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    return v0

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

.method public aZ(Ljava/lang/String;)Landroid/net/Uri;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x13ca

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_30

    #@21
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/net/Uri;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    #@29
    :goto_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    return-object v0

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_29

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

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b([BLjava/lang/String;[Ljava/lang/String;)I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13aa

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    #@24
    move-result v0

    #@25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    return v0

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

.method public b(IIZ)Landroid/content/Intent;
    .registers 9
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
    const-string v3, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    if-eqz p3, :cond_17

    #@16
    const/4 v0, 0x1

    #@17
    :cond_17
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x2331

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@25
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3a

    #@2b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_3c

    #@33
    :goto_33
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    return-object v0

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    goto :goto_33

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    throw v0
.end method

.method public b(JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x1f55

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

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x1399

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

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_38

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    if-eqz p3, :cond_3a

    #@1d
    move v2, v0

    #@1e
    :goto_1e
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    if-eqz p4, :cond_3c

    #@23
    :goto_23
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v1, 0x13b6

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_3e

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v2, 0x0

    #@39
    goto :goto_15

    #@3a
    :cond_3a
    move v2, v1

    #@3b
    goto :goto_1e

    #@3c
    :cond_3c
    move v0, v1

    #@3d
    goto :goto_23

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1f4c

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
    goto :goto_13

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

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1f54

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

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x139a

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
    goto :goto_13

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

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x2ef7

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

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V
    .registers 12
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3b

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    if-eqz p6, :cond_26

    #@25
    const/4 v0, 0x1

    #@26
    :cond_26
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x139c

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_3d

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v1, 0x0

    #@3c
    goto :goto_14

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1f
    if-eqz p5, :cond_3d

    #@21
    const/4 v0, 0x1

    #@22
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    const/4 v0, 0x0

    #@26
    invoke-virtual {p5, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v3, 0x1b5b

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    goto :goto_13

    #@3d
    :cond_3d
    const/4 v0, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    #@41
    goto :goto_29

    #@42
    :catchall_42
    move-exception v0

    #@43
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V
    .registers 10
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_35

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    if-eqz p4, :cond_20

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@25
    const/16 v1, 0x2721

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_37

    #@2e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    return-void

    #@35
    :cond_35
    const/4 v1, 0x0

    #@36
    goto :goto_14

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3b

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p4, :cond_3d

    #@20
    move v2, v0

    #@21
    :goto_21
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    if-eqz p5, :cond_3f

    #@26
    :goto_26
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x157d

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_41

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v2, 0x0

    #@3c
    goto :goto_15

    #@3d
    :cond_3d
    move v2, v1

    #@3e
    goto :goto_21

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_26

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    if-eqz p4, :cond_3a

    #@1e
    const/4 v0, 0x1

    #@1f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    const/4 v0, 0x0

    #@23
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    :goto_26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x13a0

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3f

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
    goto :goto_13

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    :try_start_3b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    #@3e
    goto :goto_26

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x13b1

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

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 13
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3e

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    if-eqz p7, :cond_29

    #@28
    const/4 v0, 0x1

    #@29
    :cond_29
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2e
    const/16 v1, 0x13b0

    #@30
    const/4 v4, 0x0

    #@31
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_40

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3d
    return-void

    #@3e
    :cond_3e
    const/4 v1, 0x0

    #@3f
    goto :goto_14

    #@40
    :catchall_40
    move-exception v0

    #@41
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@44
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@47
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3e

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    if-eqz p5, :cond_40

    #@23
    move v2, v0

    #@24
    :goto_24
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    if-eqz p6, :cond_42

    #@29
    :goto_29
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2e
    const/16 v1, 0x2ef2

    #@30
    const/4 v2, 0x0

    #@31
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_44

    #@37
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3d
    return-void

    #@3e
    :cond_3e
    const/4 v2, 0x0

    #@3f
    goto :goto_15

    #@40
    :cond_40
    move v2, v1

    #@41
    goto :goto_24

    #@42
    :cond_42
    move v0, v1

    #@43
    goto :goto_29

    #@44
    :catchall_44
    move-exception v0

    #@45
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@48
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4b
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_35

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    if-eqz p4, :cond_20

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@25
    const/16 v1, 0x196a

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_37

    #@2e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    return-void

    #@35
    :cond_35
    const/4 v1, 0x0

    #@36
    goto :goto_14

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    .registers 9
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_32

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    if-eqz p3, :cond_1d

    #@1c
    const/4 v0, 0x1

    #@1d
    :cond_1d
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v1, 0x1966

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v1, 0x0

    #@33
    goto :goto_14

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_2f

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_1a

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_1a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1f
    const/16 v1, 0x1967

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_31

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    return-void

    #@2f
    :cond_2f
    const/4 v1, 0x0

    #@30
    goto :goto_14

    #@31
    :catchall_31
    move-exception v0

    #@32
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    throw v0
.end method

.method public b(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2717

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
    goto :goto_13

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

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13bb

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    return-void

    #@28
    :catchall_28
    move-exception v0

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    throw v0
.end method

.method public ba(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x1f42

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

.method public bb(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x2346

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_30

    #@21
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    #@29
    :goto_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    return-object v0

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_29

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

.method public c(JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x2714

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

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x139e

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

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_38

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    if-eqz p3, :cond_3a

    #@1d
    move v2, v0

    #@1e
    :goto_1e
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    if-eqz p4, :cond_3c

    #@23
    :goto_23
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v1, 0x13b8

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_3e

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v2, 0x0

    #@39
    goto :goto_15

    #@3a
    :cond_3a
    move v2, v1

    #@3b
    goto :goto_1e

    #@3c
    :cond_3c
    move v0, v1

    #@3d
    goto :goto_23

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2711

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
    goto :goto_13

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

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x2713

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

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x13a8

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
    goto :goto_13

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

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x2ef8

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

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3b

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p4, :cond_3d

    #@20
    move v2, v0

    #@21
    :goto_21
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    if-eqz p5, :cond_3f

    #@26
    :goto_26
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x2329

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_41

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v2, 0x0

    #@3c
    goto :goto_15

    #@3d
    :cond_3d
    move v2, v1

    #@3e
    goto :goto_21

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_26

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0
.end method

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1f4b

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

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_35

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    if-eqz p4, :cond_20

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_20
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@25
    const/16 v1, 0x2ee3

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_37

    #@2e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    return-void

    #@35
    :cond_35
    const/4 v1, 0x0

    #@36
    goto :goto_14

    #@37
    :catchall_37
    move-exception v0

    #@38
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    throw v0
.end method

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    .registers 9
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_32

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    if-eqz p3, :cond_1d

    #@1c
    const/4 v0, 0x1

    #@1d
    :cond_1d
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v1, 0x1968

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v1, 0x0

    #@33
    goto :goto_14

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    throw v0
.end method

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_2f

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_1a

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_1a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1f
    const/16 v1, 0x1f5b

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_31

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    return-void

    #@2f
    :cond_2f
    const/4 v1, 0x0

    #@30
    goto :goto_14

    #@31
    :catchall_31
    move-exception v0

    #@32
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    throw v0
.end method

.method public c(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2724

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
    goto :goto_13

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

.method public c(Ljava/lang/String;Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x1f5a

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    return-void

    #@28
    :catchall_28
    move-exception v0

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    throw v0
.end method

.method public ch(I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x13ac

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

.method public d(JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x2eee

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

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13a2

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

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_38

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    if-eqz p3, :cond_3a

    #@1d
    move v2, v0

    #@1e
    :goto_1e
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    if-eqz p4, :cond_3c

    #@23
    :goto_23
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v1, 0x1773

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_3e

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v2, 0x0

    #@39
    goto :goto_15

    #@3a
    :cond_3a
    move v2, v1

    #@3b
    goto :goto_1e

    #@3c
    :cond_3c
    move v0, v1

    #@3d
    goto :goto_23

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2eeb

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
    goto :goto_13

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

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x2eed

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

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x13ad

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
    goto :goto_13

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

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3b

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p4, :cond_3d

    #@20
    move v2, v0

    #@21
    :goto_21
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    if-eqz p5, :cond_3f

    #@26
    :goto_26
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x233c

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_41

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v2, 0x0

    #@3c
    goto :goto_15

    #@3d
    :cond_3d
    move v2, v1

    #@3e
    goto :goto_21

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_26

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0
.end method

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1f4f

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

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    .registers 9
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_32

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    if-eqz p3, :cond_1d

    #@1c
    const/4 v0, 0x1

    #@1d
    :cond_1d
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v1, 0x1969

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v1, 0x0

    #@33
    goto :goto_14

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    throw v0
.end method

.method public d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_2f

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_1a

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_1a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1f
    const/16 v1, 0x2ee2

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_31

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    return-void

    #@2f
    :cond_2f
    const/4 v1, 0x0

    #@30
    goto :goto_14

    #@31
    :catchall_31
    move-exception v0

    #@32
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    throw v0
.end method

.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13a3

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

.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_38

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    if-eqz p3, :cond_3a

    #@1d
    move v2, v0

    #@1e
    :goto_1e
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    if-eqz p4, :cond_3c

    #@23
    :goto_23
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@28
    const/16 v1, 0x1774

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_3e

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    return-void

    #@38
    :cond_38
    const/4 v2, 0x0

    #@39
    goto :goto_15

    #@3a
    :cond_3a
    move v2, v1

    #@3b
    goto :goto_1e

    #@3c
    :cond_3c
    move v0, v1

    #@3d
    goto :goto_23

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x13b2

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
    goto :goto_13

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

.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3b

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p4, :cond_3d

    #@20
    move v2, v0

    #@21
    :goto_21
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    if-eqz p5, :cond_3f

    #@26
    :goto_26
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x2ef5

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_41

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v2, 0x0

    #@3c
    goto :goto_15

    #@3d
    :cond_3d
    move v2, v1

    #@3e
    goto :goto_21

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_26

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0
.end method

.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1f50

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

.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    .registers 9
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_32

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    if-eqz p3, :cond_1d

    #@1c
    const/4 v0, 0x1

    #@1d
    :cond_1d
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@22
    const/16 v1, 0x2ee6

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    const/4 v1, 0x0

    #@33
    goto :goto_14

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    throw v0
.end method

.method public e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_2f

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_1a

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_1a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1f
    const/16 v1, 0x2f00

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_31

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    return-void

    #@2f
    :cond_2f
    const/4 v1, 0x0

    #@30
    goto :goto_14

    #@31
    :catchall_31
    move-exception v0

    #@32
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    throw v0
.end method

.method public ef()Landroid/os/Bundle;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x138c

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/os/Bundle;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13b7

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

.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x13b3

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
    goto :goto_13

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

.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.games.internal.IGamesService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_3b

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    if-eqz p4, :cond_3d

    #@20
    move v2, v0

    #@21
    :goto_21
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    if-eqz p5, :cond_3f

    #@26
    :goto_26
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v1, 0x2ef6

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_41

    #@34
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v2, 0x0

    #@3c
    goto :goto_15

    #@3d
    :cond_3d
    move v2, v1

    #@3e
    goto :goto_21

    #@3f
    :cond_3f
    move v0, v1

    #@40
    goto :goto_26

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0
.end method

.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x2ee9

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

.method public f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_2f

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_1a

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_1a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1f
    const/16 v1, 0x2ef0

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_31

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    return-void

    #@2f
    :cond_2f
    const/4 v1, 0x0

    #@30
    goto :goto_14

    #@31
    :catchall_31
    move-exception v0

    #@32
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    throw v0
.end method

.method public g(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13b9

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

.method public g(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x13bc

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
    goto :goto_13

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

.method public gZ()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x138f

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return-object v0

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

.method public h(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x196b

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_44

    #@28
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

    #@30
    :goto_30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    return-object v0

    #@37
    :cond_37
    const/4 v0, 0x0

    #@38
    :try_start_38
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    #@3b
    goto :goto_17

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    throw v0

    #@44
    :cond_44
    const/4 v0, 0x0

    #@45
    goto :goto_30
.end method

.method public h(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
    .registers 9
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
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3a

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    iget-object v1, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0x13bd

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@25
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_33

    #@2b
    sget-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_3c

    #@33
    :cond_33
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@39
    return-object v0

    #@3a
    :cond_3a
    move-object v1, v0

    #@3b
    goto :goto_14

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@43
    throw v0
.end method

.method public h(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13c0

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

.method public hA()Lcom/google/android/gms/common/data/DataHolder;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x157e

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2b

    #@1e
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2d

    #@23
    move-result-object v0

    #@24
    :goto_24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-object v0

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_24

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

.method public hB()V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x1f56

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    throw v0
.end method

.method public hC()Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x2335

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public hD()V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x2afa

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    throw v0
.end method

.method public hE()Z
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
    const-string v3, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2ef9

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

.method public ha()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x1394

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return-object v0

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

.method public hd()Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x232b

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public he()Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x232d

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public hf()Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x232e

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public hg()Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x232f

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public hl()Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x2332

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public hm()Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x2334

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public hn()I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x233b

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

.method public ho()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x138b

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    return-object v0

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

.method public hp()I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x1f58

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

.method public hq()Landroid/content/Intent;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x271f

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2d

    #@1e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    #@26
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    return-object v0

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_26

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

.method public hr()I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x271d

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

.method public hs()I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x2727

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

.method public ht()I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x2f03

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

.method public hu()I
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x2f04

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

.method public hw()V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x138e

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    throw v0
.end method

.method public hy()Lcom/google/android/gms/common/data/DataHolder;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x1395

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2b

    #@1e
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2d

    #@23
    move-result-object v0

    #@24
    :goto_24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return-object v0

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_24

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

.method public hz()Z
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
    const-string v3, "com.google.android.gms.games.internal.IGamesService"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x13cb

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

.method public i(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13c6

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

.method public i(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x13c5

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
    goto :goto_13

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

.method public j(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x2af9

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

.method public j(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x13c1

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
    goto :goto_13

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

.method public k(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1b59

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
    goto :goto_13

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

.method public l(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1f45

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
    goto :goto_13

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

.method public l(Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x2ef1

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

.method public m(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1f46

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
    goto :goto_13

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

.method public m(Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x13a5

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

.method public m(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x13c9

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

.method public n(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1f49

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
    goto :goto_13

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

.method public n(Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x13a4

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

.method public n(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x1f59

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

.method public o(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1f4a

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
    goto :goto_13

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

.method public p(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x1f4e

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
    goto :goto_13

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

.method public p(Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x13bf

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

.method public q(J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x1389

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

.method public q(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x232a

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
    goto :goto_13

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

.method public q(Ljava/lang/String;I)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@15
    const/16 v3, 0x271e

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

.method public r(J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x13c3

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

.method public r(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2ef4

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
    goto :goto_13

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

.method public s(J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x1f4d

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

.method public s(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2ee5

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
    goto :goto_13

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

.method public t(J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x2712

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

.method public t(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2efb

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
    goto :goto_13

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

.method public u(J)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x2eec

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

.method public u(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/IGamesCallbacks;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2ee8

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
    goto :goto_13

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
