.class public abstract Lcom/google/android/gms/internal/gb$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/gb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gb$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/gb$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;
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
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/gb;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/gb;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/gb$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gb$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    sparse-switch p1, :sswitch_data_7a

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.appstate.internal.IAppStateCallbacks"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_26

    #@20
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@22
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@25
    move-result-object v0

    #@26
    :cond_26
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/gb$a;->a(ILcom/google/android/gms/common/data/DataHolder;)V

    #@29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    move v0, v1

    #@2d
    goto :goto_9

    #@2e
    :sswitch_2e
    const-string v2, "com.google.android.gms.appstate.internal.IAppStateCallbacks"

    #@30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3f

    #@39
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@3b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@3e
    move-result-object v0

    #@3f
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb$a;->a(Lcom/google/android/gms/common/data/DataHolder;)V

    #@42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@45
    move v0, v1

    #@46
    goto :goto_9

    #@47
    :sswitch_47
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateCallbacks"

    #@49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v0

    #@50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v2

    #@54
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/gb$a;->b(II)V

    #@57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a
    move v0, v1

    #@5b
    goto :goto_9

    #@5c
    :sswitch_5c
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateCallbacks"

    #@5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb$a;->dT()V

    #@64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    move v0, v1

    #@68
    goto :goto_9

    #@69
    :sswitch_69
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateCallbacks"

    #@6b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v0

    #@72
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb$a;->L(I)V

    #@75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@78
    move v0, v1

    #@79
    goto :goto_9

    #@7a
    :sswitch_data_7a
    .sparse-switch
        0x1389 -> :sswitch_11
        0x138a -> :sswitch_2e
        0x138b -> :sswitch_47
        0x138c -> :sswitch_5c
        0x138d -> :sswitch_69
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
