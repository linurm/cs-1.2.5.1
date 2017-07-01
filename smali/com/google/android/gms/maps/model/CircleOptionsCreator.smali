.class public Lcom/google/android/gms/maps/model/CircleOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/CircleOptions;",
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

.method static a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getVersionCode()I

    #@8
    move-result v2

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/4 v1, 0x2

    #@d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x0

    #@12
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@15
    const/4 v1, 0x3

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getRadius()D

    #@19
    move-result-wide v2

    #@1a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getStrokeWidth()F

    #@21
    move-result v2

    #@22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getStrokeColor()I

    #@29
    move-result v2

    #@2a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getFillColor()I

    #@31
    move-result v2

    #@32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getZIndex()F

    #@39
    move-result v2

    #@3a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@3d
    const/16 v1, 0x8

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->isVisible()Z

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@46
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@49
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 14

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v1

    #@6
    const/4 v3, 0x0

    #@7
    const-wide/16 v4, 0x0

    #@9
    move v2, v10

    #@a
    move v7, v10

    #@b
    move v8, v10

    #@c
    move v9, v6

    #@d
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@10
    move-result v0

    #@11
    if-ge v0, v1, :cond_4f

    #@13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@16
    move-result v0

    #@17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1a
    move-result v11

    #@1b
    packed-switch v11, :pswitch_data_74

    #@1e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@21
    goto :goto_d

    #@22
    :pswitch_22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@25
    move-result v2

    #@26
    goto :goto_d

    #@27
    :pswitch_27
    sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@29
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@2f
    move-object v3, v0

    #@30
    goto :goto_d

    #@31
    :pswitch_31
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    #@34
    move-result-wide v4

    #@35
    goto :goto_d

    #@36
    :pswitch_36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@39
    move-result v6

    #@3a
    goto :goto_d

    #@3b
    :pswitch_3b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3e
    move-result v7

    #@3f
    goto :goto_d

    #@40
    :pswitch_40
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@43
    move-result v8

    #@44
    goto :goto_d

    #@45
    :pswitch_45
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@48
    move-result v9

    #@49
    goto :goto_d

    #@4a
    :pswitch_4a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@4d
    move-result v10

    #@4e
    goto :goto_d

    #@4f
    :cond_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@52
    move-result v0

    #@53
    if-eq v0, v1, :cond_6e

    #@55
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@57
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string v3, "Overread allowed size end="

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@6d
    throw v0

    #@6e
    :cond_6e
    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    #@70
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V

    #@73
    return-object v1

    #@74
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_22
        :pswitch_27
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_40
        :pswitch_45
        :pswitch_4a
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CircleOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/maps/model/CircleOptions;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/model/CircleOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
