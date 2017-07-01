.class public abstract Lcom/google/android/gms/internal/bu$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bu$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/bu$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static j(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bu;
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
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/bu;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/bu;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/bu$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bu$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    sparse-switch p1, :sswitch_data_144

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v7

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_4b

    #@24
    sget-object v2, Lcom/google/android/gms/internal/al;->CREATOR:Lcom/google/android/gms/internal/am;

    #@26
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/am;->c(Landroid/os/Parcel;)Lcom/google/android/gms/internal/al;

    #@29
    move-result-object v2

    #@2a
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_4d

    #@30
    sget-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    #@32
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/aj;->b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ai;

    #@35
    move-result-object v3

    #@36
    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {v0}, Lcom/google/android/gms/internal/bv$a;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bv;

    #@41
    move-result-object v5

    #@42
    move-object v0, p0

    #@43
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/bu$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    move v0, v7

    #@4a
    goto :goto_9

    #@4b
    :cond_4b
    move-object v2, v0

    #@4c
    goto :goto_2a

    #@4d
    :cond_4d
    move-object v3, v0

    #@4e
    goto :goto_36

    #@4f
    :sswitch_4f
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bu$a;->getView()Lcom/google/android/gms/dynamic/d;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    if-eqz v1, :cond_61

    #@5d
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@60
    move-result-object v0

    #@61
    :cond_61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@64
    move v0, v7

    #@65
    goto :goto_9

    #@66
    :sswitch_66
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@68
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e
    move-result-object v1

    #@6f
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_7f

    #@79
    sget-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    #@7b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/aj;->b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ai;

    #@7e
    move-result-object v0

    #@7f
    :cond_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@86
    move-result-object v3

    #@87
    invoke-static {v3}, Lcom/google/android/gms/internal/bv$a;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bv;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/bu$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@8e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    move v0, v7

    #@92
    goto/16 :goto_9

    #@94
    :sswitch_94
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bu$a;->showInterstitial()V

    #@9c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f
    move v0, v7

    #@a0
    goto/16 :goto_9

    #@a2
    :sswitch_a2
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@a4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bu$a;->destroy()V

    #@aa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad
    move v0, v7

    #@ae
    goto/16 :goto_9

    #@b0
    :sswitch_b0
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@b2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b8
    move-result-object v1

    #@b9
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c0
    move-result v2

    #@c1
    if-eqz v2, :cond_ef

    #@c3
    sget-object v2, Lcom/google/android/gms/internal/al;->CREATOR:Lcom/google/android/gms/internal/am;

    #@c5
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/am;->c(Landroid/os/Parcel;)Lcom/google/android/gms/internal/al;

    #@c8
    move-result-object v2

    #@c9
    :goto_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v3

    #@cd
    if-eqz v3, :cond_f1

    #@cf
    sget-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    #@d1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/aj;->b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ai;

    #@d4
    move-result-object v3

    #@d5
    :goto_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d8
    move-result-object v4

    #@d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dc
    move-result-object v5

    #@dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e0
    move-result-object v0

    #@e1
    invoke-static {v0}, Lcom/google/android/gms/internal/bv$a;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bv;

    #@e4
    move-result-object v6

    #@e5
    move-object v0, p0

    #@e6
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/bu$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@e9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ec
    move v0, v7

    #@ed
    goto/16 :goto_9

    #@ef
    :cond_ef
    move-object v2, v0

    #@f0
    goto :goto_c9

    #@f1
    :cond_f1
    move-object v3, v0

    #@f2
    goto :goto_d5

    #@f3
    :sswitch_f3
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@f5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fb
    move-result-object v1

    #@fc
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@ff
    move-result-object v1

    #@100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@103
    move-result v2

    #@104
    if-eqz v2, :cond_126

    #@106
    sget-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    #@108
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/aj;->b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ai;

    #@10b
    move-result-object v2

    #@10c
    :goto_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10f
    move-result-object v3

    #@110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@113
    move-result-object v4

    #@114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@117
    move-result-object v0

    #@118
    invoke-static {v0}, Lcom/google/android/gms/internal/bv$a;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bv;

    #@11b
    move-result-object v5

    #@11c
    move-object v0, p0

    #@11d
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/bu$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@123
    move v0, v7

    #@124
    goto/16 :goto_9

    #@126
    :cond_126
    move-object v2, v0

    #@127
    goto :goto_10c

    #@128
    :sswitch_128
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@12a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bu$a;->pause()V

    #@130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@133
    move v0, v7

    #@134
    goto/16 :goto_9

    #@136
    :sswitch_136
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    #@138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bu$a;->resume()V

    #@13e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@141
    move v0, v7

    #@142
    goto/16 :goto_9

    #@144
    :sswitch_data_144
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_4f
        0x3 -> :sswitch_66
        0x4 -> :sswitch_94
        0x5 -> :sswitch_a2
        0x6 -> :sswitch_b0
        0x7 -> :sswitch_f3
        0x8 -> :sswitch_128
        0x9 -> :sswitch_136
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
