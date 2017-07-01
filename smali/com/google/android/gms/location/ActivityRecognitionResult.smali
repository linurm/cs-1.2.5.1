.class public Lcom/google/android/gms/location/ActivityRecognitionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/ActivityRecognitionResultCreator;

.field public static final EXTRA_ACTIVITY_RESULT:Ljava/lang/String; = "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"


# instance fields
.field UV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field UW:J

.field UX:J

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Lcom/google/android/gms/location/ActivityRecognitionResultCreator;

    #@7
    return-void
.end method

.method public constructor <init>(ILjava/util/List;JJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;JJ)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->xM:I

    #@6
    iput-object p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UV:Ljava/util/List;

    #@8
    iput-wide p3, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UW:J

    #@a
    iput-wide p5, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UX:J

    #@c
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/DetectedActivity;JJ)V
    .registers 12

    #@0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    move-object v0, p0

    #@5
    move-wide v2, p2

    #@6
    move-wide v4, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    #@a
    return-void
.end method

.method public constructor <init>(Ljava/util/List;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;JJ)V"
        }
    .end annotation

    #@0
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    if-eqz p1, :cond_2c

    #@9
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@c
    move-result v0

    #@d
    if-lez v0, :cond_2c

    #@f
    move v0, v1

    #@10
    :goto_10
    const-string v3, "Must have at least 1 detected activity"

    #@12
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@15
    cmp-long v0, p2, v4

    #@17
    if-lez v0, :cond_1e

    #@19
    cmp-long v0, p4, v4

    #@1b
    if-lez v0, :cond_1e

    #@1d
    move v2, v1

    #@1e
    :cond_1e
    const-string v0, "Must set times"

    #@20
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@23
    iput v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->xM:I

    #@25
    iput-object p1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UV:Ljava/util/List;

    #@27
    iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UW:J

    #@29
    iput-wide p4, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UX:J

    #@2b
    return-void

    #@2c
    :cond_2c
    move v0, v2

    #@2d
    goto :goto_10
.end method

.method public static extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->hasResult(Landroid/content/Intent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    #@14
    goto :goto_7
.end method

.method public static hasResult(Landroid/content/Intent;)Z
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    #@6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActivityConfidence(I)I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UV:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1d

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_6

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    #@1b
    move-result v0

    #@1c
    :goto_1c
    return v0

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    goto :goto_1c
.end method

.method public getElapsedRealtimeMillis()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UX:J

    #@2
    return-wide v0
.end method

.method public getMostProbableActivity()Lcom/google/android/gms/location/DetectedActivity;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UV:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    #@9
    return-object v0
.end method

.method public getProbableActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UV:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getTime()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UW:J

    #@2
    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->xM:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "ActivityRecognitionResult [probableActivities="

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UV:Ljava/util/List;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ", timeMillis="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UW:J

    #@19
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, ", elapsedRealtimeMillis="

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->UX:J

    #@25
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, "]"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
