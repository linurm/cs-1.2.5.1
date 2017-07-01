.class public abstract Lcom/google/android/gms/internal/dw$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dw$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/dw$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dw;
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
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/dw;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/dw;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/dw$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dw$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_3a

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v1

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_32

    #@1b
    sget-object v0, Lcom/google/android/gms/internal/ds;->CREATOR:Lcom/google/android/gms/internal/dt;

    #@1d
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/dt;->h(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ds;

    #@20
    move-result-object v0

    #@21
    :goto_21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw$a;->b(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/du;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    if-eqz v0, :cond_34

    #@2a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/du;->writeToParcel(Landroid/os/Parcel;I)V

    #@30
    :goto_30
    move v0, v1

    #@31
    goto :goto_8

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    goto :goto_21

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_30

    #@39
    nop

    #@3a
    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
