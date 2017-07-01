.class public abstract Lcom/google/android/gms/internal/aq$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aq$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/aq$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static f(Landroid/os/IBinder;)Lcom/google/android/gms/internal/aq;
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
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/aq;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/aq;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/aq$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aq$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    sparse-switch p1, :sswitch_data_132

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v1

    #@a
    :goto_a
    return v1

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    goto :goto_a

    #@11
    :sswitch_11
    const-string v2, "com.google.android.gms.ads.internal.client.IAdManager"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->U()Lcom/google/android/gms/dynamic/d;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    if-eqz v2, :cond_23

    #@1f
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    goto :goto_a

    #@27
    :sswitch_27
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->destroy()V

    #@2f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    goto :goto_a

    #@33
    :sswitch_33
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->isReady()Z

    #@3b
    move-result v0

    #@3c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f
    if-eqz v0, :cond_46

    #@41
    move v0, v1

    #@42
    :goto_42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    goto :goto_a

    #@46
    :cond_46
    move v0, v2

    #@47
    goto :goto_42

    #@48
    :sswitch_48
    const-string v3, "com.google.android.gms.ads.internal.client.IAdManager"

    #@4a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_59

    #@53
    sget-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    #@55
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/aj;->b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ai;

    #@58
    move-result-object v0

    #@59
    :cond_59
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aq$a;->a(Lcom/google/android/gms/internal/ai;)Z

    #@5c
    move-result v0

    #@5d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    if-eqz v0, :cond_63

    #@62
    move v2, v1

    #@63
    :cond_63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    goto :goto_a

    #@67
    :sswitch_67
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->pause()V

    #@6f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@72
    goto :goto_a

    #@73
    :sswitch_73
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->resume()V

    #@7b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e
    goto :goto_a

    #@7f
    :sswitch_7f
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@87
    move-result-object v0

    #@88
    invoke-static {v0}, Lcom/google/android/gms/internal/ap$a;->e(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ap;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aq$a;->a(Lcom/google/android/gms/internal/ap;)V

    #@8f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    goto/16 :goto_a

    #@94
    :sswitch_94
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9c
    move-result-object v0

    #@9d
    invoke-static {v0}, Lcom/google/android/gms/internal/as$a;->h(Landroid/os/IBinder;)Lcom/google/android/gms/internal/as;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aq$a;->a(Lcom/google/android/gms/internal/as;)V

    #@a4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a7
    goto/16 :goto_a

    #@a9
    :sswitch_a9
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->showInterstitial()V

    #@b1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4
    goto/16 :goto_a

    #@b6
    :sswitch_b6
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@b8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bb
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->stopLoading()V

    #@be
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1
    goto/16 :goto_a

    #@c3
    :sswitch_c3
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@c5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->ag()V

    #@cb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ce
    goto/16 :goto_a

    #@d0
    :sswitch_d0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@d2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq$a;->V()Lcom/google/android/gms/internal/al;

    #@d8
    move-result-object v0

    #@d9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@dc
    if-eqz v0, :cond_e6

    #@de
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e1
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/al;->writeToParcel(Landroid/os/Parcel;I)V

    #@e4
    goto/16 :goto_a

    #@e6
    :cond_e6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e9
    goto/16 :goto_a

    #@eb
    :sswitch_eb
    const-string v2, "com.google.android.gms.ads.internal.client.IAdManager"

    #@ed
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f3
    move-result v2

    #@f4
    if-eqz v2, :cond_fc

    #@f6
    sget-object v0, Lcom/google/android/gms/internal/al;->CREATOR:Lcom/google/android/gms/internal/am;

    #@f8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/am;->c(Landroid/os/Parcel;)Lcom/google/android/gms/internal/al;

    #@fb
    move-result-object v0

    #@fc
    :cond_fc
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aq$a;->a(Lcom/google/android/gms/internal/al;)V

    #@ff
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@102
    goto/16 :goto_a

    #@104
    :sswitch_104
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10c
    move-result-object v0

    #@10d
    invoke-static {v0}, Lcom/google/android/gms/internal/dc$a;->q(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dc;

    #@110
    move-result-object v0

    #@111
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aq$a;->a(Lcom/google/android/gms/internal/dc;)V

    #@114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    goto/16 :goto_a

    #@119
    :sswitch_119
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    #@11b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@121
    move-result-object v0

    #@122
    invoke-static {v0}, Lcom/google/android/gms/internal/dg$a;->u(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dg;

    #@125
    move-result-object v0

    #@126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@129
    move-result-object v2

    #@12a
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/aq$a;->a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)V

    #@12d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@130
    goto/16 :goto_a

    #@132
    :sswitch_data_132
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_33
        0x4 -> :sswitch_48
        0x5 -> :sswitch_67
        0x6 -> :sswitch_73
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_94
        0x9 -> :sswitch_a9
        0xa -> :sswitch_b6
        0xb -> :sswitch_c3
        0xc -> :sswitch_d0
        0xd -> :sswitch_eb
        0xe -> :sswitch_104
        0xf -> :sswitch_119
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
