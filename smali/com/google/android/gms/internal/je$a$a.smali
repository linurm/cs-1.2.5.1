.class Lcom/google/android/gms/internal/je$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/je;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/je$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(JZLandroid/app/PendingIntent;)V
    .registers 10
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v3

    #@a
    :try_start_a
    const-string v4, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    if-eqz p3, :cond_15

    #@14
    move v0, v1

    #@15
    :cond_15
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    if-eqz p4, :cond_33

    #@1a
    const/4 v0, 0x1

    #@1b
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    const/4 v0, 0x0

    #@1f
    invoke-virtual {p4, v2, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@24
    const/4 v1, 0x5

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_38

    #@2c
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@32
    return-void

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    :try_start_34
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    #@37
    goto :goto_22

    #@38
    :catchall_38
    move-exception v0

    #@39
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3f
    throw v0
.end method

.method public a(Landroid/app/PendingIntent;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

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
    invoke-virtual {p1, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xb

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

.method public a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_34

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_41

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/internal/jd;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@25
    const/4 v3, 0x2

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
    goto :goto_17

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
    goto :goto_1d
.end method

.method public a(Landroid/location/Location;I)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2c

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x1a

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
    goto :goto_17

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

.method public a(Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2a

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/jd;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/4 v3, 0x4

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

.method public a(Lcom/google/android/gms/internal/jk;Lcom/google/android/gms/internal/ka;Landroid/app/PendingIntent;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/jk;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_4a

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    if-eqz p3, :cond_4f

    #@23
    const/4 v0, 0x1

    #@24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    const/4 v0, 0x0

    #@28
    invoke-virtual {p3, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@2d
    const/16 v3, 0x30

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_42

    #@36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    return-void

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
    :try_start_4b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    goto :goto_21

    #@4f
    :cond_4f
    const/4 v0, 0x0

    #@50
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_42

    #@53
    goto :goto_2b
.end method

.method public a(Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3c

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/jm;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_49

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    if-eqz p3, :cond_4e

    #@23
    invoke-interface {p3}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v0

    #@27
    :goto_27
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2a
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@2c
    const/16 v3, 0x11

    #@2e
    const/4 v4, 0x0

    #@2f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_41

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    return-void

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    :try_start_3d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    #@40
    goto :goto_17

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0

    #@49
    :cond_49
    const/4 v0, 0x0

    #@4a
    :try_start_4a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_41

    #@4d
    goto :goto_21

    #@4e
    :cond_4e
    const/4 v0, 0x0

    #@4f
    goto :goto_27
.end method

.method public a(Lcom/google/android/gms/internal/jo;Lcom/google/android/gms/internal/ka;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    if-eqz p1, :cond_2a

    #@b
    const/4 v0, 0x1

    #@c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/jo;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    :goto_13
    if-eqz p2, :cond_34

    #@15
    const/4 v0, 0x1

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@1f
    const/16 v2, 0x19

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2f

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    return-void

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    :try_start_2b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    #@2e
    goto :goto_13

    #@2f
    :catchall_2f
    move-exception v0

    #@30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    throw v0

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    :try_start_35
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_2f

    #@38
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/internal/jq;Lcom/google/android/gms/internal/ka;Landroid/app/PendingIntent;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/jq;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_4a

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    if-eqz p3, :cond_4f

    #@23
    const/4 v0, 0x1

    #@24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    const/4 v0, 0x0

    #@28
    invoke-virtual {p3, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@2d
    const/16 v3, 0x12

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_42

    #@36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    return-void

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
    :try_start_4b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    goto :goto_21

    #@4f
    :cond_4f
    const/4 v0, 0x0

    #@50
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_42

    #@53
    goto :goto_2b
.end method

.method public a(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3c

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ju;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_49

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    if-eqz p3, :cond_4e

    #@23
    invoke-interface {p3}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v0

    #@27
    :goto_27
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2a
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@2c
    const/16 v3, 0x2e

    #@2e
    const/4 v4, 0x0

    #@2f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_41

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    return-void

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    :try_start_3d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    #@40
    goto :goto_17

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    throw v0

    #@49
    :cond_49
    const/4 v0, 0x0

    #@4a
    :try_start_4a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_41

    #@4d
    goto :goto_21

    #@4e
    :cond_4e
    const/4 v0, 0x0

    #@4f
    goto :goto_27
.end method

.method public a(Lcom/google/android/gms/internal/ka;Landroid/app/PendingIntent;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_33

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_40

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p2, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x13

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_38

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    return-void

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    :try_start_34
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    #@37
    goto :goto_17

    #@38
    :catchall_38
    move-exception v0

    #@39
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    throw v0

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    :try_start_41
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_38

    #@44
    goto :goto_21
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_33

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/LocationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_40

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p2, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x9

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_38

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    return-void

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    :try_start_34
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    #@37
    goto :goto_17

    #@38
    :catchall_38
    move-exception v0

    #@39
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    throw v0

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    :try_start_41
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_38

    #@44
    goto :goto_21
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/LocationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/location/a;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x8

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

.method public a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_35

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/LocationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_42

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/location/a;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@25
    const/16 v3, 0x14

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

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
    :try_start_36
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    #@39
    goto :goto_17

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    throw v0

    #@42
    :cond_42
    const/4 v0, 0x0

    #@43
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/location/a;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/location/a;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0xa

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

.method public a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_46

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
    if-eqz p2, :cond_53

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/jm;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    if-eqz p3, :cond_58

    #@23
    const/4 v0, 0x1

    #@24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    const/4 v0, 0x0

    #@28
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    :goto_2b
    if-eqz p4, :cond_5d

    #@2d
    invoke-interface {p4}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@30
    move-result-object v0

    #@31
    :goto_31
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@34
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@36
    const/16 v3, 0x10

    #@38
    const/4 v4, 0x0

    #@39
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_4b

    #@3f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    return-void

    #@46
    :cond_46
    const/4 v0, 0x0

    #@47
    :try_start_47
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    #@4a
    goto :goto_17

    #@4b
    :catchall_4b
    move-exception v0

    #@4c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@52
    throw v0

    #@53
    :cond_53
    const/4 v0, 0x0

    #@54
    :try_start_54
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    goto :goto_21

    #@58
    :cond_58
    const/4 v0, 0x0

    #@59
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_4b

    #@5c
    goto :goto_2b

    #@5d
    :cond_5d
    const/4 v0, 0x0

    #@5e
    goto :goto_31
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_49

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    if-eqz p3, :cond_56

    #@1c
    const/4 v0, 0x1

    #@1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    const/4 v0, 0x0

    #@21
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/jm;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    :goto_24
    if-eqz p4, :cond_5b

    #@26
    const/4 v0, 0x1

    #@27
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    const/4 v0, 0x0

    #@2b
    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    :goto_2e
    if-eqz p5, :cond_60

    #@30
    invoke-interface {p5}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@33
    move-result-object v0

    #@34
    :goto_34
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@37
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@39
    const/16 v3, 0xe

    #@3b
    const/4 v4, 0x0

    #@3c
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_4e

    #@42
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    return-void

    #@49
    :cond_49
    const/4 v0, 0x0

    #@4a
    :try_start_4a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    #@4d
    goto :goto_17

    #@4e
    :catchall_4e
    move-exception v0

    #@4f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@55
    throw v0

    #@56
    :cond_56
    const/4 v0, 0x0

    #@57
    :try_start_57
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    goto :goto_24

    #@5b
    :cond_5b
    const/4 v0, 0x0

    #@5c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_4e

    #@5f
    goto :goto_2e

    #@60
    :cond_60
    const/4 v0, 0x0

    #@61
    goto :goto_34
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_4c

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    if-eqz p4, :cond_59

    #@1f
    const/4 v0, 0x1

    #@20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    const/4 v0, 0x0

    #@24
    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/internal/jm;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    :goto_27
    if-eqz p5, :cond_5e

    #@29
    const/4 v0, 0x1

    #@2a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    const/4 v0, 0x0

    #@2e
    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    :goto_31
    if-eqz p6, :cond_63

    #@33
    invoke-interface {p6}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@36
    move-result-object v0

    #@37
    :goto_37
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@3a
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@3c
    const/16 v3, 0x2f

    #@3e
    const/4 v4, 0x0

    #@3f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@42
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_51

    #@45
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4b
    return-void

    #@4c
    :cond_4c
    const/4 v0, 0x0

    #@4d
    :try_start_4d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    #@50
    goto :goto_17

    #@51
    :catchall_51
    move-exception v0

    #@52
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@55
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@58
    throw v0

    #@59
    :cond_59
    const/4 v0, 0x0

    #@5a
    :try_start_5a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    goto :goto_27

    #@5e
    :cond_5e
    const/4 v0, 0x0

    #@5f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_51

    #@62
    goto :goto_31

    #@63
    :cond_63
    const/4 v0, 0x0

    #@64
    goto :goto_37
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_35

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p3, :cond_42

    #@1c
    invoke-interface {p3}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    :goto_20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@25
    const/16 v3, 0xf

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

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
    :try_start_36
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    #@39
    goto :goto_1a

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    throw v0

    #@42
    :cond_42
    const/4 v0, 0x0

    #@43
    goto :goto_20
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_49

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p3, :cond_56

    #@1c
    const/4 v0, 0x1

    #@1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    const/4 v0, 0x0

    #@21
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/jm;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    :goto_24
    if-eqz p4, :cond_5b

    #@26
    const/4 v0, 0x1

    #@27
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    const/4 v0, 0x0

    #@2b
    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    :goto_2e
    if-eqz p5, :cond_60

    #@30
    invoke-interface {p5}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@33
    move-result-object v0

    #@34
    :goto_34
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@37
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@39
    const/16 v3, 0x2d

    #@3b
    const/4 v4, 0x0

    #@3c
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_4e

    #@42
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    return-void

    #@49
    :cond_49
    const/4 v0, 0x0

    #@4a
    :try_start_4a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    #@4d
    goto :goto_1a

    #@4e
    :catchall_4e
    move-exception v0

    #@4f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@55
    throw v0

    #@56
    :cond_56
    const/4 v0, 0x0

    #@57
    :try_start_57
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    goto :goto_24

    #@5b
    :cond_5b
    const/4 v0, 0x0

    #@5c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_4e

    #@5f
    goto :goto_2e

    #@60
    :cond_60
    const/4 v0, 0x0

    #@61
    goto :goto_34
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jw;",
            ">;",
            "Lcom/google/android/gms/internal/ka;",
            "Lcom/google/android/gms/internal/jy;",
            ")V"
        }
    .end annotation

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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@16
    if-eqz p4, :cond_3b

    #@18
    const/4 v0, 0x1

    #@19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    :goto_20
    if-eqz p5, :cond_48

    #@22
    invoke-interface {p5}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@25
    move-result-object v0

    #@26
    :goto_26
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@29
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v3, 0x32

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_40

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

    #@48
    :cond_48
    const/4 v0, 0x0

    #@49
    goto :goto_26
.end method

.method public a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jh;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/internal/jd;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@10
    if-eqz p2, :cond_37

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p3, :cond_44

    #@1c
    invoke-interface {p3}, Lcom/google/android/gms/internal/jd;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    :goto_20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@23
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@26
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/4 v3, 0x1

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

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
    :try_start_38
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    #@3b
    goto :goto_1a

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
    goto :goto_20
.end method

.method public a([Ljava/lang/String;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_2d

    #@12
    invoke-interface {p2}, Lcom/google/android/gms/internal/jd;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/4 v3, 0x3

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
    goto :goto_16

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

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/ka;Landroid/app/PendingIntent;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_33

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_40

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p2, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x31

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_38

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    return-void

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    :try_start_34
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    #@37
    goto :goto_17

    #@38
    :catchall_38
    move-exception v0

    #@39
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    throw v0

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    :try_start_41
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_38

    #@44
    goto :goto_21
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jy;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_35

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ka;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p3, :cond_42

    #@1c
    invoke-interface {p3}, Lcom/google/android/gms/internal/jy;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    :goto_20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@25
    const/16 v3, 0x2a

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

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
    :try_start_36
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    #@39
    goto :goto_1a

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    throw v0

    #@42
    :cond_42
    const/4 v0, 0x0

    #@43
    goto :goto_20
.end method

.method public bo(Ljava/lang/String;)Landroid/location/Location;
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x15

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
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/location/Location;
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

.method public bp(Ljava/lang/String;)Lcom/google/android/gms/location/b;
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x22

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
    if-eqz v0, :cond_2e

    #@21
    sget-object v0, Lcom/google/android/gms/location/b;->CREATOR:Lcom/google/android/gms/location/c;

    #@23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/c;->bs(Landroid/os/Parcel;)Lcom/google/android/gms/location/b;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_30

    #@26
    move-result-object v0

    #@27
    :goto_27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    return-object v0

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    goto :goto_27

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

.method public iW()Landroid/location/Location;
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x7

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
    if-eqz v0, :cond_2c

    #@1d
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/location/Location;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    #@25
    :goto_25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    return-object v0

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    goto :goto_25

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

.method public iX()Landroid/os/IBinder;
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x33

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
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

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

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
    invoke-virtual {p1, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x6

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

.method public setMockLocation(Landroid/location/Location;)V
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

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
    invoke-virtual {p1, v1, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xd

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

.method public setMockMode(Z)V
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
    const-string v3, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

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
    iget-object v0, p0, Lcom/google/android/gms/internal/je$a$a;->kq:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xc

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
