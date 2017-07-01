.class public abstract Lcom/google/android/gms/internal/jy$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/jy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jy$a$a;
    }
.end annotation


# direct methods
.method public static au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jy;
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
    const-string v0, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/jy;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/jy;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/jy$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jy$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    sparse-switch p1, :sswitch_data_54

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_22

    #@1c
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@1e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@21
    move-result-object v0

    #@22
    :cond_22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jy$a;->V(Lcom/google/android/gms/common/data/DataHolder;)V

    #@25
    move v0, v1

    #@26
    goto :goto_9

    #@27
    :sswitch_27
    const-string v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    #@29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_38

    #@32
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@34
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@37
    move-result-object v0

    #@38
    :cond_38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jy$a;->W(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3b
    move v0, v1

    #@3c
    goto :goto_9

    #@3d
    :sswitch_3d
    const-string v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    #@3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_4e

    #@48
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@4a
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@4d
    move-result-object v0

    #@4e
    :cond_4e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jy$a;->X(Lcom/google/android/gms/common/data/DataHolder;)V

    #@51
    move v0, v1

    #@52
    goto :goto_9

    #@53
    nop

    #@54
    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
