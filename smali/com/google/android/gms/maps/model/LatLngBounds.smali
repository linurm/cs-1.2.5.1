.class public final Lcom/google/android/gms/maps/model/LatLngBounds;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;


# instance fields
.field public final northeast:Lcom/google/android/gms/maps/model/LatLng;

.field public final southwest:Lcom/google/android/gms/maps/model/LatLng;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 12

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const-string v0, "null southwest"

    #@7
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    const-string v0, "null northeast"

    #@c
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    iget-wide v4, p3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@11
    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@13
    cmpl-double v0, v4, v6

    #@15
    if-ltz v0, :cond_37

    #@17
    move v0, v1

    #@18
    :goto_18
    const-string v3, "southern latitude exceeds northern latitude (%s > %s)"

    #@1a
    const/4 v4, 0x2

    #@1b
    new-array v4, v4, [Ljava/lang/Object;

    #@1d
    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@1f
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@22
    move-result-object v5

    #@23
    aput-object v5, v4, v2

    #@25
    iget-wide v6, p3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@27
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2a
    move-result-object v2

    #@2b
    aput-object v2, v4, v1

    #@2d
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@30
    iput p1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->xM:I

    #@32
    iput-object p2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@34
    iput-object p3, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@36
    return-void

    #@37
    :cond_37
    move v0, v2

    #@38
    goto :goto_18
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(ILcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    #@4
    return-void
.end method

.method private static b(DD)D
    .registers 8

    #@0
    const-wide v2, 0x4076800000000000L    # 360.0

    #@5
    sub-double v0, p0, p2

    #@7
    add-double/2addr v0, v2

    #@8
    rem-double/2addr v0, v2

    #@9
    return-wide v0
.end method

.method public static builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    #@5
    return-object v0
.end method

.method private static c(DD)D
    .registers 8

    #@0
    const-wide v2, 0x4076800000000000L    # 360.0

    #@5
    sub-double v0, p2, p0

    #@7
    add-double/2addr v0, v2

    #@8
    rem-double/2addr v0, v2

    #@9
    return-wide v0
.end method

.method private c(D)Z
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@4
    cmpg-double v0, v0, p1

    #@6
    if-gtz v0, :cond_12

    #@8
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@a
    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@c
    cmpg-double v0, p1, v0

    #@e
    if-gtz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method static synthetic d(DD)D
    .registers 6

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/LatLngBounds;->b(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private d(D)Z
    .registers 10

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@4
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@6
    iget-object v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@8
    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@a
    cmpg-double v2, v2, v4

    #@c
    if-gtz v2, :cond_21

    #@e
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@10
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@12
    cmpg-double v2, v2, p1

    #@14
    if-gtz v2, :cond_1f

    #@16
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@18
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@1a
    cmpg-double v2, p1, v2

    #@1c
    if-gtz v2, :cond_1f

    #@1e
    :cond_1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    move v0, v1

    #@20
    goto :goto_1e

    #@21
    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@23
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@25
    cmpg-double v2, v2, p1

    #@27
    if-lez v2, :cond_1e

    #@29
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@2b
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@2d
    cmpg-double v2, p1, v2

    #@2f
    if-lez v2, :cond_1e

    #@31
    move v0, v1

    #@32
    goto :goto_1e
.end method

.method static synthetic e(DD)D
    .registers 6

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/LatLngBounds;->c(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method


# virtual methods
.method public contains(Lcom/google/android/gms/maps/model/LatLng;)Z
    .registers 4

    #@0
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->c(D)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->d(D)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

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
    instance-of v2, p1, Lcom/google/android/gms/maps/model/LatLngBounds;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/maps/model/LatLngBounds;

    #@c
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@e
    iget-object v3, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_5

    #@16
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@18
    iget-object v3, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@1a
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_4

    #@20
    goto :goto_5
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .registers 11

    #@0
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@4
    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@6
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@8
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@a
    add-double/2addr v0, v2

    #@b
    div-double v2, v0, v8

    #@d
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@f
    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@11
    iget-object v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@13
    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@15
    cmpg-double v6, v4, v0

    #@17
    if-gtz v6, :cond_21

    #@19
    add-double/2addr v0, v4

    #@1a
    div-double/2addr v0, v8

    #@1b
    :goto_1b
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    #@1d
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    #@20
    return-object v4

    #@21
    :cond_21
    const-wide v6, 0x4076800000000000L    # 360.0

    #@26
    add-double/2addr v0, v6

    #@27
    add-double/2addr v0, v4

    #@28
    div-double/2addr v0, v8

    #@29
    goto :goto_1b
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->xM:I

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
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@b
    aput-object v2, v0, v1

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public including(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@4
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@6
    move-object/from16 v0, p1

    #@8
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@a
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    #@d
    move-result-wide v8

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@12
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@14
    move-object/from16 v0, p1

    #@16
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@18
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    #@1b
    move-result-wide v10

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@20
    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v2, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@26
    iget-wide v6, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@28
    move-object/from16 v0, p1

    #@2a
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@2c
    move-object/from16 v0, p0

    #@2e
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->d(D)Z

    #@31
    move-result v12

    #@32
    if-nez v12, :cond_57

    #@34
    invoke-static {v6, v7, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->b(DD)D

    #@37
    move-result-wide v12

    #@38
    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->c(DD)D

    #@3b
    move-result-wide v14

    #@3c
    cmpg-double v12, v12, v14

    #@3e
    if-gez v12, :cond_55

    #@40
    move-wide/from16 v16, v4

    #@42
    move-wide v4, v2

    #@43
    move-wide/from16 v2, v16

    #@45
    :goto_45
    new-instance v6, Lcom/google/android/gms/maps/model/LatLngBounds;

    #@47
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    #@49
    invoke-direct {v7, v8, v9, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    #@4c
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    #@4e
    invoke-direct {v4, v10, v11, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    #@51
    invoke-direct {v6, v7, v4}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    #@54
    return-object v6

    #@55
    :cond_55
    move-wide v4, v6

    #@56
    goto :goto_45

    #@57
    :cond_57
    move-wide v2, v4

    #@58
    move-wide v4, v6

    #@59
    goto :goto_45
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "southwest"

    #@6
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b
    move-result-object v0

    #@c
    const-string v1, "northeast"

    #@e
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    #@10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/d;->a(Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->a(Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method
