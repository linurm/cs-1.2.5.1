.class Lcom/google/android/gms/maps/internal/l$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/internal/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/l$a;
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
    iput-object p1, p0, Lcom/google/android/gms/maps/internal/l$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/internal/f;)Z
    .registers 9
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
    move-result-object v3

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v4

    #@a
    :try_start_a
    const-string v2, "com.google.android.gms.maps.internal.IOnMarkerClickListener"

    #@c
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    if-eqz p1, :cond_30

    #@11
    invoke-interface {p1}, Lcom/google/android/gms/maps/model/internal/f;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    iget-object v2, p0, Lcom/google/android/gms/maps/internal/l$a$a;->kq:Landroid/os/IBinder;

    #@1a
    const/4 v5, 0x1

    #@1b
    const/4 v6, 0x0

    #@1c
    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    #@22
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_32

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_29

    #@28
    move v0, v1

    #@29
    :cond_29
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@2c
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2f
    return v0

    #@30
    :cond_30
    const/4 v2, 0x0

    #@31
    goto :goto_15

    #@32
    :catchall_32
    move-exception v0

    #@33
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@36
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@39
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/l$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
