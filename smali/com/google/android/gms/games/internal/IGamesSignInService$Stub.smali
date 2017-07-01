.class public abstract Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesSignInService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesSignInService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    sparse-switch p1, :sswitch_data_13a

    #@4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    move v0, v6

    #@f
    goto :goto_8

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->bc(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    move v0, v6

    #@24
    goto :goto_8

    #@25
    :sswitch_25
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->bd(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@38
    move v0, v6

    #@39
    goto :goto_8

    #@3a
    :sswitch_3a
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_56

    #@49
    move v0, v6

    #@4a
    :goto_4a
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->f(Ljava/lang/String;Z)Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@54
    move v0, v6

    #@55
    goto :goto_8

    #@56
    :cond_56
    const/4 v0, 0x0

    #@57
    goto :goto_4a

    #@58
    :sswitch_58
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@5a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@60
    move-result-object v0

    #@61
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    move-object v0, p0

    #@76
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    move v0, v6

    #@7d
    goto :goto_8

    #@7e
    :sswitch_7e
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@86
    move-result-object v0

    #@87
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@9a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d
    move v0, v6

    #@9e
    goto/16 :goto_8

    #@a0
    :sswitch_a0
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@a2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a8
    move-result-object v0

    #@a9
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@bc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    move v0, v6

    #@c0
    goto/16 :goto_8

    #@c2
    :sswitch_c2
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ca
    move-result-object v0

    #@cb
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    #@ce
    move-result-object v0

    #@cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    #@da
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@dd
    move v0, v6

    #@de
    goto/16 :goto_8

    #@e0
    :sswitch_e0
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@e2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e8
    move-result-object v0

    #@e9
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    #@ec
    move-result-object v0

    #@ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f8
    move-result-object v3

    #@f9
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ff
    move v0, v6

    #@100
    goto/16 :goto_8

    #@102
    :sswitch_102
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10a
    move-result-object v0

    #@10b
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    #@10e
    move-result-object v0

    #@10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@112
    move-result-object v1

    #@113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@116
    move-result-object v2

    #@117
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@11a
    move-result-object v3

    #@11b
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@11e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@121
    move v0, v6

    #@122
    goto/16 :goto_8

    #@124
    :sswitch_124
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    #@126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12c
    move-result-object v0

    #@12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@130
    move-result-object v1

    #@131
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->o(Ljava/lang/String;Ljava/lang/String;)V

    #@134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@137
    move v0, v6

    #@138
    goto/16 :goto_8

    #@13a
    :sswitch_data_13a
    .sparse-switch
        0x1389 -> :sswitch_10
        0x138a -> :sswitch_25
        0x138b -> :sswitch_58
        0x138c -> :sswitch_7e
        0x138d -> :sswitch_a0
        0x138e -> :sswitch_c2
        0x138f -> :sswitch_e0
        0x1390 -> :sswitch_102
        0x1391 -> :sswitch_3a
        0x2329 -> :sswitch_124
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
