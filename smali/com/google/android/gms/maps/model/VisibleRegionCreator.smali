.class public Lcom/google/android/gms/maps/model/VisibleRegionCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/VisibleRegion;",
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

.method static a(Lcom/google/android/gms/maps/model/VisibleRegion;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/VisibleRegion;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    #@10
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->nearRight:Lcom/google/android/gms/maps/model/LatLng;

    #@16
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->farLeft:Lcom/google/android/gms/maps/model/LatLng;

    #@1c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1f
    const/4 v1, 0x5

    #@20
    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    #@22
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@25
    const/4 v1, 0x6

    #@26
    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    #@28
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@2e
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/VisibleRegion;
    .registers 11

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v7

    #@5
    const/4 v1, 0x0

    #@6
    move-object v3, v2

    #@7
    move-object v4, v2

    #@8
    move-object v5, v2

    #@9
    move-object v6, v2

    #@a
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@d
    move-result v0

    #@e
    if-ge v0, v7, :cond_56

    #@10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@13
    move-result v0

    #@14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@17
    move-result v8

    #@18
    packed-switch v8, :pswitch_data_7c

    #@1b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1e
    goto :goto_a

    #@1f
    :pswitch_1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@22
    move-result v1

    #@23
    goto :goto_a

    #@24
    :pswitch_24
    sget-object v2, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@26
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@2c
    move-object v2, v0

    #@2d
    goto :goto_a

    #@2e
    :pswitch_2e
    sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@30
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@36
    move-object v3, v0

    #@37
    goto :goto_a

    #@38
    :pswitch_38
    sget-object v4, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@3a
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@40
    move-object v4, v0

    #@41
    goto :goto_a

    #@42
    :pswitch_42
    sget-object v5, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@44
    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@4a
    move-object v5, v0

    #@4b
    goto :goto_a

    #@4c
    :pswitch_4c
    sget-object v6, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@4e
    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    #@54
    move-object v6, v0

    #@55
    goto :goto_a

    #@56
    :cond_56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@59
    move-result v0

    #@5a
    if-eq v0, v7, :cond_75

    #@5c
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@5e
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string v2, "Overread allowed size end="

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@74
    throw v0

    #@75
    :cond_75
    new-instance v0, Lcom/google/android/gms/maps/model/VisibleRegion;

    #@77
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/maps/model/VisibleRegion;-><init>(ILcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    #@7a
    return-object v0

    #@7b
    nop

    #@7c
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_24
        :pswitch_2e
        :pswitch_38
        :pswitch_42
        :pswitch_4c
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/VisibleRegionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/VisibleRegion;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/VisibleRegion;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/maps/model/VisibleRegion;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/VisibleRegionCreator;->newArray(I)[Lcom/google/android/gms/maps/model/VisibleRegion;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
