.class Lcom/google/android/gms/drive/internal/aa$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/internal/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/aa$a;
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
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;)Landroid/content/IntentSender;
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xb

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_44

    #@28
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/content/IntentSender;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

    #@30
    :goto_30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    return-object v0

    #@37
    :cond_37
    const/4 v0, 0x0

    #@38
    :try_start_38
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    #@3b
    goto :goto_17

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
    goto :goto_30
.end method

.method public a(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_37

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xa

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@22
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_44

    #@28
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/content/IntentSender;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

    #@30
    :goto_30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    return-object v0

    #@37
    :cond_37
    const/4 v0, 0x0

    #@38
    :try_start_38
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    #@3b
    goto :goto_17

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
    goto :goto_30
.end method

.method public a(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/ac;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ab;)V
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
    move-result-object v2

    #@5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    :try_start_9
    const-string v1, "com.google.android.gms.drive.internal.IDriveService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3f

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    :goto_18
    if-eqz p2, :cond_4c

    #@1a
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ac;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    :goto_1e
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    if-eqz p4, :cond_2a

    #@26
    invoke-interface {p4}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@29
    move-result-object v0

    #@2a
    :cond_2a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@2f
    const/16 v1, 0xe

    #@31
    const/4 v4, 0x0

    #@32
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_44

    #@38
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    return-void

    #@3f
    :cond_3f
    const/4 v1, 0x0

    #@40
    :try_start_40
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    #@43
    goto :goto_18

    #@44
    :catchall_44
    move-exception v0

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4b
    throw v0

    #@4c
    :cond_4c
    move-object v1, v0

    #@4d
    goto :goto_1e
.end method

.method public a(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0xc

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

.method public a(Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x1e

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

.method public a(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x12

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

.method public a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

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

.method public a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3e

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x4

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_36

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
    :try_start_32
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    #@35
    goto :goto_17

    #@36
    :catchall_36
    move-exception v0

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/CreateFileRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3e

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x5

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_36

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
    :try_start_32
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    #@35
    goto :goto_17

    #@36
    :catchall_36
    move-exception v0

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/internal/CreateFolderRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/CreateFolderRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3e

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x6

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_36

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
    :try_start_32
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    #@35
    goto :goto_17

    #@36
    :catchall_36
    move-exception v0

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x1a

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

.method public a(Lcom/google/android/gms/drive/internal/DeleteResourceRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x18

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

.method public a(Lcom/google/android/gms/drive/internal/DisconnectRequest;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/DisconnectRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x10

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

.method public a(Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x1d

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

.method public a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3e

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x1

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_36

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
    :try_start_32
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    #@35
    goto :goto_17

    #@36
    :catchall_36
    move-exception v0

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/ListParentsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0xd

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

.method public a(Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x1b

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

.method public a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3e

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x7

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_36

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
    :try_start_32
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    #@35
    goto :goto_17

    #@36
    :catchall_36
    move-exception v0

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/QueryRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3e

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x2

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_36

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
    :try_start_32
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    #@35
    goto :goto_17

    #@36
    :catchall_36
    move-exception v0

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Lcom/google/android/gms/drive/internal/ac;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ab;)V
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
    move-result-object v2

    #@5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    :try_start_9
    const-string v1, "com.google.android.gms.drive.internal.IDriveService"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_3f

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    :goto_18
    if-eqz p2, :cond_4c

    #@1a
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ac;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    :goto_1e
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    if-eqz p4, :cond_2a

    #@26
    invoke-interface {p4}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@29
    move-result-object v0

    #@2a
    :cond_2a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@2f
    const/16 v1, 0xf

    #@31
    const/4 v4, 0x0

    #@32
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@35
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_44

    #@38
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    return-void

    #@3f
    :cond_3f
    const/4 v1, 0x0

    #@40
    :try_start_40
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    #@43
    goto :goto_18

    #@44
    :catchall_44
    move-exception v0

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4b
    throw v0

    #@4c
    :cond_4c
    move-object v1, v0

    #@4d
    goto :goto_1e
.end method

.method public a(Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x1c

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

.method public a(Lcom/google/android/gms/drive/internal/TrashResourceRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/TrashResourceRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x11

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

.method public a(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_31

    #@f
    const/4 v0, 0x1

    #@10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3e

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x3

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_36

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
    :try_start_32
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    #@35
    goto :goto_17

    #@36
    :catchall_36
    move-exception v0

    #@37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    throw v0

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_1d
.end method

.method public a(Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x9

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

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

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
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/drive/internal/QueryRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    :goto_17
    if-eqz p2, :cond_3f

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@22
    const/16 v3, 0x13

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

.method public b(Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

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

.method public c(Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x15

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

.method public d(Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x16

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

.method public e(Lcom/google/android/gms/drive/internal/ab;)V
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
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_28

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/drive/internal/ab;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/aa$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x17

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
