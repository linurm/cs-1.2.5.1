.class Lcom/google/android/gms/maps/model/internal/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/d$a;
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
    iput-object p1, p0, Lcom/google/android/gms/maps/model/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Lcom/google/android/gms/maps/model/internal/d;)Z
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
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_2f

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/maps/model/internal/d;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    iget-object v1, p0, Lcom/google/android/gms/maps/model/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x5

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@21
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_31

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_28

    #@27
    const/4 v0, 0x1

    #@28
    :cond_28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    return v0

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

.method public getActiveLevelIndex()I
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
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x1

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

.method public getDefaultLevelIndex()I
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
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x2

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

.method public getLevels()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
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
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x3

    #@10
    const/4 v4, 0x0

    #@11
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@14
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;
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

.method public hashCodeRemote()I
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
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@f
    const/4 v3, 0x6

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

.method public isUnderground()Z
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
    const-string v3, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Lcom/google/android/gms/maps/model/internal/d$a$a;->kq:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

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
