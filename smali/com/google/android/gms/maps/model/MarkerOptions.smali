.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/MarkerOptionsCreator;


# instance fields
.field private HY:Ljava/lang/String;

.field private ZX:Lcom/google/android/gms/maps/model/LatLng;

.field private aaG:F

.field private aaH:F

.field private aaP:Ljava/lang/String;

.field private aaQ:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private aaR:Z

.field private aaS:Z

.field private aaT:F

.field private aaU:F

.field private aaV:F

.field private aay:Z

.field private mAlpha:F

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/MarkerOptionsCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    #@0
    const/4 v4, 0x1

    #@1
    const/high16 v3, 0x3f800000    # 1.0f

    #@3
    const/high16 v2, 0x3f000000    # 0.5f

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaG:F

    #@b
    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaH:F

    #@d
    iput-boolean v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aay:Z

    #@f
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaS:Z

    #@12
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaT:F

    #@14
    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaU:F

    #@16
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaV:F

    #@18
    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    #@1a
    iput v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->xM:I

    #@1c
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V
    .registers 18

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v1, 0x3f000000    # 0.5f

    #@5
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaG:F

    #@7
    const/high16 v1, 0x3f800000    # 1.0f

    #@9
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaH:F

    #@b
    const/4 v1, 0x1

    #@c
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aay:Z

    #@e
    const/4 v1, 0x0

    #@f
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaS:Z

    #@11
    const/4 v1, 0x0

    #@12
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaT:F

    #@14
    const/high16 v1, 0x3f000000    # 0.5f

    #@16
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaU:F

    #@18
    const/4 v1, 0x0

    #@19
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaV:F

    #@1b
    const/high16 v1, 0x3f800000    # 1.0f

    #@1d
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    #@1f
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->xM:I

    #@21
    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ZX:Lcom/google/android/gms/maps/model/LatLng;

    #@23
    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->HY:Ljava/lang/String;

    #@25
    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaP:Ljava/lang/String;

    #@27
    if-nez p5, :cond_43

    #@29
    const/4 v1, 0x0

    #@2a
    :goto_2a
    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaQ:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2c
    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaG:F

    #@2e
    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaH:F

    #@30
    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaR:Z

    #@32
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aay:Z

    #@34
    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaS:Z

    #@36
    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaT:F

    #@38
    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaU:F

    #@3a
    move/from16 v0, p13

    #@3c
    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaV:F

    #@3e
    move/from16 v0, p14

    #@40
    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    #@42
    return-void

    #@43
    :cond_43
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@45
    invoke-static {p5}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    #@48
    move-result-object v2

    #@49
    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V

    #@4c
    goto :goto_2a
.end method


# virtual methods
.method public alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    #@2
    return-object p0
.end method

.method public anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 3

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaG:F

    #@2
    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaH:F

    #@4
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaR:Z

    #@2
    return-object p0
.end method

.method public flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaS:Z

    #@2
    return-object p0
.end method

.method public getAlpha()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    #@2
    return v0
.end method

.method public getAnchorU()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaG:F

    #@2
    return v0
.end method

.method public getAnchorV()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaH:F

    #@2
    return v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaQ:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    return-object v0
.end method

.method public getInfoWindowAnchorU()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaU:F

    #@2
    return v0
.end method

.method public getInfoWindowAnchorV()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaV:F

    #@2
    return v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ZX:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object v0
.end method

.method public getRotation()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaT:F

    #@2
    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->HY:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->xM:I

    #@2
    return v0
.end method

.method public icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaQ:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    return-object p0
.end method

.method public infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 3

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaU:F

    #@2
    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaV:F

    #@4
    return-object p0
.end method

.method public isDraggable()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaR:Z

    #@2
    return v0
.end method

.method public isFlat()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaS:Z

    #@2
    return v0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aay:Z

    #@2
    return v0
.end method

.method jO()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaQ:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaQ:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->jn()Lcom/google/android/gms/dynamic/d;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    goto :goto_5
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ZX:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object p0
.end method

.method public rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaT:F

    #@2
    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aaP:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->HY:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aay:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/f;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method
