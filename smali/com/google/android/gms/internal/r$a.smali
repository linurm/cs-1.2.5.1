.class public abstract Lcom/google/android/gms/internal/r$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/r$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/r;
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
    const-string v0, "com.google.android.auth.IAuthManagerService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/r;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/r;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/r$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/r$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    sparse-switch p1, :sswitch_data_6e

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const-string v0, "com.google.android.auth.IAuthManagerService"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    move v0, v1

    #@11
    goto :goto_a

    #@12
    :sswitch_12
    const-string v2, "com.google.android.auth.IAuthManagerService"

    #@14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2d

    #@25
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/os/Bundle;

    #@2d
    :cond_2d
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    if-eqz v0, :cond_3e

    #@36
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@3c
    :goto_3c
    move v0, v1

    #@3d
    goto :goto_a

    #@3e
    :cond_3e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    goto :goto_3c

    #@42
    :sswitch_42
    const-string v2, "com.google.android.auth.IAuthManagerService"

    #@44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_59

    #@51
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@53
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Landroid/os/Bundle;

    #@59
    :cond_59
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    if-eqz v0, :cond_6a

    #@62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@68
    :goto_68
    move v0, v1

    #@69
    goto :goto_a

    #@6a
    :cond_6a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    goto :goto_68

    #@6e
    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_42
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
