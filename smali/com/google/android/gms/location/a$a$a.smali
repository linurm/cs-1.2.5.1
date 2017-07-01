.class Lcom/google/android/gms/location/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/a$a;
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
    iput-object p1, p0, Lcom/google/android/gms/location/a$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/a$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
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
    const-string v0, "com.google.android.gms.location.ILocationListener"

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
    invoke-virtual {p1, v1, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/location/a$a$a;->kq:Landroid/os/IBinder;

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
