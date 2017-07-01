.class Lcom/google/android/gms/internal/hi$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hi$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/hh;I)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2a

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

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

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2d

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

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
    goto :goto_13

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

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    if-eqz p4, :cond_39

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/4 v3, 0x2

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3e

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
    :cond_39
    const/4 v0, 0x0

    #@3a
    :try_start_3a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    #@3d
    goto :goto_26

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@2b
    const/16 v3, 0x13

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

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x22

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

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@25
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x21

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

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_34

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xa

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

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@22
    if-eqz p6, :cond_40

    #@24
    const/4 v0, 0x1

    #@25
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    const/4 v0, 0x0

    #@29
    invoke-virtual {p6, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@2e
    const/16 v3, 0x1e

    #@30
    const/4 v4, 0x0

    #@31
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_45

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    return-void

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_13

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    :try_start_41
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    #@44
    goto :goto_2c

    #@45
    :catchall_45
    move-exception v0

    #@46
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_40

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@22
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    if-eqz p7, :cond_42

    #@27
    const/4 v0, 0x1

    #@28
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    const/4 v0, 0x0

    #@2c
    invoke-virtual {p7, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    :goto_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@31
    const/4 v3, 0x1

    #@32
    const/4 v4, 0x0

    #@33
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_47

    #@39
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    return-void

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    goto :goto_13

    #@42
    :cond_42
    const/4 v0, 0x0

    #@43
    :try_start_43
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    #@46
    goto :goto_2f

    #@47
    :catchall_47
    move-exception v0

    #@48
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_47

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@22
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    if-eqz p9, :cond_49

    #@2d
    const/4 v0, 0x1

    #@2e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    const/4 v0, 0x0

    #@32
    invoke-virtual {p9, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@35
    :goto_35
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@37
    const/16 v3, 0x9

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_4e

    #@40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    return-void

    #@47
    :cond_47
    const/4 v0, 0x0

    #@48
    goto :goto_13

    #@49
    :cond_49
    const/4 v0, 0x0

    #@4a
    :try_start_4a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    #@4d
    goto :goto_35

    #@4e
    :catchall_4e
    move-exception v0

    #@4f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@55
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    if-eqz p6, :cond_40

    #@24
    const/4 v0, 0x1

    #@25
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    const/4 v0, 0x0

    #@29
    invoke-virtual {p6, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@2e
    const/16 v3, 0x14

    #@30
    const/4 v4, 0x0

    #@31
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_45

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    return-void

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_13

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    :try_start_41
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    #@44
    goto :goto_2c

    #@45
    :catchall_45
    move-exception v0

    #@46
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4c
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

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

.method public b(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    if-eqz p4, :cond_39

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/4 v3, 0x5

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3e

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
    :cond_39
    const/4 v0, 0x0

    #@3a
    :try_start_3a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    #@3d
    goto :goto_26

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public b(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_34

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x1c

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

.method public c(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x16

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

.method public c(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    if-eqz p4, :cond_39

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/4 v3, 0x6

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3e

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
    :cond_39
    const/4 v0, 0x0

    #@3a
    :try_start_3a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    #@3d
    goto :goto_26

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public d(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x18

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

.method public d(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    if-eqz p4, :cond_39

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/4 v3, 0x7

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3e

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
    :cond_39
    const/4 v0, 0x0

    #@3a
    :try_start_3a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    #@3d
    goto :goto_26

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0
.end method

.method public e(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1a

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

.method public e(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x8

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

.method public f(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x1f

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

.method public f(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0xb

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

.method public g(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x20

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

.method public g(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0xc

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

.method public h(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x23

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

.method public h(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0xd

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

.method public i(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x24

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

.method public i(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0xe

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

.method public j(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0xf

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

.method public k(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x10

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

.method public l(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x11

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

.method public m(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x12

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

.method public n(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x17

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

.method public o(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x19

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

.method public p(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_38

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$a$a;->kq:Landroid/os/IBinder;

    #@28
    const/16 v3, 0x1b

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
