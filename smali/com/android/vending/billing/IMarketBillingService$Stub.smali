.class public abstract Lcom/android/vending/billing/IMarketBillingService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/vending/billing/IMarketBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/IMarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.vending.billing.IMarketBillingService"

.field static final TRANSACTION_sendBillingRequest:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.android.vending.billing.IMarketBillingService"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/android/vending/billing/IMarketBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v0, "com.android.vending.billing.IMarketBillingService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/android/vending/billing/IMarketBillingService;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/android/vending/billing/IMarketBillingService;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    #@0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    sparse-switch p1, :sswitch_data_3c

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.android.vending.billing.IMarketBillingService"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v1

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.android.vending.billing.IMarketBillingService"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_34

    #@1b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/os/Bundle;

    #@23
    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/IMarketBillingService$Stub;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    if-eqz v0, :cond_36

    #@2c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    :goto_32
    move v0, v1

    #@33
    goto :goto_8

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    goto :goto_23

    #@36
    :cond_36
    const/4 v0, 0x0

    #@37
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    goto :goto_32

    #@3b
    nop

    #@3c
    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
