.class public abstract Lcom/google/android/gms/maps/model/internal/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/d$a$a;
    }
.end annotation


# direct methods
.method public static ba(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/d;
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
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/d;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/d;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/d$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/d$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    sparse-switch p1, :sswitch_data_7e

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->getActiveLevelIndex()I

    #@18
    move-result v1

    #@19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    goto :goto_9

    #@20
    :sswitch_20
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->getDefaultLevelIndex()I

    #@28
    move-result v1

    #@29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    goto :goto_9

    #@30
    :sswitch_30
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->getLevels()Ljava/util/List;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    #@3f
    goto :goto_9

    #@40
    :sswitch_40
    const-string v2, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->isUnderground()Z

    #@48
    move-result v2

    #@49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c
    if-eqz v2, :cond_4f

    #@4e
    move v1, v0

    #@4f
    :cond_4f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@52
    goto :goto_9

    #@53
    :sswitch_53
    const-string v2, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5b
    move-result-object v2

    #@5c
    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/d$a;->ba(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/d;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/d$a;->b(Lcom/google/android/gms/maps/model/internal/d;)Z

    #@63
    move-result v2

    #@64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    if-eqz v2, :cond_6a

    #@69
    move v1, v0

    #@6a
    :cond_6a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    goto :goto_9

    #@6e
    :sswitch_6e
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    #@70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->hashCodeRemote()I

    #@76
    move-result v1

    #@77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    goto :goto_9

    #@7e
    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_53
        0x6 -> :sswitch_6e
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
