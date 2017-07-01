.class public Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/GroundOverlayOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->jN()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@15
    const/4 v1, 0x3

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getWidth()F

    #@21
    move-result v2

    #@22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getHeight()F

    #@29
    move-result v2

    #@2a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    #@31
    move-result-object v2

    #@32
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getBearing()F

    #@39
    move-result v2

    #@3a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getZIndex()F

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@46
    const/16 v1, 0x9

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->isVisible()Z

    #@4b
    move-result v2

    #@4c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@4f
    const/16 v1, 0xa

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getTransparency()F

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@58
    const/16 v1, 0xb

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getAnchorU()F

    #@5d
    move-result v2

    #@5e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@61
    const/16 v1, 0xc

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getAnchorV()F

    #@66
    move-result v2

    #@67
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@6a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@6d
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 18

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v14

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v6, 0x0

    #@9
    const/4 v7, 0x0

    #@a
    const/4 v8, 0x0

    #@b
    const/4 v9, 0x0

    #@c
    const/4 v10, 0x0

    #@d
    const/4 v11, 0x0

    #@e
    const/4 v12, 0x0

    #@f
    const/4 v13, 0x0

    #@10
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@13
    move-result v1

    #@14
    if-ge v1, v14, :cond_85

    #@16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@19
    move-result v1

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1d
    move-result v15

    #@1e
    packed-switch v15, :pswitch_data_ac

    #@21
    move-object/from16 v0, p1

    #@23
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@26
    goto :goto_10

    #@27
    :pswitch_27
    move-object/from16 v0, p1

    #@29
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2c
    move-result v2

    #@2d
    goto :goto_10

    #@2e
    :pswitch_2e
    move-object/from16 v0, p1

    #@30
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@33
    move-result-object v3

    #@34
    goto :goto_10

    #@35
    :pswitch_35
    sget-object v4, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@37
    move-object/from16 v0, p1

    #@39
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    #@3f
    move-object v4, v1

    #@40
    goto :goto_10

    #@41
    :pswitch_41
    move-object/from16 v0, p1

    #@43
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@46
    move-result v5

    #@47
    goto :goto_10

    #@48
    :pswitch_48
    move-object/from16 v0, p1

    #@4a
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@4d
    move-result v6

    #@4e
    goto :goto_10

    #@4f
    :pswitch_4f
    sget-object v7, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@56
    move-result-object v1

    #@57
    check-cast v1, Lcom/google/android/gms/maps/model/LatLngBounds;

    #@59
    move-object v7, v1

    #@5a
    goto :goto_10

    #@5b
    :pswitch_5b
    move-object/from16 v0, p1

    #@5d
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@60
    move-result v8

    #@61
    goto :goto_10

    #@62
    :pswitch_62
    move-object/from16 v0, p1

    #@64
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@67
    move-result v9

    #@68
    goto :goto_10

    #@69
    :pswitch_69
    move-object/from16 v0, p1

    #@6b
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@6e
    move-result v10

    #@6f
    goto :goto_10

    #@70
    :pswitch_70
    move-object/from16 v0, p1

    #@72
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@75
    move-result v11

    #@76
    goto :goto_10

    #@77
    :pswitch_77
    move-object/from16 v0, p1

    #@79
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@7c
    move-result v12

    #@7d
    goto :goto_10

    #@7e
    :pswitch_7e
    move-object/from16 v0, p1

    #@80
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@83
    move-result v13

    #@84
    goto :goto_10

    #@85
    :cond_85
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@88
    move-result v1

    #@89
    if-eq v1, v14, :cond_a6

    #@8b
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@8d
    new-instance v2, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string v3, "Overread allowed size end="

    #@94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    move-object/from16 v0, p1

    #@a2
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@a5
    throw v1

    #@a6
    :cond_a6
    new-instance v1, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    #@a8
    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V

    #@ab
    return-object v1

    #@ac
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2e
        :pswitch_35
        :pswitch_41
        :pswitch_48
        :pswitch_4f
        :pswitch_5b
        :pswitch_62
        :pswitch_69
        :pswitch_70
        :pswitch_77
        :pswitch_7e
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
