.class Lcom/google/android/gms/internal/iy$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/iy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iy$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/iy$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ix;Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_3b

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ix;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    if-eqz p2, :cond_3d

    #@18
    const/4 v0, 0x1

    #@19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/identity/intents/UserAddressRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    :goto_20
    if-eqz p3, :cond_4a

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
    iget-object v0, p0, Lcom/google/android/gms/internal/iy$a$a;->kq:Landroid/os/IBinder;

    #@2c
    const/4 v3, 0x2

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    #@34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-void

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    goto :goto_13

    #@3d
    :cond_3d
    const/4 v0, 0x0

    #@3e
    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    #@41
    goto :goto_20

    #@42
    :catchall_42
    move-exception v0

    #@43
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    throw v0

    #@4a
    :cond_4a
    const/4 v0, 0x0

    #@4b
    :try_start_4b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_42

    #@4e
    goto :goto_2a
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/iy$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
