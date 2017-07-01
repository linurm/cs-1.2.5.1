.class public Lcom/google/android/gms/maps/GoogleMapOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/GoogleMapOptions;",
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

.method static a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getVersionCode()I

    #@8
    move-result v2

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/4 v1, 0x2

    #@d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jq()B

    #@10
    move-result v2

    #@11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@14
    const/4 v1, 0x3

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jr()B

    #@18
    move-result v2

    #@19
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@1c
    const/4 v1, 0x4

    #@1d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMapType()I

    #@20
    move-result v2

    #@21
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@24
    const/4 v1, 0x5

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->js()B

    #@31
    move-result v2

    #@32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jt()B

    #@39
    move-result v2

    #@3a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ju()B

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@46
    const/16 v1, 0x9

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jv()B

    #@4b
    move-result v2

    #@4c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@4f
    const/16 v1, 0xa

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jw()B

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@58
    const/16 v1, 0xb

    #@5a
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->jx()B

    #@5d
    move-result v2

    #@5e
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    #@61
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@64
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 16

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v12

    #@5
    const/4 v5, 0x0

    #@6
    move v4, v1

    #@7
    move v2, v1

    #@8
    move v11, v1

    #@9
    move v6, v1

    #@a
    move v10, v1

    #@b
    move v7, v1

    #@c
    move v8, v1

    #@d
    move v3, v1

    #@e
    move v9, v1

    #@f
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@12
    move-result v0

    #@13
    if-ge v0, v12, :cond_60

    #@15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@18
    move-result v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1c
    move-result v13

    #@1d
    packed-switch v13, :pswitch_data_86

    #@20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@23
    goto :goto_f

    #@24
    :pswitch_24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@27
    move-result v1

    #@28
    goto :goto_f

    #@29
    :pswitch_29
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    #@2c
    move-result v2

    #@2d
    goto :goto_f

    #@2e
    :pswitch_2e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    #@31
    move-result v3

    #@32
    goto :goto_f

    #@33
    :pswitch_33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@36
    move-result v4

    #@37
    goto :goto_f

    #@38
    :pswitch_38
    sget-object v5, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/CameraPositionCreator;

    #@3a
    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/google/android/gms/maps/model/CameraPosition;

    #@40
    move-object v5, v0

    #@41
    goto :goto_f

    #@42
    :pswitch_42
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    #@45
    move-result v6

    #@46
    goto :goto_f

    #@47
    :pswitch_47
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    #@4a
    move-result v7

    #@4b
    goto :goto_f

    #@4c
    :pswitch_4c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    #@4f
    move-result v8

    #@50
    goto :goto_f

    #@51
    :pswitch_51
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    #@54
    move-result v9

    #@55
    goto :goto_f

    #@56
    :pswitch_56
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    #@59
    move-result v10

    #@5a
    goto :goto_f

    #@5b
    :pswitch_5b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    #@5e
    move-result v11

    #@5f
    goto :goto_f

    #@60
    :cond_60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@63
    move-result v0

    #@64
    if-eq v0, v12, :cond_7f

    #@66
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@68
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string v2, "Overread allowed size end="

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@7e
    throw v0

    #@7f
    :cond_7f
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    #@81
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V

    #@84
    return-object v0

    #@85
    nop

    #@86
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_42
        :pswitch_47
        :pswitch_4c
        :pswitch_51
        :pswitch_56
        :pswitch_5b
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/maps/GoogleMapOptions;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/GoogleMapOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
