.class public Lcom/google/android/gms/location/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/c;


# instance fields
.field Vq:I

.field Vr:I

.field Vs:J

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/location/c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/location/c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/location/b;->CREATOR:Lcom/google/android/gms/location/c;

    #@7
    return-void
.end method

.method constructor <init>(IIIJ)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/location/b;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/location/b;->Vq:I

    #@7
    iput p3, p0, Lcom/google/android/gms/location/b;->Vr:I

    #@9
    iput-wide p4, p0, Lcom/google/android/gms/location/b;->Vs:J

    #@b
    return-void
.end method

.method private cI(I)Ljava/lang/String;
    .registers 3

    #@0
    packed-switch p1, :pswitch_data_1e

    #@3
    :pswitch_3
    const-string v0, "STATUS_UNKNOWN"

    #@5
    :goto_5
    return-object v0

    #@6
    :pswitch_6
    const-string v0, "STATUS_SUCCESSFUL"

    #@8
    goto :goto_5

    #@9
    :pswitch_9
    const-string v0, "STATUS_TIMED_OUT_ON_SCAN"

    #@b
    goto :goto_5

    #@c
    :pswitch_c
    const-string v0, "STATUS_NO_INFO_IN_DATABASE"

    #@e
    goto :goto_5

    #@f
    :pswitch_f
    const-string v0, "STATUS_INVALID_SCAN"

    #@11
    goto :goto_5

    #@12
    :pswitch_12
    const-string v0, "STATUS_UNABLE_TO_QUERY_DATABASE"

    #@14
    goto :goto_5

    #@15
    :pswitch_15
    const-string v0, "STATUS_SCANS_DISABLED_IN_SETTINGS"

    #@17
    goto :goto_5

    #@18
    :pswitch_18
    const-string v0, "STATUS_LOCATION_DISABLED_IN_SETTINGS"

    #@1a
    goto :goto_5

    #@1b
    :pswitch_1b
    const-string v0, "STATUS_IN_PROGRESS"

    #@1d
    goto :goto_5

    #@1e
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
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
    instance-of v1, p1, Lcom/google/android/gms/location/b;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/location/b;

    #@8
    iget v1, p0, Lcom/google/android/gms/location/b;->Vq:I

    #@a
    iget v2, p1, Lcom/google/android/gms/location/b;->Vq:I

    #@c
    if-ne v1, v2, :cond_5

    #@e
    iget v1, p0, Lcom/google/android/gms/location/b;->Vr:I

    #@10
    iget v2, p1, Lcom/google/android/gms/location/b;->Vr:I

    #@12
    if-ne v1, v2, :cond_5

    #@14
    iget-wide v2, p0, Lcom/google/android/gms/location/b;->Vs:J

    #@16
    iget-wide v4, p1, Lcom/google/android/gms/location/b;->Vs:J

    #@18
    cmp-long v1, v2, v4

    #@1a
    if-nez v1, :cond_5

    #@1c
    const/4 v0, 0x1

    #@1d
    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/location/b;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/location/b;->Vq:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget v2, p0, Lcom/google/android/gms/location/b;->Vr:I

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    iget-wide v2, p0, Lcom/google/android/gms/location/b;->Vs:J

    #@18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v0, v1

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "LocationStatus[cell status: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    iget v2, p0, Lcom/google/android/gms/location/b;->Vq:I

    #@d
    invoke-direct {p0, v2}, Lcom/google/android/gms/location/b;->cI(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    const-string v1, ", wifi status: "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, p0, Lcom/google/android/gms/location/b;->Vr:I

    #@1c
    invoke-direct {p0, v2}, Lcom/google/android/gms/location/b;->cI(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    const-string v1, ", elapsed realtime ns: "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget-wide v2, p0, Lcom/google/android/gms/location/b;->Vs:J

    #@2b
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2e
    const/16 v1, 0x5d

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/location/b;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
