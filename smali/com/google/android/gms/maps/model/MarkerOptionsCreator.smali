.class public Lcom/google/android/gms/maps/model/MarkerOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/MarkerOptions;",
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

.method static a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    #@11
    move-result-object v2

    #@12
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@15
    const/4 v1, 0x3

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->jO()Landroid/os/IBinder;

    #@29
    move-result-object v2

    #@2a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    #@31
    move-result v2

    #@32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    #@39
    move-result v2

    #@3a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isDraggable()Z

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@46
    const/16 v1, 0x9

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isVisible()Z

    #@4b
    move-result v2

    #@4c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@4f
    const/16 v1, 0xa

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isFlat()Z

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@58
    const/16 v1, 0xb

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    #@5d
    move-result v2

    #@5e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@61
    const/16 v1, 0xc

    #@63
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    #@66
    move-result v2

    #@67
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@6a
    const/16 v1, 0xd

    #@6c
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    #@6f
    move-result v2

    #@70
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@73
    const/16 v1, 0xe

    #@75
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    #@78
    move-result v2

    #@79
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@7c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@7f
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 20

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v16

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
    const/high16 v13, 0x3f000000    # 0.5f

    #@11
    const/4 v14, 0x0

    #@12
    const/high16 v15, 0x3f800000    # 1.0f

    #@14
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@17
    move-result v1

    #@18
    move/from16 v0, v16

    #@1a
    if-ge v1, v0, :cond_94

    #@1c
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1f
    move-result v1

    #@20
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@23
    move-result v17

    #@24
    packed-switch v17, :pswitch_data_c0

    #@27
    move-object/from16 v0, p1

    #@29
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@2c
    goto :goto_14

    #@2d
    :pswitch_2d
    move-object/from16 v0, p1

    #@2f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@32
    move-result v2

    #@33
    goto :goto_14

    #@34
    :pswitch_34
    sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@36
    move-object/from16 v0, p1

    #@38
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    #@3e
    move-object v3, v1

    #@3f
    goto :goto_14

    #@40
    :pswitch_40
    move-object/from16 v0, p1

    #@42
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    goto :goto_14

    #@47
    :pswitch_47
    move-object/from16 v0, p1

    #@49
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    goto :goto_14

    #@4e
    :pswitch_4e
    move-object/from16 v0, p1

    #@50
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/IBinder;

    #@53
    move-result-object v6

    #@54
    goto :goto_14

    #@55
    :pswitch_55
    move-object/from16 v0, p1

    #@57
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@5a
    move-result v7

    #@5b
    goto :goto_14

    #@5c
    :pswitch_5c
    move-object/from16 v0, p1

    #@5e
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@61
    move-result v8

    #@62
    goto :goto_14

    #@63
    :pswitch_63
    move-object/from16 v0, p1

    #@65
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@68
    move-result v9

    #@69
    goto :goto_14

    #@6a
    :pswitch_6a
    move-object/from16 v0, p1

    #@6c
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@6f
    move-result v10

    #@70
    goto :goto_14

    #@71
    :pswitch_71
    move-object/from16 v0, p1

    #@73
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@76
    move-result v11

    #@77
    goto :goto_14

    #@78
    :pswitch_78
    move-object/from16 v0, p1

    #@7a
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@7d
    move-result v12

    #@7e
    goto :goto_14

    #@7f
    :pswitch_7f
    move-object/from16 v0, p1

    #@81
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@84
    move-result v13

    #@85
    goto :goto_14

    #@86
    :pswitch_86
    move-object/from16 v0, p1

    #@88
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@8b
    move-result v14

    #@8c
    goto :goto_14

    #@8d
    :pswitch_8d
    move-object/from16 v0, p1

    #@8f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@92
    move-result v15

    #@93
    goto :goto_14

    #@94
    :cond_94
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@97
    move-result v1

    #@98
    move/from16 v0, v16

    #@9a
    if-eq v1, v0, :cond_b9

    #@9c
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@9e
    new-instance v2, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string v3, "Overread allowed size end="

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    move/from16 v0, v16

    #@ab
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    move-object/from16 v0, p1

    #@b5
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@b8
    throw v1

    #@b9
    :cond_b9
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    #@bb
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V

    #@be
    return-object v1

    #@bf
    nop

    #@c0
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_34
        :pswitch_40
        :pswitch_47
        :pswitch_4e
        :pswitch_55
        :pswitch_5c
        :pswitch_63
        :pswitch_6a
        :pswitch_71
        :pswitch_78
        :pswitch_7f
        :pswitch_86
        :pswitch_8d
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/maps/model/MarkerOptions;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/model/MarkerOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
