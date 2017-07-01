.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;


# instance fields
.field public final bearing:F

.field public final tilt:F

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;

    #@7
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(IFF)V

    #@4
    return-void
.end method

.method constructor <init>(IFF)V
    .registers 9

    #@0
    const/high16 v4, 0x43b40000    # 360.0f

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/high16 v0, -0x3d4c0000    # -90.0f

    #@7
    cmpg-float v0, v0, p2

    #@9
    if-gtz v0, :cond_2d

    #@b
    const/high16 v0, 0x42b40000    # 90.0f

    #@d
    cmpg-float v0, p2, v0

    #@f
    if-gtz v0, :cond_2d

    #@11
    const/4 v0, 0x1

    #@12
    :goto_12
    const-string v1, "Tilt needs to be between -90 and 90 inclusive"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@17
    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->xM:I

    #@19
    const/4 v0, 0x0

    #@1a
    add-float/2addr v0, p2

    #@1b
    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    #@1d
    float-to-double v0, p3

    #@1e
    const-wide/16 v2, 0x0

    #@20
    cmpg-double v0, v0, v2

    #@22
    if-gtz v0, :cond_28

    #@24
    rem-float v0, p3, v4

    #@26
    add-float p3, v0, v4

    #@28
    :cond_28
    rem-float v0, p3, v4

    #@2a
    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    #@2c
    return-void

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_12
.end method

.method public static builder()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>()V

    #@5
    return-object v0
.end method

.method public static builder(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p0, p1, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    #@c
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    #@e
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@11
    move-result v2

    #@12
    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    #@14
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@17
    move-result v3

    #@18
    if-ne v2, v3, :cond_5

    #@1a
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    #@1c
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1f
    move-result v2

    #@20
    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    #@22
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@25
    move-result v3

    #@26
    if-eq v2, v3, :cond_4

    #@28
    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    #@6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    #@f
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "tilt"

    #@6
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    #@8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@f
    move-result-object v0

    #@10
    const-string v1, "bearing"

    #@12
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    #@14
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
