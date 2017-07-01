.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaLocationCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;",
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

.method static a(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;Landroid/os/Parcel;I)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->getVersionCode()I

    #@9
    move-result v2

    #@a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@d
    const/4 v1, 0x2

    #@e
    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->links:[Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    #@10
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    #@13
    const/4 v1, 0x3

    #@14
    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->position:Lcom/google/android/gms/maps/model/LatLng;

    #@16
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@19
    const/4 v1, 0x4

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->panoId:Ljava/lang/String;

    #@1c
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@22
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    .registers 10

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v5

    #@5
    const/4 v4, 0x0

    #@6
    move-object v1, v2

    #@7
    move-object v3, v2

    #@8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v0

    #@c
    if-ge v0, v5, :cond_53

    #@e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@11
    move-result v0

    #@12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@15
    move-result v6

    #@16
    packed-switch v6, :pswitch_data_78

    #@19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@1c
    move-object v0, v1

    #@1d
    move-object v1, v2

    #@1e
    move-object v2, v3

    #@1f
    move v3, v4

    #@20
    :goto_20
    move v4, v3

    #@21
    move-object v3, v2

    #@22
    move-object v2, v1

    #@23
    move-object v1, v0

    #@24
    goto :goto_8

    #@25
    :pswitch_25
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@28
    move-result v0

    #@29
    move-object v7, v1

    #@2a
    move-object v1, v2

    #@2b
    move-object v2, v3

    #@2c
    move v3, v0

    #@2d
    move-object v0, v7

    #@2e
    goto :goto_20

    #@2f
    :pswitch_2f
    sget-object v1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;

    #@31
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, [Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    #@37
    move-object v1, v2

    #@38
    move-object v2, v3

    #@39
    move v3, v4

    #@3a
    goto :goto_20

    #@3b
    :pswitch_3b
    sget-object v2, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@3d
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@43
    move-object v2, v3

    #@44
    move v3, v4

    #@45
    move-object v7, v1

    #@46
    move-object v1, v0

    #@47
    move-object v0, v7

    #@48
    goto :goto_20

    #@49
    :pswitch_49
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    move v3, v4

    #@4e
    move-object v7, v2

    #@4f
    move-object v2, v0

    #@50
    move-object v0, v1

    #@51
    move-object v1, v7

    #@52
    goto :goto_20

    #@53
    :cond_53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@56
    move-result v0

    #@57
    if-eq v0, v5, :cond_72

    #@59
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@5b
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string v2, "Overread allowed size end="

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@71
    throw v0

    #@72
    :cond_72
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    #@74
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;-><init>(I[Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    #@77
    return-object v0

    #@78
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2f
        :pswitch_3b
        :pswitch_49
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocationCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocationCreator;->newArray(I)[Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
