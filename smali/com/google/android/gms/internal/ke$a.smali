.class public abstract Lcom/google/android/gms/internal/ke$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/ke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ke$a$a;
    }
.end annotation


# direct methods
.method public static bi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ke;
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
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/ke;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/ke;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ke$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ke$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_4c

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v3

    #@9
    :goto_9
    return v3

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/internal/kd$a;->bh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kd;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_45

    #@23
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/net/Uri;

    #@2b
    move-object v1, v0

    #@2c
    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_47

    #@32
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/os/Bundle;

    #@3a
    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_49

    #@40
    move v2, v3

    #@41
    :goto_41
    invoke-virtual {p0, v4, v1, v0, v2}, Lcom/google/android/gms/internal/ke$a;->a(Lcom/google/android/gms/internal/kd;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    #@44
    goto :goto_9

    #@45
    :cond_45
    move-object v1, v2

    #@46
    goto :goto_2c

    #@47
    :cond_47
    move-object v0, v2

    #@48
    goto :goto_3a

    #@49
    :cond_49
    const/4 v2, 0x0

    #@4a
    goto :goto_41

    #@4b
    nop

    #@4c
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
