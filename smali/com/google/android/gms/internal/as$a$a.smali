.class Lcom/google/android/gms/internal/as$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/as$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/as$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/as$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "com.google.android.gms.ads.internal.client.IAppEventListener"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    iget-object v0, p0, Lcom/google/android/gms/internal/as$a$a;->kq:Landroid/os/IBinder;

    #@15
    const/4 v3, 0x1

    #@16
    const/4 v4, 0x0

    #@17
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    #@1d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    return-void

    #@24
    :catchall_24
    move-exception v0

    #@25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    throw v0
.end method
