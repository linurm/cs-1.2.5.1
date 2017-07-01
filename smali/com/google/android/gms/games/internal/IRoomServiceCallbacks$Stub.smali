.class public abstract Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static am(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
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
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_1c0

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v1

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->c(IILjava/lang/String;)V

    #@25
    move v0, v1

    #@26
    goto :goto_9

    #@27
    :sswitch_27
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@33
    move-result-object v2

    #@34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v3

    #@38
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Ljava/lang/String;[BI)V

    #@3b
    move v0, v1

    #@3c
    goto :goto_9

    #@3d
    :sswitch_3d
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bg(Ljava/lang/String;)V

    #@49
    move v0, v1

    #@4a
    goto :goto_9

    #@4b
    :sswitch_4b
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@4d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bh(Ljava/lang/String;)V

    #@57
    move v0, v1

    #@58
    goto :goto_9

    #@59
    :sswitch_59
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@5b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bi(Ljava/lang/String;)V

    #@65
    move v0, v1

    #@66
    goto :goto_9

    #@67
    :sswitch_67
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bj(Ljava/lang/String;)V

    #@73
    move v0, v1

    #@74
    goto :goto_9

    #@75
    :sswitch_75
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bk(Ljava/lang/String;)V

    #@81
    move v0, v1

    #@82
    goto :goto_9

    #@83
    :sswitch_83
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Ljava/lang/String;[Ljava/lang/String;)V

    #@93
    move v0, v1

    #@94
    goto/16 :goto_9

    #@96
    :sswitch_96
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->b(Ljava/lang/String;[Ljava/lang/String;)V

    #@a6
    move v0, v1

    #@a7
    goto/16 :goto_9

    #@a9
    :sswitch_a9
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b1
    move-result-object v0

    #@b2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->c(Ljava/lang/String;[Ljava/lang/String;)V

    #@b9
    move v0, v1

    #@ba
    goto/16 :goto_9

    #@bc
    :sswitch_bc
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@be
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c4
    move-result-object v0

    #@c5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@c8
    move-result-object v2

    #@c9
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->d(Ljava/lang/String;[Ljava/lang/String;)V

    #@cc
    move v0, v1

    #@cd
    goto/16 :goto_9

    #@cf
    :sswitch_cf
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@d1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d7
    move-result-object v0

    #@d8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@db
    move-result-object v2

    #@dc
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->e(Ljava/lang/String;[Ljava/lang/String;)V

    #@df
    move v0, v1

    #@e0
    goto/16 :goto_9

    #@e2
    :sswitch_e2
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@e4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ea
    move-result-object v0

    #@eb
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@ee
    move-result-object v2

    #@ef
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->f(Ljava/lang/String;[Ljava/lang/String;)V

    #@f2
    move v0, v1

    #@f3
    goto/16 :goto_9

    #@f5
    :sswitch_f5
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@f7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->onP2PConnected(Ljava/lang/String;)V

    #@101
    move v0, v1

    #@102
    goto/16 :goto_9

    #@104
    :sswitch_104
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10c
    move-result-object v0

    #@10d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->onP2PDisconnected(Ljava/lang/String;)V

    #@110
    move v0, v1

    #@111
    goto/16 :goto_9

    #@113
    :sswitch_113
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@118
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->hJ()V

    #@11b
    move v0, v1

    #@11c
    goto/16 :goto_9

    #@11e
    :sswitch_11e
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@126
    move-result-object v0

    #@127
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@12a
    move-result-object v2

    #@12b
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->g(Ljava/lang/String;[Ljava/lang/String;)V

    #@12e
    move v0, v1

    #@12f
    goto/16 :goto_9

    #@131
    :sswitch_131
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@139
    move-result-object v0

    #@13a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bl(Ljava/lang/String;)V

    #@13d
    move v0, v1

    #@13e
    goto/16 :goto_9

    #@140
    :sswitch_140
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@148
    move-result-object v0

    #@149
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bm(Ljava/lang/String;)V

    #@14c
    move v0, v1

    #@14d
    goto/16 :goto_9

    #@14f
    :sswitch_14f
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v0

    #@158
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->ck(I)V

    #@15b
    move v0, v1

    #@15c
    goto/16 :goto_9

    #@15e
    :sswitch_15e
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@166
    move-result-object v0

    #@167
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->al(Landroid/os/IBinder;)V

    #@16a
    move v0, v1

    #@16b
    goto/16 :goto_9

    #@16d
    :sswitch_16d
    const-string v2, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@16f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v2

    #@176
    if-eqz v2, :cond_17e

    #@178
    sget-object v0, Lcom/google/android/gms/games/internal/ConnectionInfo;->CREATOR:Lcom/google/android/gms/games/internal/ConnectionInfoCreator;

    #@17a
    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;->bf(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/ConnectionInfo;

    #@17d
    move-result-object v0

    #@17e
    :cond_17e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Lcom/google/android/gms/games/internal/ConnectionInfo;)V

    #@181
    move v0, v1

    #@182
    goto/16 :goto_9

    #@184
    :sswitch_184
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@189
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->hK()V

    #@18c
    move v0, v1

    #@18d
    goto/16 :goto_9

    #@18f
    :sswitch_18f
    const-string v2, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@191
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@197
    move-result v2

    #@198
    if-eqz v2, :cond_1a2

    #@19a
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19f
    move-result-object v0

    #@1a0
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@1a2
    :cond_1a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v2

    #@1a6
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Landroid/os/ParcelFileDescriptor;I)V

    #@1a9
    move v0, v1

    #@1aa
    goto/16 :goto_9

    #@1ac
    :sswitch_1ac
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    #@1ae
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b4
    move-result-object v0

    #@1b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b8
    move-result v2

    #@1b9
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->t(Ljava/lang/String;I)V

    #@1bc
    move v0, v1

    #@1bd
    goto/16 :goto_9

    #@1bf
    nop

    #@1c0
    :sswitch_data_1c0
    .sparse-switch
        0x3e9 -> :sswitch_11
        0x3ea -> :sswitch_27
        0x3eb -> :sswitch_3d
        0x3ec -> :sswitch_4b
        0x3ed -> :sswitch_59
        0x3ee -> :sswitch_67
        0x3ef -> :sswitch_75
        0x3f0 -> :sswitch_83
        0x3f1 -> :sswitch_96
        0x3f2 -> :sswitch_a9
        0x3f3 -> :sswitch_bc
        0x3f4 -> :sswitch_cf
        0x3f5 -> :sswitch_e2
        0x3f6 -> :sswitch_f5
        0x3f7 -> :sswitch_104
        0x3f8 -> :sswitch_113
        0x3f9 -> :sswitch_11e
        0x3fa -> :sswitch_131
        0x3fb -> :sswitch_140
        0x3fc -> :sswitch_14f
        0x3fd -> :sswitch_15e
        0x3fe -> :sswitch_16d
        0x3ff -> :sswitch_184
        0x400 -> :sswitch_18f
        0x401 -> :sswitch_1ac
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
