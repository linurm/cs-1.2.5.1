.class public abstract Lcom/android/vending/billing/IInAppBillingService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/vending/billing/IInAppBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/IInAppBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService"

.field static final TRANSACTION_consumePurchase:I = 0x5

.field static final TRANSACTION_getBuyIntent:I = 0x3

.field static final TRANSACTION_getPurchases:I = 0x4

.field static final TRANSACTION_getSkuDetails:I = 0x2

.field static final TRANSACTION_isBillingSupported:I = 0x1

.field static final TRANSACTION_isPromoEligible:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/android/vending/billing/IInAppBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;
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
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/android/vending/billing/IInAppBillingService;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/android/vending/billing/IInAppBillingService;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    sparse-switch p1, :sswitch_data_fc

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v6

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    move v0, v6

    #@2d
    goto :goto_9

    #@2e
    :sswitch_2e
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v1

    #@37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_5e

    #@45
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Landroid/os/Bundle;

    #@4d
    :goto_4d
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    if-eqz v0, :cond_60

    #@56
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    invoke-virtual {v0, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@5c
    :goto_5c
    move v0, v6

    #@5d
    goto :goto_9

    #@5e
    :cond_5e
    const/4 v0, 0x0

    #@5f
    goto :goto_4d

    #@60
    :cond_60
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    goto :goto_5c

    #@64
    :sswitch_64
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v1

    #@6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    move-object v0, p0

    #@7e
    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@85
    if-eqz v0, :cond_90

    #@87
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8a
    invoke-virtual {v0, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@8d
    :goto_8d
    move v0, v6

    #@8e
    goto/16 :goto_9

    #@90
    :cond_90
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@93
    goto :goto_8d

    #@94
    :sswitch_94
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v0

    #@9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b0
    if-eqz v0, :cond_bb

    #@b2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b5
    invoke-virtual {v0, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@b8
    :goto_b8
    move v0, v6

    #@b9
    goto/16 :goto_9

    #@bb
    :cond_bb
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@be
    goto :goto_b8

    #@bf
    :sswitch_bf
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@c1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v0

    #@c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cb
    move-result-object v1

    #@cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    #@d3
    move-result v0

    #@d4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@da
    move v0, v6

    #@db
    goto/16 :goto_9

    #@dd
    :sswitch_dd
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    #@df
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v0

    #@e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ed
    move-result-object v2

    #@ee
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->isPromoEligible(ILjava/lang/String;Ljava/lang/String;)I

    #@f1
    move-result v0

    #@f2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f8
    move v0, v6

    #@f9
    goto/16 :goto_9

    #@fb
    nop

    #@fc
    :sswitch_data_fc
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_64
        0x4 -> :sswitch_94
        0x5 -> :sswitch_bf
        0x6 -> :sswitch_dd
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
