.class Lcom/google/android/gms/internal/lm$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/lm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lm$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
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
    const-string v2, "com.google.android.gms.wallet.internal.IOwService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    if-eqz p1, :cond_29

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    :goto_14
    if-eqz p2, :cond_1a

    #@16
    invoke-interface {p2}, Lcom/google/android/gms/internal/lp;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    :cond_1a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x5

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2e

    #@25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    return-void

    #@29
    :cond_29
    const/4 v2, 0x0

    #@2a
    :try_start_2a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    #@2d
    goto :goto_14

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/lg;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
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
    :try_start_5
    const-string v2, "com.google.android.gms.wallet.internal.IOwService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    if-eqz p1, :cond_34

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/lg;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    :goto_14
    if-eqz p2, :cond_3e

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    :goto_1e
    if-eqz p3, :cond_24

    #@20
    invoke-interface {p3}, Lcom/google/android/gms/internal/lp;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    :cond_24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@29
    const/16 v2, 0x8

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x1

    #@2d
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_39

    #@30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    return-void

    #@34
    :cond_34
    const/4 v2, 0x0

    #@35
    :try_start_35
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    #@38
    goto :goto_14

    #@39
    :catchall_39
    move-exception v0

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0

    #@3e
    :cond_3e
    const/4 v2, 0x0

    #@3f
    :try_start_3f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_39

    #@42
    goto :goto_1e
.end method

.method public a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
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
    :try_start_5
    const-string v2, "com.google.android.gms.wallet.internal.IOwService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    if-eqz p1, :cond_33

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/wallet/FullWalletRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    :goto_14
    if-eqz p2, :cond_3d

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    :goto_1e
    if-eqz p3, :cond_24

    #@20
    invoke-interface {p3}, Lcom/google/android/gms/internal/lp;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    :cond_24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x2

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_38

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    return-void

    #@33
    :cond_33
    const/4 v2, 0x0

    #@34
    :try_start_34
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    #@37
    goto :goto_14

    #@38
    :catchall_38
    move-exception v0

    #@39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    throw v0

    #@3d
    :cond_3d
    const/4 v2, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_38

    #@41
    goto :goto_1e
.end method

.method public a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lo;)V
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
    :try_start_5
    const-string v2, "com.google.android.gms.wallet.internal.IOwService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    if-eqz p1, :cond_33

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    :goto_14
    if-eqz p2, :cond_3d

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    :goto_1e
    if-eqz p3, :cond_24

    #@20
    invoke-interface {p3}, Lcom/google/android/gms/internal/lo;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    :cond_24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x7

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_38

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    return-void

    #@33
    :cond_33
    const/4 v2, 0x0

    #@34
    :try_start_34
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    #@37
    goto :goto_14

    #@38
    :catchall_38
    move-exception v0

    #@39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    throw v0

    #@3d
    :cond_3d
    const/4 v2, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_38

    #@41
    goto :goto_1e
.end method

.method public a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
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
    :try_start_5
    const-string v2, "com.google.android.gms.wallet.internal.IOwService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    if-eqz p1, :cond_33

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    :goto_14
    if-eqz p2, :cond_3d

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    :goto_1e
    if-eqz p3, :cond_24

    #@20
    invoke-interface {p3}, Lcom/google/android/gms/internal/lp;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    :cond_24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x1

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_38

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    return-void

    #@33
    :cond_33
    const/4 v2, 0x0

    #@34
    :try_start_34
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    #@37
    goto :goto_14

    #@38
    :catchall_38
    move-exception v0

    #@39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    throw v0

    #@3d
    :cond_3d
    const/4 v2, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_38

    #@41
    goto :goto_1e
.end method

.method public a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    if-eqz p1, :cond_29

    #@b
    const/4 v0, 0x1

    #@c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    :goto_13
    if-eqz p2, :cond_33

    #@15
    const/4 v0, 0x1

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x4

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

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
    goto :goto_13

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    throw v0

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    :try_start_34
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_2e

    #@37
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/wallet/d;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
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
    :try_start_5
    const-string v2, "com.google.android.gms.wallet.internal.IOwService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    if-eqz p1, :cond_33

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/wallet/d;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    :goto_14
    if-eqz p2, :cond_3d

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    :goto_1e
    if-eqz p3, :cond_24

    #@20
    invoke-interface {p3}, Lcom/google/android/gms/internal/lp;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    :cond_24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x6

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_38

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    return-void

    #@33
    :cond_33
    const/4 v2, 0x0

    #@34
    :try_start_34
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    #@37
    goto :goto_14

    #@38
    :catchall_38
    move-exception v0

    #@39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    throw v0

    #@3d
    :cond_3d
    const/4 v2, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_38

    #@41
    goto :goto_1e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/lp;)V
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
    move-result-object v1

    #@5
    :try_start_5
    const-string v2, "com.google.android.gms.wallet.internal.IOwService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p3, :cond_2f

    #@12
    const/4 v2, 0x1

    #@13
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p4, :cond_20

    #@1c
    invoke-interface {p4}, Lcom/google/android/gms/internal/lp;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    :cond_20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@23
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@25
    const/4 v2, 0x3

    #@26
    const/4 v3, 0x0

    #@27
    const/4 v4, 0x1

    #@28
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_34

    #@2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    return-void

    #@2f
    :cond_2f
    const/4 v2, 0x0

    #@30
    :try_start_30
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    #@33
    goto :goto_1a

    #@34
    :catchall_34
    move-exception v0

    #@35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public o(Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

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
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$a$a;->kq:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x9

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
