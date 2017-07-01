.class public abstract Lcom/google/android/gms/plus/internal/b$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/plus/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/plus/internal/b$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method

.method public static bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
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
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/plus/internal/b;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/plus/internal/b;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/plus/internal/b$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/internal/b$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    sparse-switch p1, :sswitch_data_160

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    move v0, v3

    #@10
    goto :goto_9

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_3f

    #@20
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/os/Bundle;

    #@28
    move-object v1, v0

    #@29
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_41

    #@2f
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/os/Bundle;

    #@37
    :goto_37
    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/plus/internal/b$a;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    #@3a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d
    move v0, v3

    #@3e
    goto :goto_9

    #@3f
    :cond_3f
    move-object v1, v2

    #@40
    goto :goto_29

    #@41
    :cond_41
    move-object v0, v2

    #@42
    goto :goto_37

    #@43
    :sswitch_43
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v4

    #@4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_71

    #@52
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Landroid/os/Bundle;

    #@5a
    move-object v1, v0

    #@5b
    :goto_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_73

    #@61
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@63
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@69
    :goto_69
    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/plus/internal/b$a;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    #@6c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f
    move v0, v3

    #@70
    goto :goto_9

    #@71
    :cond_71
    move-object v1, v2

    #@72
    goto :goto_5b

    #@73
    :cond_73
    move-object v0, v2

    #@74
    goto :goto_69

    #@75
    :sswitch_75
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/b$a;->bw(Ljava/lang/String;)V

    #@81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@84
    move v0, v3

    #@85
    goto :goto_9

    #@86
    :sswitch_86
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v0

    #@8f
    if-eqz v0, :cond_97

    #@91
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@93
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@96
    move-result-object v2

    #@97
    :cond_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/plus/internal/b$a;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    #@9e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    move v0, v3

    #@a2
    goto/16 :goto_9

    #@a4
    :sswitch_a4
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ac
    move-result v1

    #@ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v0

    #@b1
    if-eqz v0, :cond_d0

    #@b3
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b5
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b8
    move-result-object v0

    #@b9
    check-cast v0, Landroid/os/Bundle;

    #@bb
    :goto_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@be
    move-result v4

    #@bf
    if-eqz v4, :cond_c7

    #@c1
    sget-object v2, Lcom/google/android/gms/internal/ie;->CREATOR:Lcom/google/android/gms/internal/if;

    #@c3
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/if;->L(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ie;

    #@c6
    move-result-object v2

    #@c7
    :cond_c7
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/plus/internal/b$a;->a(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ie;)V

    #@ca
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd
    move v0, v3

    #@ce
    goto/16 :goto_9

    #@d0
    :cond_d0
    move-object v0, v2

    #@d1
    goto :goto_bb

    #@d2
    :sswitch_d2
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@d4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@da
    move-result v0

    #@db
    if-eqz v0, :cond_e3

    #@dd
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@df
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    #@e2
    move-result-object v2

    #@e3
    :cond_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ea
    move-result-object v1

    #@eb
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/plus/internal/b$a;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V

    #@ee
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    move v0, v3

    #@f2
    goto/16 :goto_9

    #@f4
    :sswitch_f4
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@f6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fc
    move-result v1

    #@fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@100
    move-result v0

    #@101
    if-eqz v0, :cond_114

    #@103
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@105
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@108
    move-result-object v0

    #@109
    check-cast v0, Landroid/os/Bundle;

    #@10b
    :goto_10b
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/plus/internal/b$a;->h(ILandroid/os/Bundle;)V

    #@10e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@111
    move v0, v3

    #@112
    goto/16 :goto_9

    #@114
    :cond_114
    move-object v0, v2

    #@115
    goto :goto_10b

    #@116
    :sswitch_116
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11e
    move-result-object v0

    #@11f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/b$a;->bx(Ljava/lang/String;)V

    #@122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@125
    move v0, v3

    #@126
    goto/16 :goto_9

    #@128
    :sswitch_128
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@12a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@130
    move-result v0

    #@131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v1

    #@135
    if-eqz v1, :cond_13d

    #@137
    sget-object v1, Lcom/google/android/gms/internal/ks;->CREATOR:Lcom/google/android/gms/internal/kt;

    #@139
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kt;->bG(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks;

    #@13c
    move-result-object v2

    #@13d
    :cond_13d
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/plus/internal/b$a;->a(ILcom/google/android/gms/internal/ks;)V

    #@140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@143
    move v0, v3

    #@144
    goto/16 :goto_9

    #@146
    :sswitch_146
    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    #@148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14e
    move-result v0

    #@14f
    if-eqz v0, :cond_157

    #@151
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@153
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    #@156
    move-result-object v2

    #@157
    :cond_157
    invoke-virtual {p0, v2}, Lcom/google/android/gms/plus/internal/b$a;->am(Lcom/google/android/gms/common/api/Status;)V

    #@15a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15d
    move v0, v3

    #@15e
    goto/16 :goto_9

    #@160
    :sswitch_data_160
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_43
        0x3 -> :sswitch_75
        0x4 -> :sswitch_86
        0x5 -> :sswitch_a4
        0x6 -> :sswitch_d2
        0x7 -> :sswitch_f4
        0x8 -> :sswitch_116
        0x9 -> :sswitch_128
        0xa -> :sswitch_146
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
