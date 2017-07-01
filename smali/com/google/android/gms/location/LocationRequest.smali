.class public final Lcom/google/android/gms/location/LocationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x64

.field public static final PRIORITY_LOW_POWER:I = 0x68

.field public static final PRIORITY_NO_POWER:I = 0x69


# instance fields
.field Vb:J

.field Vl:J

.field Vm:J

.field Vn:Z

.field Vo:I

.field Vp:F

.field mPriority:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/location/LocationRequestCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequestCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->xM:I

    #@6
    const/16 v0, 0x66

    #@8
    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@a
    const-wide/32 v0, 0x36ee80

    #@d
    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@f
    const-wide/32 v0, 0x927c0

    #@12
    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@14
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vn:Z

    #@17
    const-wide v0, 0x7fffffffffffffffL

    #@1c
    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@1e
    const v0, 0x7fffffff

    #@21
    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@23
    const/4 v0, 0x0

    #@24
    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vp:F

    #@26
    return-void
.end method

.method constructor <init>(IIJJZJIF)V
    .registers 13

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@7
    iput-wide p3, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@9
    iput-wide p5, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@b
    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationRequest;->Vn:Z

    #@d
    iput-wide p8, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@f
    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@11
    iput p11, p0, Lcom/google/android/gms/location/LocationRequest;->Vp:F

    #@13
    return-void
.end method

.method private static a(F)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p0, v0

    #@3
    if-gez v0, :cond_1e

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "invalid displacement: "

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

.method private static cG(I)V
    .registers 4

    #@0
    packed-switch p0, :pswitch_data_1e

    #@3
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "invalid quality: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :pswitch_1c
    return-void

    #@1d
    nop

    #@1e
    :pswitch_data_1e
    .packed-switch 0x64
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static cH(I)Ljava/lang/String;
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_12

    #@3
    :pswitch_3
    const-string v0, "???"

    #@5
    :goto_5
    return-object v0

    #@6
    :pswitch_6
    const-string v0, "PRIORITY_HIGH_ACCURACY"

    #@8
    goto :goto_5

    #@9
    :pswitch_9
    const-string v0, "PRIORITY_BALANCED_POWER_ACCURACY"

    #@b
    goto :goto_5

    #@c
    :pswitch_c
    const-string v0, "PRIORITY_LOW_POWER"

    #@e
    goto :goto_5

    #@f
    :pswitch_f
    const-string v0, "PRIORITY_NO_POWER"

    #@11
    goto :goto_5

    #@12
    :pswitch_data_12
    .packed-switch 0x64
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static create()Lcom/google/android/gms/location/LocationRequest;
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    #@5
    return-object v0
.end method

.method private static v(J)V
    .registers 6

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_1f

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "invalid interval: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
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
    instance-of v2, p1, Lcom/google/android/gms/location/LocationRequest;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    #@c
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@e
    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@10
    if-ne v2, v3, :cond_5

    #@12
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@14
    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@16
    cmp-long v2, v2, v4

    #@18
    if-nez v2, :cond_5

    #@1a
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@1c
    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@1e
    cmp-long v2, v2, v4

    #@20
    if-nez v2, :cond_5

    #@22
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vn:Z

    #@24
    iget-boolean v3, p1, Lcom/google/android/gms/location/LocationRequest;->Vn:Z

    #@26
    if-ne v2, v3, :cond_5

    #@28
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@2a
    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@2c
    cmp-long v2, v2, v4

    #@2e
    if-nez v2, :cond_5

    #@30
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@32
    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@34
    if-ne v2, v3, :cond_5

    #@36
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vp:F

    #@38
    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->Vp:F

    #@3a
    cmpl-float v2, v2, v3

    #@3c
    if-eqz v2, :cond_4

    #@3e
    goto :goto_5
.end method

.method public getExpirationTime()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@2
    return-wide v0
.end method

.method public getFastestInterval()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@2
    return-wide v0
.end method

.method public getInterval()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@2
    return-wide v0
.end method

.method public getNumUpdates()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@2
    return v0
.end method

.method public getPriority()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@2
    return v0
.end method

.method public getSmallestDisplacement()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vp:F

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v0, v1

    #@1e
    const/4 v1, 0x3

    #@1f
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vn:Z

    #@21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x4

    #@28
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@2a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d
    move-result-object v2

    #@2e
    aput-object v2, v0, v1

    #@30
    const/4 v1, 0x5

    #@31
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v2

    #@37
    aput-object v2, v0, v1

    #@39
    const/4 v1, 0x6

    #@3a
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vp:F

    #@3c
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3f
    move-result-object v2

    #@40
    aput-object v2, v0, v1

    #@42
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@45
    move-result v0

    #@46
    return v0
.end method

.method public setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 12

    #@0
    const-wide v6, 0x7fffffffffffffffL

    #@5
    const-wide/16 v4, 0x0

    #@7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v0

    #@b
    sub-long v2, v6, v0

    #@d
    cmp-long v2, p1, v2

    #@f
    if-lez v2, :cond_1c

    #@11
    iput-wide v6, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@13
    :goto_13
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@15
    cmp-long v0, v0, v4

    #@17
    if-gez v0, :cond_1b

    #@19
    iput-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@1b
    :cond_1b
    return-object p0

    #@1c
    :cond_1c
    add-long/2addr v0, p1

    #@1d
    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@1f
    goto :goto_13
.end method

.method public setExpirationTime(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 8

    #@0
    const-wide/16 v2, 0x0

    #@2
    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@4
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gez v0, :cond_c

    #@a
    iput-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@c
    :cond_c
    return-object p0
.end method

.method public setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 4

    #@0
    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->v(J)V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vn:Z

    #@6
    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@8
    return-object p0
.end method

.method public setInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 8

    #@0
    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->v(J)V

    #@3
    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@5
    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vn:Z

    #@7
    if-nez v0, :cond_12

    #@9
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@b
    long-to-double v0, v0

    #@c
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    #@e
    div-double/2addr v0, v2

    #@f
    double-to-long v0, v0

    #@10
    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@12
    :cond_12
    return-object p0
.end method

.method public setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;
    .registers 5

    #@0
    if-gtz p1, :cond_1b

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v2, "invalid numUpdates: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@1d
    return-object p0
.end method

.method public setPriority(I)Lcom/google/android/gms/location/LocationRequest;
    .registers 2

    #@0
    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->cG(I)V

    #@3
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@5
    return-object p0
.end method

.method public setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;
    .registers 2

    #@0
    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->a(F)V

    #@3
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->Vp:F

    #@5
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Request["

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@d
    invoke-static {v2}, Lcom/google/android/gms/location/LocationRequest;->cH(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    #@16
    const/16 v2, 0x69

    #@18
    if-eq v1, v2, :cond_37

    #@1a
    const-string v1, " requested="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vl:J

    #@26
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string v2, "ms"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    :cond_37
    const-string v1, " fastest="

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vm:J

    #@43
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    const-string v2, "ms"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@56
    const-wide v4, 0x7fffffffffffffffL

    #@5b
    cmp-long v1, v2, v4

    #@5d
    if-eqz v1, :cond_81

    #@5f
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vb:J

    #@61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@64
    move-result-wide v4

    #@65
    const-string v1, " expireIn="

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    sub-long/2addr v2, v4

    #@70
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    const-string v2, "ms"

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    :cond_81
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@83
    const v2, 0x7fffffff

    #@86
    if-eq v1, v2, :cond_93

    #@88
    const-string v1, " num="

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Vo:I

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    :cond_93
    const/16 v1, 0x5d

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
