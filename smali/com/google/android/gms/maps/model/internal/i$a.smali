.class public abstract Lcom/google/android/gms/maps/model/internal/i$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/i$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.maps.model.internal.ITileProviderDelegate"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/model/internal/i$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static bg(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/i;
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
    const-string v0, "com.google.android.gms.maps.model.internal.ITileProviderDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/i;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/i;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/i$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/i$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x1

    #@1
    sparse-switch p1, :sswitch_data_36

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v1, "com.google.android.gms.maps.model.internal.ITileProviderDelegate"

    #@b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    goto :goto_8

    #@f
    :sswitch_f
    const-string v1, "com.google.android.gms.maps.model.internal.ITileProviderDelegate"

    #@11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/maps/model/internal/i$a;->getTile(III)Lcom/google/android/gms/maps/model/Tile;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    if-eqz v1, :cond_30

    #@29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/maps/model/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    goto :goto_8

    #@30
    :cond_30
    const/4 v1, 0x0

    #@31
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    goto :goto_8

    #@35
    nop

    #@36
    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
