.class public Lcom/google/android/gms/internal/jh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/location/Geofence;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ji;


# instance fields
.field private final OB:Ljava/lang/String;

.field private final VZ:J

.field private final Va:I

.field private final Vc:S

.field private final Vd:D

.field private final Ve:D

.field private final Vf:F

.field private final Vg:I

.field private final Vh:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ji;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ji;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/jh;->CREATOR:Lcom/google/android/gms/internal/ji;

    #@7
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ISDDFJII)V
    .registers 19

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p2}, Lcom/google/android/gms/internal/jh;->bq(Ljava/lang/String;)V

    #@6
    invoke-static {p9}, Lcom/google/android/gms/internal/jh;->b(F)V

    #@9
    invoke-static {p5, p6, p7, p8}, Lcom/google/android/gms/internal/jh;->a(DD)V

    #@c
    invoke-static {p3}, Lcom/google/android/gms/internal/jh;->cM(I)I

    #@f
    move-result v1

    #@10
    iput p1, p0, Lcom/google/android/gms/internal/jh;->xM:I

    #@12
    int-to-short v2, p4

    #@13
    iput-short v2, p0, Lcom/google/android/gms/internal/jh;->Vc:S

    #@15
    iput-object p2, p0, Lcom/google/android/gms/internal/jh;->OB:Ljava/lang/String;

    #@17
    iput-wide p5, p0, Lcom/google/android/gms/internal/jh;->Vd:D

    #@19
    iput-wide p7, p0, Lcom/google/android/gms/internal/jh;->Ve:D

    #@1b
    iput p9, p0, Lcom/google/android/gms/internal/jh;->Vf:F

    #@1d
    iput-wide p10, p0, Lcom/google/android/gms/internal/jh;->VZ:J

    #@1f
    iput v1, p0, Lcom/google/android/gms/internal/jh;->Va:I

    #@21
    move/from16 v0, p12

    #@23
    iput v0, p0, Lcom/google/android/gms/internal/jh;->Vg:I

    #@25
    move/from16 v0, p13

    #@27
    iput v0, p0, Lcom/google/android/gms/internal/jh;->Vh:I

    #@29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISDDFJII)V
    .registers 29

    #@0
    const/4 v2, 0x1

    #@1
    move-object/from16 v1, p0

    #@3
    move-object/from16 v3, p1

    #@5
    move/from16 v4, p2

    #@7
    move/from16 v5, p3

    #@9
    move-wide/from16 v6, p4

    #@b
    move-wide/from16 v8, p6

    #@d
    move/from16 v10, p8

    #@f
    move-wide/from16 v11, p9

    #@11
    move/from16 v13, p11

    #@13
    move/from16 v14, p12

    #@15
    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/jh;-><init>(ILjava/lang/String;ISDDFJII)V

    #@18
    return-void
.end method

.method private static a(DD)V
    .registers 8

    #@0
    const-wide v0, 0x4056800000000000L    # 90.0

    #@5
    cmpl-double v0, p0, v0

    #@7
    if-gtz v0, :cond_12

    #@9
    const-wide v0, -0x3fa9800000000000L    # -90.0

    #@e
    cmpg-double v0, p0, v0

    #@10
    if-gez v0, :cond_2b

    #@12
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string v2, "invalid latitude: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :cond_2b
    const-wide v0, 0x4066800000000000L    # 180.0

    #@30
    cmpl-double v0, p2, v0

    #@32
    if-gtz v0, :cond_3d

    #@34
    const-wide v0, -0x3f99800000000000L    # -180.0

    #@39
    cmpg-double v0, p2, v0

    #@3b
    if-gez v0, :cond_56

    #@3d
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string v2, "invalid longitude: "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v0

    #@56
    :cond_56
    return-void
.end method

.method private static b(F)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p0, v0

    #@3
    if-gtz v0, :cond_1e

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "invalid radius: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    return-void
.end method

.method private static bq(Ljava/lang/String;)V
    .registers 4

    #@0
    if-eqz p0, :cond_a

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x64

    #@8
    if-le v0, v1, :cond_23

    #@a
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v2, "requestId is null or too long: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    return-void
.end method

.method private static cM(I)I
    .registers 4

    #@0
    and-int/lit8 v0, p0, 0x7

    #@2
    if-nez v0, :cond_1d

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "No supported transition specified: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    :cond_1d
    return v0
.end method

.method private static cN(I)Ljava/lang/String;
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_8

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    return-object v0

    #@5
    :pswitch_5
    const-string v0, "CIRCLE"

    #@7
    goto :goto_4

    #@8
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static h([B)Lcom/google/android/gms/internal/jh;
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    array-length v1, p0

    #@6
    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    #@9
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@c
    sget-object v1, Lcom/google/android/gms/internal/jh;->CREATOR:Lcom/google/android/gms/internal/ji;

    #@e
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ji;->bt(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jh;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jh;->CREATOR:Lcom/google/android/gms/internal/ji;

    #@2
    const/4 v0, 0x0

    #@3
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
    if-eqz p1, :cond_5

    #@8
    instance-of v2, p1, Lcom/google/android/gms/internal/jh;

    #@a
    if-eqz v2, :cond_5

    #@c
    check-cast p1, Lcom/google/android/gms/internal/jh;

    #@e
    iget v2, p0, Lcom/google/android/gms/internal/jh;->Vf:F

    #@10
    iget v3, p1, Lcom/google/android/gms/internal/jh;->Vf:F

    #@12
    cmpl-float v2, v2, v3

    #@14
    if-nez v2, :cond_5

    #@16
    iget-wide v2, p0, Lcom/google/android/gms/internal/jh;->Vd:D

    #@18
    iget-wide v4, p1, Lcom/google/android/gms/internal/jh;->Vd:D

    #@1a
    cmpl-double v2, v2, v4

    #@1c
    if-nez v2, :cond_5

    #@1e
    iget-wide v2, p0, Lcom/google/android/gms/internal/jh;->Ve:D

    #@20
    iget-wide v4, p1, Lcom/google/android/gms/internal/jh;->Ve:D

    #@22
    cmpl-double v2, v2, v4

    #@24
    if-nez v2, :cond_5

    #@26
    iget-short v2, p0, Lcom/google/android/gms/internal/jh;->Vc:S

    #@28
    iget-short v3, p1, Lcom/google/android/gms/internal/jh;->Vc:S

    #@2a
    if-eq v2, v3, :cond_4

    #@2c
    goto :goto_5
.end method

.method public getExpirationTime()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/jh;->VZ:J

    #@2
    return-wide v0
.end method

.method public getLatitude()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/jh;->Vd:D

    #@2
    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/jh;->Ve:D

    #@2
    return-wide v0
.end method

.method public getNotificationResponsiveness()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jh;->Vg:I

    #@2
    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->OB:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jh;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 7

    #@0
    const/16 v4, 0x20

    #@2
    iget-wide v0, p0, Lcom/google/android/gms/internal/jh;->Vd:D

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
    iget-wide v2, p0, Lcom/google/android/gms/internal/jh;->Ve:D

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
    mul-int/lit8 v0, v0, 0x1f

    #@1d
    iget v1, p0, Lcom/google/android/gms/internal/jh;->Vf:F

    #@1f
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@22
    move-result v1

    #@23
    add-int/2addr v0, v1

    #@24
    mul-int/lit8 v0, v0, 0x1f

    #@26
    iget-short v1, p0, Lcom/google/android/gms/internal/jh;->Vc:S

    #@28
    add-int/2addr v0, v1

    #@29
    mul-int/lit8 v0, v0, 0x1f

    #@2b
    iget v1, p0, Lcom/google/android/gms/internal/jh;->Va:I

    #@2d
    add-int/2addr v0, v1

    #@2e
    return v0
.end method

.method public ja()S
    .registers 2

    #@0
    iget-short v0, p0, Lcom/google/android/gms/internal/jh;->Vc:S

    #@2
    return v0
.end method

.method public jb()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jh;->Vf:F

    #@2
    return v0
.end method

.method public jc()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jh;->Va:I

    #@2
    return v0
.end method

.method public jd()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/jh;->Vh:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    #@0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    const-string v1, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    #@4
    const/16 v2, 0x9

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    iget-short v4, p0, Lcom/google/android/gms/internal/jh;->Vc:S

    #@b
    invoke-static {v4}, Lcom/google/android/gms/internal/jh;->cN(I)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    aput-object v4, v2, v3

    #@11
    const/4 v3, 0x1

    #@12
    iget-object v4, p0, Lcom/google/android/gms/internal/jh;->OB:Ljava/lang/String;

    #@14
    aput-object v4, v2, v3

    #@16
    const/4 v3, 0x2

    #@17
    iget v4, p0, Lcom/google/android/gms/internal/jh;->Va:I

    #@19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v4

    #@1d
    aput-object v4, v2, v3

    #@1f
    const/4 v3, 0x3

    #@20
    iget-wide v4, p0, Lcom/google/android/gms/internal/jh;->Vd:D

    #@22
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@25
    move-result-object v4

    #@26
    aput-object v4, v2, v3

    #@28
    const/4 v3, 0x4

    #@29
    iget-wide v4, p0, Lcom/google/android/gms/internal/jh;->Ve:D

    #@2b
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2e
    move-result-object v4

    #@2f
    aput-object v4, v2, v3

    #@31
    const/4 v3, 0x5

    #@32
    iget v4, p0, Lcom/google/android/gms/internal/jh;->Vf:F

    #@34
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@37
    move-result-object v4

    #@38
    aput-object v4, v2, v3

    #@3a
    const/4 v3, 0x6

    #@3b
    iget v4, p0, Lcom/google/android/gms/internal/jh;->Vg:I

    #@3d
    div-int/lit16 v4, v4, 0x3e8

    #@3f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v4

    #@43
    aput-object v4, v2, v3

    #@45
    const/4 v3, 0x7

    #@46
    iget v4, p0, Lcom/google/android/gms/internal/jh;->Vh:I

    #@48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v4

    #@4c
    aput-object v4, v2, v3

    #@4e
    const/16 v3, 0x8

    #@50
    iget-wide v4, p0, Lcom/google/android/gms/internal/jh;->VZ:J

    #@52
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@55
    move-result-object v4

    #@56
    aput-object v4, v2, v3

    #@58
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/jh;->CREATOR:Lcom/google/android/gms/internal/ji;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ji;->a(Lcom/google/android/gms/internal/jh;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
