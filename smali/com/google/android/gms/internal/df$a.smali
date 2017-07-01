.class public abstract Lcom/google/android/gms/internal/df$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/df$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/df$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static t(Landroid/os/IBinder;)Lcom/google/android/gms/internal/df;
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
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/df;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/df;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/df$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/df$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    sparse-switch p1, :sswitch_data_68

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/df$a;->getProductId()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    goto :goto_9

    #@20
    :sswitch_20
    const-string v2, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"

    #@22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/df$a;->getPurchaseData()Landroid/content/Intent;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    if-eqz v2, :cond_35

    #@2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    invoke-virtual {v2, p3, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@34
    goto :goto_9

    #@35
    :cond_35
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_9

    #@39
    :sswitch_39
    const-string v1, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"

    #@3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/df$a;->getResultCode()I

    #@41
    move-result v1

    #@42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@45
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    goto :goto_9

    #@49
    :sswitch_49
    const-string v2, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"

    #@4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/df$a;->isVerified()Z

    #@51
    move-result v2

    #@52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    if-eqz v2, :cond_58

    #@57
    move v1, v0

    #@58
    :cond_58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    goto :goto_9

    #@5c
    :sswitch_5c
    const-string v1, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"

    #@5e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/df$a;->finishPurchase()V

    #@64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    goto :goto_9

    #@68
    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_39
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
