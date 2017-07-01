.class public Lcom/google/android/gms/location/GeofencingEvent;
.super Ljava/lang/Object;


# instance fields
.field private final Vi:I

.field private final Vj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final Vk:Landroid/location/Location;

.field private final pJ:I


# direct methods
.method private constructor <init>(IILjava/util/List;Landroid/location/Location;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/location/GeofencingEvent;->pJ:I

    #@5
    iput p2, p0, Lcom/google/android/gms/location/GeofencingEvent;->Vi:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/location/GeofencingEvent;->Vj:Ljava/util/List;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/location/GeofencingEvent;->Vk:Landroid/location/Location;

    #@b
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;
    .registers 6

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v1, Lcom/google/android/gms/location/GeofencingEvent;

    #@6
    const-string v0, "gms_error_code"

    #@8
    const/4 v2, -0x1

    #@9
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v2

    #@d
    invoke-static {p0}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition(Landroid/content/Intent;)I

    #@10
    move-result v3

    #@11
    invoke-static {p0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;

    #@14
    move-result-object v4

    #@15
    const-string v0, "com.google.android.location.intent.extra.triggering_location"

    #@17
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/location/Location;

    #@1d
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/location/GeofencingEvent;-><init>(IILjava/util/List;Landroid/location/Location;)V

    #@20
    move-object v0, v1

    #@21
    goto :goto_3
.end method

.method private static getGeofenceTransition(Landroid/content/Intent;)I
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    const-string v1, "com.google.android.location.intent.extra.transition"

    #@3
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_a

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v2, 0x1

    #@b
    if-eq v1, v2, :cond_13

    #@d
    const/4 v2, 0x2

    #@e
    if-eq v1, v2, :cond_13

    #@10
    const/4 v2, 0x4

    #@11
    if-ne v1, v2, :cond_9

    #@13
    :cond_13
    move v0, v1

    #@14
    goto :goto_9
.end method

.method private static getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, "com.google.android.location.intent.extra.geofence_list"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2d

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, [B

    #@25
    invoke-static {v0}, Lcom/google/android/gms/internal/jh;->h([B)Lcom/google/android/gms/internal/jh;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    move-object v0, v1

    #@2e
    goto :goto_b
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->pJ:I

    #@2
    return v0
.end method

.method public getGeofenceTransition()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->Vi:I

    #@2
    return v0
.end method

.method public getTriggeringGeofences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->Vj:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getTriggeringLocation()Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->Vk:Landroid/location/Location;

    #@2
    return-object v0
.end method

.method public hasError()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/location/GeofencingEvent;->pJ:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method
