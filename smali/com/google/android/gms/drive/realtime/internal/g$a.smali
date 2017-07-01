.class public abstract Lcom/google/android/gms/drive/realtime/internal/g$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/realtime/internal/g$a$a;
    }
.end annotation


# direct methods
.method public static W(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/g;
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/g;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/g;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/g$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/g$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    sparse-switch p1, :sswitch_data_56

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v3

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_39

    #@1c
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@1e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@21
    move-result-object v0

    #@22
    move-object v1, v0

    #@23
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_3b

    #@29
    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;

    #@31
    :goto_31
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/realtime/internal/g$a;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;)V

    #@34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@37
    move v0, v3

    #@38
    goto :goto_9

    #@39
    :cond_39
    move-object v1, v2

    #@3a
    goto :goto_23

    #@3b
    :cond_3b
    move-object v0, v2

    #@3c
    goto :goto_31

    #@3d
    :sswitch_3d
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback"

    #@3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_4e

    #@48
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@4a
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@4d
    move-result-object v2

    #@4e
    :cond_4e
    invoke-virtual {p0, v2}, Lcom/google/android/gms/drive/realtime/internal/g$a;->o(Lcom/google/android/gms/common/api/Status;)V

    #@51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    move v0, v3

    #@55
    goto :goto_9

    #@56
    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
