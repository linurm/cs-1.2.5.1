.class public abstract Lcom/google/android/gms/drive/realtime/internal/h$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/realtime/internal/h$a$a;
    }
.end annotation


# direct methods
.method public static X(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/h;
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
    const-string v0, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/h;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/h;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/h$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/h$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x1

    #@2
    sparse-switch p1, :sswitch_data_2c

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2a

    #@1b
    move v1, v0

    #@1c
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_23

    #@22
    move v2, v0

    #@23
    :cond_23
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/h$a;->c(ZZ)V

    #@26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    goto :goto_9

    #@2a
    :cond_2a
    move v1, v2

    #@2b
    goto :goto_1c

    #@2c
    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
