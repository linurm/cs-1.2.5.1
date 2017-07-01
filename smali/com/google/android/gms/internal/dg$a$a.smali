.class Lcom/google/android/gms/internal/dg$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/dg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dg$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/dg$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/df;)V
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
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    if-eqz p1, :cond_27

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/internal/df;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$a$a;->kq:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x2

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    return-void

    #@27
    :cond_27
    const/4 v0, 0x0

    #@28
    goto :goto_13

    #@29
    :catchall_29
    move-exception v0

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public isValidPurchase(Ljava/lang/String;)Z
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
    move-result-object v2

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v3

    #@a
    :try_start_a
    const-string v4, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener"

    #@c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    iget-object v4, p0, Lcom/google/android/gms/internal/dg$a$a;->kq:Landroid/os/IBinder;

    #@14
    const/4 v5, 0x1

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@1c
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_2a

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_23

    #@22
    move v0, v1

    #@23
    :cond_23
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    return v0

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@2e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    throw v0
.end method
