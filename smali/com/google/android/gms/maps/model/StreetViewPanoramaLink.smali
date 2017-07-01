.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;


# instance fields
.field public final bearing:F

.field public final panoId:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;F)V
    .registers 9

    #@0
    const/high16 v4, 0x43b40000    # 360.0f

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->xM:I

    #@7
    iput-object p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    #@9
    float-to-double v0, p3

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmpg-double v0, v0, v2

    #@e
    if-gtz v0, :cond_14

    #@10
    rem-float v0, p3, v4

    #@12
    add-float p3, v0, v4

    #@14
    :cond_14
    rem-float v0, p3, v4

    #@16
    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

    #@18
    return-void
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
    instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    #@e
    iget-object v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

    #@18
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1b
    move-result v2

    #@1c
    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

    #@1e
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@21
    move-result v3

    #@22
    if-eq v2, v3, :cond_4

    #@24
    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->xM:I

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
    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

    #@b
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "panoId"

    #@6
    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b
    move-result-object v0

    #@c
    const-string v1, "bearing"

    #@e
    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

    #@10
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
