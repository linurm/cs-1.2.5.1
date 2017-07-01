.class Lcom/google/android/gms/plus/internal/b$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/b$a;
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
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

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
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

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
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

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

.method public a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

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
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

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
    invoke-virtual {p3, v1, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

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

.method public a(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ie;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

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
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

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
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/ie;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@26
    const/4 v3, 0x5

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

.method public a(ILcom/google/android/gms/internal/ks;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    if-eqz p2, :cond_2c

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ks;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x9

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

.method public a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2b

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

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
    goto :goto_17

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

.method public a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_2e

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@1f
    const/4 v3, 0x6

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_33

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
    :try_start_2f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    #@32
    goto :goto_17

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

.method public am(Lcom/google/android/gms/common/api/Status;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xa

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

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public bw(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/4 v3, 0x3

    #@13
    const/4 v4, 0x0

    #@14
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    #@1a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    return-void

    #@21
    :catchall_21
    move-exception v0

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    throw v0
.end method

.method public bx(Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/16 v3, 0x8

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

.method public h(ILandroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

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
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/b$a$a;->kq:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x7

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
