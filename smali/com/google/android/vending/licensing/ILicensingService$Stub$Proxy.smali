.class Lcom/google/android/vending/licensing/ILicensingService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/licensing/ILicensingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/licensing/ILicensingService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/vending/licensing/ILicensingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/ILicensingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public checkLicense(JLjava/lang/String;Lcom/google/android/vending/licensing/ILicenseResultListener;)V
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
    move-result-object v1

    #@5
    :try_start_5
    const-string v2, "com.android.vending.licensing.ILicensingService"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    if-eqz p4, :cond_16

    #@12
    invoke-interface {p4}, Lcom/google/android/vending/licensing/ILicenseResultListener;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    :cond_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    iget-object v0, p0, Lcom/google/android/vending/licensing/ILicensingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v2, 0x1

    #@1c
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x1

    #@1e
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    #@21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    return-void

    #@25
    :catchall_25
    move-exception v0

    #@26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.android.vending.licensing.ILicensingService"

    #@2
    return-object v0
.end method
