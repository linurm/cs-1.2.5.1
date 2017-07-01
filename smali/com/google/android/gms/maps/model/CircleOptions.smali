.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;


# instance fields
.field private aas:Lcom/google/android/gms/maps/model/LatLng;

.field private aat:D

.field private aau:F

.field private aav:I

.field private aaw:I

.field private aax:F

.field private aay:Z

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptionsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:Lcom/google/android/gms/maps/model/LatLng;

    #@7
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:D

    #@b
    const/high16 v0, 0x41200000    # 10.0f

    #@d
    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F

    #@f
    const/high16 v0, -0x1000000

    #@11
    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:I

    #@13
    const/4 v0, 0x0

    #@14
    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaw:I

    #@16
    const/4 v0, 0x0

    #@17
    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aax:F

    #@19
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aay:Z

    #@1b
    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->xM:I

    #@1d
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
    .registers 13

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:Lcom/google/android/gms/maps/model/LatLng;

    #@6
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:D

    #@a
    const/high16 v0, 0x41200000    # 10.0f

    #@c
    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F

    #@e
    const/high16 v0, -0x1000000

    #@10
    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:I

    #@12
    const/4 v0, 0x0

    #@13
    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaw:I

    #@15
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aax:F

    #@18
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aay:Z

    #@1b
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->xM:I

    #@1d
    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:Lcom/google/android/gms/maps/model/LatLng;

    #@1f
    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:D

    #@21
    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F

    #@23
    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:I

    #@25
    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaw:I

    #@27
    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aax:F

    #@29
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aay:Z

    #@2b
    return-void
.end method


# virtual methods
.method public center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaw:I

    #@2
    return-object p0
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object v0
.end method

.method public getFillColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaw:I

    #@2
    return v0
.end method

.method public getRadius()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:D

    #@2
    return-wide v0
.end method

.method public getStrokeColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:I

    #@2
    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->xM:I

    #@2
    return v0
.end method

.method public getZIndex()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aax:F

    #@2
    return v0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aay:Z

    #@2
    return v0
.end method

.method public radius(D)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:D

    #@2
    return-object p0
.end method

.method public strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:I

    #@2
    return-object p0
.end method

.method public strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F

    #@2
    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aay:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aax:F

    #@2
    return-object p0
.end method
