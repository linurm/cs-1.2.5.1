.class public Lcom/google/android/gms/location/LocationClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;,
        Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "com.google.android.location.LOCATION"

.field public static final KEY_MOCK_LOCATION:Ljava/lang/String; = "mockLocation"


# instance fields
.field private final UU:Lcom/google/android/gms/internal/jg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/jg;

    #@5
    const-string v1, "location"

    #@7
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@c
    return-void
.end method

.method public static getErrorCode(Landroid/content/Intent;)I
    .registers 3

    #@0
    const-string v0, "gms_error_code"

    #@2
    const/4 v1, -0x1

    #@3
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static getGeofenceTransition(Landroid/content/Intent;)I
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

.method public static getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;
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

.method public static getTriggeringLocation(Landroid/content/Intent;)Landroid/location/Location;
    .registers 2

    #@0
    const-string v0, "com.google.android.location.intent.extra.triggering_location"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/location/Location;

    #@8
    return-object v0
.end method

.method public static hasError(Landroid/content/Intent;)Z
    .registers 2

    #@0
    const-string v0, "gms_error_code"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_26

    #@3
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_25

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/location/Geofence;

    #@18
    instance-of v3, v0, Lcom/google/android/gms/internal/jh;

    #@1a
    const-string v4, "Geofence must be created using Geofence.Builder."

    #@1c
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@1f
    check-cast v0, Lcom/google/android/gms/internal/jh;

    #@21
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_c

    #@25
    :cond_25
    move-object v0, v1

    #@26
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@28
    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/gms/internal/jg;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    #@2b
    return-void

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2f
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@32
    throw v1
.end method

.method public connect()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->connect()V

    #@5
    return-void
.end method

.method public disconnect()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->disconnect()V

    #@5
    return-void
.end method

.method public getLastLocation()Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->getLastLocation()Landroid/location/Location;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->isConnected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnecting()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->isConnecting()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method

.method public removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jg;->removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jg;->removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->removeLocationUpdates(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jg;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jg;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 6

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jg;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->setMockLocation(Landroid/location/Location;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public setMockMode(Z)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->setMockMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method
