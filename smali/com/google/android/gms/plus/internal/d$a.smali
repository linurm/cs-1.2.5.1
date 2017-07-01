.class public abstract Lcom/google/android/gms/plus/internal/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/plus/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/d$a$a;
    }
.end annotation


# direct methods
.method public static bm(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/plus/internal/d;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/plus/internal/d$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/internal/d$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    sparse-switch p1, :sswitch_data_254

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    :goto_9
    return v7

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    #@24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30
    move-result-object v0

    #@31
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;Ljava/lang/String;)V

    #@40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@43
    goto :goto_9

    #@44
    :sswitch_44
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->b(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    #@58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    goto :goto_9

    #@5c
    :sswitch_5c
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_74

    #@67
    sget-object v0, Lcom/google/android/gms/internal/ie;->CREATOR:Lcom/google/android/gms/internal/if;

    #@69
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/if;->L(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ie;

    #@6c
    move-result-object v0

    #@6d
    :goto_6d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/internal/ie;)V

    #@70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    goto :goto_9

    #@74
    :cond_74
    move-object v0, v6

    #@75
    goto :goto_6d

    #@76
    :sswitch_76
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->getAccountName()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@85
    goto :goto_9

    #@86
    :sswitch_86
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->clearDefaultAccount()V

    #@8e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    goto/16 :goto_9

    #@93
    :sswitch_93
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9b
    move-result-object v0

    #@9c
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;)V

    #@a3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    goto/16 :goto_9

    #@a8
    :sswitch_a8
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b0
    move-result-object v0

    #@b1
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v0

    #@b9
    if-eqz v0, :cond_da

    #@bb
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bd
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c0
    move-result-object v0

    #@c1
    check-cast v0, Landroid/net/Uri;

    #@c3
    move-object v1, v0

    #@c4
    :goto_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v0

    #@c8
    if-eqz v0, :cond_dc

    #@ca
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cc
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cf
    move-result-object v0

    #@d0
    check-cast v0, Landroid/os/Bundle;

    #@d2
    :goto_d2
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Landroid/net/Uri;Landroid/os/Bundle;)V

    #@d5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d8
    goto/16 :goto_9

    #@da
    :cond_da
    move-object v1, v6

    #@db
    goto :goto_c4

    #@dc
    :cond_dc
    move-object v0, v6

    #@dd
    goto :goto_d2

    #@de
    :sswitch_de
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e6
    move-result-object v0

    #@e7
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@ea
    move-result-object v1

    #@eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ee
    move-result v2

    #@ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f2
    move-result-object v3

    #@f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f6
    move-result v0

    #@f7
    if-eqz v0, :cond_113

    #@f9
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fb
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fe
    move-result-object v0

    #@ff
    check-cast v0, Landroid/net/Uri;

    #@101
    move-object v4, v0

    #@102
    :goto_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@105
    move-result-object v5

    #@106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@109
    move-result-object v6

    #@10a
    move-object v0, p0

    #@10b
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    #@10e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@111
    goto/16 :goto_9

    #@113
    :cond_113
    move-object v4, v6

    #@114
    goto :goto_102

    #@115
    :sswitch_115
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11d
    move-result-object v0

    #@11e
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@121
    move-result-object v1

    #@122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@125
    move-result v2

    #@126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@129
    move-result v3

    #@12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v4

    #@12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@131
    move-result-object v5

    #@132
    move-object v0, p0

    #@133
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)Lcom/google/android/gms/internal/hg;

    #@136
    move-result-object v0

    #@137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13a
    if-eqz v0, :cond_140

    #@13c
    invoke-interface {v0}, Lcom/google/android/gms/internal/hg;->asBinder()Landroid/os/IBinder;

    #@13f
    move-result-object v6

    #@140
    :cond_140
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@143
    goto/16 :goto_9

    #@145
    :sswitch_145
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14d
    move-result-object v0

    #@14e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->removeMoment(Ljava/lang/String;)V

    #@151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@154
    goto/16 :goto_9

    #@156
    :sswitch_156
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@158
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15e
    move-result-object v0

    #@15f
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@162
    move-result-object v0

    #@163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@166
    move-result-object v1

    #@167
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->c(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    #@16a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@16d
    goto/16 :goto_9

    #@16f
    :sswitch_16f
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@171
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@177
    move-result-object v0

    #@178
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@17b
    move-result-object v0

    #@17c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->b(Lcom/google/android/gms/plus/internal/b;)V

    #@17f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@182
    goto/16 :goto_9

    #@184
    :sswitch_184
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18c
    move-result-object v0

    #@18d
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@190
    move-result-object v0

    #@191
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@194
    move-result-object v1

    #@195
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/util/List;)V

    #@198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@19b
    goto/16 :goto_9

    #@19d
    :sswitch_19d
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@19f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a5
    move-result-object v0

    #@1a6
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@1a9
    move-result-object v0

    #@1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ad
    move-result-object v1

    #@1ae
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->d(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    #@1b1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b4
    goto/16 :goto_9

    #@1b6
    :sswitch_1b6
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@1b8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bb
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jU()Ljava/lang/String;

    #@1be
    move-result-object v0

    #@1bf
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c5
    goto/16 :goto_9

    #@1c7
    :sswitch_1c7
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@1c9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cc
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jV()Z

    #@1cf
    move-result v0

    #@1d0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d3
    if-eqz v0, :cond_1db

    #@1d5
    move v0, v7

    #@1d6
    :goto_1d6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d9
    goto/16 :goto_9

    #@1db
    :cond_1db
    const/4 v0, 0x0

    #@1dc
    goto :goto_1d6

    #@1dd
    :sswitch_1dd
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@1df
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e2
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jW()Ljava/lang/String;

    #@1e5
    move-result-object v0

    #@1e6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1ec
    goto/16 :goto_9

    #@1ee
    :sswitch_1ee
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@1f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f6
    move-result-object v0

    #@1f7
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@1fa
    move-result-object v0

    #@1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fe
    move-result-object v1

    #@1ff
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->e(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    #@202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@205
    goto/16 :goto_9

    #@207
    :sswitch_207
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@209
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20f
    move-result-object v0

    #@210
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    #@213
    move-result-object v0

    #@214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v1

    #@218
    if-eqz v1, :cond_220

    #@21a
    sget-object v1, Lcom/google/android/gms/internal/ie;->CREATOR:Lcom/google/android/gms/internal/if;

    #@21c
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/if;->L(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ie;

    #@21f
    move-result-object v6

    #@220
    :cond_220
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/ie;)V

    #@223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@226
    goto/16 :goto_9

    #@228
    :sswitch_228
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@22a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@230
    move-result-object v1

    #@231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@234
    move-result v0

    #@235
    if-eqz v0, :cond_251

    #@237
    sget-object v0, Lcom/google/android/gms/internal/hr;->CREATOR:Lcom/google/android/gms/internal/hs;

    #@239
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hs;->D(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hr;

    #@23c
    move-result-object v0

    #@23d
    :goto_23d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@240
    move-result v2

    #@241
    if-eqz v2, :cond_249

    #@243
    sget-object v2, Lcom/google/android/gms/internal/hr;->CREATOR:Lcom/google/android/gms/internal/hs;

    #@245
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/hs;->D(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hr;

    #@248
    move-result-object v6

    #@249
    :cond_249
    invoke-virtual {p0, v1, v0, v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/hr;Lcom/google/android/gms/internal/hr;)V

    #@24c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24f
    goto/16 :goto_9

    #@251
    :cond_251
    move-object v0, v6

    #@252
    goto :goto_23d

    #@253
    nop

    #@254
    :sswitch_data_254
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_44
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_76
        0x6 -> :sswitch_86
        0x8 -> :sswitch_93
        0x9 -> :sswitch_a8
        0xe -> :sswitch_de
        0x10 -> :sswitch_115
        0x11 -> :sswitch_145
        0x12 -> :sswitch_156
        0x13 -> :sswitch_16f
        0x22 -> :sswitch_184
        0x28 -> :sswitch_19d
        0x29 -> :sswitch_1b6
        0x2a -> :sswitch_1c7
        0x2b -> :sswitch_1dd
        0x2c -> :sswitch_1ee
        0x2d -> :sswitch_207
        0x2e -> :sswitch_228
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
