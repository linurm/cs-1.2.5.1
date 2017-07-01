.class public abstract Lcom/google/android/gms/internal/iy$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/iy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iy$a$a;
    }
.end annotation


# direct methods
.method public static ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/iy;
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
    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/iy;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/iy;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/iy$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iy$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    sparse-switch p1, :sswitch_data_48

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v3

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/ix$a;->ao(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ix;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_43

    #@24
    sget-object v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@2c
    move-object v1, v0

    #@2d
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_45

    #@33
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/os/Bundle;

    #@3b
    :goto_3b
    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/internal/iy$a;->a(Lcom/google/android/gms/internal/ix;Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Bundle;)V

    #@3e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    move v0, v3

    #@42
    goto :goto_9

    #@43
    :cond_43
    move-object v1, v2

    #@44
    goto :goto_2d

    #@45
    :cond_45
    move-object v0, v2

    #@46
    goto :goto_3b

    #@47
    nop

    #@48
    :sswitch_data_48
    .sparse-switch
        0x2 -> :sswitch_11
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
