.class public abstract Lcom/google/android/gms/maps/model/internal/e$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/e$a$a;
    }
.end annotation


# direct methods
.method public static bb(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/e;
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
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/e;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/e;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/e$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/e$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    sparse-switch p1, :sswitch_data_68

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    #@b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    goto :goto_8

    #@f
    :sswitch_f
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    #@11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/e$a;->getName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    goto :goto_8

    #@1f
    :sswitch_1f
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    #@21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/e$a;->getShortName()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    goto :goto_8

    #@2f
    :sswitch_2f
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    #@31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/e$a;->activate()V

    #@37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    goto :goto_8

    #@3b
    :sswitch_3b
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    #@3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@43
    move-result-object v1

    #@44
    invoke-static {v1}, Lcom/google/android/gms/maps/model/internal/e$a;->bb(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/e;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/e$a;->a(Lcom/google/android/gms/maps/model/internal/e;)Z

    #@4b
    move-result v1

    #@4c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    if-eqz v1, :cond_56

    #@51
    move v1, v0

    #@52
    :goto_52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    goto :goto_8

    #@56
    :cond_56
    const/4 v1, 0x0

    #@57
    goto :goto_52

    #@58
    :sswitch_58
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    #@5a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/e$a;->hashCodeRemote()I

    #@60
    move-result v1

    #@61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    goto :goto_8

    #@68
    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3b
        0x5 -> :sswitch_58
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
