.class Lcom/google/android/gms/plus/internal/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/d$a;
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
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)Lcom/google/android/gms/internal/hg;
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3c

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

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
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x10

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30
    move-result-object v0

    #@31
    invoke-static {v0}, Lcom/google/android/gms/internal/hg$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hg;
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_3e

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    return-object v0

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    goto :goto_13

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

.method public a(Lcom/google/android/gms/internal/ie;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ie;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x4

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

.method public a(Lcom/google/android/gms/plus/internal/b;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x8

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

.method public a(Lcom/google/android/gms/plus/internal/b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3e

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

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
    if-eqz p4, :cond_40

    #@1e
    const/4 v0, 0x1

    #@1f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    const/4 v0, 0x0

    #@23
    invoke-virtual {p4, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    :goto_26
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@29
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@2e
    const/16 v3, 0xe

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
    goto :goto_26

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

.method public a(Lcom/google/android/gms/plus/internal/b;Landroid/net/Uri;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3c

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    if-eqz p2, :cond_3e

    #@18
    const/4 v0, 0x1

    #@19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p2, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    :goto_20
    if-eqz p3, :cond_4b

    #@22
    const/4 v0, 0x1

    #@23
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    const/4 v0, 0x0

    #@27
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    :goto_2a
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@2c
    const/16 v3, 0x9

    #@2e
    const/4 v4, 0x0

    #@2f
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_43

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
    goto :goto_13

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    :try_start_3f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    #@42
    goto :goto_20

    #@43
    :catchall_43
    move-exception v0

    #@44
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    throw v0

    #@4b
    :cond_4b
    const/4 v0, 0x0

    #@4c
    :try_start_4c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_43

    #@4f
    goto :goto_2a
.end method

.method public a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/ie;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_32

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    if-eqz p2, :cond_34

    #@18
    const/4 v0, 0x1

    #@19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ie;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x2d

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_39

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
    :cond_34
    const/4 v0, 0x0

    #@35
    :try_start_35
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    #@38
    goto :goto_20

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

.method public a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2a

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

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

.method public a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2d

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@1e
    const/4 v3, 0x2

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

.method public a(Lcom/google/android/gms/plus/internal/b;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/plus/internal/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x22

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

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/hr;Lcom/google/android/gms/internal/hr;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_36

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/hr;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p3, :cond_43

    #@1c
    const/4 v0, 0x1

    #@1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    const/4 v0, 0x0

    #@21
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/hr;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@26
    const/16 v3, 0x2e

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    #@2f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    return-void

    #@36
    :cond_36
    const/4 v0, 0x0

    #@37
    :try_start_37
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    #@3a
    goto :goto_1a

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    throw v0

    #@43
    :cond_43
    const/4 v0, 0x0

    #@44
    :try_start_44
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_3b

    #@47
    goto :goto_24
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Lcom/google/android/gms/plus/internal/b;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x13

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

.method public b(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2a

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/4 v3, 0x3

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

.method public c(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x12

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

.method public clearDefaultAccount()V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x6

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

.method public d(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x28

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

.method public e(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/plus/internal/b;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@1b
    const/16 v3, 0x2c

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

.method public getAccountName()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x5

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

.method public jU()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x29

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

.method public jV()Z
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
    const-string v3, "com.google.android.gms.plus.internal.IPlusService"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2a

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

.method public jW()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x2b

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

.method public removeMoment(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x11

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
