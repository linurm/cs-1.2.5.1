.class public abstract Lcom/google/android/gms/internal/s$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/s$a$a;
    }
.end annotation


# direct methods
.method public static b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/s;
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
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/s;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/s;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/s$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/s$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

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
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/s$a;->getId()Ljava/lang/String;

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
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_3a

    #@2b
    move v1, v0

    #@2c
    :goto_2c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/s$a;->a(Z)Z

    #@2f
    move-result v1

    #@30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    if-eqz v1, :cond_36

    #@35
    move v2, v0

    #@36
    :cond_36
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    goto :goto_9

    #@3a
    :cond_3a
    move v1, v2

    #@3b
    goto :goto_2c

    #@3c
    :sswitch_3c
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/s$a;->c(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4f
    goto :goto_9

    #@50
    :sswitch_50
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    #@52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_60

    #@5f
    move v2, v0

    #@60
    :cond_60
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/s$a;->b(Ljava/lang/String;Z)V

    #@63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    goto :goto_9

    #@67
    nop

    #@68
    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_50
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
