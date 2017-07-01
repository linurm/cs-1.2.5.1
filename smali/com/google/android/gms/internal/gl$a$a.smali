.class Lcom/google/android/gms/internal/gl$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gl$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(DDZ)V
    .registers 11
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
    const-string v2, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    #@d
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    #@10
    if-eqz p5, :cond_21

    #@12
    :goto_12
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@17
    const/4 v2, 0x7

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_23

    #@1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    return-void

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    goto :goto_12

    #@23
    :catchall_23
    move-exception v0

    #@24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    if-eqz p2, :cond_23

    #@e
    const/4 v0, 0x1

    #@f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    const/4 v0, 0x0

    #@13
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/cast/LaunchOptions;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    :goto_16
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v2, 0xd

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
    goto :goto_16

    #@28
    :catchall_28
    move-exception v0

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@14
    const/16 v2, 0x9

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

.method public a(Ljava/lang/String;[BJ)V
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
    :try_start_4
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@f
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@14
    const/16 v2, 0xa

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

.method public a(ZDZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v3

    #@6
    :try_start_6
    const-string v2, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@8
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    if-eqz p1, :cond_26

    #@d
    move v2, v0

    #@e
    :goto_e
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    invoke-virtual {v3, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    #@14
    if-eqz p4, :cond_28

    #@16
    :goto_16
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v1, 0x8

    #@1d
    const/4 v2, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v0, v1, v3, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_2a

    #@22
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@25
    return-void

    #@26
    :cond_26
    move v2, v1

    #@27
    goto :goto_e

    #@28
    :cond_28
    move v0, v1

    #@29
    goto :goto_16

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    throw v0
.end method

.method public am(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@e
    const/4 v2, 0x5

    #@f
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x1

    #@11
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    #@14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@17
    return-void

    #@18
    :catchall_18
    move-exception v0

    #@19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    throw v0
.end method

.method public an(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0xb

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

.method public ao(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@e
    const/16 v2, 0xc

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
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public disconnect()V
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@b
    const/4 v2, 0x1

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x1

    #@e
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    #@11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@19
    throw v0
.end method

.method public e(Ljava/lang/String;Z)V
    .registers 8
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
    const-string v2, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    if-eqz p2, :cond_1e

    #@f
    :goto_f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@14
    const/4 v2, 0x2

    #@15
    const/4 v3, 0x0

    #@16
    const/4 v4, 0x1

    #@17
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    #@1a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1d
    return-void

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_f

    #@20
    :catchall_20
    move-exception v0

    #@21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    throw v0
.end method

.method public eg()V
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@b
    const/4 v2, 0x6

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x1

    #@e
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    #@11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@19
    throw v0
.end method

.method public ep()V
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@b
    const/4 v2, 0x4

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x1

    #@e
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    #@11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@19
    throw v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/gl$a$a;->kq:Landroid/os/IBinder;

    #@11
    const/4 v2, 0x3

    #@12
    const/4 v3, 0x0

    #@13
    const/4 v4, 0x1

    #@14
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    #@17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    throw v0
.end method
