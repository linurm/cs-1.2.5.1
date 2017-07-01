.class public abstract Lcom/google/android/gms/plus/internal/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/plus/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/c$a$a;
    }
.end annotation


# direct methods
.method public static bl(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/c;
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/plus/internal/c;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/plus/internal/c;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/plus/internal/c$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/internal/c$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    sparse-switch p1, :sswitch_data_74

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v7

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v2

    #@22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v5

    #@2e
    move-object v0, p0

    #@2f
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/c$a;->a(Lcom/google/android/gms/dynamic/d;IILjava/lang/String;I)Lcom/google/android/gms/dynamic/d;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@36
    if-eqz v0, :cond_41

    #@38
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@3b
    move-result-object v0

    #@3c
    :goto_3c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@3f
    move v0, v7

    #@40
    goto :goto_9

    #@41
    :cond_41
    move-object v0, v6

    #@42
    goto :goto_3c

    #@43
    :sswitch_43
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    #@45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v0

    #@4c
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v2

    #@54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v3

    #@58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    move-object v0, p0

    #@61
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/c$a;->a(Lcom/google/android/gms/dynamic/d;IILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/d;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    if-eqz v0, :cond_6e

    #@6a
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@6d
    move-result-object v6

    #@6e
    :cond_6e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@71
    move v0, v7

    #@72
    goto :goto_9

    #@73
    nop

    #@74
    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_43
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
