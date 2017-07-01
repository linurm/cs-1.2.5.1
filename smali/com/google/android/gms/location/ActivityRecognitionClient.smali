.class public Lcom/google/android/gms/location/ActivityRecognitionClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
    const-string v1, "activity_recognition"

    #@7
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@c
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->connect()V

    #@5
    return-void
.end method

.method public disconnect()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->disconnect()V

    #@5
    return-void
.end method

.method public isConnected()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

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
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

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
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

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
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

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
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->removeActivityUpdates(Landroid/app/PendingIntent;)V
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

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .registers 7

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jg;->requestActivityUpdates(JLandroid/app/PendingIntent;)V
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
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method
