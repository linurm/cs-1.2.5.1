.class public abstract Lcom/google/android/gms/internal/db$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/db;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/db$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/db$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static p(Landroid/os/IBinder;)Lcom/google/android/gms/internal/db;
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
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/db;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/db;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/db$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/db$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x1

    #@1
    sparse-switch p1, :sswitch_data_40

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v1, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase"

    #@b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    goto :goto_8

    #@f
    :sswitch_f
    const-string v1, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase"

    #@11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/db$a;->getProductId()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    goto :goto_8

    #@1f
    :sswitch_1f
    const-string v1, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase"

    #@21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v1

    #@28
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/db$a;->recordResolution(I)V

    #@2b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e
    goto :goto_8

    #@2f
    :sswitch_2f
    const-string v1, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase"

    #@31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v1

    #@38
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/db$a;->recordPlayBillingResolution(I)V

    #@3b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e
    goto :goto_8

    #@3f
    nop

    #@40
    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
