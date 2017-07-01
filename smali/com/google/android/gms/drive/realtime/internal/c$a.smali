.class public abstract Lcom/google/android/gms/drive/realtime/internal/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/realtime/internal/c$a$a;
    }
.end annotation


# direct methods
.method public static S(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/c;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/c;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/c$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/c$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_3e

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    :goto_8
    return v1

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    goto :goto_8

    #@f
    :sswitch_f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    #@11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_22

    #@1a
    move v0, v1

    #@1b
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->D(Z)V

    #@1e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    goto :goto_8

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    goto :goto_1b

    #@24
    :sswitch_24
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    #@26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3c

    #@2f
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@31
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@34
    move-result-object v0

    #@35
    :goto_35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->o(Lcom/google/android/gms/common/api/Status;)V

    #@38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    goto :goto_8

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    goto :goto_35

    #@3e
    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
