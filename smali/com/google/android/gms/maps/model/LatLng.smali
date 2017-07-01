.class public final Lcom/google/android/gms/maps/model/LatLng;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;


# instance fields
.field public final latitude:D

.field public final longitude:D

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    #@7
    return-void
.end method

.method public constructor <init>(DD)V
    .registers 12

    #@0
    const/4 v1, 0x1

    #@1
    move-object v0, p0

    #@2
    move-wide v2, p1

    #@3
    move-wide v4, p3

    #@4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(IDD)V

    #@7
    return-void
.end method

.method constructor <init>(IDD)V
    .registers 12

    #@0
    const-wide v4, 0x4076800000000000L    # 360.0

    #@5
    const-wide v2, 0x4066800000000000L    # 180.0

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    iput p1, p0, Lcom/google/android/gms/maps/model/LatLng;->xM:I

    #@f
    const-wide v0, -0x3f99800000000000L    # -180.0

    #@14
    cmpg-double v0, v0, p4

    #@16
    if-gtz v0, :cond_33

    #@18
    cmpg-double v0, p4, v2

    #@1a
    if-gez v0, :cond_33

    #@1c
    iput-wide p4, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@1e
    :goto_1e
    const-wide v0, -0x3fa9800000000000L    # -90.0

    #@23
    const-wide v2, 0x4056800000000000L    # 90.0

    #@28
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(DD)D

    #@2b
    move-result-wide v2

    #@2c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@2f
    move-result-wide v0

    #@30
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@32
    return-void

    #@33
    :cond_33
    sub-double v0, p4, v2

    #@35
    rem-double/2addr v0, v4

    #@36
    add-double/2addr v0, v4

    #@37
    rem-double/2addr v0, v4

    #@38
    sub-double/2addr v0, v2

    #@39
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@3b
    goto :goto_1e
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
    .registers 8

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
    instance-of v2, p1, Lcom/google/android/gms/maps/model/LatLng;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    #@c
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@e
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@11
    move-result-wide v2

    #@12
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@14
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@17
    move-result-wide v4

    #@18
    cmp-long v2, v2, v4

    #@1a
    if-nez v2, :cond_5

    #@1c
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@21
    move-result-wide v2

    #@22
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@24
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@27
    move-result-wide v4

    #@28
    cmp-long v2, v2, v4

    #@2a
    if-eqz v2, :cond_4

    #@2c
    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/model/LatLng;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 7

    #@0
    const/16 v4, 0x20

    #@2
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@7
    move-result-wide v0

    #@8
    ushr-long v2, v0, v4

    #@a
    xor-long/2addr v0, v2

    #@b
    long-to-int v0, v0

    #@c
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@e
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@11
    move-result-wide v2

    #@12
    add-int/lit8 v0, v0, 0x1f

    #@14
    mul-int/lit8 v0, v0, 0x1f

    #@16
    ushr-long v4, v2, v4

    #@18
    xor-long/2addr v2, v4

    #@19
    long-to-int v1, v2

    #@1a
    add-int/2addr v0, v1

    #@1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "lat/lng: ("

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    #@d
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ","

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    #@19
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, ")"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/e;->a(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->a(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method
