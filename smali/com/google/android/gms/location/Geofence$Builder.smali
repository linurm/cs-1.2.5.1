.class public final Lcom/google/android/gms/location/Geofence$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private OB:Ljava/lang/String;

.field private Va:I

.field private Vb:J

.field private Vc:S

.field private Vd:D

.field private Ve:D

.field private Vf:F

.field private Vg:I

.field private Vh:I


# direct methods
.method public constructor <init>()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->OB:Ljava/lang/String;

    #@8
    iput v3, p0, Lcom/google/android/gms/location/Geofence$Builder;->Va:I

    #@a
    const-wide/high16 v0, -0x8000000000000000L

    #@c
    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vb:J

    #@e
    int-to-short v0, v2

    #@f
    iput-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vc:S

    #@11
    iput v3, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vg:I

    #@13
    iput v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vh:I

    #@15
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/Geofence;
    .registers 14

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->OB:Ljava/lang/String;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "Request ID not set."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Va:I

    #@e
    if-nez v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "Transitions types not set."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Va:I

    #@1a
    and-int/lit8 v0, v0, 0x4

    #@1c
    if-eqz v0, :cond_2a

    #@1e
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vh:I

    #@20
    if-gez v0, :cond_2a

    #@22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string v1, "Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING."

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    :cond_2a
    iget-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vb:J

    #@2c
    const-wide/high16 v2, -0x8000000000000000L

    #@2e
    cmp-long v0, v0, v2

    #@30
    if-nez v0, :cond_3a

    #@32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string v1, "Expiration not set."

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    :cond_3a
    iget-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vc:S

    #@3c
    const/4 v1, -0x1

    #@3d
    if-ne v0, v1, :cond_47

    #@3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@41
    const-string v1, "Geofence region not set."

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    :cond_47
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vg:I

    #@49
    if-gez v0, :cond_53

    #@4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string v1, "Notification responsiveness should be nonnegative."

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0

    #@53
    :cond_53
    new-instance v0, Lcom/google/android/gms/internal/jh;

    #@55
    iget-object v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->OB:Ljava/lang/String;

    #@57
    iget v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->Va:I

    #@59
    const/4 v3, 0x1

    #@5a
    iget-wide v4, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vd:D

    #@5c
    iget-wide v6, p0, Lcom/google/android/gms/location/Geofence$Builder;->Ve:D

    #@5e
    iget v8, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vf:F

    #@60
    iget-wide v9, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vb:J

    #@62
    iget v11, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vg:I

    #@64
    iget v12, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vh:I

    #@66
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/jh;-><init>(Ljava/lang/String;ISDDFJII)V

    #@69
    return-object v0
.end method

.method public setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    int-to-short v0, v0

    #@2
    iput-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vc:S

    #@4
    iput-wide p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vd:D

    #@6
    iput-wide p3, p0, Lcom/google/android/gms/location/Geofence$Builder;->Ve:D

    #@8
    iput p5, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vf:F

    #@a
    return-object p0
.end method

.method public setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;
    .registers 6

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_b

    #@6
    const-wide/16 v0, -0x1

    #@8
    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vb:J

    #@a
    :goto_a
    return-object p0

    #@b
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v0

    #@f
    add-long/2addr v0, p1

    #@10
    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vb:J

    #@12
    goto :goto_a
.end method

.method public setLoiteringDelay(I)Lcom/google/android/gms/location/Geofence$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vh:I

    #@2
    return-object p0
.end method

.method public setNotificationResponsiveness(I)Lcom/google/android/gms/location/Geofence$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->Vg:I

    #@2
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->OB:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->Va:I

    #@2
    return-object p0
.end method
