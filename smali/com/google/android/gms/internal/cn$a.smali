.class public abstract Lcom/google/android/gms/internal/cn$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/cn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cn$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/cn$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static m(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cn;
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
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/cn;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/cn;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/cn$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cn$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
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
    sparse-switch p1, :sswitch_data_b2

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_24

    #@1c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/os/Bundle;

    #@24
    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cn$a;->onCreate(Landroid/os/Bundle;)V

    #@27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    move v0, v1

    #@2b
    goto :goto_9

    #@2c
    :sswitch_2c
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cn$a;->onRestart()V

    #@34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@37
    move v0, v1

    #@38
    goto :goto_9

    #@39
    :sswitch_39
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cn$a;->onStart()V

    #@41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    move v0, v1

    #@45
    goto :goto_9

    #@46
    :sswitch_46
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cn$a;->onResume()V

    #@4e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    move v0, v1

    #@52
    goto :goto_9

    #@53
    :sswitch_53
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cn$a;->onPause()V

    #@5b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e
    move v0, v1

    #@5f
    goto :goto_9

    #@60
    :sswitch_60
    const-string v2, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@62
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v2

    #@69
    if-eqz v2, :cond_73

    #@6b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Landroid/os/Bundle;

    #@73
    :cond_73
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cn$a;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    if-eqz v0, :cond_83

    #@7b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7e
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@81
    :goto_81
    move v0, v1

    #@82
    goto :goto_9

    #@83
    :cond_83
    const/4 v0, 0x0

    #@84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    goto :goto_81

    #@88
    :sswitch_88
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@8a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cn$a;->onStop()V

    #@90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@93
    move v0, v1

    #@94
    goto/16 :goto_9

    #@96
    :sswitch_96
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cn$a;->onDestroy()V

    #@9e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    move v0, v1

    #@a2
    goto/16 :goto_9

    #@a4
    :sswitch_a4
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    #@a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cn$a;->S()V

    #@ac
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@af
    move v0, v1

    #@b0
    goto/16 :goto_9

    #@b2
    :sswitch_data_b2
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_39
        0x4 -> :sswitch_46
        0x5 -> :sswitch_53
        0x6 -> :sswitch_60
        0x7 -> :sswitch_88
        0x8 -> :sswitch_96
        0x9 -> :sswitch_a4
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
