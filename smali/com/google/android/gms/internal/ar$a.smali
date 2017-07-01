.class public abstract Lcom/google/android/gms/internal/ar$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ar$a$a;
    }
.end annotation


# direct methods
.method public static g(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ar;
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
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/ar;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/ar;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ar$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ar$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    sparse-switch p1, :sswitch_data_48

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v6

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_46

    #@23
    sget-object v0, Lcom/google/android/gms/internal/al;->CREATOR:Lcom/google/android/gms/internal/am;

    #@25
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/am;->c(Landroid/os/Parcel;)Lcom/google/android/gms/internal/al;

    #@28
    move-result-object v2

    #@29
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30
    move-result-object v0

    #@31
    invoke-static {v0}, Lcom/google/android/gms/internal/bt$a;->i(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bt;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v5

    #@39
    move-object v0, p0

    #@3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ar$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bt;I)Landroid/os/IBinder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@44
    move v0, v6

    #@45
    goto :goto_8

    #@46
    :cond_46
    const/4 v2, 0x0

    #@47
    goto :goto_29

    #@48
    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
