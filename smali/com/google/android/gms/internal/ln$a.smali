.class public abstract Lcom/google/android/gms/internal/ln$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/ln;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ln$a$a;
    }
.end annotation


# direct methods
.method public static br(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;
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
    const-string v0, "com.google.android.gms.wallet.internal.IWalletDynamiteCreator"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/ln;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/ln;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ln$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ln$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    sparse-switch p1, :sswitch_data_50

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.wallet.internal.IWalletDynamiteCreator"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v2

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.wallet.internal.IWalletDynamiteCreator"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Lcom/google/android/gms/dynamic/c$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_4e

    #@2c
    sget-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    #@34
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@37
    move-result-object v5

    #@38
    invoke-static {v5}, Lcom/google/android/gms/internal/ll$a;->bp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ll;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/google/android/gms/internal/ln$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lk;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@43
    if-eqz v0, :cond_49

    #@45
    invoke-interface {v0}, Lcom/google/android/gms/internal/lk;->asBinder()Landroid/os/IBinder;

    #@48
    move-result-object v1

    #@49
    :cond_49
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@4c
    move v0, v2

    #@4d
    goto :goto_9

    #@4e
    :cond_4e
    move-object v0, v1

    #@4f
    goto :goto_34

    #@50
    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_11
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
