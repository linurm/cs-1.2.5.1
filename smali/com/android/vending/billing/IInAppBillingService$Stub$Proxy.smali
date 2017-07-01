.class Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/IInAppBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/IInAppBillingService$Stub;
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
    iput-object p1, p0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
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
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    iget-object v0, p0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x5

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2b

    #@23
    move-result v0

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return v0

    #@2b
    :catchall_2b
    move-exception v0

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    throw v0
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11
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
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    iget-object v0, p0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1e
    const/4 v3, 0x3

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@26
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3b

    #@2c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/os/Bundle;
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_3d

    #@34
    :goto_34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    return-object v0

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    goto :goto_34

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@2
    return-object v0
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10
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
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v3, 0x4

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@23
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_38

    #@29
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/os/Bundle;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3a

    #@31
    :goto_31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    return-object v0

    #@38
    :cond_38
    const/4 v0, 0x0

    #@39
    goto :goto_31

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    throw v0
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
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
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    if-eqz p4, :cond_3f

    #@18
    const/4 v0, 0x1

    #@19
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@20
    :goto_20
    iget-object v0, p0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x2

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_4c

    #@30
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/os/Bundle;
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_44

    #@38
    :goto_38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    return-object v0

    #@3f
    :cond_3f
    const/4 v0, 0x0

    #@40
    :try_start_40
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    #@43
    goto :goto_20

    #@44
    :catchall_44
    move-exception v0

    #@45
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4b
    throw v0

    #@4c
    :cond_4c
    const/4 v0, 0x0

    #@4d
    goto :goto_38
.end method

.method public isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
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
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    iget-object v0, p0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x1

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2b

    #@23
    move-result v0

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return v0

    #@2b
    :catchall_2b
    move-exception v0

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    throw v0
.end method

.method public isPromoEligible(ILjava/lang/String;Ljava/lang/String;)I
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
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    iget-object v0, p0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v3, 0x6

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@20
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2b

    #@23
    move-result v0

    #@24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    return v0

    #@2b
    :catchall_2b
    move-exception v0

    #@2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    throw v0
.end method
