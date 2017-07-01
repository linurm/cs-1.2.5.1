.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/PolylineOptionsCreator;


# instance fields
.field private Dj:I

.field private aaC:F

.field private final aaX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private aaZ:Z

.field private aax:F

.field private aay:Z

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/PolylineOptionsCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/high16 v0, 0x41200000    # 10.0f

    #@6
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaC:F

    #@8
    const/high16 v0, -0x1000000

    #@a
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dj:I

    #@c
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aax:F

    #@f
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aay:Z

    #@11
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaZ:Z

    #@14
    iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->xM:I

    #@16
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaX:Ljava/util/List;

    #@1d
    return-void
.end method

.method constructor <init>(ILjava/util/List;FIFZZ)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, 0x41200000    # 10.0f

    #@5
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaC:F

    #@7
    const/high16 v0, -0x1000000

    #@9
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dj:I

    #@b
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aax:F

    #@e
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aay:Z

    #@11
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaZ:Z

    #@14
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->xM:I

    #@16
    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaX:Ljava/util/List;

    #@18
    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaC:F

    #@1a
    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dj:I

    #@1c
    iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aax:F

    #@1e
    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aay:Z

    #@20
    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaZ:Z

    #@22
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaX:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaX:Ljava/util/List;

    #@2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@9
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    #@0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_16

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@10
    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaX:Ljava/util/List;

    #@12
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    goto :goto_4

    #@16
    :cond_16
    return-object p0
.end method

.method public color(I)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dj:I

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

.method public geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaZ:Z

    #@2
    return-object p0
.end method

.method public getColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dj:I

    #@2
    return v0
.end method

.method public getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaX:Ljava/util/List;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->xM:I

    #@2
    return v0
.end method

.method public getWidth()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaC:F

    #@2
    return v0
.end method

.method public getZIndex()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aax:F

    #@2
    return v0
.end method

.method public isGeodesic()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaZ:Z

    #@2
    return v0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aay:Z

    #@2
    return v0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aay:Z

    #@2
    return-object p0
.end method

.method public width(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaC:F

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/h;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aax:F

    #@2
    return-object p0
.end method
