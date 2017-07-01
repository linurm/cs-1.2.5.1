.class Lcom/google/android/gms/internal/r$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/r$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/r$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
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
    const-string v0, "com.google.android.auth.IAuthManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p2, :cond_39

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
    iget-object v0, p0, Lcom/google/android/gms/internal/r$a$a;->kq:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x2

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_46

    #@2a
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/os/Bundle;
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3e

    #@32
    :goto_32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    return-object v0

    #@39
    :cond_39
    const/4 v0, 0x0

    #@3a
    :try_start_3a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    #@3d
    goto :goto_1a

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    throw v0

    #@46
    :cond_46
    const/4 v0, 0x0

    #@47
    goto :goto_32
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
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
    const-string v0, "com.google.android.auth.IAuthManagerService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    if-eqz p3, :cond_3c

    #@15
    const/4 v0, 0x1

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/r$a$a;->kq:Landroid/os/IBinder;

    #@1f
    const/4 v3, 0x1

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_49

    #@2d
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/os/Bundle;
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_41

    #@35
    :goto_35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    return-object v0

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    :try_start_3d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    #@40
    goto :goto_1d

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
    goto :goto_35
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/r$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
