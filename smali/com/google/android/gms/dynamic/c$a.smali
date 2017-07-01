.class public abstract Lcom/google/android/gms/dynamic/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/dynamic/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/dynamic/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static af(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;
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
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/dynamic/c;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/dynamic/c;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/dynamic/c$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/c$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    sparse-switch p1, :sswitch_data_252

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    move v0, v1

    #@11
    goto :goto_a

    #@12
    :sswitch_12
    const-string v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->gI()Lcom/google/android/gms/dynamic/d;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    if-eqz v2, :cond_24

    #@20
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    :cond_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    move v0, v1

    #@28
    goto :goto_a

    #@29
    :sswitch_29
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getArguments()Landroid/os/Bundle;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@35
    if-eqz v0, :cond_3f

    #@37
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    move v0, v1

    #@3e
    goto :goto_a

    #@3f
    :cond_3f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    move v0, v1

    #@43
    goto :goto_a

    #@44
    :sswitch_44
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getId()I

    #@4c
    move-result v0

    #@4d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    move v0, v1

    #@54
    goto :goto_a

    #@55
    :sswitch_55
    const-string v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->gJ()Lcom/google/android/gms/dynamic/c;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@61
    if-eqz v2, :cond_67

    #@63
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/c;->asBinder()Landroid/os/IBinder;

    #@66
    move-result-object v0

    #@67
    :cond_67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@6a
    move v0, v1

    #@6b
    goto :goto_a

    #@6c
    :sswitch_6c
    const-string v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@6e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->gK()Lcom/google/android/gms/dynamic/d;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@78
    if-eqz v2, :cond_7e

    #@7a
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@7d
    move-result-object v0

    #@7e
    :cond_7e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@81
    move v0, v1

    #@82
    goto :goto_a

    #@83
    :sswitch_83
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getRetainInstance()Z

    #@8b
    move-result v0

    #@8c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    if-eqz v0, :cond_98

    #@91
    move v0, v1

    #@92
    :goto_92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@95
    move v0, v1

    #@96
    goto/16 :goto_a

    #@98
    :cond_98
    move v0, v2

    #@99
    goto :goto_92

    #@9a
    :sswitch_9a
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@9c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getTag()Ljava/lang/String;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a9
    move v0, v1

    #@aa
    goto/16 :goto_a

    #@ac
    :sswitch_ac
    const-string v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@ae
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b1
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->gL()Lcom/google/android/gms/dynamic/c;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    if-eqz v2, :cond_be

    #@ba
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/c;->asBinder()Landroid/os/IBinder;

    #@bd
    move-result-object v0

    #@be
    :cond_be
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@c1
    move v0, v1

    #@c2
    goto/16 :goto_a

    #@c4
    :sswitch_c4
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@c6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c9
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getTargetRequestCode()I

    #@cc
    move-result v0

    #@cd
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d3
    move v0, v1

    #@d4
    goto/16 :goto_a

    #@d6
    :sswitch_d6
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@d8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getUserVisibleHint()Z

    #@de
    move-result v0

    #@df
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e2
    if-eqz v0, :cond_e5

    #@e4
    move v2, v1

    #@e5
    :cond_e5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e8
    move v0, v1

    #@e9
    goto/16 :goto_a

    #@eb
    :sswitch_eb
    const-string v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@ed
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getView()Lcom/google/android/gms/dynamic/d;

    #@f3
    move-result-object v2

    #@f4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f7
    if-eqz v2, :cond_fd

    #@f9
    invoke-interface {v2}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@fc
    move-result-object v0

    #@fd
    :cond_fd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@100
    move v0, v1

    #@101
    goto/16 :goto_a

    #@103
    :sswitch_103
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@108
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isAdded()Z

    #@10b
    move-result v0

    #@10c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10f
    if-eqz v0, :cond_112

    #@111
    move v2, v1

    #@112
    :cond_112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@115
    move v0, v1

    #@116
    goto/16 :goto_a

    #@118
    :sswitch_118
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@11a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11d
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isDetached()Z

    #@120
    move-result v0

    #@121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    if-eqz v0, :cond_127

    #@126
    move v2, v1

    #@127
    :cond_127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12a
    move v0, v1

    #@12b
    goto/16 :goto_a

    #@12d
    :sswitch_12d
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@12f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@132
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isHidden()Z

    #@135
    move-result v0

    #@136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@139
    if-eqz v0, :cond_13c

    #@13b
    move v2, v1

    #@13c
    :cond_13c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13f
    move v0, v1

    #@140
    goto/16 :goto_a

    #@142
    :sswitch_142
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isInLayout()Z

    #@14a
    move-result v0

    #@14b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@14e
    if-eqz v0, :cond_151

    #@150
    move v2, v1

    #@151
    :cond_151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@154
    move v0, v1

    #@155
    goto/16 :goto_a

    #@157
    :sswitch_157
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isRemoving()Z

    #@15f
    move-result v0

    #@160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@163
    if-eqz v0, :cond_166

    #@165
    move v2, v1

    #@166
    :cond_166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@169
    move v0, v1

    #@16a
    goto/16 :goto_a

    #@16c
    :sswitch_16c
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@16e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@171
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isResumed()Z

    #@174
    move-result v0

    #@175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@178
    if-eqz v0, :cond_17b

    #@17a
    move v2, v1

    #@17b
    :cond_17b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17e
    move v0, v1

    #@17f
    goto/16 :goto_a

    #@181
    :sswitch_181
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@183
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@186
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isVisible()Z

    #@189
    move-result v0

    #@18a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@18d
    if-eqz v0, :cond_190

    #@18f
    move v2, v1

    #@190
    :cond_190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@193
    move v0, v1

    #@194
    goto/16 :goto_a

    #@196
    :sswitch_196
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@198
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19e
    move-result-object v0

    #@19f
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@1a2
    move-result-object v0

    #@1a3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/c$a;->c(Lcom/google/android/gms/dynamic/d;)V

    #@1a6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a9
    move v0, v1

    #@1aa
    goto/16 :goto_a

    #@1ac
    :sswitch_1ac
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@1ae
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b4
    move-result v0

    #@1b5
    if-eqz v0, :cond_1b8

    #@1b7
    move v2, v1

    #@1b8
    :cond_1b8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/c$a;->setHasOptionsMenu(Z)V

    #@1bb
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1be
    move v0, v1

    #@1bf
    goto/16 :goto_a

    #@1c1
    :sswitch_1c1
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@1c3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c9
    move-result v0

    #@1ca
    if-eqz v0, :cond_1cd

    #@1cc
    move v2, v1

    #@1cd
    :cond_1cd
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/c$a;->setMenuVisibility(Z)V

    #@1d0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d3
    move v0, v1

    #@1d4
    goto/16 :goto_a

    #@1d6
    :sswitch_1d6
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@1d8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1de
    move-result v0

    #@1df
    if-eqz v0, :cond_1e2

    #@1e1
    move v2, v1

    #@1e2
    :cond_1e2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/c$a;->setRetainInstance(Z)V

    #@1e5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e8
    move v0, v1

    #@1e9
    goto/16 :goto_a

    #@1eb
    :sswitch_1eb
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@1ed
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f3
    move-result v0

    #@1f4
    if-eqz v0, :cond_1f7

    #@1f6
    move v2, v1

    #@1f7
    :cond_1f7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/dynamic/c$a;->setUserVisibleHint(Z)V

    #@1fa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fd
    move v0, v1

    #@1fe
    goto/16 :goto_a

    #@200
    :sswitch_200
    const-string v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@202
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@208
    move-result v2

    #@209
    if-eqz v2, :cond_213

    #@20b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@210
    move-result-object v0

    #@211
    check-cast v0, Landroid/content/Intent;

    #@213
    :cond_213
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/c$a;->startActivity(Landroid/content/Intent;)V

    #@216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@219
    move v0, v1

    #@21a
    goto/16 :goto_a

    #@21c
    :sswitch_21c
    const-string v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@21e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@224
    move-result v2

    #@225
    if-eqz v2, :cond_22f

    #@227
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@229
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22c
    move-result-object v0

    #@22d
    check-cast v0, Landroid/content/Intent;

    #@22f
    :cond_22f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@232
    move-result v2

    #@233
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/dynamic/c$a;->startActivityForResult(Landroid/content/Intent;I)V

    #@236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@239
    move v0, v1

    #@23a
    goto/16 :goto_a

    #@23c
    :sswitch_23c
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    #@23e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@244
    move-result-object v0

    #@245
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@248
    move-result-object v0

    #@249
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/c$a;->d(Lcom/google/android/gms/dynamic/d;)V

    #@24c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24f
    move v0, v1

    #@250
    goto/16 :goto_a

    #@252
    :sswitch_data_252
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_29
        0x4 -> :sswitch_44
        0x5 -> :sswitch_55
        0x6 -> :sswitch_6c
        0x7 -> :sswitch_83
        0x8 -> :sswitch_9a
        0x9 -> :sswitch_ac
        0xa -> :sswitch_c4
        0xb -> :sswitch_d6
        0xc -> :sswitch_eb
        0xd -> :sswitch_103
        0xe -> :sswitch_118
        0xf -> :sswitch_12d
        0x10 -> :sswitch_142
        0x11 -> :sswitch_157
        0x12 -> :sswitch_16c
        0x13 -> :sswitch_181
        0x14 -> :sswitch_196
        0x15 -> :sswitch_1ac
        0x16 -> :sswitch_1c1
        0x17 -> :sswitch_1d6
        0x18 -> :sswitch_1eb
        0x19 -> :sswitch_200
        0x1a -> :sswitch_21c
        0x1b -> :sswitch_23c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
