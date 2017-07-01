.class public abstract Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;
    }
.end annotation


# direct methods
.method public static aW(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
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
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;-><init>(Landroid/os/IBinder;)V

    #@18
    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    sparse-switch p1, :sswitch_data_15e

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1c

    #@1b
    move v1, v0

    #@1c
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setZoomControlsEnabled(Z)V

    #@1f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22
    goto :goto_9

    #@23
    :sswitch_23
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2f

    #@2e
    move v1, v0

    #@2f
    :cond_2f
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setCompassEnabled(Z)V

    #@32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@35
    goto :goto_9

    #@36
    :sswitch_36
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_42

    #@41
    move v1, v0

    #@42
    :cond_42
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setMyLocationButtonEnabled(Z)V

    #@45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    goto :goto_9

    #@49
    :sswitch_49
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_55

    #@54
    move v1, v0

    #@55
    :cond_55
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setScrollGesturesEnabled(Z)V

    #@58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    goto :goto_9

    #@5c
    :sswitch_5c
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@5e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_68

    #@67
    move v1, v0

    #@68
    :cond_68
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setZoomGesturesEnabled(Z)V

    #@6b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e
    goto :goto_9

    #@6f
    :sswitch_6f
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@71
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_7b

    #@7a
    move v1, v0

    #@7b
    :cond_7b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setTiltGesturesEnabled(Z)V

    #@7e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@81
    goto :goto_9

    #@82
    :sswitch_82
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@84
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_8e

    #@8d
    move v1, v0

    #@8e
    :cond_8e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setRotateGesturesEnabled(Z)V

    #@91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    goto/16 :goto_9

    #@96
    :sswitch_96
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@98
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v2

    #@9f
    if-eqz v2, :cond_a2

    #@a1
    move v1, v0

    #@a2
    :cond_a2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setAllGesturesEnabled(Z)V

    #@a5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    goto/16 :goto_9

    #@aa
    :sswitch_aa
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@ac
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isZoomControlsEnabled()Z

    #@b2
    move-result v2

    #@b3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    if-eqz v2, :cond_b9

    #@b8
    move v1, v0

    #@b9
    :cond_b9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@bc
    goto/16 :goto_9

    #@be
    :sswitch_be
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@c0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isCompassEnabled()Z

    #@c6
    move-result v2

    #@c7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca
    if-eqz v2, :cond_cd

    #@cc
    move v1, v0

    #@cd
    :cond_cd
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d0
    goto/16 :goto_9

    #@d2
    :sswitch_d2
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@d4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d7
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isMyLocationButtonEnabled()Z

    #@da
    move-result v2

    #@db
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@de
    if-eqz v2, :cond_e1

    #@e0
    move v1, v0

    #@e1
    :cond_e1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e4
    goto/16 :goto_9

    #@e6
    :sswitch_e6
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@e8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eb
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isScrollGesturesEnabled()Z

    #@ee
    move-result v2

    #@ef
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2
    if-eqz v2, :cond_f5

    #@f4
    move v1, v0

    #@f5
    :cond_f5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f8
    goto/16 :goto_9

    #@fa
    :sswitch_fa
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@fc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isZoomGesturesEnabled()Z

    #@102
    move-result v2

    #@103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@106
    if-eqz v2, :cond_109

    #@108
    move v1, v0

    #@109
    :cond_109
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10c
    goto/16 :goto_9

    #@10e
    :sswitch_10e
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@110
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isTiltGesturesEnabled()Z

    #@116
    move-result v2

    #@117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@11a
    if-eqz v2, :cond_11d

    #@11c
    move v1, v0

    #@11d
    :cond_11d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@120
    goto/16 :goto_9

    #@122
    :sswitch_122
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@124
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@127
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isRotateGesturesEnabled()Z

    #@12a
    move-result v2

    #@12b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12e
    if-eqz v2, :cond_131

    #@130
    move v1, v0

    #@131
    :cond_131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@134
    goto/16 :goto_9

    #@136
    :sswitch_136
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@138
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13e
    move-result v2

    #@13f
    if-eqz v2, :cond_142

    #@141
    move v1, v0

    #@142
    :cond_142
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setIndoorLevelPickerEnabled(Z)V

    #@145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@148
    goto/16 :goto_9

    #@14a
    :sswitch_14a
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    #@14c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isIndoorLevelPickerEnabled()Z

    #@152
    move-result v2

    #@153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@156
    if-eqz v2, :cond_159

    #@158
    move v1, v0

    #@159
    :cond_159
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15c
    goto/16 :goto_9

    #@15e
    :sswitch_data_15e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_82
        0x8 -> :sswitch_96
        0x9 -> :sswitch_aa
        0xa -> :sswitch_be
        0xb -> :sswitch_d2
        0xc -> :sswitch_e6
        0xd -> :sswitch_fa
        0xe -> :sswitch_10e
        0xf -> :sswitch_122
        0x10 -> :sswitch_136
        0x11 -> :sswitch_14a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
