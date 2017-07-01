.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/PolygonOptionsCreator;


# instance fields
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

.field private final aaY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private aaZ:Z

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
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/PolygonOptionsCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/high16 v0, 0x41200000    # 10.0f

    #@7
    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    #@9
    const/high16 v0, -0x1000000

    #@b
    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:I

    #@d
    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaw:I

    #@f
    const/4 v0, 0x0

    #@10
    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aax:F

    #@12
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aay:Z

    #@14
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaZ:Z

    #@16
    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->xM:I

    #@18
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaX:Ljava/util/List;

    #@1f
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaY:Ljava/util/List;

    #@26
    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List;",
            "FIIFZZ)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/high16 v0, 0x41200000    # 10.0f

    #@6
    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    #@8
    const/high16 v0, -0x1000000

    #@a
    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:I

    #@c
    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaw:I

    #@e
    const/4 v0, 0x0

    #@f
    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aax:F

    #@11
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aay:Z

    #@14
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaZ:Z

    #@16
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->xM:I

    #@18
    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaX:Ljava/util/List;

    #@1a
    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaY:Ljava/util/List;

    #@1c
    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    #@1e
    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:I

    #@20
    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaw:I

    #@22
    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aax:F

    #@24
    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aay:Z

    #@26
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaZ:Z

    #@28
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaX:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaX:Ljava/util/List;

    #@2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@9
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
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
    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaX:Ljava/util/List;

    #@12
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    goto :goto_4

    #@16
    :cond_16
    return-object p0
.end method

.method public addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_19

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    #@15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    goto :goto_9

    #@19
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaY:Ljava/util/List;

    #@1b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaw:I

    #@2
    return-object p0
.end method

.method public geodesic(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaZ:Z

    #@2
    return-object p0
.end method

.method public getFillColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaw:I

    #@2
    return v0
.end method

.method public getHoles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaY:Ljava/util/List;

    #@2
    return-object v0
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaX:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getStrokeColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:I

    #@2
    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->xM:I

    #@2
    return v0
.end method

.method public getZIndex()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aax:F

    #@2
    return v0
.end method

.method public isGeodesic()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaZ:Z

    #@2
    return v0
.end method

.method public isVisible()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aay:Z

    #@2
    return v0
.end method

.method jP()Ljava/util/List;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaY:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:I

    #@2
    return-object p0
.end method

.method public strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    #@2
    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aay:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/g;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aax:F

    #@2
    return-object p0
.end method
