.class public abstract Lcom/google/android/gms/internal/gl$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/gl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gl$a$a;
    }
.end annotation


# direct methods
.method public static H(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gl;
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
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/internal/gl;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/gl$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gl$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    sparse-switch p1, :sswitch_data_fc

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    :goto_9
    return v7

    #@a
    :sswitch_a
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl$a;->disconnect()V

    #@18
    goto :goto_9

    #@19
    :sswitch_19
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_29

    #@28
    move v0, v7

    #@29
    :cond_29
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gl$a;->e(Ljava/lang/String;Z)V

    #@2c
    goto :goto_9

    #@2d
    :sswitch_2d
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gl$a;->h(Ljava/lang/String;Ljava/lang/String;)V

    #@3d
    goto :goto_9

    #@3e
    :sswitch_3e
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl$a;->ep()V

    #@46
    goto :goto_9

    #@47
    :sswitch_47
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->am(Ljava/lang/String;)V

    #@53
    goto :goto_9

    #@54
    :sswitch_54
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl$a;->eg()V

    #@5c
    goto :goto_9

    #@5d
    :sswitch_5d
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@5f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    #@65
    move-result-wide v2

    #@66
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    #@69
    move-result-wide v4

    #@6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v1

    #@6e
    if-eqz v1, :cond_76

    #@70
    move v6, v7

    #@71
    :goto_71
    move-object v1, p0

    #@72
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/gl$a;->a(DDZ)V

    #@75
    goto :goto_9

    #@76
    :cond_76
    move v6, v0

    #@77
    goto :goto_71

    #@78
    :sswitch_78
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@7a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_94

    #@83
    move v1, v7

    #@84
    :goto_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    #@87
    move-result-wide v2

    #@88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_8f

    #@8e
    move v0, v7

    #@8f
    :cond_8f
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/gl$a;->a(ZDZ)V

    #@92
    goto/16 :goto_9

    #@94
    :cond_94
    move v1, v0

    #@95
    goto :goto_84

    #@96
    :sswitch_96
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@a6
    move-result-wide v2

    #@a7
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    #@aa
    goto/16 :goto_9

    #@ac
    :sswitch_ac
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@ae
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@b8
    move-result-object v1

    #@b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@bc
    move-result-wide v2

    #@bd
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;[BJ)V

    #@c0
    goto/16 :goto_9

    #@c2
    :sswitch_c2
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca
    move-result-object v0

    #@cb
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->an(Ljava/lang/String;)V

    #@ce
    goto/16 :goto_9

    #@d0
    :sswitch_d0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@d2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d8
    move-result-object v0

    #@d9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->ao(Ljava/lang/String;)V

    #@dc
    goto/16 :goto_9

    #@de
    :sswitch_de
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ea
    move-result v0

    #@eb
    if-eqz v0, :cond_fa

    #@ed
    sget-object v0, Lcom/google/android/gms/cast/LaunchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ef
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f2
    move-result-object v0

    #@f3
    check-cast v0, Lcom/google/android/gms/cast/LaunchOptions;

    #@f5
    :goto_f5
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    #@f8
    goto/16 :goto_9

    #@fa
    :cond_fa
    const/4 v0, 0x0

    #@fb
    goto :goto_f5

    #@fc
    :sswitch_data_fc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_19
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_3e
        0x5 -> :sswitch_47
        0x6 -> :sswitch_54
        0x7 -> :sswitch_5d
        0x8 -> :sswitch_78
        0x9 -> :sswitch_96
        0xa -> :sswitch_ac
        0xb -> :sswitch_c2
        0xc -> :sswitch_d0
        0xd -> :sswitch_de
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
