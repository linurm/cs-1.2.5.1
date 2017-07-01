.class public abstract Lcom/google/android/gms/games/internal/IGamesService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static aj(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;
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
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v10, 0x1

    #@3
    sparse-switch p1, :sswitch_data_1650

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v10

    #@a
    :goto_a
    return v10

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    goto :goto_a

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@19
    move-result-wide v0

    #@1a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->q(J)V

    #@1d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    goto :goto_a

    #@21
    :sswitch_21
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29
    move-result-object v0

    #@2a
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    goto :goto_a

    #@35
    :sswitch_35
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->ho()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@44
    goto :goto_a

    #@45
    :sswitch_45
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->ef()Landroid/os/Bundle;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    if-eqz v0, :cond_5a

    #@53
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    invoke-virtual {v0, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@59
    goto :goto_a

    #@5a
    :cond_5a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    goto :goto_a

    #@5e
    :sswitch_5e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v0

    #@6b
    if-eqz v0, :cond_7c

    #@6d
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Landroid/os/Bundle;

    #@75
    :goto_75
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    goto :goto_a

    #@7c
    :cond_7c
    move-object v0, v6

    #@7d
    goto :goto_75

    #@7e
    :sswitch_7e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hw()V

    #@86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@89
    goto :goto_a

    #@8a
    :sswitch_8a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@8c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->gZ()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@99
    goto/16 :goto_a

    #@9b
    :sswitch_9b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@9d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aV(Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ab
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ae
    goto/16 :goto_a

    #@b0
    :sswitch_b0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@b2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->m(Ljava/lang/String;Ljava/lang/String;)V

    #@c0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3
    goto/16 :goto_a

    #@c5
    :sswitch_c5
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@c7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->ha()Ljava/lang/String;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d4
    goto/16 :goto_a

    #@d6
    :sswitch_d6
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@d8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hy()Lcom/google/android/gms/common/data/DataHolder;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e2
    if-eqz v0, :cond_ec

    #@e4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@e7
    invoke-virtual {v0, p3, v10}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@ea
    goto/16 :goto_a

    #@ec
    :cond_ec
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@ef
    goto/16 :goto_a

    #@f1
    :sswitch_f1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@f3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f9
    move-result-object v0

    #@fa
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@101
    move-result-object v1

    #@102
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@108
    goto/16 :goto_a

    #@10a
    :sswitch_10a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@10c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@112
    move-result-object v0

    #@113
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@116
    move-result-object v1

    #@117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11a
    move-result v2

    #@11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11e
    move-result v0

    #@11f
    if-eqz v0, :cond_131

    #@121
    move v0, v10

    #@122
    :goto_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@125
    move-result v3

    #@126
    if-eqz v3, :cond_129

    #@128
    move v7, v10

    #@129
    :cond_129
    invoke-virtual {p0, v1, v2, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    #@12c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12f
    goto/16 :goto_a

    #@131
    :cond_131
    move v0, v7

    #@132
    goto :goto_122

    #@133
    :sswitch_133
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@135
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13b
    move-result-object v0

    #@13c
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@13f
    move-result-object v0

    #@140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@143
    move-result-object v1

    #@144
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@147
    move-result-wide v2

    #@148
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;J)V

    #@14b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@14e
    goto/16 :goto_a

    #@150
    :sswitch_150
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@152
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@158
    move-result-object v0

    #@159
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@15c
    move-result-object v0

    #@15d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@163
    goto/16 :goto_a

    #@165
    :sswitch_165
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16d
    move-result-object v0

    #@16e
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@171
    move-result-object v0

    #@172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@175
    move-result-object v1

    #@176
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@17c
    goto/16 :goto_a

    #@17e
    :sswitch_17e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@180
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@186
    move-result-object v0

    #@187
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@18a
    move-result-object v1

    #@18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18e
    move-result-object v2

    #@18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@192
    move-result v3

    #@193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@196
    move-result v4

    #@197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19a
    move-result v5

    #@19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19e
    move-result v0

    #@19f
    if-eqz v0, :cond_1ab

    #@1a1
    move v6, v10

    #@1a2
    :goto_1a2
    move-object v0, p0

    #@1a3
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V

    #@1a6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a9
    goto/16 :goto_a

    #@1ab
    :cond_1ab
    move v6, v7

    #@1ac
    goto :goto_1a2

    #@1ad
    :sswitch_1ad
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1af
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b5
    move-result-object v0

    #@1b6
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1b9
    move-result-object v1

    #@1ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bd
    move-result-object v2

    #@1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c1
    move-result v3

    #@1c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c5
    move-result v4

    #@1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c9
    move-result v5

    #@1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1cd
    move-result v0

    #@1ce
    if-eqz v0, :cond_1da

    #@1d0
    move v6, v10

    #@1d1
    :goto_1d1
    move-object v0, p0

    #@1d2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V

    #@1d5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    goto/16 :goto_a

    #@1da
    :cond_1da
    move v6, v7

    #@1db
    goto :goto_1d1

    #@1dc
    :sswitch_1dc
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1de
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e4
    move-result-object v0

    #@1e5
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1e8
    move-result-object v1

    #@1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1ec
    move-result v0

    #@1ed
    if-eqz v0, :cond_207

    #@1ef
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f1
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f4
    move-result-object v0

    #@1f5
    check-cast v0, Landroid/os/Bundle;

    #@1f7
    :goto_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1fa
    move-result v2

    #@1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1fe
    move-result v3

    #@1ff
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/Bundle;II)V

    #@202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@205
    goto/16 :goto_a

    #@207
    :cond_207
    move-object v0, v6

    #@208
    goto :goto_1f7

    #@209
    :sswitch_209
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@20b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@211
    move-result-object v0

    #@212
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@215
    move-result-object v0

    #@216
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c
    goto/16 :goto_a

    #@21e
    :sswitch_21e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@220
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@226
    move-result-object v0

    #@227
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@22a
    move-result-object v1

    #@22b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22e
    move-result-object v2

    #@22f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@232
    move-result-object v3

    #@233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@236
    move-result v0

    #@237
    if-eqz v0, :cond_249

    #@239
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23e
    move-result-object v0

    #@23f
    check-cast v0, Landroid/os/Bundle;

    #@241
    :goto_241
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@247
    goto/16 :goto_a

    #@249
    :cond_249
    move-object v0, v6

    #@24a
    goto :goto_241

    #@24b
    :sswitch_24b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@24d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@250
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@253
    move-result-object v0

    #@254
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@257
    move-result-object v1

    #@258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25b
    move-result-object v2

    #@25c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25f
    move-result-object v3

    #@260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@263
    move-result v0

    #@264
    if-eqz v0, :cond_276

    #@266
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@268
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26b
    move-result-object v0

    #@26c
    check-cast v0, Landroid/os/Bundle;

    #@26e
    :goto_26e
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@274
    goto/16 :goto_a

    #@276
    :cond_276
    move-object v0, v6

    #@277
    goto :goto_26e

    #@278
    :sswitch_278
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@27a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@280
    move-result-object v0

    #@281
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@284
    move-result-object v1

    #@285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@288
    move-result-object v2

    #@289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@28c
    move-result v3

    #@28d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@290
    move-result-object v4

    #@291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@294
    move-result v0

    #@295
    if-eqz v0, :cond_164d

    #@297
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@299
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29c
    move-result-object v0

    #@29d
    check-cast v0, Landroid/os/Bundle;

    #@29f
    move-object v5, v0

    #@2a0
    :goto_2a0
    move-object v0, p0

    #@2a1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@2a4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a7
    goto/16 :goto_a

    #@2a9
    :sswitch_2a9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@2ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b1
    move-result-object v0

    #@2b2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@2b5
    move-result-object v0

    #@2b6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@2b9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bc
    goto/16 :goto_a

    #@2be
    :sswitch_2be
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@2c0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c6
    move-result-object v0

    #@2c7
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@2ca
    move-result-object v0

    #@2cb
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@2ce
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d1
    goto/16 :goto_a

    #@2d3
    :sswitch_2d3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@2d5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2db
    move-result-object v0

    #@2dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2df
    move-result v1

    #@2e0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->n(Ljava/lang/String;I)V

    #@2e3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e6
    goto/16 :goto_a

    #@2e8
    :sswitch_2e8
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@2ea
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f0
    move-result-object v0

    #@2f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f4
    move-result v1

    #@2f5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->m(Ljava/lang/String;I)V

    #@2f8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fb
    goto/16 :goto_a

    #@2fd
    :sswitch_2fd
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@2ff
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@302
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@305
    move-result-object v0

    #@306
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@309
    move-result-object v0

    #@30a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@30d
    move-result-wide v2

    #@30e
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V

    #@311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@314
    goto/16 :goto_a

    #@316
    :sswitch_316
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@318
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@31e
    move-result-wide v0

    #@31f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->r(J)V

    #@322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@325
    goto/16 :goto_a

    #@327
    :sswitch_327
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@329
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32f
    move-result-object v0

    #@330
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@333
    move-result-object v2

    #@334
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@337
    move-result-object v3

    #@338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33b
    move-result v4

    #@33c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@33f
    move-result-object v5

    #@340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@343
    move-result v0

    #@344
    if-eqz v0, :cond_34f

    #@346
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@348
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34b
    move-result-object v0

    #@34c
    check-cast v0, Landroid/os/Bundle;

    #@34e
    move-object v6, v0

    #@34f
    :cond_34f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@352
    move-result v0

    #@353
    if-eqz v0, :cond_356

    #@355
    move v7, v10

    #@356
    :cond_356
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@359
    move-result-wide v8

    #@35a
    move-object v1, p0

    #@35b
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V

    #@35e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@361
    goto/16 :goto_a

    #@363
    :sswitch_363
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@365
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@368
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36b
    move-result-object v0

    #@36c
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@36f
    move-result-object v2

    #@370
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@373
    move-result-object v3

    #@374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@377
    move-result-object v4

    #@378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37b
    move-result v0

    #@37c
    if-eqz v0, :cond_38c

    #@37e
    move v5, v10

    #@37f
    :goto_37f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@382
    move-result-wide v6

    #@383
    move-object v1, p0

    #@384
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;Ljava/lang/String;ZJ)V

    #@387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@38a
    goto/16 :goto_a

    #@38c
    :cond_38c
    move v5, v7

    #@38d
    goto :goto_37f

    #@38e
    :sswitch_38e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@390
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@393
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@396
    move-result-object v0

    #@397
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@39a
    move-result-object v0

    #@39b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39e
    move-result-object v1

    #@39f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@3a2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a5
    goto/16 :goto_a

    #@3a7
    :sswitch_3a7
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@3a9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3af
    move-result-object v0

    #@3b0
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@3b3
    move-result-object v0

    #@3b4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@3b7
    move-result-object v1

    #@3b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3bb
    move-result-object v2

    #@3bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3bf
    move-result-object v3

    #@3c0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[BLjava/lang/String;Ljava/lang/String;)I

    #@3c3
    move-result v0

    #@3c4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3ca
    goto/16 :goto_a

    #@3cc
    :sswitch_3cc
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@3ce
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@3d4
    move-result-object v0

    #@3d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d8
    move-result-object v1

    #@3d9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@3dc
    move-result-object v2

    #@3dd
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b([BLjava/lang/String;[Ljava/lang/String;)I

    #@3e0
    move-result v0

    #@3e1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3e7
    goto/16 :goto_a

    #@3e9
    :sswitch_3e9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@3eb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f1
    move-result-object v0

    #@3f2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aW(Ljava/lang/String;)Ljava/lang/String;

    #@3f5
    move-result-object v0

    #@3f6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3fc
    goto/16 :goto_a

    #@3fe
    :sswitch_3fe
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@400
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@406
    move-result v0

    #@407
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->ch(I)V

    #@40a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@40d
    goto/16 :goto_a

    #@40f
    :sswitch_40f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@411
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@414
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@417
    move-result-object v0

    #@418
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@41b
    move-result-object v0

    #@41c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41f
    move-result-object v1

    #@420
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@426
    goto/16 :goto_a

    #@428
    :sswitch_428
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@42a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@430
    move-result-object v0

    #@431
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@434
    move-result-object v0

    #@435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@438
    move-result-object v1

    #@439
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43c
    move-result-object v2

    #@43d
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    #@440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@443
    goto/16 :goto_a

    #@445
    :sswitch_445
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@447
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@44d
    move-result-object v0

    #@44e
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@451
    move-result-object v1

    #@452
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@455
    move-result-object v2

    #@456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@459
    move-result-object v3

    #@45a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45d
    move-result v4

    #@45e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@461
    move-result v5

    #@462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@465
    move-result v6

    #@466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@469
    move-result v0

    #@46a
    if-eqz v0, :cond_46d

    #@46c
    move v7, v10

    #@46d
    :cond_46d
    move-object v0, p0

    #@46e
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    #@471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@474
    goto/16 :goto_a

    #@476
    :sswitch_476
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@478
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@47e
    move-result-object v0

    #@47f
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@482
    move-result-object v1

    #@483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@486
    move-result-object v2

    #@487
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48a
    move-result-object v3

    #@48b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@48e
    move-result v4

    #@48f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@492
    move-result v5

    #@493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@496
    move-result v6

    #@497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49a
    move-result v0

    #@49b
    if-eqz v0, :cond_49e

    #@49d
    move v7, v10

    #@49e
    :cond_49e
    move-object v0, p0

    #@49f
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    #@4a2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a5
    goto/16 :goto_a

    #@4a7
    :sswitch_4a7
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@4a9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4af
    move-result-object v0

    #@4b0
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@4b3
    move-result-object v0

    #@4b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b7
    move-result-object v1

    #@4b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4bb
    move-result-object v2

    #@4bc
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    #@4bf
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c2
    goto/16 :goto_a

    #@4c4
    :sswitch_4c4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@4c6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4cc
    move-result-object v0

    #@4cd
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@4d0
    move-result-object v0

    #@4d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d4
    move-result-object v1

    #@4d5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@4d8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4db
    goto/16 :goto_a

    #@4dd
    :sswitch_4dd
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@4df
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4e5
    move-result-object v0

    #@4e6
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@4e9
    move-result-object v0

    #@4ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ed
    move-result-object v1

    #@4ee
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@4f1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f4
    goto/16 :goto_a

    #@4f6
    :sswitch_4f6
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@4f8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4fe
    move-result-object v0

    #@4ff
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@502
    move-result-object v1

    #@503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@506
    move-result v2

    #@507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@50a
    move-result v3

    #@50b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@50e
    move-result v0

    #@50f
    if-eqz v0, :cond_522

    #@511
    move v4, v10

    #@512
    :goto_512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@515
    move-result v0

    #@516
    if-eqz v0, :cond_524

    #@518
    move v5, v10

    #@519
    :goto_519
    move-object v0, p0

    #@51a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IIZZ)V

    #@51d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@520
    goto/16 :goto_a

    #@522
    :cond_522
    move v4, v7

    #@523
    goto :goto_512

    #@524
    :cond_524
    move v5, v7

    #@525
    goto :goto_519

    #@526
    :sswitch_526
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@528
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@52e
    move-result-object v0

    #@52f
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@532
    move-result-object v1

    #@533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@536
    move-result-object v2

    #@537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53a
    move-result v3

    #@53b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53e
    move-result v0

    #@53f
    if-eqz v0, :cond_552

    #@541
    move v4, v10

    #@542
    :goto_542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@545
    move-result v0

    #@546
    if-eqz v0, :cond_554

    #@548
    move v5, v10

    #@549
    :goto_549
    move-object v0, p0

    #@54a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    #@54d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@550
    goto/16 :goto_a

    #@552
    :cond_552
    move v4, v7

    #@553
    goto :goto_542

    #@554
    :cond_554
    move v5, v7

    #@555
    goto :goto_549

    #@556
    :sswitch_556
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@558
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@55e
    move-result-object v0

    #@55f
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@562
    move-result-object v1

    #@563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@566
    move-result v2

    #@567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56a
    move-result v0

    #@56b
    if-eqz v0, :cond_57d

    #@56d
    move v0, v10

    #@56e
    :goto_56e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@571
    move-result v3

    #@572
    if-eqz v3, :cond_575

    #@574
    move v7, v10

    #@575
    :cond_575
    invoke-virtual {p0, v1, v2, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    #@578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@57b
    goto/16 :goto_a

    #@57d
    :cond_57d
    move v0, v7

    #@57e
    goto :goto_56e

    #@57f
    :sswitch_57f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@581
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@584
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@587
    move-result-object v0

    #@588
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@58b
    move-result-object v0

    #@58c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@58f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@592
    goto/16 :goto_a

    #@594
    :sswitch_594
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@596
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@599
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@59c
    move-result-object v0

    #@59d
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@5a0
    move-result-object v1

    #@5a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a4
    move-result v2

    #@5a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a8
    move-result v0

    #@5a9
    if-eqz v0, :cond_5bb

    #@5ab
    move v0, v10

    #@5ac
    :goto_5ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5af
    move-result v3

    #@5b0
    if-eqz v3, :cond_5b3

    #@5b2
    move v7, v10

    #@5b3
    :cond_5b3
    invoke-virtual {p0, v1, v2, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    #@5b6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b9
    goto/16 :goto_a

    #@5bb
    :cond_5bb
    move v0, v7

    #@5bc
    goto :goto_5ac

    #@5bd
    :sswitch_5bd
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@5bf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5c5
    move-result-object v0

    #@5c6
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@5c9
    move-result-object v0

    #@5ca
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->g(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@5cd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d0
    goto/16 :goto_a

    #@5d2
    :sswitch_5d2
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@5d4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5da
    move-result-object v0

    #@5db
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aX(Ljava/lang/String;)V

    #@5de
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e1
    goto/16 :goto_a

    #@5e3
    :sswitch_5e3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@5e5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5eb
    move-result-object v0

    #@5ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5ef
    move-result-object v1

    #@5f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f3
    move-result v2

    #@5f4
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Ljava/lang/String;Ljava/lang/String;I)V

    #@5f7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5fa
    goto/16 :goto_a

    #@5fc
    :sswitch_5fc
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@5fe
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@601
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@604
    move-result-object v0

    #@605
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@608
    move-result-object v0

    #@609
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60c
    move-result-object v1

    #@60d
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->g(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@613
    goto/16 :goto_a

    #@615
    :sswitch_615
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@617
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@61d
    move-result-object v0

    #@61e
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@621
    move-result-object v0

    #@622
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@625
    move-result-object v1

    #@626
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->h(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@629
    move-result-object v0

    #@62a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62d
    if-eqz v0, :cond_637

    #@62f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@632
    invoke-virtual {v0, p3, v10}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@635
    goto/16 :goto_a

    #@637
    :cond_637
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@63a
    goto/16 :goto_a

    #@63c
    :sswitch_63c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@63e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@644
    move-result-object v0

    #@645
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aY(Ljava/lang/String;)I

    #@648
    move-result v0

    #@649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@64c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@64f
    goto/16 :goto_a

    #@651
    :sswitch_651
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@653
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@656
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@659
    move-result-object v0

    #@65a
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@65d
    move-result-object v0

    #@65e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@661
    move-result-object v1

    #@662
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@665
    move-result v2

    #@666
    if-eqz v2, :cond_669

    #@668
    move v7, v10

    #@669
    :cond_669
    invoke-virtual {p0, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    #@66c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@66f
    goto/16 :goto_a

    #@671
    :sswitch_671
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@673
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@676
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@679
    move-result-object v0

    #@67a
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@67d
    move-result-object v0

    #@67e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@681
    move-result-object v1

    #@682
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->i(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@688
    goto/16 :goto_a

    #@68a
    :sswitch_68a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@68c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@692
    move-result-object v0

    #@693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@696
    move-result v1

    #@697
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->p(Ljava/lang/String;I)V

    #@69a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@69d
    goto/16 :goto_a

    #@69f
    :sswitch_69f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@6a1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hz()Z

    #@6a7
    move-result v0

    #@6a8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ab
    if-eqz v0, :cond_6ae

    #@6ad
    move v7, v10

    #@6ae
    :cond_6ae
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@6b1
    goto/16 :goto_a

    #@6b3
    :sswitch_6b3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@6b5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6bb
    move-result v0

    #@6bc
    if-eqz v0, :cond_6bf

    #@6be
    move v7, v10

    #@6bf
    :cond_6bf
    invoke-virtual {p0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->E(Z)V

    #@6c2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c5
    goto/16 :goto_a

    #@6c7
    :sswitch_6c7
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@6c9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6cf
    move-result-object v0

    #@6d0
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@6d3
    move-result-object v0

    #@6d4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->h(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@6d7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6da
    goto/16 :goto_a

    #@6dc
    :sswitch_6dc
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@6de
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e4
    move-result-object v0

    #@6e5
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@6e8
    move-result-object v0

    #@6e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6ec
    move-result-object v1

    #@6ed
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->j(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@6f0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f3
    goto/16 :goto_a

    #@6f5
    :sswitch_6f5
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@6f7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6fd
    move-result-object v0

    #@6fe
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@701
    move-result-object v0

    #@702
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->i(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@708
    goto/16 :goto_a

    #@70a
    :sswitch_70a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@70c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@712
    move-result-object v0

    #@713
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@716
    move-result-object v1

    #@717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@71a
    move-result v0

    #@71b
    if-eqz v0, :cond_71e

    #@71d
    move v7, v10

    #@71e
    :cond_71e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@721
    move-result v0

    #@722
    if-eqz v0, :cond_734

    #@724
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@726
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@729
    move-result-object v0

    #@72a
    check-cast v0, Landroid/os/Bundle;

    #@72c
    :goto_72c
    invoke-virtual {p0, v1, v7, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZLandroid/os/Bundle;)V

    #@72f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@732
    goto/16 :goto_a

    #@734
    :cond_734
    move-object v0, v6

    #@735
    goto :goto_72c

    #@736
    :sswitch_736
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@738
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@73e
    move-result-object v0

    #@73f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aZ(Ljava/lang/String;)Landroid/net/Uri;

    #@742
    move-result-object v0

    #@743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@746
    if-eqz v0, :cond_750

    #@748
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@74b
    invoke-virtual {v0, p3, v10}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@74e
    goto/16 :goto_a

    #@750
    :cond_750
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@753
    goto/16 :goto_a

    #@755
    :sswitch_755
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@757
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@75d
    move-result-object v0

    #@75e
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@761
    move-result-object v1

    #@762
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@765
    move-result-object v2

    #@766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@769
    move-result v3

    #@76a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@76d
    move-result v0

    #@76e
    if-eqz v0, :cond_781

    #@770
    move v4, v10

    #@771
    :goto_771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@774
    move-result v0

    #@775
    if-eqz v0, :cond_783

    #@777
    move v5, v10

    #@778
    :goto_778
    move-object v0, p0

    #@779
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    #@77c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@77f
    goto/16 :goto_a

    #@781
    :cond_781
    move v4, v7

    #@782
    goto :goto_771

    #@783
    :cond_783
    move v5, v7

    #@784
    goto :goto_778

    #@785
    :sswitch_785
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@787
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hA()Lcom/google/android/gms/common/data/DataHolder;

    #@78d
    move-result-object v0

    #@78e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@791
    if-eqz v0, :cond_79b

    #@793
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@796
    invoke-virtual {v0, p3, v10}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@799
    goto/16 :goto_a

    #@79b
    :cond_79b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@79e
    goto/16 :goto_a

    #@7a0
    :sswitch_7a0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@7a2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7a8
    move-result-object v0

    #@7a9
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@7ac
    move-result-object v0

    #@7ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7b0
    move-result v1

    #@7b1
    if-eqz v1, :cond_7b4

    #@7b3
    move v7, v10

    #@7b4
    :cond_7b4
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    #@7b7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ba
    goto/16 :goto_a

    #@7bc
    :sswitch_7bc
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@7be
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c4
    move-result-object v0

    #@7c5
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@7c8
    move-result-object v0

    #@7c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7cc
    move-result-object v1

    #@7cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d0
    move-result-object v2

    #@7d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d4
    move-result v3

    #@7d5
    if-eqz v3, :cond_7d8

    #@7d7
    move v7, v10

    #@7d8
    :cond_7d8
    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    #@7db
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7de
    goto/16 :goto_a

    #@7e0
    :sswitch_7e0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@7e2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7e8
    move-result-object v0

    #@7e9
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@7ec
    move-result-object v1

    #@7ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7f0
    move-result v2

    #@7f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7f4
    move-result v0

    #@7f5
    if-eqz v0, :cond_807

    #@7f7
    move v0, v10

    #@7f8
    :goto_7f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7fb
    move-result v3

    #@7fc
    if-eqz v3, :cond_7ff

    #@7fe
    move v7, v10

    #@7ff
    :cond_7ff
    invoke-virtual {p0, v1, v2, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    #@802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@805
    goto/16 :goto_a

    #@807
    :cond_807
    move v0, v7

    #@808
    goto :goto_7f8

    #@809
    :sswitch_809
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@80b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@811
    move-result-object v0

    #@812
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@815
    move-result-object v1

    #@816
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@819
    move-result v2

    #@81a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@81d
    move-result v0

    #@81e
    if-eqz v0, :cond_830

    #@820
    move v0, v10

    #@821
    :goto_821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@824
    move-result v3

    #@825
    if-eqz v3, :cond_828

    #@827
    move v7, v10

    #@828
    :cond_828
    invoke-virtual {p0, v1, v2, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    #@82b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@82e
    goto/16 :goto_a

    #@830
    :cond_830
    move v0, v7

    #@831
    goto :goto_821

    #@832
    :sswitch_832
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@834
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@837
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@83a
    move-result-object v0

    #@83b
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@83e
    move-result-object v1

    #@83f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@842
    move-result-object v2

    #@843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@846
    move-result v3

    #@847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@84a
    move-result v0

    #@84b
    if-eqz v0, :cond_86c

    #@84d
    move v4, v10

    #@84e
    :goto_84e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@851
    move-result v0

    #@852
    if-eqz v0, :cond_86e

    #@854
    move v5, v10

    #@855
    :goto_855
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@858
    move-result v0

    #@859
    if-eqz v0, :cond_870

    #@85b
    move v6, v10

    #@85c
    :goto_85c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@85f
    move-result v0

    #@860
    if-eqz v0, :cond_863

    #@862
    move v7, v10

    #@863
    :cond_863
    move-object v0, p0

    #@864
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZZZ)V

    #@867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@86a
    goto/16 :goto_a

    #@86c
    :cond_86c
    move v4, v7

    #@86d
    goto :goto_84e

    #@86e
    :cond_86e
    move v5, v7

    #@86f
    goto :goto_855

    #@870
    :cond_870
    move v6, v7

    #@871
    goto :goto_85c

    #@872
    :sswitch_872
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@874
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@877
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@87a
    move-result-object v0

    #@87b
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@87e
    move-result-object v0

    #@87f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@882
    move-result-object v1

    #@883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@886
    move-result v2

    #@887
    if-eqz v2, :cond_88a

    #@889
    move v7, v10

    #@88a
    :cond_88a
    invoke-virtual {p0, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    #@88d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@890
    goto/16 :goto_a

    #@892
    :sswitch_892
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@894
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@897
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@89a
    move-result-object v0

    #@89b
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@89e
    move-result-object v0

    #@89f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8a2
    move-result v1

    #@8a3
    if-eqz v1, :cond_8a6

    #@8a5
    move v7, v10

    #@8a6
    :cond_8a6
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    #@8a9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ac
    goto/16 :goto_a

    #@8ae
    :sswitch_8ae
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@8b0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8b6
    move-result-object v0

    #@8b7
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@8ba
    move-result-object v0

    #@8bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8be
    move-result-object v1

    #@8bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8c2
    move-result v2

    #@8c3
    if-eqz v2, :cond_8c6

    #@8c5
    move v7, v10

    #@8c6
    :cond_8c6
    invoke-virtual {p0, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    #@8c9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8cc
    goto/16 :goto_a

    #@8ce
    :sswitch_8ce
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@8d0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8d6
    move-result-object v0

    #@8d7
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@8da
    move-result-object v0

    #@8db
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8de
    move-result-object v1

    #@8df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8e2
    move-result v2

    #@8e3
    if-eqz v2, :cond_8e6

    #@8e5
    move v7, v10

    #@8e6
    :cond_8e6
    invoke-virtual {p0, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    #@8e9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ec
    goto/16 :goto_a

    #@8ee
    :sswitch_8ee
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@8f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8f6
    move-result-object v0

    #@8f7
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@8fa
    move-result-object v0

    #@8fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8fe
    move-result-object v1

    #@8ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@902
    move-result-object v2

    #@903
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@906
    move-result v3

    #@907
    if-eqz v3, :cond_90a

    #@909
    move v7, v10

    #@90a
    :cond_90a
    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    #@90d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@910
    goto/16 :goto_a

    #@912
    :sswitch_912
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@914
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@917
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@91a
    move-result v0

    #@91b
    if-eqz v0, :cond_936

    #@91d
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@91f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@922
    move-result-object v0

    #@923
    check-cast v0, Landroid/net/Uri;

    #@925
    :goto_925
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->h(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    #@928
    move-result-object v0

    #@929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@92c
    if-eqz v0, :cond_938

    #@92e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@931
    invoke-virtual {v0, p3, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@934
    goto/16 :goto_a

    #@936
    :cond_936
    move-object v0, v6

    #@937
    goto :goto_925

    #@938
    :cond_938
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@93b
    goto/16 :goto_a

    #@93d
    :sswitch_93d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@93f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@942
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@945
    move-result-object v0

    #@946
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@949
    move-result-object v0

    #@94a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@94d
    move-result-object v1

    #@94e
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->k(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@954
    goto/16 :goto_a

    #@956
    :sswitch_956
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@958
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@95e
    move-result-object v0

    #@95f
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@962
    move-result-object v2

    #@963
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@966
    move-result-object v3

    #@967
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@96a
    move-result-wide v4

    #@96b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@96e
    move-result-object v6

    #@96f
    move-object v1, p0

    #@970
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;JLjava/lang/String;)V

    #@973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@976
    goto/16 :goto_a

    #@978
    :sswitch_978
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@97a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@980
    move-result-object v0

    #@981
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@984
    move-result-object v1

    #@985
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@988
    move-result-object v2

    #@989
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@98c
    move-result v3

    #@98d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@990
    move-result-object v4

    #@991
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@994
    move-result v0

    #@995
    if-eqz v0, :cond_164a

    #@997
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@999
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@99c
    move-result-object v0

    #@99d
    check-cast v0, Landroid/os/Bundle;

    #@99f
    move-object v5, v0

    #@9a0
    :goto_9a0
    move-object v0, p0

    #@9a1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@9a4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a7
    goto/16 :goto_a

    #@9a9
    :sswitch_9a9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@9ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9b1
    move-result-object v0

    #@9b2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@9b5
    move-result-object v1

    #@9b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9b9
    move-result-object v2

    #@9ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9bd
    move-result-object v3

    #@9be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9c1
    move-result v4

    #@9c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9c5
    move-result v5

    #@9c6
    move-object v0, p0

    #@9c7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;II)V

    #@9ca
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9cd
    goto/16 :goto_a

    #@9cf
    :sswitch_9cf
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@9d1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9d7
    move-result-object v0

    #@9d8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->ba(Ljava/lang/String;)V

    #@9db
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9de
    goto/16 :goto_a

    #@9e0
    :sswitch_9e0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@9e2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9e8
    move-result-object v0

    #@9e9
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@9ec
    move-result-object v0

    #@9ed
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@9f0
    move-result-object v1

    #@9f1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[I)V

    #@9f4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f7
    goto/16 :goto_a

    #@9f9
    :sswitch_9f9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@9fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a01
    move-result-object v0

    #@a02
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@a05
    move-result-object v1

    #@a06
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a09
    move-result v2

    #@a0a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a0d
    move-result v3

    #@a0e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@a11
    move-result-object v4

    #@a12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a15
    move-result v0

    #@a16
    if-eqz v0, :cond_1647

    #@a18
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a1a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a1d
    move-result-object v0

    #@a1e
    check-cast v0, Landroid/os/Bundle;

    #@a20
    move-object v5, v0

    #@a21
    :goto_a21
    move-object v0, p0

    #@a22
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;II[Ljava/lang/String;Landroid/os/Bundle;)V

    #@a25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a28
    goto/16 :goto_a

    #@a2a
    :sswitch_a2a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a32
    move-result-object v0

    #@a33
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@a36
    move-result-object v0

    #@a37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a3a
    move-result-object v1

    #@a3b
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->l(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@a3e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a41
    goto/16 :goto_a

    #@a43
    :sswitch_a43
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a4b
    move-result-object v0

    #@a4c
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@a4f
    move-result-object v0

    #@a50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a53
    move-result-object v1

    #@a54
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->m(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@a57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5a
    goto/16 :goto_a

    #@a5c
    :sswitch_a5c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a64
    move-result-object v0

    #@a65
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@a68
    move-result-object v1

    #@a69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a6c
    move-result-object v2

    #@a6d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@a70
    move-result-object v3

    #@a71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a74
    move-result-object v4

    #@a75
    sget-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

    #@a77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@a7a
    move-result-object v5

    #@a7b
    check-cast v5, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@a7d
    move-object v0, p0

    #@a7e
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    #@a81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a84
    goto/16 :goto_a

    #@a86
    :sswitch_a86
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@a88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a8e
    move-result-object v0

    #@a8f
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@a92
    move-result-object v1

    #@a93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a96
    move-result-object v2

    #@a97
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@a9a
    move-result-object v3

    #@a9b
    sget-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

    #@a9d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@aa0
    move-result-object v0

    #@aa1
    check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    #@aa3
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    #@aa6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa9
    goto/16 :goto_a

    #@aab
    :sswitch_aab
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@aad
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ab3
    move-result-object v0

    #@ab4
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@ab7
    move-result-object v0

    #@ab8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@abb
    move-result-object v1

    #@abc
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->n(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@abf
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac2
    goto/16 :goto_a

    #@ac4
    :sswitch_ac4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@ac6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@acc
    move-result-object v0

    #@acd
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@ad0
    move-result-object v0

    #@ad1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ad4
    move-result-object v1

    #@ad5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->o(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@ad8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@adb
    goto/16 :goto_a

    #@add
    :sswitch_add
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@adf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ae5
    move-result-object v0

    #@ae6
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@ae9
    move-result-object v0

    #@aea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aed
    move-result-object v1

    #@aee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@af1
    move-result-object v2

    #@af2
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    #@af5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@af8
    goto/16 :goto_a

    #@afa
    :sswitch_afa
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@afc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aff
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b02
    move-result-object v0

    #@b03
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@b06
    move-result-object v0

    #@b07
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@b0a
    move-result-wide v2

    #@b0b
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V

    #@b0e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b11
    goto/16 :goto_a

    #@b13
    :sswitch_b13
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@b15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b18
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@b1b
    move-result-wide v0

    #@b1c
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->s(J)V

    #@b1f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b22
    goto/16 :goto_a

    #@b24
    :sswitch_b24
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@b26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b2c
    move-result-object v0

    #@b2d
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@b30
    move-result-object v0

    #@b31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b34
    move-result-object v1

    #@b35
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->p(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@b38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3b
    goto/16 :goto_a

    #@b3d
    :sswitch_b3d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@b3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b42
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hp()I

    #@b45
    move-result v0

    #@b46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b4c
    goto/16 :goto_a

    #@b4e
    :sswitch_b4e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@b50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b56
    move-result-object v0

    #@b57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b5a
    move-result-object v1

    #@b5b
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->n(Ljava/lang/String;Ljava/lang/String;)V

    #@b5e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b61
    goto/16 :goto_a

    #@b63
    :sswitch_b63
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@b65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b6b
    move-result-object v0

    #@b6c
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@b6f
    move-result-object v0

    #@b70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b73
    move-result-object v1

    #@b74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b77
    move-result-object v2

    #@b78
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    #@b7b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7e
    goto/16 :goto_a

    #@b80
    :sswitch_b80
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@b82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b88
    move-result-object v0

    #@b89
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@b8c
    move-result-object v0

    #@b8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b90
    move-result-object v1

    #@b91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b94
    move-result-object v2

    #@b95
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    #@b98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b9b
    goto/16 :goto_a

    #@b9d
    :sswitch_b9d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@b9f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ba5
    move-result-object v0

    #@ba6
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@ba9
    move-result-object v0

    #@baa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bad
    move-result-object v1

    #@bae
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@bb1
    move-result-object v2

    #@bb2
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[I)V

    #@bb5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb8
    goto/16 :goto_a

    #@bba
    :sswitch_bba
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@bbc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bbf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bc2
    move-result-object v0

    #@bc3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bc6
    move-result-object v1

    #@bc7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bca
    move-result v2

    #@bcb
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Ljava/lang/String;Ljava/lang/String;I)V

    #@bce
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd1
    goto/16 :goto_a

    #@bd3
    :sswitch_bd3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@bd5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bdb
    move-result-object v0

    #@bdc
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@bdf
    move-result-object v0

    #@be0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@be3
    move-result-wide v2

    #@be4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@be7
    move-result-object v1

    #@be8
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V

    #@beb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bee
    goto/16 :goto_a

    #@bf0
    :sswitch_bf0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@bf2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@bf8
    move-result-wide v0

    #@bf9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bfc
    move-result-object v2

    #@bfd
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(JLjava/lang/String;)V

    #@c00
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c03
    goto/16 :goto_a

    #@c05
    :sswitch_c05
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@c07
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c0a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c0d
    move-result-object v0

    #@c0e
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@c11
    move-result-object v0

    #@c12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@c15
    move-result-wide v2

    #@c16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c19
    move-result-object v1

    #@c1a
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V

    #@c1d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c20
    goto/16 :goto_a

    #@c22
    :sswitch_c22
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@c24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c27
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@c2a
    move-result-wide v0

    #@c2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c2e
    move-result-object v2

    #@c2f
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(JLjava/lang/String;)V

    #@c32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c35
    goto/16 :goto_a

    #@c37
    :sswitch_c37
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@c39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3c
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hB()V

    #@c3f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c42
    goto/16 :goto_a

    #@c44
    :sswitch_c44
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@c46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c4c
    move-result-object v0

    #@c4d
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@c50
    move-result-object v0

    #@c51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c54
    move-result-object v1

    #@c55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c58
    move-result v2

    #@c59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c5c
    move-result v3

    #@c5d
    if-eqz v3, :cond_c60

    #@c5f
    move v7, v10

    #@c60
    :cond_c60
    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V

    #@c63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c66
    goto/16 :goto_a

    #@c68
    :sswitch_c68
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@c6a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c70
    move-result-object v0

    #@c71
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@c74
    move-result-object v0

    #@c75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c78
    move-result v1

    #@c79
    if-eqz v1, :cond_c7c

    #@c7b
    move v7, v10

    #@c7c
    :cond_c7c
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    #@c7f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c82
    goto/16 :goto_a

    #@c84
    :sswitch_c84
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@c86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c8c
    move-result-object v0

    #@c8d
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@c90
    move-result-object v1

    #@c91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c94
    move-result-object v2

    #@c95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c98
    move-result v3

    #@c99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c9c
    move-result v0

    #@c9d
    if-eqz v0, :cond_cb0

    #@c9f
    move v4, v10

    #@ca0
    :goto_ca0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ca3
    move-result v0

    #@ca4
    if-eqz v0, :cond_cb2

    #@ca6
    move v5, v10

    #@ca7
    :goto_ca7
    move-object v0, p0

    #@ca8
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    #@cab
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cae
    goto/16 :goto_a

    #@cb0
    :cond_cb0
    move v4, v7

    #@cb1
    goto :goto_ca0

    #@cb2
    :cond_cb2
    move v5, v7

    #@cb3
    goto :goto_ca7

    #@cb4
    :sswitch_cb4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@cb6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cbc
    move-result-object v0

    #@cbd
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@cc0
    move-result-object v0

    #@cc1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cc4
    move-result-object v1

    #@cc5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->q(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@cc8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ccb
    goto/16 :goto_a

    #@ccd
    :sswitch_ccd
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@ccf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd2
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hd()Landroid/content/Intent;

    #@cd5
    move-result-object v0

    #@cd6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd9
    if-eqz v0, :cond_ce3

    #@cdb
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@cde
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@ce1
    goto/16 :goto_a

    #@ce3
    :cond_ce3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@ce6
    goto/16 :goto_a

    #@ce8
    :sswitch_ce8
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@cea
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ced
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cf0
    move-result-object v0

    #@cf1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aR(Ljava/lang/String;)Landroid/content/Intent;

    #@cf4
    move-result-object v0

    #@cf5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf8
    if-eqz v0, :cond_d02

    #@cfa
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@cfd
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@d00
    goto/16 :goto_a

    #@d02
    :cond_d02
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@d05
    goto/16 :goto_a

    #@d07
    :sswitch_d07
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@d09
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0c
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->he()Landroid/content/Intent;

    #@d0f
    move-result-object v0

    #@d10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d13
    if-eqz v0, :cond_d1d

    #@d15
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@d18
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@d1b
    goto/16 :goto_a

    #@d1d
    :cond_d1d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@d20
    goto/16 :goto_a

    #@d22
    :sswitch_d22
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@d24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d27
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hf()Landroid/content/Intent;

    #@d2a
    move-result-object v0

    #@d2b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2e
    if-eqz v0, :cond_d38

    #@d30
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@d33
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@d36
    goto/16 :goto_a

    #@d38
    :cond_d38
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@d3b
    goto/16 :goto_a

    #@d3d
    :sswitch_d3d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@d3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d42
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hg()Landroid/content/Intent;

    #@d45
    move-result-object v0

    #@d46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d49
    if-eqz v0, :cond_d53

    #@d4b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@d4e
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@d51
    goto/16 :goto_a

    #@d53
    :cond_d53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@d56
    goto/16 :goto_a

    #@d58
    :sswitch_d58
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@d5a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d60
    move-result v1

    #@d61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d64
    move-result v2

    #@d65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d68
    move-result v0

    #@d69
    if-eqz v0, :cond_d7d

    #@d6b
    move v0, v10

    #@d6c
    :goto_d6c
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(IIZ)Landroid/content/Intent;

    #@d6f
    move-result-object v0

    #@d70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d73
    if-eqz v0, :cond_d7f

    #@d75
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@d78
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@d7b
    goto/16 :goto_a

    #@d7d
    :cond_d7d
    move v0, v7

    #@d7e
    goto :goto_d6c

    #@d7f
    :cond_d7f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@d82
    goto/16 :goto_a

    #@d84
    :sswitch_d84
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@d86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d8c
    move-result v1

    #@d8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d90
    move-result v2

    #@d91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d94
    move-result v0

    #@d95
    if-eqz v0, :cond_da9

    #@d97
    move v0, v10

    #@d98
    :goto_d98
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(IIZ)Landroid/content/Intent;

    #@d9b
    move-result-object v0

    #@d9c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d9f
    if-eqz v0, :cond_dab

    #@da1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@da4
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@da7
    goto/16 :goto_a

    #@da9
    :cond_da9
    move v0, v7

    #@daa
    goto :goto_d98

    #@dab
    :cond_dab
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@dae
    goto/16 :goto_a

    #@db0
    :sswitch_db0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@db2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hl()Landroid/content/Intent;

    #@db8
    move-result-object v0

    #@db9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@dbc
    if-eqz v0, :cond_dc6

    #@dbe
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@dc1
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@dc4
    goto/16 :goto_a

    #@dc6
    :cond_dc6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@dc9
    goto/16 :goto_a

    #@dcb
    :sswitch_dcb
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@dcd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dd0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@dd3
    move-result v0

    #@dd4
    if-eqz v0, :cond_df3

    #@dd6
    sget-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dd8
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ddb
    move-result-object v0

    #@ddc
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@dde
    :goto_dde
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@de1
    move-result v1

    #@de2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;

    #@de5
    move-result-object v0

    #@de6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@de9
    if-eqz v0, :cond_df5

    #@deb
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@dee
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@df1
    goto/16 :goto_a

    #@df3
    :cond_df3
    move-object v0, v6

    #@df4
    goto :goto_dde

    #@df5
    :cond_df5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@df8
    goto/16 :goto_a

    #@dfa
    :sswitch_dfa
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@dfc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dff
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hm()Landroid/content/Intent;

    #@e02
    move-result-object v0

    #@e03
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e06
    if-eqz v0, :cond_e10

    #@e08
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@e0b
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@e0e
    goto/16 :goto_a

    #@e10
    :cond_e10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@e13
    goto/16 :goto_a

    #@e15
    :sswitch_e15
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@e17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hC()Landroid/content/Intent;

    #@e1d
    move-result-object v0

    #@e1e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e21
    if-eqz v0, :cond_e2b

    #@e23
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@e26
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@e29
    goto/16 :goto_a

    #@e2b
    :cond_e2b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@e2e
    goto/16 :goto_a

    #@e30
    :sswitch_e30
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@e32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e35
    sget-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@e3a
    move-result-object v1

    #@e3b
    check-cast v1, [Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    #@e3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e40
    move-result-object v2

    #@e41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e44
    move-result-object v3

    #@e45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e48
    move-result v0

    #@e49
    if-eqz v0, :cond_e75

    #@e4b
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e4d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e50
    move-result-object v0

    #@e51
    check-cast v0, Landroid/net/Uri;

    #@e53
    move-object v4, v0

    #@e54
    :goto_e54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e57
    move-result v0

    #@e58
    if-eqz v0, :cond_1644

    #@e5a
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e5c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e5f
    move-result-object v0

    #@e60
    check-cast v0, Landroid/net/Uri;

    #@e62
    move-object v5, v0

    #@e63
    :goto_e63
    move-object v0, p0

    #@e64
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a([Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    #@e67
    move-result-object v0

    #@e68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e6b
    if-eqz v0, :cond_e77

    #@e6d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@e70
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@e73
    goto/16 :goto_a

    #@e75
    :cond_e75
    move-object v4, v6

    #@e76
    goto :goto_e54

    #@e77
    :cond_e77
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@e7a
    goto/16 :goto_a

    #@e7c
    :sswitch_e7c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@e7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e81
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hn()I

    #@e84
    move-result v0

    #@e85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e8b
    goto/16 :goto_a

    #@e8d
    :sswitch_e8d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@e8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e95
    move-result-object v0

    #@e96
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@e99
    move-result-object v1

    #@e9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e9d
    move-result-object v2

    #@e9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ea1
    move-result v3

    #@ea2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ea5
    move-result v0

    #@ea6
    if-eqz v0, :cond_eb9

    #@ea8
    move v4, v10

    #@ea9
    :goto_ea9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@eac
    move-result v0

    #@ead
    if-eqz v0, :cond_ebb

    #@eaf
    move v5, v10

    #@eb0
    :goto_eb0
    move-object v0, p0

    #@eb1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    #@eb4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@eb7
    goto/16 :goto_a

    #@eb9
    :cond_eb9
    move v4, v7

    #@eba
    goto :goto_ea9

    #@ebb
    :cond_ebb
    move v5, v7

    #@ebc
    goto :goto_eb0

    #@ebd
    :sswitch_ebd
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@ebf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ec5
    move-result-object v0

    #@ec6
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@ec9
    move-result-object v1

    #@eca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ecd
    move-result-object v2

    #@ece
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ed1
    move-result-object v3

    #@ed2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ed5
    move-result v4

    #@ed6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ed9
    move-result v0

    #@eda
    if-eqz v0, :cond_eed

    #@edc
    move v5, v10

    #@edd
    :goto_edd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ee0
    move-result v0

    #@ee1
    if-eqz v0, :cond_eef

    #@ee3
    move v6, v10

    #@ee4
    :goto_ee4
    move-object v0, p0

    #@ee5
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V

    #@ee8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@eeb
    goto/16 :goto_a

    #@eed
    :cond_eed
    move v5, v7

    #@eee
    goto :goto_edd

    #@eef
    :cond_eef
    move v6, v7

    #@ef0
    goto :goto_ee4

    #@ef1
    :sswitch_ef1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@ef3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ef9
    move-result-object v0

    #@efa
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->bb(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@efd
    move-result-object v0

    #@efe
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f01
    if-eqz v0, :cond_f0b

    #@f03
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@f06
    invoke-virtual {v0, p3, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@f09
    goto/16 :goto_a

    #@f0b
    :cond_f0b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@f0e
    goto/16 :goto_a

    #@f10
    :sswitch_f10
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@f12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f18
    move-result-object v0

    #@f19
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@f1c
    move-result-object v0

    #@f1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@f20
    move-result-wide v2

    #@f21
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V

    #@f24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f27
    goto/16 :goto_a

    #@f29
    :sswitch_f29
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@f2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@f31
    move-result-wide v0

    #@f32
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->t(J)V

    #@f35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f38
    goto/16 :goto_a

    #@f3a
    :sswitch_f3a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@f3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f42
    move-result-object v0

    #@f43
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@f46
    move-result-object v0

    #@f47
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@f4a
    move-result-wide v2

    #@f4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f4e
    move-result-object v1

    #@f4f
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V

    #@f52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f55
    goto/16 :goto_a

    #@f57
    :sswitch_f57
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@f59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@f5f
    move-result-wide v0

    #@f60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f63
    move-result-object v2

    #@f64
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(JLjava/lang/String;)V

    #@f67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f6a
    goto/16 :goto_a

    #@f6c
    :sswitch_f6c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@f6e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f74
    move-result-object v0

    #@f75
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@f78
    move-result-object v1

    #@f79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f7c
    move-result-object v2

    #@f7d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@f80
    move-result-object v3

    #@f81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f84
    move-result v4

    #@f85
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@f88
    move-result-object v5

    #@f89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f8c
    move-result v6

    #@f8d
    move-object v0, p0

    #@f8e
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[Ljava/lang/String;I[BI)V

    #@f91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f94
    goto/16 :goto_a

    #@f96
    :sswitch_f96
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@f98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f9e
    move-result-object v0

    #@f9f
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@fa2
    move-result-object v0

    #@fa3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@fa6
    move-result-object v1

    #@fa7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    #@faa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@fad
    goto/16 :goto_a

    #@faf
    :sswitch_faf
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@fb1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fb7
    move-result-object v0

    #@fb8
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@fbb
    move-result-object v0

    #@fbc
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@fbf
    move-result-object v1

    #@fc0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    #@fc3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc6
    goto/16 :goto_a

    #@fc8
    :sswitch_fc8
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@fca
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fcd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fd0
    move-result-object v0

    #@fd1
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@fd4
    move-result-object v0

    #@fd5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fd8
    move-result-object v1

    #@fd9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fdc
    move-result-object v2

    #@fdd
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@fe0
    move-result-object v3

    #@fe1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@fe4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@fe7
    goto/16 :goto_a

    #@fe9
    :sswitch_fe9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@feb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ff1
    move-result-object v0

    #@ff2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@ff5
    move-result-object v0

    #@ff6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ff9
    move-result v1

    #@ffa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ffd
    move-result v2

    #@ffe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1001
    move-result v3

    #@1002
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;III)V

    #@1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1008
    goto/16 :goto_a

    #@100a
    :sswitch_100a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@100c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@100f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1012
    move-result-object v0

    #@1013
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1016
    move-result-object v1

    #@1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@101a
    move-result-object v2

    #@101b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@101e
    move-result-object v3

    #@101f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1022
    move-result v4

    #@1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1026
    move-result v5

    #@1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@102a
    move-result v6

    #@102b
    move-object v0, p0

    #@102c
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;III)V

    #@102f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1032
    goto/16 :goto_a

    #@1034
    :sswitch_1034
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1036
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@103c
    move-result-object v0

    #@103d
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1040
    move-result-object v0

    #@1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1044
    move-result-object v1

    #@1045
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1048
    move-result v2

    #@1049
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    #@104c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@104f
    goto/16 :goto_a

    #@1051
    :sswitch_1051
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1053
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1056
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1059
    move-result v0

    #@105a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@105d
    move-result-object v1

    #@105e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1061
    move-result v2

    #@1062
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1065
    move-result-object v3

    #@1066
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(I[BILjava/lang/String;)Landroid/content/Intent;

    #@1069
    move-result-object v0

    #@106a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@106d
    if-eqz v0, :cond_1077

    #@106f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@1072
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1075
    goto/16 :goto_a

    #@1077
    :cond_1077
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@107a
    goto/16 :goto_a

    #@107c
    :sswitch_107c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@107e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1081
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hr()I

    #@1084
    move-result v0

    #@1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1088
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@108b
    goto/16 :goto_a

    #@108d
    :sswitch_108d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@108f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1092
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hs()I

    #@1095
    move-result v0

    #@1096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1099
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@109c
    goto/16 :goto_a

    #@109e
    :sswitch_109e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@10a0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hq()Landroid/content/Intent;

    #@10a6
    move-result-object v0

    #@10a7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10aa
    if-eqz v0, :cond_10b4

    #@10ac
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@10af
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@10b2
    goto/16 :goto_a

    #@10b4
    :cond_10b4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@10b7
    goto/16 :goto_a

    #@10b9
    :sswitch_10b9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@10bb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10c1
    move-result v0

    #@10c2
    if-eqz v0, :cond_10ca

    #@10c4
    sget-object v0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->CREATOR:Lcom/google/android/gms/games/internal/request/GameRequestClusterCreator;

    #@10c6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/request/GameRequestClusterCreator;->bk(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/request/GameRequestCluster;

    #@10c9
    move-result-object v6

    #@10ca
    :cond_10ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10cd
    move-result-object v0

    #@10ce
    invoke-virtual {p0, v6, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/request/GameRequestCluster;Ljava/lang/String;)Landroid/content/Intent;

    #@10d1
    move-result-object v0

    #@10d2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d5
    if-eqz v0, :cond_10df

    #@10d7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@10da
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@10dd
    goto/16 :goto_a

    #@10df
    :cond_10df
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@10e2
    goto/16 :goto_a

    #@10e4
    :sswitch_10e4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@10e6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10ec
    move-result-object v0

    #@10ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10f0
    move-result v1

    #@10f1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->q(Ljava/lang/String;I)V

    #@10f4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10f7
    goto/16 :goto_a

    #@10f9
    :sswitch_10f9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@10fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1101
    move-result-object v0

    #@1102
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1105
    move-result-object v0

    #@1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1109
    move-result v1

    #@110a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V

    #@110d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1110
    goto/16 :goto_a

    #@1112
    :sswitch_1112
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@111a
    move-result-object v0

    #@111b
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@111e
    move-result-object v0

    #@111f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1122
    move-result-object v1

    #@1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1126
    move-result v2

    #@1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@112a
    move-result v3

    #@112b
    if-eqz v3, :cond_112e

    #@112d
    move v7, v10

    #@112e
    :cond_112e
    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V

    #@1131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1134
    goto/16 :goto_a

    #@1136
    :sswitch_1136
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@113e
    move-result v0

    #@113f
    if-eqz v0, :cond_1147

    #@1141
    sget-object v0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->CREATOR:Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;

    #@1143
    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;->bi(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;

    #@1146
    move-result-object v6

    #@1147
    :cond_1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@114a
    move-result-object v0

    #@114b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@114e
    move-result-object v1

    #@114f
    invoke-virtual {p0, v6, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1152
    move-result-object v0

    #@1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1156
    if-eqz v0, :cond_1160

    #@1158
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@115b
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@115e
    goto/16 :goto_a

    #@1160
    :cond_1160
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@1163
    goto/16 :goto_a

    #@1165
    :sswitch_1165
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@116d
    move-result-object v0

    #@116e
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1171
    move-result-object v0

    #@1172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1175
    move-result v1

    #@1176
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1179
    move-result-object v2

    #@117a
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I[I)V

    #@117d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1180
    goto/16 :goto_a

    #@1182
    :sswitch_1182
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1184
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@118a
    move-result-object v0

    #@118b
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@118e
    move-result-object v0

    #@118f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1192
    move-result-object v1

    #@1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1196
    move-result v2

    #@1197
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@119a
    move-result-object v3

    #@119b
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I[I)V

    #@119e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@11a1
    goto/16 :goto_a

    #@11a3
    :sswitch_11a3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@11a5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11ab
    move-result-object v0

    #@11ac
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@11af
    move-result-object v0

    #@11b0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@11b3
    move-result-object v1

    #@11b4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    #@11b7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@11ba
    goto/16 :goto_a

    #@11bc
    :sswitch_11bc
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@11be
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11c4
    move-result-object v0

    #@11c5
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@11c8
    move-result-object v0

    #@11c9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->j(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    #@11cc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@11cf
    goto/16 :goto_a

    #@11d1
    :sswitch_11d1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@11d3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11d6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hD()V

    #@11d9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@11dc
    goto/16 :goto_a

    #@11de
    :sswitch_11de
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@11e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11e6
    move-result-object v2

    #@11e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11ea
    move-result v0

    #@11eb
    if-eqz v0, :cond_120a

    #@11ed
    move v0, v10

    #@11ee
    :goto_11ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11f1
    move-result v1

    #@11f2
    if-eqz v1, :cond_120c

    #@11f4
    move v1, v10

    #@11f5
    :goto_11f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11f8
    move-result v3

    #@11f9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Ljava/lang/String;ZZI)Landroid/content/Intent;

    #@11fc
    move-result-object v0

    #@11fd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1200
    if-eqz v0, :cond_120e

    #@1202
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@1205
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1208
    goto/16 :goto_a

    #@120a
    :cond_120a
    move v0, v7

    #@120b
    goto :goto_11ee

    #@120c
    :cond_120c
    move v1, v7

    #@120d
    goto :goto_11f5

    #@120e
    :cond_120e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@1211
    goto/16 :goto_a

    #@1213
    :sswitch_1213
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1215
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@121b
    move-result-object v0

    #@121c
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@121f
    move-result-object v0

    #@1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1223
    move-result v1

    #@1224
    if-eqz v1, :cond_1227

    #@1226
    move v7, v10

    #@1227
    :cond_1227
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    #@122a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@122d
    goto/16 :goto_a

    #@122f
    :sswitch_122f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1231
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1237
    move-result-object v0

    #@1238
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@123b
    move-result-object v0

    #@123c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@123f
    move-result-object v1

    #@1240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1243
    move-result-object v2

    #@1244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1247
    move-result v3

    #@1248
    if-eqz v3, :cond_124b

    #@124a
    move v7, v10

    #@124b
    :cond_124b
    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    #@124e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1251
    goto/16 :goto_a

    #@1253
    :sswitch_1253
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1255
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@125b
    move-result-object v0

    #@125c
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@125f
    move-result-object v0

    #@1260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1263
    move-result-object v1

    #@1264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1267
    move-result v2

    #@1268
    if-eqz v2, :cond_126b

    #@126a
    move v7, v10

    #@126b
    :cond_126b
    invoke-virtual {p0, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    #@126e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1271
    goto/16 :goto_a

    #@1273
    :sswitch_1273
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1275
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@127b
    move-result-object v0

    #@127c
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@127f
    move-result-object v2

    #@1280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1283
    move-result-object v3

    #@1284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1287
    move-result v0

    #@1288
    if-eqz v0, :cond_12a7

    #@128a
    sget-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    #@128c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@128f
    move-result-object v0

    #@1290
    move-object v1, v0

    #@1291
    :goto_1291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1294
    move-result v0

    #@1295
    if-eqz v0, :cond_12a9

    #@1297
    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1299
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@129c
    move-result-object v0

    #@129d
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@129f
    :goto_129f
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V

    #@12a2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a5
    goto/16 :goto_a

    #@12a7
    :cond_12a7
    move-object v1, v6

    #@12a8
    goto :goto_1291

    #@12a9
    :cond_12a9
    move-object v0, v6

    #@12aa
    goto :goto_129f

    #@12ab
    :sswitch_12ab
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@12ad
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12b3
    move-result v0

    #@12b4
    if-eqz v0, :cond_12c6

    #@12b6
    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12b8
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12bb
    move-result-object v0

    #@12bc
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@12be
    :goto_12be
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/drive/Contents;)V

    #@12c1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c4
    goto/16 :goto_a

    #@12c6
    :cond_12c6
    move-object v0, v6

    #@12c7
    goto :goto_12be

    #@12c8
    :sswitch_12c8
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@12ca
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12d0
    move-result-object v0

    #@12d1
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@12d4
    move-result-object v0

    #@12d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12d8
    move-result-object v1

    #@12d9
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->r(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@12dc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12df
    goto/16 :goto_a

    #@12e1
    :sswitch_12e1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@12e3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12e9
    move-result-object v0

    #@12ea
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@12ed
    move-result-object v1

    #@12ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12f1
    move-result-object v2

    #@12f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12f5
    move-result-object v3

    #@12f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12f9
    move-result v0

    #@12fa
    if-eqz v0, :cond_131a

    #@12fc
    sget-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    #@12fe
    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    #@1301
    move-result-object v4

    #@1302
    :goto_1302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1305
    move-result v0

    #@1306
    if-eqz v0, :cond_1641

    #@1308
    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@130a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@130d
    move-result-object v0

    #@130e
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@1310
    move-object v5, v0

    #@1311
    :goto_1311
    move-object v0, p0

    #@1312
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V

    #@1315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1318
    goto/16 :goto_a

    #@131a
    :cond_131a
    move-object v4, v6

    #@131b
    goto :goto_1302

    #@131c
    :sswitch_131c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@131e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1321
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->ht()I

    #@1324
    move-result v0

    #@1325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1328
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@132b
    goto/16 :goto_a

    #@132d
    :sswitch_132d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@132f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1332
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hu()I

    #@1335
    move-result v0

    #@1336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1339
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@133c
    goto/16 :goto_a

    #@133e
    :sswitch_133e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1340
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1343
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1346
    move-result-object v0

    #@1347
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@134a
    move-result-object v0

    #@134b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@134e
    move-result-object v1

    #@134f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->s(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@1352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1355
    goto/16 :goto_a

    #@1357
    :sswitch_1357
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1359
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@135f
    move-result-object v0

    #@1360
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1363
    move-result-object v0

    #@1364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1367
    move-result-object v1

    #@1368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@136b
    move-result v2

    #@136c
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    #@136f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1372
    goto/16 :goto_a

    #@1374
    :sswitch_1374
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1376
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1379
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@137c
    move-result-object v0

    #@137d
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1380
    move-result-object v0

    #@1381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1384
    move-result-object v1

    #@1385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1388
    move-result v2

    #@1389
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    #@138c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@138f
    goto/16 :goto_a

    #@1391
    :sswitch_1391
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1393
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1396
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1399
    move-result-object v0

    #@139a
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@139d
    move-result-object v1

    #@139e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13a1
    move-result-object v2

    #@13a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13a5
    move-result v3

    #@13a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13a9
    move-result v0

    #@13aa
    if-eqz v0, :cond_13bd

    #@13ac
    move v4, v10

    #@13ad
    :goto_13ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13b0
    move-result v0

    #@13b1
    if-eqz v0, :cond_13bf

    #@13b3
    move v5, v10

    #@13b4
    :goto_13b4
    move-object v0, p0

    #@13b5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    #@13b8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13bb
    goto/16 :goto_a

    #@13bd
    :cond_13bd
    move v4, v7

    #@13be
    goto :goto_13ad

    #@13bf
    :cond_13bf
    move v5, v7

    #@13c0
    goto :goto_13b4

    #@13c1
    :sswitch_13c1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@13c3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13c9
    move-result-object v0

    #@13ca
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@13cd
    move-result-object v1

    #@13ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13d1
    move-result-object v2

    #@13d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13d5
    move-result v3

    #@13d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13d9
    move-result v0

    #@13da
    if-eqz v0, :cond_13ed

    #@13dc
    move v4, v10

    #@13dd
    :goto_13dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13e0
    move-result v0

    #@13e1
    if-eqz v0, :cond_13ef

    #@13e3
    move v5, v10

    #@13e4
    :goto_13e4
    move-object v0, p0

    #@13e5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    #@13e8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13eb
    goto/16 :goto_a

    #@13ed
    :cond_13ed
    move v4, v7

    #@13ee
    goto :goto_13dd

    #@13ef
    :cond_13ef
    move v5, v7

    #@13f0
    goto :goto_13e4

    #@13f1
    :sswitch_13f1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@13f3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->hE()Z

    #@13f9
    move-result v0

    #@13fa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13fd
    if-eqz v0, :cond_1400

    #@13ff
    move v7, v10

    #@1400
    :cond_1400
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@1403
    goto/16 :goto_a

    #@1405
    :sswitch_1405
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1407
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@140d
    move-result v0

    #@140e
    if-eqz v0, :cond_1411

    #@1410
    move v7, v10

    #@1411
    :cond_1411
    invoke-virtual {p0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->F(Z)V

    #@1414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1417
    goto/16 :goto_a

    #@1419
    :sswitch_1419
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@141b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@141e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1421
    move-result-object v0

    #@1422
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1425
    move-result-object v0

    #@1426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1429
    move-result-object v1

    #@142a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->t(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@142d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1430
    goto/16 :goto_a

    #@1432
    :sswitch_1432
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1434
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1437
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@143a
    move-result-object v0

    #@143b
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@143e
    move-result-object v0

    #@143f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1442
    move-result v1

    #@1443
    if-eqz v1, :cond_1446

    #@1445
    move v7, v10

    #@1446
    :cond_1446
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    #@1449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@144c
    goto/16 :goto_a

    #@144e
    :sswitch_144e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1450
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1453
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1456
    move-result-object v0

    #@1457
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@145a
    move-result-object v0

    #@145b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@145e
    move-result v1

    #@145f
    if-eqz v1, :cond_1462

    #@1461
    move v7, v10

    #@1462
    :cond_1462
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    #@1465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1468
    goto/16 :goto_a

    #@146a
    :sswitch_146a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@146c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@146f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1472
    move-result-object v0

    #@1473
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1476
    move-result-object v0

    #@1477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@147a
    move-result v1

    #@147b
    if-eqz v1, :cond_147e

    #@147d
    move v7, v10

    #@147e
    :cond_147e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1481
    move-result-object v1

    #@1482
    invoke-virtual {p0, v0, v7, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z[Ljava/lang/String;)V

    #@1485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1488
    goto/16 :goto_a

    #@148a
    :sswitch_148a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@148c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@148f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1492
    move-result-object v0

    #@1493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1496
    move-result v1

    #@1497
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->l(Ljava/lang/String;I)V

    #@149a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@149d
    goto/16 :goto_a

    #@149f
    :sswitch_149f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@14a1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14a7
    move-result-object v0

    #@14a8
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@14ab
    move-result-object v0

    #@14ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14af
    move-result-object v1

    #@14b0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->u(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@14b3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@14b6
    goto/16 :goto_a

    #@14b8
    :sswitch_14b8
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@14ba
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14c0
    move-result-object v0

    #@14c1
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@14c4
    move-result-object v0

    #@14c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14c8
    move-result-object v1

    #@14c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14cc
    move-result-object v2

    #@14cd
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    #@14d0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@14d3
    goto/16 :goto_a

    #@14d5
    :sswitch_14d5
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@14d7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14da
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14dd
    move-result-object v0

    #@14de
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@14e1
    move-result-object v0

    #@14e2
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@14e5
    move-result-object v1

    #@14e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14e9
    move-result v2

    #@14ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14ed
    move-result v3

    #@14ee
    if-eqz v3, :cond_14f1

    #@14f0
    move v7, v10

    #@14f1
    :cond_14f1
    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[IIZ)V

    #@14f4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@14f7
    goto/16 :goto_a

    #@14f9
    :sswitch_14f9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@14fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1501
    move-result-object v0

    #@1502
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1505
    move-result-object v0

    #@1506
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1509
    move-result-object v1

    #@150a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@150d
    move-result v2

    #@150e
    if-eqz v2, :cond_1511

    #@1510
    move v7, v10

    #@1511
    :cond_1511
    invoke-virtual {p0, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;Z)V

    #@1514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1517
    goto/16 :goto_a

    #@1519
    :sswitch_1519
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@151b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@151e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1521
    move-result-object v0

    #@1522
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1525
    move-result-object v1

    #@1526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1529
    move-result-object v2

    #@152a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@152d
    move-result-object v3

    #@152e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1531
    move-result-object v4

    #@1532
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1535
    move-result v5

    #@1536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1539
    move-result v0

    #@153a
    if-eqz v0, :cond_1546

    #@153c
    move v6, v10

    #@153d
    :goto_153d
    move-object v0, p0

    #@153e
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    #@1541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1544
    goto/16 :goto_a

    #@1546
    :cond_1546
    move v6, v7

    #@1547
    goto :goto_153d

    #@1548
    :sswitch_1548
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@154a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@154d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1550
    move-result-object v0

    #@1551
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1554
    move-result-object v1

    #@1555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1558
    move-result-object v2

    #@1559
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@155c
    move-result-object v3

    #@155d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1560
    move-result-object v4

    #@1561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1564
    move-result v0

    #@1565
    if-eqz v0, :cond_1571

    #@1567
    move v5, v10

    #@1568
    :goto_1568
    move-object v0, p0

    #@1569
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    #@156c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@156f
    goto/16 :goto_a

    #@1571
    :cond_1571
    move v5, v7

    #@1572
    goto :goto_1568

    #@1573
    :sswitch_1573
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@1575
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1578
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@157b
    move-result-object v0

    #@157c
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@157f
    move-result-object v0

    #@1580
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@1583
    move-result-wide v2

    #@1584
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V

    #@1587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@158a
    goto/16 :goto_a

    #@158c
    :sswitch_158c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@158e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1591
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1594
    move-result-object v0

    #@1595
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1598
    move-result-object v0

    #@1599
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@159c
    move-result-wide v2

    #@159d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15a0
    move-result-object v1

    #@15a1
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V

    #@15a4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a7
    goto/16 :goto_a

    #@15a9
    :sswitch_15a9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@15ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@15b1
    move-result-wide v0

    #@15b2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->u(J)V

    #@15b5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15b8
    goto/16 :goto_a

    #@15ba
    :sswitch_15ba
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@15bc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@15c2
    move-result-wide v0

    #@15c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15c6
    move-result-object v2

    #@15c7
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->d(JLjava/lang/String;)V

    #@15ca
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15cd
    goto/16 :goto_a

    #@15cf
    :sswitch_15cf
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@15d1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15d4
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@15d7
    move-result-object v0

    #@15d8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->a([I)Landroid/content/Intent;

    #@15db
    move-result-object v0

    #@15dc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15df
    if-eqz v0, :cond_15e9

    #@15e1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@15e4
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@15e7
    goto/16 :goto_a

    #@15e9
    :cond_15e9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@15ec
    goto/16 :goto_a

    #@15ee
    :sswitch_15ee
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@15f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15f6
    move-result-object v0

    #@15f7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aU(Ljava/lang/String;)Landroid/content/Intent;

    #@15fa
    move-result-object v0

    #@15fb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15fe
    if-eqz v0, :cond_1608

    #@1600
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@1603
    invoke-virtual {v0, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1606
    goto/16 :goto_a

    #@1608
    :cond_1608
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@160b
    goto/16 :goto_a

    #@160d
    :sswitch_160d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@160f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1612
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1615
    move-result-object v0

    #@1616
    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    #@1619
    move-result-object v1

    #@161a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@161d
    move-result-object v2

    #@161e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1621
    move-result-object v3

    #@1622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1625
    move-result v4

    #@1626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1629
    move-result v0

    #@162a
    if-eqz v0, :cond_163d

    #@162c
    move v5, v10

    #@162d
    :goto_162d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1630
    move-result v0

    #@1631
    if-eqz v0, :cond_163f

    #@1633
    move v6, v10

    #@1634
    :goto_1634
    move-object v0, p0

    #@1635
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V

    #@1638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@163b
    goto/16 :goto_a

    #@163d
    :cond_163d
    move v5, v7

    #@163e
    goto :goto_162d

    #@163f
    :cond_163f
    move v6, v7

    #@1640
    goto :goto_1634

    #@1641
    :cond_1641
    move-object v5, v6

    #@1642
    goto/16 :goto_1311

    #@1644
    :cond_1644
    move-object v5, v6

    #@1645
    goto/16 :goto_e63

    #@1647
    :cond_1647
    move-object v5, v6

    #@1648
    goto/16 :goto_a21

    #@164a
    :cond_164a
    move-object v5, v6

    #@164b
    goto/16 :goto_9a0

    #@164d
    :cond_164d
    move-object v5, v6

    #@164e
    goto/16 :goto_2a0

    #@1650
    :sswitch_data_1650
    .sparse-switch
        0x1389 -> :sswitch_11
        0x138a -> :sswitch_21
        0x138b -> :sswitch_35
        0x138c -> :sswitch_45
        0x138d -> :sswitch_5e
        0x138e -> :sswitch_7e
        0x138f -> :sswitch_8a
        0x1394 -> :sswitch_c5
        0x1395 -> :sswitch_d6
        0x1396 -> :sswitch_f1
        0x1397 -> :sswitch_10a
        0x1398 -> :sswitch_133
        0x1399 -> :sswitch_150
        0x139a -> :sswitch_165
        0x139b -> :sswitch_17e
        0x139c -> :sswitch_1ad
        0x139d -> :sswitch_1dc
        0x139e -> :sswitch_209
        0x139f -> :sswitch_21e
        0x13a0 -> :sswitch_24b
        0x13a1 -> :sswitch_278
        0x13a2 -> :sswitch_2a9
        0x13a3 -> :sswitch_2be
        0x13a4 -> :sswitch_2d3
        0x13a5 -> :sswitch_2e8
        0x13a6 -> :sswitch_327
        0x13a7 -> :sswitch_363
        0x13a8 -> :sswitch_38e
        0x13a9 -> :sswitch_3a7
        0x13aa -> :sswitch_3cc
        0x13ab -> :sswitch_3e9
        0x13ac -> :sswitch_3fe
        0x13ad -> :sswitch_40f
        0x13ae -> :sswitch_428
        0x13af -> :sswitch_445
        0x13b0 -> :sswitch_476
        0x13b1 -> :sswitch_4a7
        0x13b2 -> :sswitch_4c4
        0x13b3 -> :sswitch_4dd
        0x13b4 -> :sswitch_4f6
        0x13b5 -> :sswitch_526
        0x13b6 -> :sswitch_556
        0x13b7 -> :sswitch_57f
        0x13b8 -> :sswitch_594
        0x13b9 -> :sswitch_5bd
        0x13ba -> :sswitch_5d2
        0x13bb -> :sswitch_5e3
        0x13bc -> :sswitch_5fc
        0x13bd -> :sswitch_615
        0x13be -> :sswitch_651
        0x13bf -> :sswitch_68a
        0x13c0 -> :sswitch_6c7
        0x13c1 -> :sswitch_6dc
        0x13c2 -> :sswitch_2fd
        0x13c3 -> :sswitch_316
        0x13c4 -> :sswitch_63c
        0x13c5 -> :sswitch_671
        0x13c6 -> :sswitch_6f5
        0x13c7 -> :sswitch_70a
        0x13c8 -> :sswitch_9b
        0x13c9 -> :sswitch_b0
        0x13ca -> :sswitch_736
        0x13cb -> :sswitch_69f
        0x13cc -> :sswitch_6b3
        0x157d -> :sswitch_755
        0x157e -> :sswitch_785
        0x1771 -> :sswitch_7a0
        0x1772 -> :sswitch_7bc
        0x1773 -> :sswitch_7e0
        0x1774 -> :sswitch_809
        0x1965 -> :sswitch_832
        0x1966 -> :sswitch_872
        0x1967 -> :sswitch_892
        0x1968 -> :sswitch_8ae
        0x1969 -> :sswitch_8ce
        0x196a -> :sswitch_8ee
        0x196b -> :sswitch_912
        0x1b59 -> :sswitch_93d
        0x1b5a -> :sswitch_956
        0x1b5b -> :sswitch_978
        0x1f41 -> :sswitch_9a9
        0x1f42 -> :sswitch_9cf
        0x1f43 -> :sswitch_9e0
        0x1f44 -> :sswitch_9f9
        0x1f45 -> :sswitch_a2a
        0x1f46 -> :sswitch_a43
        0x1f47 -> :sswitch_a5c
        0x1f48 -> :sswitch_a86
        0x1f49 -> :sswitch_aab
        0x1f4a -> :sswitch_ac4
        0x1f4b -> :sswitch_add
        0x1f4c -> :sswitch_afa
        0x1f4d -> :sswitch_b13
        0x1f4e -> :sswitch_b24
        0x1f4f -> :sswitch_b63
        0x1f50 -> :sswitch_b80
        0x1f51 -> :sswitch_b9d
        0x1f52 -> :sswitch_bd3
        0x1f53 -> :sswitch_bf0
        0x1f54 -> :sswitch_c05
        0x1f55 -> :sswitch_c22
        0x1f56 -> :sswitch_c37
        0x1f57 -> :sswitch_c44
        0x1f58 -> :sswitch_b3d
        0x1f59 -> :sswitch_b4e
        0x1f5a -> :sswitch_bba
        0x1f5b -> :sswitch_c68
        0x2329 -> :sswitch_c84
        0x232a -> :sswitch_cb4
        0x232b -> :sswitch_ccd
        0x232c -> :sswitch_ce8
        0x232d -> :sswitch_d07
        0x232e -> :sswitch_d22
        0x232f -> :sswitch_d3d
        0x2330 -> :sswitch_d58
        0x2331 -> :sswitch_d84
        0x2332 -> :sswitch_db0
        0x2333 -> :sswitch_dcb
        0x2334 -> :sswitch_dfa
        0x2335 -> :sswitch_e15
        0x233b -> :sswitch_e7c
        0x233c -> :sswitch_e8d
        0x2344 -> :sswitch_ebd
        0x2346 -> :sswitch_ef1
        0x2347 -> :sswitch_e30
        0x2711 -> :sswitch_f10
        0x2712 -> :sswitch_f29
        0x2713 -> :sswitch_f3a
        0x2714 -> :sswitch_f57
        0x2715 -> :sswitch_f6c
        0x2716 -> :sswitch_f96
        0x2717 -> :sswitch_faf
        0x2718 -> :sswitch_fc8
        0x2719 -> :sswitch_fe9
        0x271a -> :sswitch_100a
        0x271b -> :sswitch_1034
        0x271c -> :sswitch_1051
        0x271d -> :sswitch_107c
        0x271e -> :sswitch_10e4
        0x271f -> :sswitch_109e
        0x2720 -> :sswitch_10f9
        0x2721 -> :sswitch_1112
        0x2722 -> :sswitch_1165
        0x2723 -> :sswitch_1182
        0x2724 -> :sswitch_11a3
        0x2725 -> :sswitch_1136
        0x2726 -> :sswitch_10b9
        0x2727 -> :sswitch_108d
        0x2af9 -> :sswitch_11bc
        0x2afa -> :sswitch_11d1
        0x2ee1 -> :sswitch_11de
        0x2ee2 -> :sswitch_1213
        0x2ee3 -> :sswitch_122f
        0x2ee5 -> :sswitch_133e
        0x2ee6 -> :sswitch_1253
        0x2ee7 -> :sswitch_1273
        0x2ee8 -> :sswitch_149f
        0x2ee9 -> :sswitch_14b8
        0x2eea -> :sswitch_14d5
        0x2eeb -> :sswitch_1573
        0x2eec -> :sswitch_15a9
        0x2eed -> :sswitch_158c
        0x2eee -> :sswitch_15ba
        0x2eef -> :sswitch_1519
        0x2ef0 -> :sswitch_144e
        0x2ef1 -> :sswitch_148a
        0x2ef2 -> :sswitch_160d
        0x2ef3 -> :sswitch_12ab
        0x2ef4 -> :sswitch_12c8
        0x2ef5 -> :sswitch_1391
        0x2ef6 -> :sswitch_13c1
        0x2ef7 -> :sswitch_1357
        0x2ef8 -> :sswitch_1374
        0x2ef9 -> :sswitch_13f1
        0x2efa -> :sswitch_1405
        0x2efb -> :sswitch_1419
        0x2efc -> :sswitch_1548
        0x2efd -> :sswitch_14f9
        0x2efe -> :sswitch_15cf
        0x2eff -> :sswitch_146a
        0x2f00 -> :sswitch_1432
        0x2f01 -> :sswitch_12e1
        0x2f02 -> :sswitch_15ee
        0x2f03 -> :sswitch_131c
        0x2f04 -> :sswitch_132d
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
