.class Lcom/google/android/gms/dynamic/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/c$a;
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
    iput-object p1, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public c(Lcom/google/android/gms/dynamic/d;)V
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x14

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

.method public d(Lcom/google/android/gms/dynamic/d;)V
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x1b

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

.method public gI()Lcom/google/android/gms/dynamic/d;
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x2

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
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

.method public gJ()Lcom/google/android/gms/dynamic/c;
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x5

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/dynamic/c$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;
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

.method public gK()Lcom/google/android/gms/dynamic/d;
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x6

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
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

.method public gL()Lcom/google/android/gms/dynamic/c;
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x9

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/dynamic/c$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    return-object v0

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

.method public getArguments()Landroid/os/Bundle;
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x3

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
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/os/Bundle;
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

.method public getId()I
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x4

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    #@1a
    move-result v0

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    return v0

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

.method public getRetainInstance()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_26

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1f

    #@1e
    const/4 v0, 0x1

    #@1f
    :cond_1f
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

.method public getTag()Ljava/lang/String;
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0x8

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

.method public getTargetRequestCode()I
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0xa

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

.method public getUserVisibleHint()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xb

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

.method public getView()Lcom/google/android/gms/dynamic/d;
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/16 v3, 0xc

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    return-object v0

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

.method public isAdded()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

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

.method public isDetached()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xe

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

.method public isHidden()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xf

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

.method public isInLayout()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x10

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

.method public isRemoving()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x11

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

.method public isResumed()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x12

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

.method public isVisible()Z
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x13

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

.method public setHasOptionsMenu(Z)V
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

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
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x15

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

.method public setMenuVisibility(Z)V
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

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
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x16

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

.method public setRetainInstance(Z)V
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

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
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x17

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

.method public setUserVisibleHint(Z)V
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
    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

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
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x18

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

.method public startActivity(Landroid/content/Intent;)V
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

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
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x19

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

.method public startActivityForResult(Landroid/content/Intent;I)V
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

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
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c$a$a;->kq:Landroid/os/IBinder;

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
