.class public abstract Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    sparse-switch p1, :sswitch_data_a0

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

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
    if-eqz v3, :cond_28

    #@20
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/content/Intent;

    #@28
    :cond_28
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->b(ILandroid/content/Intent;)V

    #@2b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e
    move v0, v1

    #@2f
    goto :goto_9

    #@30
    :sswitch_30
    const-string v2, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

    #@32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_41

    #@3b
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@3d
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@40
    move-result-object v0

    #@41
    :cond_41
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->S(Lcom/google/android/gms/common/data/DataHolder;)V

    #@44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    move v0, v1

    #@48
    goto :goto_9

    #@49
    :sswitch_49
    const-string v2, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

    #@4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_5a

    #@54
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@56
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@59
    move-result-object v0

    #@5a
    :cond_5a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->T(Lcom/google/android/gms/common/data/DataHolder;)V

    #@5d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    move v0, v1

    #@61
    goto :goto_9

    #@62
    :sswitch_62
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

    #@64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v0

    #@6b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ci(I)V

    #@6e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@71
    move v0, v1

    #@72
    goto :goto_9

    #@73
    :sswitch_73
    const-string v2, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

    #@75
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v2

    #@7c
    if-eqz v2, :cond_84

    #@7e
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@80
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@83
    move-result-object v0

    #@84
    :cond_84
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->g(Lcom/google/android/gms/common/data/DataHolder;)V

    #@87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    move v0, v1

    #@8b
    goto/16 :goto_9

    #@8d
    :sswitch_8d
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"

    #@8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v0

    #@96
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->cj(I)V

    #@99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    move v0, v1

    #@9d
    goto/16 :goto_9

    #@9f
    nop

    #@a0
    :sswitch_data_a0
    .sparse-switch
        0x1389 -> :sswitch_11
        0x138a -> :sswitch_30
        0x138b -> :sswitch_49
        0x138c -> :sswitch_62
        0x138d -> :sswitch_73
        0x138e -> :sswitch_8d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
