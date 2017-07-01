.class Lcom/google/android/gms/internal/fv$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fv$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/fv$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
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
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

    #@6
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@9
    if-eqz p1, :cond_1f

    #@b
    const/4 v0, 0x1

    #@c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/fv$a$a;->kq:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x1

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    #@1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    return-void

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    :try_start_20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    #@23
    goto :goto_13

    #@24
    :catchall_24
    move-exception v0

    #@25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
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
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;->writeToParcel(Landroid/os/Parcel;I)V

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
    invoke-virtual {p2, v1, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/fv$a$a;->kq:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x2

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

.method public a(Lcom/google/android/gms/common/api/Status;Z)V
    .registers 8
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
    :try_start_6
    const-string v3, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"

    #@8
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    if-eqz p1, :cond_27

    #@d
    const/4 v3, 0x1

    #@e
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    :goto_15
    if-eqz p2, :cond_18

    #@17
    move v0, v1

    #@18
    :cond_18
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    iget-object v0, p0, Lcom/google/android/gms/internal/fv$a$a;->kq:Landroid/os/IBinder;

    #@1d
    const/4 v1, 0x3

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_2c

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    return-void

    #@27
    :cond_27
    const/4 v3, 0x0

    #@28
    :try_start_28
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    #@2b
    goto :goto_15

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@30
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/fv$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
