.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private aaA:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private aaB:Lcom/google/android/gms/maps/model/LatLng;

.field private aaC:F

.field private aaD:F

.field private aaE:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private aaF:F

.field private aaG:F

.field private aaH:F

.field private aaq:F

.field private aax:F

.field private aay:Z

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    const/high16 v1, 0x3f000000    # 0.5f

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Z

    #@8
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaF:F

    #@b
    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaG:F

    #@d
    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaH:F

    #@f
    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->xM:I

    #@11
    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
    .registers 15

    #@0
    const/high16 v1, 0x3f000000    # 0.5f

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Z

    #@8
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaF:F

    #@b
    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaG:F

    #@d
    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaH:F

    #@f
    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->xM:I

    #@11
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@13
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaA:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@1c
    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLng;

    #@1e
    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaC:F

    #@20
    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaD:F

    #@22
    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:Lcom/google/android/gms/maps/model/LatLngBounds;

    #@24
    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaq:F

    #@26
    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aax:F

    #@28
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Z

    #@2a
    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaF:F

    #@2c
    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaG:F

    #@2e
    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaH:F

    #@30
    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaC:F

    #@4
    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaD:F

    #@6
    return-object p0
.end method


# virtual methods
.method public anchor(FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaG:F

    #@2
    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaH:F

    #@4
    return-object p0
.end method

.method public bearing(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    #@0
    const/high16 v1, 0x43b40000    # 360.0f

    #@2
    rem-float v0, p1, v1

    #@4
    add-float/2addr v0, v1

    #@5
    rem-float/2addr v0, v1

    #@6
    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaq:F

    #@8
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAnchorU()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaG:F

    #@2
    return v0
.end method

.method public getAnchorV()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaH:F

    #@2
    return v0
.end method

.method public getBearing()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaq:F

    #@2
    return v0
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:Lcom/google/android/gms/maps/model/LatLngBounds;

    #@2
    return-object v0
.end method

.method public getHeight()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaD:F

    #@2
    return v0
.end method

.method public getImage()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaA:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object v0
.end method

.method public getTransparency()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaF:F

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->xM:I

    #@2
    return v0
.end method

.method public getWidth()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaC:F

    #@2
    return v0
.end method

.method public getZIndex()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aax:F

    #@2
    return v0
.end method

.method public image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaA:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    return-object p0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Z

    #@2
    return v0
.end method

.method jN()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaA:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->jn()Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:Lcom/google/android/gms/maps/model/LatLngBounds;

    #@4
    if-nez v0, :cond_25

    #@6
    move v0, v1

    #@7
    :goto_7
    const-string v3, "Position has already been set using positionFromBounds"

    #@9
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@c
    if-eqz p1, :cond_27

    #@e
    move v0, v1

    #@f
    :goto_f
    const-string v3, "Location must be specified"

    #@11
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@14
    const/4 v0, 0x0

    #@15
    cmpl-float v0, p2, v0

    #@17
    if-ltz v0, :cond_29

    #@19
    :goto_19
    const-string v0, "Width must be non-negative"

    #@1b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@1e
    const/high16 v0, -0x40800000    # -1.0f

    #@20
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    :cond_25
    move v0, v2

    #@26
    goto :goto_7

    #@27
    :cond_27
    move v0, v2

    #@28
    goto :goto_f

    #@29
    :cond_29
    move v1, v2

    #@2a
    goto :goto_19
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 9

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:Lcom/google/android/gms/maps/model/LatLngBounds;

    #@5
    if-nez v0, :cond_2d

    #@7
    move v0, v1

    #@8
    :goto_8
    const-string v3, "Position has already been set using positionFromBounds"

    #@a
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@d
    if-eqz p1, :cond_2f

    #@f
    move v0, v1

    #@10
    :goto_10
    const-string v3, "Location must be specified"

    #@12
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@15
    cmpl-float v0, p2, v4

    #@17
    if-ltz v0, :cond_31

    #@19
    move v0, v1

    #@1a
    :goto_1a
    const-string v3, "Width must be non-negative"

    #@1c
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@1f
    cmpl-float v0, p3, v4

    #@21
    if-ltz v0, :cond_33

    #@23
    :goto_23
    const-string v0, "Height must be non-negative"

    #@25
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    #@2b
    move-result-object v0

    #@2c
    return-object v0

    #@2d
    :cond_2d
    move v0, v2

    #@2e
    goto :goto_8

    #@2f
    :cond_2f
    move v0, v2

    #@30
    goto :goto_10

    #@31
    :cond_31
    move v0, v2

    #@32
    goto :goto_1a

    #@33
    :cond_33
    move v1, v2

    #@34
    goto :goto_23
.end method

.method public positionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLng;

    #@4
    if-nez v0, :cond_15

    #@6
    move v0, v1

    #@7
    :goto_7
    const-string v3, "Position has already been set using position: %s"

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    iget-object v4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLng;

    #@d
    aput-object v4, v1, v2

    #@f
    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@12
    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:Lcom/google/android/gms/maps/model/LatLngBounds;

    #@14
    return-object p0

    #@15
    :cond_15
    move v0, v2

    #@16
    goto :goto_7
.end method

.method public transparency(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-ltz v0, :cond_14

    #@5
    const/high16 v0, 0x3f800000    # 1.0f

    #@7
    cmpg-float v0, p1, v0

    #@9
    if-gtz v0, :cond_14

    #@b
    const/4 v0, 0x1

    #@c
    :goto_c
    const-string v1, "Transparency must be in the range [0..1]"

    #@e
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@11
    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaF:F

    #@13
    return-object p0

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_c
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Z

    #@2
    return-object p0
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/c;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aax:F

    #@2
    return-object p0
.end method
