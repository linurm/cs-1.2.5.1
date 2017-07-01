.class public final Lcom/google/android/gms/maps/model/CameraPosition;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/CameraPositionCreator;


# instance fields
.field public final bearing:F

.field public final target:Lcom/google/android/gms/maps/model/LatLng;

.field public final tilt:F

.field private final xM:I

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPositionCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPositionCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/CameraPositionCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;FFF)V
    .registers 11

    #@0
    const/4 v2, 0x0

    #@1
    const/high16 v4, 0x43b40000    # 360.0f

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    const-string v0, "null camera target"

    #@8
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    cmpg-float v0, v2, p4

    #@d
    if-gtz v0, :cond_35

    #@f
    const/high16 v0, 0x42b40000    # 90.0f

    #@11
    cmpg-float v0, p4, v0

    #@13
    if-gtz v0, :cond_35

    #@15
    const/4 v0, 0x1

    #@16
    :goto_16
    const-string v1, "Tilt needs to be between 0 and 90 inclusive"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@1b
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->xM:I

    #@1d
    iput-object p2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    #@1f
    iput p3, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    #@21
    add-float v0, p4, v2

    #@23
    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    #@25
    float-to-double v0, p5

    #@26
    const-wide/16 v2, 0x0

    #@28
    cmpg-double v0, v0, v2

    #@2a
    if-gtz v0, :cond_30

    #@2c
    rem-float v0, p5, v4

    #@2e
    add-float p5, v0, v4

    #@30
    :cond_30
    rem-float v0, p5, v4

    #@32
    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    #@34
    return-void

    #@35
    :cond_35
    const/4 v0, 0x0

    #@36
    goto :goto_16
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V
    .registers 11

    #@0
    const/4 v1, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(ILcom/google/android/gms/maps/model/LatLng;FFF)V

    #@9
    return-void
.end method

.method public static builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    #@5
    return-object v0
.end method

.method public static builder(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    #@5
    return-object v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;
    .registers 13

    #@0
    const/4 v10, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    if-nez p1, :cond_9

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v0

    #@d
    sget-object v2, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_65

    #@19
    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1c
    move-result v0

    #@1d
    :goto_1d
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_63

    #@23
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@26
    move-result v2

    #@27
    :goto_27
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    #@29
    float-to-double v6, v0

    #@2a
    float-to-double v8, v2

    #@2b
    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    #@2e
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    #@35
    const/4 v2, 0x5

    #@36
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_44

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@40
    move-result v2

    #@41
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    #@44
    :cond_44
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_51

    #@4a
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4d
    move-result v2

    #@4e
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    #@51
    :cond_51
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_5e

    #@57
    invoke-virtual {v3, v10, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@5a
    move-result v1

    #@5b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    #@5e
    :cond_5e
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    #@61
    move-result-object v0

    #@62
    goto :goto_8

    #@63
    :cond_63
    move v2, v1

    #@64
    goto :goto_27

    #@65
    :cond_65
    move v0, v1

    #@66
    goto :goto_1d
.end method

.method public static final fromLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/CameraPosition;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    #@3
    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    #@6
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
    instance-of v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/maps/model/CameraPosition;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    #@e
    iget-object v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    #@10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    #@18
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1b
    move-result v2

    #@1c
    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    #@1e
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@21
    move-result v3

    #@22
    if-ne v2, v3, :cond_5

    #@24
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    #@26
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@29
    move-result v2

    #@2a
    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    #@2c
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@2f
    move-result v3

    #@30
    if-ne v2, v3, :cond_5

    #@32
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    #@34
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@37
    move-result v2

    #@38
    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    #@3a
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3d
    move-result v3

    #@3e
    if-eq v2, v3, :cond_4

    #@40
    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    #@b
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    #@14
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@17
    move-result-object v2

    #@18
    aput-object v2, v0, v1

    #@1a
    const/4 v1, 0x3

    #@1b
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    #@1d
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v0, v1

    #@23
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "target"

    #@6
    iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b
    move-result-object v0

    #@c
    const-string v1, "zoom"

    #@e
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    #@10
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "tilt"

    #@1a
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    #@1c
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@23
    move-result-object v0

    #@24
    const-string v1, "bearing"

    #@26
    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    #@28
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/maps/internal/v;->jL()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/a;->a(Lcom/google/android/gms/maps/model/CameraPosition;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/CameraPositionCreator;->a(Lcom/google/android/gms/maps/model/CameraPosition;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method
