.class public abstract Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    sparse-switch p1, :sswitch_data_72e

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    :goto_9
    return v6

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->d(ILjava/lang/String;)V

    #@20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@23
    goto :goto_9

    #@24
    :sswitch_24
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3c

    #@2f
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@31
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@34
    move-result-object v0

    #@35
    :goto_35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->c(Lcom/google/android/gms/common/data/DataHolder;)V

    #@38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    goto :goto_9

    #@3c
    :cond_3c
    move-object v0, v5

    #@3d
    goto :goto_35

    #@3e
    :sswitch_3e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->e(ILjava/lang/String;)V

    #@4e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    goto :goto_9

    #@52
    :sswitch_52
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_63

    #@5d
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@5f
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@62
    move-result-object v5

    #@63
    :cond_63
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->e(Lcom/google/android/gms/common/data/DataHolder;)V

    #@66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@69
    goto :goto_9

    #@6a
    :sswitch_6a
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@6c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_8f

    #@75
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@77
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@7a
    move-result-object v0

    #@7b
    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_87

    #@81
    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@83
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@86
    move-result-object v5

    #@87
    :cond_87
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    #@8a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d
    goto/16 :goto_9

    #@8f
    :cond_8f
    move-object v0, v5

    #@90
    goto :goto_7b

    #@91
    :sswitch_91
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v0

    #@9a
    if-eqz v0, :cond_a2

    #@9c
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@9e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@a1
    move-result-object v5

    #@a2
    :cond_a2
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->f(Lcom/google/android/gms/common/data/DataHolder;)V

    #@a5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    goto/16 :goto_9

    #@aa
    :sswitch_aa
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@ac
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b2
    move-result v0

    #@b3
    if-eqz v0, :cond_bb

    #@b5
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@b7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@ba
    move-result-object v5

    #@bb
    :cond_bb
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->g(Lcom/google/android/gms/common/data/DataHolder;)V

    #@be
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1
    goto/16 :goto_9

    #@c3
    :sswitch_c3
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@c5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v0

    #@cc
    if-eqz v0, :cond_d4

    #@ce
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@d0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@d3
    move-result-object v5

    #@d4
    :cond_d4
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->h(Lcom/google/android/gms/common/data/DataHolder;)V

    #@d7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@da
    goto/16 :goto_9

    #@dc
    :sswitch_dc
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@de
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e4
    move-result v0

    #@e5
    if-eqz v0, :cond_ed

    #@e7
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@e9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@ec
    move-result-object v5

    #@ed
    :cond_ed
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->i(Lcom/google/android/gms/common/data/DataHolder;)V

    #@f0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f3
    goto/16 :goto_9

    #@f5
    :sswitch_f5
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@f7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fd
    move-result v0

    #@fe
    if-eqz v0, :cond_106

    #@100
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@102
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@105
    move-result-object v5

    #@106
    :cond_106
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->j(Lcom/google/android/gms/common/data/DataHolder;)V

    #@109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10c
    goto/16 :goto_9

    #@10e
    :sswitch_10e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v0

    #@117
    if-eqz v0, :cond_11f

    #@119
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@11b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@11e
    move-result-object v5

    #@11f
    :cond_11f
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->k(Lcom/google/android/gms/common/data/DataHolder;)V

    #@122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@125
    goto/16 :goto_9

    #@127
    :sswitch_127
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12c
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->dT()V

    #@12f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@132
    goto/16 :goto_9

    #@134
    :sswitch_134
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v0

    #@13d
    if-eqz v0, :cond_145

    #@13f
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@141
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@144
    move-result-object v5

    #@145
    :cond_145
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->m(Lcom/google/android/gms/common/data/DataHolder;)V

    #@148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@14b
    goto/16 :goto_9

    #@14d
    :sswitch_14d
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@14f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@155
    move-result v0

    #@156
    if-eqz v0, :cond_15e

    #@158
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@15a
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@15d
    move-result-object v5

    #@15e
    :cond_15e
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->n(Lcom/google/android/gms/common/data/DataHolder;)V

    #@161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@164
    goto/16 :goto_9

    #@166
    :sswitch_166
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@168
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@16e
    move-result v0

    #@16f
    if-eqz v0, :cond_177

    #@171
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@173
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@176
    move-result-object v5

    #@177
    :cond_177
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->u(Lcom/google/android/gms/common/data/DataHolder;)V

    #@17a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    goto/16 :goto_9

    #@17f
    :sswitch_17f
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@181
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@187
    move-result v0

    #@188
    if-eqz v0, :cond_190

    #@18a
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@18c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@18f
    move-result-object v5

    #@190
    :cond_190
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->v(Lcom/google/android/gms/common/data/DataHolder;)V

    #@193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@196
    goto/16 :goto_9

    #@198
    :sswitch_198
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@19a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a0
    move-result v0

    #@1a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a4
    move-result-object v1

    #@1a5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onLeftRoom(ILjava/lang/String;)V

    #@1a8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ab
    goto/16 :goto_9

    #@1ad
    :sswitch_1ad
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@1af
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v0

    #@1b6
    if-eqz v0, :cond_1be

    #@1b8
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@1ba
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@1bd
    move-result-object v5

    #@1be
    :cond_1be
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->w(Lcom/google/android/gms/common/data/DataHolder;)V

    #@1c1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c4
    goto/16 :goto_9

    #@1c6
    :sswitch_1c6
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@1c8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1ce
    move-result v0

    #@1cf
    if-eqz v0, :cond_1d7

    #@1d1
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@1d3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@1d6
    move-result-object v5

    #@1d7
    :cond_1d7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->x(Lcom/google/android/gms/common/data/DataHolder;)V

    #@1da
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dd
    goto/16 :goto_9

    #@1df
    :sswitch_1df
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@1e1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e7
    move-result v0

    #@1e8
    if-eqz v0, :cond_1f0

    #@1ea
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@1ec
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@1ef
    move-result-object v5

    #@1f0
    :cond_1f0
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->y(Lcom/google/android/gms/common/data/DataHolder;)V

    #@1f3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f6
    goto/16 :goto_9

    #@1f8
    :sswitch_1f8
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@1fa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@200
    move-result v0

    #@201
    if-eqz v0, :cond_209

    #@203
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@205
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@208
    move-result-object v5

    #@209
    :cond_209
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->z(Lcom/google/android/gms/common/data/DataHolder;)V

    #@20c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20f
    goto/16 :goto_9

    #@211
    :sswitch_211
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@213
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@219
    move-result v0

    #@21a
    if-eqz v0, :cond_222

    #@21c
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@21e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@221
    move-result-object v5

    #@222
    :cond_222
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->A(Lcom/google/android/gms/common/data/DataHolder;)V

    #@225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@228
    goto/16 :goto_9

    #@22a
    :sswitch_22a
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@22c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@232
    move-result v0

    #@233
    if-eqz v0, :cond_23b

    #@235
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@237
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@23a
    move-result-object v5

    #@23b
    :cond_23b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@23e
    move-result-object v0

    #@23f
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@245
    goto/16 :goto_9

    #@247
    :sswitch_247
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@249
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@24f
    move-result v0

    #@250
    if-eqz v0, :cond_258

    #@252
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@254
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@257
    move-result-object v5

    #@258
    :cond_258
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@25b
    move-result-object v0

    #@25c
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->b(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@25f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@262
    goto/16 :goto_9

    #@264
    :sswitch_264
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@266
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@26c
    move-result v0

    #@26d
    if-eqz v0, :cond_275

    #@26f
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@271
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@274
    move-result-object v5

    #@275
    :cond_275
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@278
    move-result-object v0

    #@279
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->c(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@27c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27f
    goto/16 :goto_9

    #@281
    :sswitch_281
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@283
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@289
    move-result v0

    #@28a
    if-eqz v0, :cond_292

    #@28c
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@28e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@291
    move-result-object v5

    #@292
    :cond_292
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@295
    move-result-object v0

    #@296
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->d(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@29c
    goto/16 :goto_9

    #@29e
    :sswitch_29e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@2a0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2a6
    move-result v0

    #@2a7
    if-eqz v0, :cond_2af

    #@2a9
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@2ab
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@2ae
    move-result-object v5

    #@2af
    :cond_2af
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2b2
    move-result-object v0

    #@2b3
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->e(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@2b6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b9
    goto/16 :goto_9

    #@2bb
    :sswitch_2bb
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@2bd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c3
    move-result v0

    #@2c4
    if-eqz v0, :cond_2cc

    #@2c6
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@2c8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@2cb
    move-result-object v5

    #@2cc
    :cond_2cc
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2cf
    move-result-object v0

    #@2d0
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->f(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@2d3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d6
    goto/16 :goto_9

    #@2d8
    :sswitch_2d8
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@2da
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2e0
    move-result v0

    #@2e1
    if-eqz v0, :cond_2f3

    #@2e3
    sget-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e5
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e8
    move-result-object v0

    #@2e9
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    #@2eb
    :goto_2eb
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    #@2ee
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f1
    goto/16 :goto_9

    #@2f3
    :cond_2f3
    move-object v0, v5

    #@2f4
    goto :goto_2eb

    #@2f5
    :sswitch_2f5
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@2f7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2fd
    move-result v0

    #@2fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@301
    move-result v1

    #@302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@305
    move-result-object v2

    #@306
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->b(IILjava/lang/String;)V

    #@309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@30c
    goto/16 :goto_9

    #@30e
    :sswitch_30e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@310
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@316
    move-result v1

    #@317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31a
    move-result-object v2

    #@31b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@31e
    move-result v0

    #@31f
    if-eqz v0, :cond_32a

    #@321
    move v0, v6

    #@322
    :goto_322
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(ILjava/lang/String;Z)V

    #@325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@328
    goto/16 :goto_9

    #@32a
    :cond_32a
    const/4 v0, 0x0

    #@32b
    goto :goto_322

    #@32c
    :sswitch_32c
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@32e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@334
    move-result v0

    #@335
    if-eqz v0, :cond_33d

    #@337
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@339
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@33c
    move-result-object v5

    #@33d
    :cond_33d
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->B(Lcom/google/android/gms/common/data/DataHolder;)V

    #@340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@343
    goto/16 :goto_9

    #@345
    :sswitch_345
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@347
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34d
    move-result v0

    #@34e
    if-eqz v0, :cond_356

    #@350
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@352
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@355
    move-result-object v5

    #@356
    :cond_356
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->C(Lcom/google/android/gms/common/data/DataHolder;)V

    #@359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@35c
    goto/16 :goto_9

    #@35e
    :sswitch_35e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@360
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@366
    move-result v0

    #@367
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->cd(I)V

    #@36a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@36d
    goto/16 :goto_9

    #@36f
    :sswitch_36f
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@371
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@377
    move-result v0

    #@378
    if-eqz v0, :cond_380

    #@37a
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@37c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@37f
    move-result-object v5

    #@380
    :cond_380
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->D(Lcom/google/android/gms/common/data/DataHolder;)V

    #@383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@386
    goto/16 :goto_9

    #@388
    :sswitch_388
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@38a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@390
    move-result v0

    #@391
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ce(I)V

    #@394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@397
    goto/16 :goto_9

    #@399
    :sswitch_399
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@39b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a1
    move-result-object v0

    #@3a2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onP2PConnected(Ljava/lang/String;)V

    #@3a5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a8
    goto/16 :goto_9

    #@3aa
    :sswitch_3aa
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@3ac
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b2
    move-result-object v0

    #@3b3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onP2PDisconnected(Ljava/lang/String;)V

    #@3b6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b9
    goto/16 :goto_9

    #@3bb
    :sswitch_3bb
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@3bd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3c3
    move-result v0

    #@3c4
    if-eqz v0, :cond_3cc

    #@3c6
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@3c8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@3cb
    move-result-object v5

    #@3cc
    :cond_3cc
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->E(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3cf
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d2
    goto/16 :goto_9

    #@3d4
    :sswitch_3d4
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@3d6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3dc
    move-result v1

    #@3dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e0
    move-result v0

    #@3e1
    if-eqz v0, :cond_3f3

    #@3e3
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e5
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e8
    move-result-object v0

    #@3e9
    check-cast v0, Landroid/os/Bundle;

    #@3eb
    :goto_3eb
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->b(ILandroid/os/Bundle;)V

    #@3ee
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f1
    goto/16 :goto_9

    #@3f3
    :cond_3f3
    move-object v0, v5

    #@3f4
    goto :goto_3eb

    #@3f5
    :sswitch_3f5
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@3f7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3fd
    move-result v0

    #@3fe
    if-eqz v0, :cond_406

    #@400
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@402
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@405
    move-result-object v5

    #@406
    :cond_406
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->p(Lcom/google/android/gms/common/data/DataHolder;)V

    #@409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@40c
    goto/16 :goto_9

    #@40e
    :sswitch_40e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@410
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@416
    move-result v0

    #@417
    if-eqz v0, :cond_41f

    #@419
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@41b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@41e
    move-result-object v5

    #@41f
    :cond_41f
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->q(Lcom/google/android/gms/common/data/DataHolder;)V

    #@422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@425
    goto/16 :goto_9

    #@427
    :sswitch_427
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@429
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42f
    move-result v0

    #@430
    if-eqz v0, :cond_438

    #@432
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@434
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@437
    move-result-object v5

    #@438
    :cond_438
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->r(Lcom/google/android/gms/common/data/DataHolder;)V

    #@43b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@43e
    goto/16 :goto_9

    #@440
    :sswitch_440
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@442
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@448
    move-result v0

    #@449
    if-eqz v0, :cond_451

    #@44b
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@44d
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@450
    move-result-object v5

    #@451
    :cond_451
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->s(Lcom/google/android/gms/common/data/DataHolder;)V

    #@454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@457
    goto/16 :goto_9

    #@459
    :sswitch_459
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@45b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@461
    move-result v0

    #@462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@465
    move-result-object v1

    #@466
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->f(ILjava/lang/String;)V

    #@469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@46c
    goto/16 :goto_9

    #@46e
    :sswitch_46e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@470
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@476
    move-result v0

    #@477
    if-eqz v0, :cond_47f

    #@479
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@47b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@47e
    move-result-object v5

    #@47f
    :cond_47f
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->t(Lcom/google/android/gms/common/data/DataHolder;)V

    #@482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@485
    goto/16 :goto_9

    #@487
    :sswitch_487
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@489
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48f
    move-result-object v0

    #@490
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onTurnBasedMatchRemoved(Ljava/lang/String;)V

    #@493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@496
    goto/16 :goto_9

    #@498
    :sswitch_498
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@49a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a0
    move-result-object v0

    #@4a1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onInvitationRemoved(Ljava/lang/String;)V

    #@4a4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a7
    goto/16 :goto_9

    #@4a9
    :sswitch_4a9
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@4ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b1
    move-result v0

    #@4b2
    if-eqz v0, :cond_4ba

    #@4b4
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@4b6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@4b9
    move-result-object v5

    #@4ba
    :cond_4ba
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->l(Lcom/google/android/gms/common/data/DataHolder;)V

    #@4bd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c0
    goto/16 :goto_9

    #@4c2
    :sswitch_4c2
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@4c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4ca
    move-result v0

    #@4cb
    if-eqz v0, :cond_4d3

    #@4cd
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@4cf
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@4d2
    move-result-object v5

    #@4d3
    :cond_4d3
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->o(Lcom/google/android/gms/common/data/DataHolder;)V

    #@4d6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d9
    goto/16 :goto_9

    #@4db
    :sswitch_4db
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@4dd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4e3
    move-result-object v0

    #@4e4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onRequestRemoved(Ljava/lang/String;)V

    #@4e7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ea
    goto/16 :goto_9

    #@4ec
    :sswitch_4ec
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@4ee
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4f4
    move-result v0

    #@4f5
    if-eqz v0, :cond_4fd

    #@4f7
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@4f9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@4fc
    move-result-object v5

    #@4fd
    :cond_4fd
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->F(Lcom/google/android/gms/common/data/DataHolder;)V

    #@500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@503
    goto/16 :goto_9

    #@505
    :sswitch_505
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@507
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@50d
    move-result v0

    #@50e
    if-eqz v0, :cond_516

    #@510
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@512
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@515
    move-result-object v5

    #@516
    :cond_516
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->G(Lcom/google/android/gms/common/data/DataHolder;)V

    #@519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51c
    goto/16 :goto_9

    #@51e
    :sswitch_51e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@520
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@526
    move-result v1

    #@527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@52a
    move-result v0

    #@52b
    if-eqz v0, :cond_53d

    #@52d
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@532
    move-result-object v0

    #@533
    check-cast v0, Landroid/os/Bundle;

    #@535
    :goto_535
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->c(ILandroid/os/Bundle;)V

    #@538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@53b
    goto/16 :goto_9

    #@53d
    :cond_53d
    move-object v0, v5

    #@53e
    goto :goto_535

    #@53f
    :sswitch_53f
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@541
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@547
    move-result v0

    #@548
    if-eqz v0, :cond_550

    #@54a
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@54c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@54f
    move-result-object v5

    #@550
    :cond_550
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->H(Lcom/google/android/gms/common/data/DataHolder;)V

    #@553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@556
    goto/16 :goto_9

    #@558
    :sswitch_558
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@55a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@560
    move-result v1

    #@561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@564
    move-result v0

    #@565
    if-eqz v0, :cond_577

    #@567
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@569
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@56c
    move-result-object v0

    #@56d
    check-cast v0, Landroid/os/Bundle;

    #@56f
    :goto_56f
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->d(ILandroid/os/Bundle;)V

    #@572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@575
    goto/16 :goto_9

    #@577
    :cond_577
    move-object v0, v5

    #@578
    goto :goto_56f

    #@579
    :sswitch_579
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@57b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@581
    move-result v0

    #@582
    if-eqz v0, :cond_58a

    #@584
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@586
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@589
    move-result-object v5

    #@58a
    :cond_58a
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->I(Lcom/google/android/gms/common/data/DataHolder;)V

    #@58d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@590
    goto/16 :goto_9

    #@592
    :sswitch_592
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@594
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@59a
    move-result v0

    #@59b
    if-eqz v0, :cond_5ba

    #@59d
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@59f
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@5a2
    move-result-object v0

    #@5a3
    move-object v1, v0

    #@5a4
    :goto_5a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a7
    move-result v0

    #@5a8
    if-eqz v0, :cond_5bc

    #@5aa
    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5ac
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5af
    move-result-object v0

    #@5b0
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@5b2
    :goto_5b2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V

    #@5b5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b8
    goto/16 :goto_9

    #@5ba
    :cond_5ba
    move-object v1, v5

    #@5bb
    goto :goto_5a4

    #@5bc
    :cond_5bc
    move-object v0, v5

    #@5bd
    goto :goto_5b2

    #@5be
    :sswitch_5be
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@5c0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c6
    move-result v0

    #@5c7
    if-eqz v0, :cond_609

    #@5c9
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@5cb
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@5ce
    move-result-object v1

    #@5cf
    :goto_5cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d2
    move-result-object v2

    #@5d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5d6
    move-result v0

    #@5d7
    if-eqz v0, :cond_60b

    #@5d9
    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5db
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5de
    move-result-object v0

    #@5df
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@5e1
    move-object v3, v0

    #@5e2
    :goto_5e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5e5
    move-result v0

    #@5e6
    if-eqz v0, :cond_60d

    #@5e8
    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5ea
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ed
    move-result-object v0

    #@5ee
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@5f0
    move-object v4, v0

    #@5f1
    :goto_5f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f4
    move-result v0

    #@5f5
    if-eqz v0, :cond_600

    #@5f7
    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f9
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5fc
    move-result-object v0

    #@5fd
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@5ff
    move-object v5, v0

    #@600
    :cond_600
    move-object v0, p0

    #@601
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    #@604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@607
    goto/16 :goto_9

    #@609
    :cond_609
    move-object v1, v5

    #@60a
    goto :goto_5cf

    #@60b
    :cond_60b
    move-object v3, v5

    #@60c
    goto :goto_5e2

    #@60d
    :cond_60d
    move-object v4, v5

    #@60e
    goto :goto_5f1

    #@60f
    :sswitch_60f
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@611
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@617
    move-result v0

    #@618
    if-eqz v0, :cond_620

    #@61a
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@61c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@61f
    move-result-object v5

    #@620
    :cond_620
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->J(Lcom/google/android/gms/common/data/DataHolder;)V

    #@623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@626
    goto/16 :goto_9

    #@628
    :sswitch_628
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@62a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@630
    move-result v0

    #@631
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@634
    move-result-object v1

    #@635
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->g(ILjava/lang/String;)V

    #@638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@63b
    goto/16 :goto_9

    #@63d
    :sswitch_63d
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@63f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@642
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@645
    move-result v1

    #@646
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@649
    move-result v0

    #@64a
    if-eqz v0, :cond_65c

    #@64c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@651
    move-result-object v0

    #@652
    check-cast v0, Landroid/os/Bundle;

    #@654
    :goto_654
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->e(ILandroid/os/Bundle;)V

    #@657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@65a
    goto/16 :goto_9

    #@65c
    :cond_65c
    move-object v0, v5

    #@65d
    goto :goto_654

    #@65e
    :sswitch_65e
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@660
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@666
    move-result v0

    #@667
    if-eqz v0, :cond_66f

    #@669
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@66b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@66e
    move-result-object v5

    #@66f
    :cond_66f
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->P(Lcom/google/android/gms/common/data/DataHolder;)V

    #@672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@675
    goto/16 :goto_9

    #@677
    :sswitch_677
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@679
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@67f
    move-result v0

    #@680
    if-eqz v0, :cond_688

    #@682
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@684
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@687
    move-result-object v5

    #@688
    :cond_688
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->d(Lcom/google/android/gms/common/data/DataHolder;)V

    #@68b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@68e
    goto/16 :goto_9

    #@690
    :sswitch_690
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@692
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@698
    move-result v0

    #@699
    if-eqz v0, :cond_6a1

    #@69b
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@69d
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@6a0
    move-result-object v5

    #@6a1
    :cond_6a1
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->K(Lcom/google/android/gms/common/data/DataHolder;)V

    #@6a4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a7
    goto/16 :goto_9

    #@6a9
    :sswitch_6a9
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@6ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6b1
    move-result v0

    #@6b2
    if-eqz v0, :cond_6ba

    #@6b4
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@6b6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@6b9
    move-result-object v5

    #@6ba
    :cond_6ba
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->L(Lcom/google/android/gms/common/data/DataHolder;)V

    #@6bd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c0
    goto/16 :goto_9

    #@6c2
    :sswitch_6c2
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@6c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6ca
    move-result v0

    #@6cb
    if-eqz v0, :cond_6d3

    #@6cd
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@6cf
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@6d2
    move-result-object v5

    #@6d3
    :cond_6d3
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->M(Lcom/google/android/gms/common/data/DataHolder;)V

    #@6d6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d9
    goto/16 :goto_9

    #@6db
    :sswitch_6db
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@6dd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6e3
    move-result v0

    #@6e4
    if-eqz v0, :cond_6ec

    #@6e6
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@6e8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@6eb
    move-result-object v5

    #@6ec
    :cond_6ec
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->N(Lcom/google/android/gms/common/data/DataHolder;)V

    #@6ef
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f2
    goto/16 :goto_9

    #@6f4
    :sswitch_6f4
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@6f6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6fc
    move-result v0

    #@6fd
    if-eqz v0, :cond_705

    #@6ff
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@701
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@704
    move-result-object v5

    #@705
    :cond_705
    invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->O(Lcom/google/android/gms/common/data/DataHolder;)V

    #@708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@70b
    goto/16 :goto_9

    #@70d
    :sswitch_70d
    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    #@70f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@715
    move-result v1

    #@716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@719
    move-result v0

    #@71a
    if-eqz v0, :cond_72c

    #@71c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@71e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@721
    move-result-object v0

    #@722
    check-cast v0, Landroid/os/Bundle;

    #@724
    :goto_724
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->f(ILandroid/os/Bundle;)V

    #@727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@72a
    goto/16 :goto_9

    #@72c
    :cond_72c
    move-object v0, v5

    #@72d
    goto :goto_724

    #@72e
    :sswitch_data_72e
    .sparse-switch
        0x1389 -> :sswitch_10
        0x138a -> :sswitch_24
        0x138b -> :sswitch_3e
        0x138c -> :sswitch_52
        0x138d -> :sswitch_6a
        0x138e -> :sswitch_91
        0x138f -> :sswitch_aa
        0x1390 -> :sswitch_c3
        0x1391 -> :sswitch_dc
        0x1392 -> :sswitch_f5
        0x1393 -> :sswitch_10e
        0x1398 -> :sswitch_127
        0x1399 -> :sswitch_134
        0x139a -> :sswitch_166
        0x139b -> :sswitch_17f
        0x139c -> :sswitch_198
        0x139d -> :sswitch_1ad
        0x139e -> :sswitch_1c6
        0x139f -> :sswitch_1df
        0x13a0 -> :sswitch_1f8
        0x13a1 -> :sswitch_211
        0x13a2 -> :sswitch_22a
        0x13a3 -> :sswitch_247
        0x13a4 -> :sswitch_264
        0x13a5 -> :sswitch_281
        0x13a6 -> :sswitch_29e
        0x13a7 -> :sswitch_2bb
        0x13a8 -> :sswitch_2d8
        0x13a9 -> :sswitch_2f5
        0x13aa -> :sswitch_30e
        0x13ab -> :sswitch_345
        0x13ac -> :sswitch_35e
        0x13ad -> :sswitch_14d
        0x13ae -> :sswitch_32c
        0x13af -> :sswitch_36f
        0x13b0 -> :sswitch_388
        0x1771 -> :sswitch_399
        0x1772 -> :sswitch_3aa
        0x1f41 -> :sswitch_3bb
        0x1f42 -> :sswitch_3d4
        0x1f43 -> :sswitch_3f5
        0x1f44 -> :sswitch_40e
        0x1f45 -> :sswitch_427
        0x1f46 -> :sswitch_440
        0x1f47 -> :sswitch_459
        0x1f48 -> :sswitch_46e
        0x1f49 -> :sswitch_487
        0x1f4a -> :sswitch_498
        0x2329 -> :sswitch_4a9
        0x2711 -> :sswitch_4c2
        0x2712 -> :sswitch_4db
        0x2713 -> :sswitch_4ec
        0x2714 -> :sswitch_505
        0x2715 -> :sswitch_51e
        0x2716 -> :sswitch_53f
        0x2af9 -> :sswitch_558
        0x2ee1 -> :sswitch_579
        0x2ee3 -> :sswitch_63d
        0x2ee4 -> :sswitch_592
        0x2ee5 -> :sswitch_60f
        0x2ee6 -> :sswitch_690
        0x2ee7 -> :sswitch_6a9
        0x2ee8 -> :sswitch_6f4
        0x2eeb -> :sswitch_677
        0x2eec -> :sswitch_628
        0x2eed -> :sswitch_65e
        0x2eee -> :sswitch_6c2
        0x2eef -> :sswitch_70d
        0x2ef0 -> :sswitch_6db
        0x2ef1 -> :sswitch_5be
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
