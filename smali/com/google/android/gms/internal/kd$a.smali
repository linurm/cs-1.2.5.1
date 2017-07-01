.class public abstract Lcom/google/android/gms/internal/kd$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/kd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kd$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/kd$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static bh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kd;
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
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/kd;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/kd;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/kd$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kd$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v3

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_43

    #@20
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/os/Bundle;

    #@28
    move-object v1, v0

    #@29
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v5

    #@2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_45

    #@33
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/content/Intent;

    #@3b
    :goto_3b
    invoke-virtual {p0, v4, v1, v5, v0}, Lcom/google/android/gms/internal/kd$a;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

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
    goto :goto_29

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
        0x1 -> :sswitch_11
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
