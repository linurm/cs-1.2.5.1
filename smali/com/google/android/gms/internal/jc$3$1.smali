.class Lcom/google/android/gms/internal/jc$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jc$3;->a(Lcom/google/android/gms/internal/jg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VI:Lcom/google/android/gms/internal/jc$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc$3;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/jc$3$1;->VI:Lcom/google/android/gms/internal/jc$3;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .registers 5

    #@0
    const-string v0, "GeofencingImpl"

    #@2
    const-string v1, "PendingIntent callback shouldn\'t have been called"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jc$3$1;->VI:Lcom/google/android/gms/internal/jc$3;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->cK(I)Lcom/google/android/gms/common/api/Status;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jc$3;->b(Lcom/google/android/gms/common/api/Result;)V

    #@9
    return-void
.end method
