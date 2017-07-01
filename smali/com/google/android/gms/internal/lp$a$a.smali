.class Lcom/google/android/gms/internal/lp$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/lp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lp$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/lp$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    if-eqz p2, :cond_35

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/wallet/FullWallet;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p3, :cond_42

    #@1c
    const/4 v0, 0x1

    #@1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    const/4 v0, 0x0

    #@21
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/internal/lp$a$a;->kq:Landroid/os/IBinder;

    #@26
    const/4 v3, 0x2

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
    :try_start_43
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3a

    #@46
    goto :goto_24
.end method

.method public a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    if-eqz p2, :cond_35

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/wallet/MaskedWallet;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    if-eqz p3, :cond_42

    #@1c
    const/4 v0, 0x1

    #@1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    const/4 v0, 0x0

    #@21
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/internal/lp$a$a;->kq:Landroid/os/IBinder;

    #@26
    const/4 v3, 0x1

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
    :try_start_43
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3a

    #@46
    goto :goto_24
.end method

.method public a(IZLandroid/os/Bundle;)V
    .registers 9
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
    move-result-object v2

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v3

    #@a
    :try_start_a
    const-string v4, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    if-eqz p2, :cond_32

    #@14
    :goto_14
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    if-eqz p3, :cond_34

    #@19
    const/4 v0, 0x1

    #@1a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/lp$a$a;->kq:Landroid/os/IBinder;

    #@23
    const/4 v1, 0x3

    #@24
    const/4 v4, 0x0

    #@25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_39

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    return-void

    #@32
    :cond_32
    move v0, v1

    #@33
    goto :goto_14

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    :try_start_35
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    #@38
    goto :goto_21

    #@39
    :catchall_39
    move-exception v0

    #@3a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@40
    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/li;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;->writeToParcel(Landroid/os/Parcel;I)V

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
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/li;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    :goto_21
    if-eqz p3, :cond_4e

    #@23
    const/4 v0, 0x1

    #@24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    const/4 v0, 0x0

    #@28
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/lp$a$a;->kq:Landroid/os/IBinder;

    #@2d
    const/4 v3, 0x5

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

    #@4d
    goto :goto_21

    #@4e
    :cond_4e
    const/4 v0, 0x0

    #@4f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_41

    #@52
    goto :goto_2b
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/lp$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public i(ILandroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    if-eqz p2, :cond_2b

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
    iget-object v0, p0, Lcom/google/android/gms/internal/lp$a$a;->kq:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x4

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_30

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
    :try_start_2c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    #@2f
    goto :goto_1a

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
