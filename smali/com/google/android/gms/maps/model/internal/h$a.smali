.class public abstract Lcom/google/android/gms/maps/model/internal/h$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/h$a$a;
    }
.end annotation


# direct methods
.method public static bf(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/h;
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
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_13

    #@c
    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/h;

    #@e
    if-eqz v1, :cond_13

    #@10
    check-cast v0, Lcom/google/android/gms/maps/model/internal/h;

    #@12
    goto :goto_3

    #@13
    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/h$a$a;

    #@15
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/h$a$a;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_d4

    #@5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    :goto_9
    return v0

    #@a
    :sswitch_a
    const-string v1, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    goto :goto_9

    #@10
    :sswitch_10
    const-string v1, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->remove()V

    #@18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b
    goto :goto_9

    #@1c
    :sswitch_1c
    const-string v1, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->clearTileCache()V

    #@24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    goto :goto_9

    #@28
    :sswitch_28
    const-string v1, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->getId()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    goto :goto_9

    #@38
    :sswitch_38
    const-string v1, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@40
    move-result v1

    #@41
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/h$a;->setZIndex(F)V

    #@44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    goto :goto_9

    #@48
    :sswitch_48
    const-string v1, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->getZIndex()F

    #@50
    move-result v1

    #@51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@57
    goto :goto_9

    #@58
    :sswitch_58
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@5a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_64

    #@63
    move v1, v0

    #@64
    :cond_64
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/h$a;->setVisible(Z)V

    #@67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    goto :goto_9

    #@6b
    :sswitch_6b
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@6d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->isVisible()Z

    #@73
    move-result v2

    #@74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@77
    if-eqz v2, :cond_7a

    #@79
    move v1, v0

    #@7a
    :cond_7a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    goto :goto_9

    #@7e
    :sswitch_7e
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@80
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@86
    move-result-object v2

    #@87
    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/h$a;->bf(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/h;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/h$a;->a(Lcom/google/android/gms/maps/model/internal/h;)Z

    #@8e
    move-result v2

    #@8f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    if-eqz v2, :cond_95

    #@94
    move v1, v0

    #@95
    :cond_95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    goto/16 :goto_9

    #@9a
    :sswitch_9a
    const-string v1, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@9c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->hashCodeRemote()I

    #@a2
    move-result v1

    #@a3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    goto/16 :goto_9

    #@ab
    :sswitch_ab
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@ad
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v2

    #@b4
    if-eqz v2, :cond_b7

    #@b6
    move v1, v0

    #@b7
    :cond_b7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/model/internal/h$a;->setFadeIn(Z)V

    #@ba
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd
    goto/16 :goto_9

    #@bf
    :sswitch_bf
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    #@c1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->getFadeIn()Z

    #@c7
    move-result v2

    #@c8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb
    if-eqz v2, :cond_ce

    #@cd
    move v1, v0

    #@ce
    :cond_ce
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d1
    goto/16 :goto_9

    #@d3
    nop

    #@d4
    :sswitch_data_d4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_28
        0x4 -> :sswitch_38
        0x5 -> :sswitch_48
        0x6 -> :sswitch_58
        0x7 -> :sswitch_6b
        0x8 -> :sswitch_7e
        0x9 -> :sswitch_9a
        0xa -> :sswitch_ab
        0xb -> :sswitch_bf
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
