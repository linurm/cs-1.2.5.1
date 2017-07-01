.class Lcom/google/android/gms/internal/s$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/s$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/s$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Z)Z
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
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_2c

    #@11
    move v2, v0

    #@12
    :goto_12
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/s$a$a;->kq:Landroid/os/IBinder;

    #@17
    const/4 v5, 0x2

    #@18
    const/4 v6, 0x0

    #@19
    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    #@1f
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_30

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2e

    #@25
    :goto_25
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    return v0

    #@2c
    :cond_2c
    move v2, v1

    #@2d
    goto :goto_12

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    goto :goto_25

    #@30
    :catchall_30
    move-exception v0

    #@31
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@37
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/s$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Ljava/lang/String;Z)V
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
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

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
    iget-object v0, p0, Lcom/google/android/gms/internal/s$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x4

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_28

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

.method public c(Ljava/lang/String;)Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/s$a$a;->kq:Landroid/os/IBinder;

    #@12
    const/4 v3, 0x3

    #@13
    const/4 v4, 0x0

    #@14
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1a
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    return-object v0

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

.method public getId()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/internal/s$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x1

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
