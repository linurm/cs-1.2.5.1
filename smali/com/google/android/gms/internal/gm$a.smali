.class public abstract Lcom/google/android/gms/internal/gm$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/gm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@5
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/gm$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@8
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    #@0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    sparse-switch p1, :sswitch_data_10e

    #@6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v2

    #@a
    :goto_a
    return v2

    #@b
    :sswitch_b
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    goto :goto_a

    #@11
    :sswitch_11
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gm$a;->T(I)V

    #@1d
    goto :goto_a

    #@1e
    :sswitch_1e
    const-string v3, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_31

    #@29
    sget-object v0, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/google/android/gms/cast/ApplicationMetadata;

    #@31
    :cond_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_40

    #@3f
    move v1, v2

    #@40
    :cond_40
    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/google/android/gms/internal/gm$a;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    #@43
    goto :goto_a

    #@44
    :sswitch_44
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gm$a;->U(I)V

    #@50
    goto :goto_a

    #@51
    :sswitch_51
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    #@5d
    move-result-wide v4

    #@5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_65

    #@64
    move v1, v2

    #@65
    :cond_65
    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/google/android/gms/internal/gm$a;->a(Ljava/lang/String;DZ)V

    #@68
    goto :goto_a

    #@69
    :sswitch_69
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@6b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gm$a;->g(Ljava/lang/String;Ljava/lang/String;)V

    #@79
    goto :goto_a

    #@7a
    :sswitch_7a
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@7c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@86
    move-result-object v1

    #@87
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gm$a;->b(Ljava/lang/String;[B)V

    #@8a
    goto :goto_a

    #@8b
    :sswitch_8b
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@8d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v0

    #@94
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gm$a;->W(I)V

    #@97
    goto/16 :goto_a

    #@99
    :sswitch_99
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@9b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v0

    #@a2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gm$a;->V(I)V

    #@a5
    goto/16 :goto_a

    #@a7
    :sswitch_a7
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@a9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v0

    #@b0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gm$a;->onApplicationDisconnected(I)V

    #@b3
    goto/16 :goto_a

    #@b5
    :sswitch_b5
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@b7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@c1
    move-result-wide v4

    #@c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c5
    move-result v1

    #@c6
    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/google/android/gms/internal/gm$a;->a(Ljava/lang/String;JI)V

    #@c9
    goto/16 :goto_a

    #@cb
    :sswitch_cb
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@cd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d3
    move-result-object v0

    #@d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@d7
    move-result-wide v4

    #@d8
    invoke-virtual {p0, v0, v4, v5}, Lcom/google/android/gms/internal/gm$a;->a(Ljava/lang/String;J)V

    #@db
    goto/16 :goto_a

    #@dd
    :sswitch_dd
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@df
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v1

    #@e6
    if-eqz v1, :cond_f0

    #@e8
    sget-object v0, Lcom/google/android/gms/internal/ge;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ea
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ed
    move-result-object v0

    #@ee
    check-cast v0, Lcom/google/android/gms/internal/ge;

    #@f0
    :cond_f0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gm$a;->b(Lcom/google/android/gms/internal/ge;)V

    #@f3
    goto/16 :goto_a

    #@f5
    :sswitch_f5
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    #@f7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fd
    move-result v1

    #@fe
    if-eqz v1, :cond_108

    #@100
    sget-object v0, Lcom/google/android/gms/internal/gj;->CREATOR:Landroid/os/Parcelable$Creator;

    #@102
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@105
    move-result-object v0

    #@106
    check-cast v0, Lcom/google/android/gms/internal/gj;

    #@108
    :cond_108
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gm$a;->b(Lcom/google/android/gms/internal/gj;)V

    #@10b
    goto/16 :goto_a

    #@10d
    nop

    #@10e
    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_44
        0x4 -> :sswitch_51
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7a
        0x7 -> :sswitch_8b
        0x8 -> :sswitch_99
        0x9 -> :sswitch_a7
        0xa -> :sswitch_b5
        0xb -> :sswitch_cb
        0xc -> :sswitch_dd
        0xd -> :sswitch_f5
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
