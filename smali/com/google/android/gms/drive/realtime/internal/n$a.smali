.class public abstract Lcom/google/android/gms/drive/realtime/internal/n$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/realtime/internal/n$a$a;
    }
.end annotation


# direct methods
.method public static ad(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/n;
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/n;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/n;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/n$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/n$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_3c

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v1

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/n$a;->aP(Ljava/lang/String;)V

    #@1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f
    move v0, v1

    #@20
    goto :goto_8

    #@21
    :sswitch_21
    const-string v0, "com.google.android.gms.drive.realtime.internal.IStringCallback"

    #@23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3a

    #@2c
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@2e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@31
    move-result-object v0

    #@32
    :goto_32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/n$a;->o(Lcom/google/android/gms/common/api/Status;)V

    #@35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    move v0, v1

    #@39
    goto :goto_8

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    goto :goto_32

    #@3c
    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
