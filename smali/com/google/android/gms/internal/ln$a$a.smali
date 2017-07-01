.class Lcom/google/android/gms/internal/ln$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ln;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ln$a;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ln$a$a;->kq:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lk;
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
    const-string v1, "com.google.android.gms.wallet.internal.IWalletDynamiteCreator"

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    if-eqz p1, :cond_4c

    #@10
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    if-eqz p2, :cond_4e

    #@19
    invoke-interface {p2}, Lcom/google/android/gms/dynamic/c;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v1

    #@1d
    :goto_1d
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    if-eqz p3, :cond_50

    #@22
    const/4 v1, 0x1

    #@23
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    const/4 v1, 0x0

    #@27
    invoke-virtual {p3, v2, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    :goto_2a
    if-eqz p4, :cond_30

    #@2c
    invoke-interface {p4}, Lcom/google/android/gms/internal/ll;->asBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v0

    #@30
    :cond_30
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@33
    iget-object v0, p0, Lcom/google/android/gms/internal/ln$a$a;->kq:Landroid/os/IBinder;

    #@35
    const/4 v1, 0x1

    #@36
    const/4 v4, 0x0

    #@37
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3a
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@3d
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@40
    move-result-object v0

    #@41
    invoke-static {v0}, Lcom/google/android/gms/internal/lk$a;->bo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lk;
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_55

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@48
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4b
    return-object v0

    #@4c
    :cond_4c
    move-object v1, v0

    #@4d
    goto :goto_14

    #@4e
    :cond_4e
    move-object v1, v0

    #@4f
    goto :goto_1d

    #@50
    :cond_50
    const/4 v1, 0x0

    #@51
    :try_start_51
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    #@54
    goto :goto_2a

    #@55
    :catchall_55
    move-exception v0

    #@56
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@59
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@5c
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ln$a$a;->kq:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
