.class public abstract Lcom/google/android/gms/games/internal/IRoomService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IRoomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IRoomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
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
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    sparse-switch p1, :sswitch_data_f6

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v2

    #@9
    :goto_9
    return v2

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->am(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a(Landroid/os/IBinder;Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;)V

    #@24
    goto :goto_9

    #@25
    :sswitch_25
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->hF()V

    #@2d
    goto :goto_9

    #@2e
    :sswitch_2e
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->hG()V

    #@36
    goto :goto_9

    #@37
    :sswitch_37
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    goto :goto_9

    #@4c
    :sswitch_4c
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->hH()V

    #@54
    goto :goto_9

    #@55
    :sswitch_55
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@57
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_71

    #@60
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@62
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@65
    move-result-object v0

    #@66
    :goto_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v3

    #@6a
    if-eqz v3, :cond_6d

    #@6c
    move v1, v2

    #@6d
    :cond_6d
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Z)V

    #@70
    goto :goto_9

    #@71
    :cond_71
    const/4 v0, 0x0

    #@72
    goto :goto_66

    #@73
    :sswitch_73
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->hI()V

    #@7b
    goto :goto_9

    #@7c
    :sswitch_7c
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_88

    #@87
    move v1, v2

    #@88
    :cond_88
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->G(Z)V

    #@8b
    goto/16 :goto_9

    #@8d
    :sswitch_8d
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@95
    move-result-object v0

    #@96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v3

    #@9e
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a([BLjava/lang/String;I)V

    #@a1
    goto/16 :goto_9

    #@a3
    :sswitch_a3
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@a5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a([B[Ljava/lang/String;)V

    #@b3
    goto/16 :goto_9

    #@b5
    :sswitch_b5
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@b7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v1

    #@c2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->r(Ljava/lang/String;I)V

    #@c5
    goto/16 :goto_9

    #@c7
    :sswitch_c7
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@c9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v1

    #@d4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->s(Ljava/lang/String;I)V

    #@d7
    goto/16 :goto_9

    #@d9
    :sswitch_d9
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@db
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->be(Ljava/lang/String;)V

    #@e5
    goto/16 :goto_9

    #@e7
    :sswitch_e7
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    #@e9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ef
    move-result-object v0

    #@f0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->bf(Ljava/lang/String;)V

    #@f3
    goto/16 :goto_9

    #@f5
    nop

    #@f6
    :sswitch_data_f6
    .sparse-switch
        0x3e9 -> :sswitch_10
        0x3ea -> :sswitch_25
        0x3eb -> :sswitch_2e
        0x3ec -> :sswitch_37
        0x3ed -> :sswitch_4c
        0x3ee -> :sswitch_55
        0x3ef -> :sswitch_73
        0x3f0 -> :sswitch_7c
        0x3f1 -> :sswitch_8d
        0x3f2 -> :sswitch_a3
        0x3f3 -> :sswitch_b5
        0x3f4 -> :sswitch_c7
        0x3f5 -> :sswitch_d9
        0x3f6 -> :sswitch_e7
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
