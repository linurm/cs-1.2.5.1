.class public abstract Lcom/google/android/gms/drive/realtime/internal/e$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/realtime/internal/e$a$a;
    }
.end annotation


# direct methods
.method public static U(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/e;
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/e;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/e;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/e$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/e$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x1

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
    const-string v0, "com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v1

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;

    #@1d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/e$a;->a([Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;)V

    #@20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@23
    move v0, v1

    #@24
    goto :goto_8

    #@25
    :sswitch_25
    const-string v0, "com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback"

    #@27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3e

    #@30
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@32
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@35
    move-result-object v0

    #@36
    :goto_36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/e$a;->o(Lcom/google/android/gms/common/api/Status;)V

    #@39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    move v0, v1

    #@3d
    goto :goto_8

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    goto :goto_36

    #@40
    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
