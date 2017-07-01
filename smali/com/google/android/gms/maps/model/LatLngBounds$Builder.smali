.class public final Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aaK:D

.field private aaL:D

.field private aaM:D

.field private aaN:D


# direct methods
.method public constructor <init>()V
    .registers 5

    #@0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@7
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    #@9
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@b
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaL:D

    #@d
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@f
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaN:D

    #@11
    return-void
.end method

.method private d(D)Z
    .registers 10

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@4
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaN:D

    #@6
    cmpg-double v2, v2, v4

    #@8
    if-gtz v2, :cond_19

    #@a
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@c
    cmpg-double v2, v2, p1

    #@e
    if-gtz v2, :cond_17

    #@10
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaN:D

    #@12
    cmpg-double v2, p1, v2

    #@14
    if-gtz v2, :cond_17

    #@16
    :cond_16
    :goto_16
    return v0

    #@17
    :cond_17
    move v0, v1

    #@18
    goto :goto_16

    #@19
    :cond_19
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@1b
    cmpg-double v2, v2, p1

    #@1d
    if-lez v2, :cond_16

    #@1f
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaN:D

    #@21
    cmpg-double v2, p1, v2

    #@23
    if-lez v2, :cond_16

    #@25
    move v0, v1

    #@26
    goto :goto_16
.end method


# virtual methods
.method public build()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 9

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_26

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    const-string v1, "no included points"

    #@b
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@e
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    #@10
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    #@12
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    #@14
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@16
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    #@19
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    #@1b
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaL:D

    #@1d
    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaN:D

    #@1f
    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    #@22
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    #@25
    return-object v0

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    goto :goto_9
.end method

.method public include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .registers 8

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    #@2
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    #@a
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaL:D

    #@c
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@e
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaL:D

    #@14
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@16
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@18
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_23

    #@1e
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@20
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaN:D

    #@22
    :cond_22
    :goto_22
    return-object p0

    #@23
    :cond_23
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->d(D)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_22

    #@29
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@2b
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->d(DD)D

    #@2e
    move-result-wide v2

    #@2f
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaN:D

    #@31
    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->e(DD)D

    #@34
    move-result-wide v4

    #@35
    cmpg-double v2, v2, v4

    #@37
    if-gez v2, :cond_3c

    #@39
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaM:D

    #@3b
    goto :goto_22

    #@3c
    :cond_3c
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaN:D

    #@3e
    goto :goto_22
.end method
