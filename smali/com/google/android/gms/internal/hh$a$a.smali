.class Lcom/google/android/gms/internal/hh$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hh$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/hh$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hh$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
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
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    if-eqz p3, :cond_2e

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
    iget-object v0, p0, Lcom/google/android/gms/internal/hh$a$a;->kq:Landroid/os/IBinder;

    #@1f
    const/4 v3, 0x1

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
    goto :goto_1d

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
