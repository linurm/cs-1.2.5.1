.class Lcom/google/android/gms/maps/internal/n$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/internal/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/n$a;
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
    iput-object p1, p0, Lcom/google/android/gms/maps/internal/n$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/n$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public onMyLocationButtonClick()Z
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v3

    #@a
    :try_start_a
    const-string v4, "com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener"

    #@c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    iget-object v4, p0, Lcom/google/android/gms/maps/internal/n$a$a;->kq:Landroid/os/IBinder;

    #@11
    const/4 v5, 0x1

    #@12
    const/4 v6, 0x0

    #@13
    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@19
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_27

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_20

    #@1f
    move v0, v1

    #@20
    :cond_20
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    return v0

    #@27
    :catchall_27
    move-exception v0

    #@28
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    throw v0
.end method
