.class public abstract Lcom/google/android/gms/internal/dd$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/dd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dd$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/dd$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static r(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dd;
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
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/dd;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/dd;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/dd$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dd$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    sparse-switch p1, :sswitch_data_50

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v1

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd$a;->onCreate()V

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    move v0, v1

    #@1c
    goto :goto_8

    #@1d
    :sswitch_1d
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager"

    #@1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd$a;->onDestroy()V

    #@25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    move v0, v1

    #@29
    goto :goto_8

    #@2a
    :sswitch_2a
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager"

    #@2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v2

    #@33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_4d

    #@3d
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/content/Intent;

    #@45
    :goto_45
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/gms/internal/dd$a;->onActivityResult(IILandroid/content/Intent;)V

    #@48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b
    move v0, v1

    #@4c
    goto :goto_8

    #@4d
    :cond_4d
    const/4 v0, 0x0

    #@4e
    goto :goto_45

    #@4f
    nop

    #@50
    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2a
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
