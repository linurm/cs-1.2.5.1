.class public Lcom/google/android/gms/maps/model/PolylineOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/PolylineOptions;",
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

.method static a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getVersionCode()I

    #@8
    move-result v2

    #@9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c
    const/4 v1, 0x2

    #@d
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x0

    #@12
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@15
    const/4 v1, 0x3

    #@16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getWidth()F

    #@19
    move-result v2

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    #@21
    move-result v2

    #@22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getZIndex()F

    #@29
    move-result v2

    #@2a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@2d
    const/4 v1, 0x6

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->isVisible()Z

    #@31
    move-result v2

    #@32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->isGeodesic()Z

    #@39
    move-result v2

    #@3a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@3d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@40
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 12

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@5
    move-result v0

    #@6
    const/4 v2, 0x0

    #@7
    move v7, v6

    #@8
    move v1, v6

    #@9
    move v4, v6

    #@a
    move v5, v3

    #@b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@e
    move-result v8

    #@f
    if-ge v8, v0, :cond_45

    #@11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@14
    move-result v8

    #@15
    invoke-static {v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@18
    move-result v9

    #@19
    packed-switch v9, :pswitch_data_6a

    #@1c
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1f
    goto :goto_b

    #@20
    :pswitch_20
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@23
    move-result v1

    #@24
    goto :goto_b

    #@25
    :pswitch_25
    sget-object v2, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@27
    invoke-static {p1, v8, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2a
    move-result-object v2

    #@2b
    goto :goto_b

    #@2c
    :pswitch_2c
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@2f
    move-result v3

    #@30
    goto :goto_b

    #@31
    :pswitch_31
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@34
    move-result v4

    #@35
    goto :goto_b

    #@36
    :pswitch_36
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@39
    move-result v5

    #@3a
    goto :goto_b

    #@3b
    :pswitch_3b
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@3e
    move-result v6

    #@3f
    goto :goto_b

    #@40
    :pswitch_40
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@43
    move-result v7

    #@44
    goto :goto_b

    #@45
    :cond_45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@48
    move-result v8

    #@49
    if-eq v8, v0, :cond_64

    #@4b
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string v3, "Overread allowed size end="

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@63
    throw v1

    #@64
    :cond_64
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    #@66
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>(ILjava/util/List;FIFZZ)V

    #@69
    return-object v0

    #@6a
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolylineOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/maps/model/PolylineOptions;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/model/PolylineOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
