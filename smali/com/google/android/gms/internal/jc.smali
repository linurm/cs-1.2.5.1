.class public Lcom/google/android/gms/internal/jc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/GeofencingApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jc$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_33

    #@2
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_28

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/location/Geofence;

    #@1b
    instance-of v3, v0, Lcom/google/android/gms/internal/jh;

    #@1d
    const-string v4, "Geofence must be created using Geofence.Builder."

    #@1f
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@22
    check-cast v0, Lcom/google/android/gms/internal/jh;

    #@24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    goto :goto_f

    #@28
    :cond_28
    move-object v0, v1

    #@29
    :goto_29
    new-instance v1, Lcom/google/android/gms/internal/jc$1;

    #@2b
    invoke-direct {v1, p0, v0, p3}, Lcom/google/android/gms/internal/jc$1;-><init>(Lcom/google/android/gms/internal/jc;Ljava/util/List;Landroid/app/PendingIntent;)V

    #@2e
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@31
    move-result-object v0

    #@32
    return-object v0

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    goto :goto_29
.end method

.method public removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jc$2;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/jc$2;-><init>(Lcom/google/android/gms/internal/jc;Landroid/app/PendingIntent;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jc$3;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/jc$3;-><init>(Lcom/google/android/gms/internal/jc;Ljava/util/List;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
