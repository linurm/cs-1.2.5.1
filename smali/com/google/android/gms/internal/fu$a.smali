.class public abstract Lcom/google/android/gms/internal/fu$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/fu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fu$a$a;
    }
.end annotation


# direct methods
.method public static A(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fu;
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
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/fu;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/fu;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/fu$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fu$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    sparse-switch p1, :sswitch_data_7a

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v1

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/internal/fv$a;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    sget-object v0, Lcom/google/android/gms/internal/fr;->CREATOR:Lcom/google/android/gms/internal/fs;

    #@23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, [Lcom/google/android/gms/internal/fr;

    #@29
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/gms/internal/fu$a;->a(Lcom/google/android/gms/internal/fv;Ljava/lang/String;[Lcom/google/android/gms/internal/fr;)V

    #@2c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    move v0, v1

    #@30
    goto :goto_8

    #@31
    :sswitch_31
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    #@33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@39
    move-result-object v0

    #@3a
    invoke-static {v0}, Lcom/google/android/gms/internal/fv$a;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fu$a;->a(Lcom/google/android/gms/internal/fv;)V

    #@41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    move v0, v1

    #@45
    goto :goto_8

    #@46
    :sswitch_46
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    #@48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4e
    move-result-object v0

    #@4f
    invoke-static {v0}, Lcom/google/android/gms/internal/fv$a;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fu$a;->b(Lcom/google/android/gms/internal/fv;)V

    #@56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    move v0, v1

    #@5a
    goto :goto_8

    #@5b
    :sswitch_5b
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    #@5d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@63
    move-result-object v0

    #@64
    invoke-static {v0}, Lcom/google/android/gms/internal/fv$a;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_77

    #@6e
    move v0, v1

    #@6f
    :goto_6f
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/fu$a;->a(Lcom/google/android/gms/internal/fv;Z)V

    #@72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    move v0, v1

    #@76
    goto :goto_8

    #@77
    :cond_77
    const/4 v0, 0x0

    #@78
    goto :goto_6f

    #@79
    nop

    #@7a
    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_31
        0x3 -> :sswitch_46
        0x4 -> :sswitch_5b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
