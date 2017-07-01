.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;


# instance fields
.field private abb:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

.field public final bearing:F

.field public final tilt:F

.field private final xM:I

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;

    #@7
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(IFFF)V

    #@4
    return-void
.end method

.method constructor <init>(IFFF)V
    .registers 10

    #@0
    const/high16 v4, 0x43b40000    # 360.0f

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/high16 v0, -0x3d4c0000    # -90.0f

    #@7
    cmpg-float v0, v0, p3

    #@9
    if-gtz v0, :cond_40

    #@b
    const/high16 v0, 0x42b40000    # 90.0f

    #@d
    cmpg-float v0, p3, v0

    #@f
    if-gtz v0, :cond_40

    #@11
    const/4 v0, 0x1

    #@12
    :goto_12
    const-string v1, "Tilt needs to be between -90 and 90 inclusive"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@17
    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->xM:I

    #@19
    iput p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    #@1b
    const/4 v0, 0x0

    #@1c
    add-float/2addr v0, p3

    #@1d
    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    #@1f
    float-to-double v0, p4

    #@20
    const-wide/16 v2, 0x0

    #@22
    cmpg-double v0, v0, v2

    #@24
    if-gtz v0, :cond_42

    #@26
    rem-float v0, p4, v4

    #@28
    add-float/2addr v0, v4

    #@29
    :goto_29
    rem-float/2addr v0, v4

    #@2a
    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    #@2c
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    #@2e
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>()V

    #@31
    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->tilt(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, p4}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->bearing(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->build()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->abb:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    #@3f
    return-void

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    goto :goto_12

    #@42
    :cond_42
    move v0, p4

    #@43
    goto :goto_29
.end method

.method public static builder()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;-><init>()V

    #@5
    return-object v0
.end method

.method public static builder(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;-><init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V

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
    instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    #@c
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    #@e
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@11
    move-result v2

    #@12
    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    #@14
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@17
    move-result v3

    #@18
    if-ne v2, v3, :cond_5

    #@1a
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    #@1c
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1f
    move-result v2

    #@20
    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    #@22
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@25
    move-result v3

    #@26
    if-ne v2, v3, :cond_5

    #@28
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    #@2a
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@2d
    move-result v2

    #@2e
    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    #@30
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@33
    move-result v3

    #@34
    if-eq v2, v3, :cond_4

    #@36
    goto :goto_5
.end method

.method public getOrientation()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->abb:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    #@6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    #@f
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    #@18
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v0, v1

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "zoom"

    #@6
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    #@8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@f
    move-result-object v0

    #@10
    const-string v1, "tilt"

    #@12
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    #@14
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "bearing"

    #@1e
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    #@20
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
