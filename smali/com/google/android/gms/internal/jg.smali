.class public Lcom/google/android/gms/internal/jg;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jg$a;,
        Lcom/google/android/gms/internal/jg$b;,
        Lcom/google/android/gms/internal/jg$c;,
        Lcom/google/android/gms/internal/jg$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/je;",
        ">;"
    }
.end annotation


# instance fields
.field private final VJ:Lcom/google/android/gms/internal/jj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jj",
            "<",
            "Lcom/google/android/gms/internal/je;",
            ">;"
        }
    .end annotation
.end field

.field private final VP:Lcom/google/android/gms/internal/jf;

.field private final VQ:Lcom/google/android/gms/internal/jz;

.field private final VR:Lcom/google/android/gms/internal/iz;

.field private final VS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .registers 14

    #@0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    const/4 v7, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    #@0
    const/4 v0, 0x0

    #@1
    new-array v5, v0, [Ljava/lang/String;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p4

    #@7
    move-object v4, p5

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@b
    new-instance v0, Lcom/google/android/gms/internal/jg$c;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/jg$c;-><init>(Lcom/google/android/gms/internal/jg;Lcom/google/android/gms/internal/jg$1;)V

    #@11
    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Lcom/google/android/gms/internal/jj;

    #@13
    new-instance v0, Lcom/google/android/gms/internal/jf;

    #@15
    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VJ:Lcom/google/android/gms/internal/jj;

    #@17
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/jf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/jj;)V

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@1c
    iput-object p6, p0, Lcom/google/android/gms/internal/jg;->VS:Ljava/lang/String;

    #@1e
    new-instance v0, Lcom/google/android/gms/internal/jz;

    #@20
    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VJ:Lcom/google/android/gms/internal/jj;

    #@22
    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/internal/jz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/jj;)V

    #@25
    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VQ:Lcom/google/android/gms/internal/jz;

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Lcom/google/android/gms/internal/jj;

    #@29
    invoke-static {p1, p7, v0}, Lcom/google/android/gms/internal/iz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/jj;)Lcom/google/android/gms/internal/iz;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VR:Lcom/google/android/gms/internal/iz;

    #@2f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@7
    new-instance v0, Lcom/google/android/gms/internal/jg$c;

    #@9
    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/jg$c;-><init>(Lcom/google/android/gms/internal/jg;Lcom/google/android/gms/internal/jg$1;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Lcom/google/android/gms/internal/jj;

    #@e
    new-instance v0, Lcom/google/android/gms/internal/jf;

    #@10
    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VJ:Lcom/google/android/gms/internal/jj;

    #@12
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/jf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/jj;)V

    #@15
    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@17
    iput-object p4, p0, Lcom/google/android/gms/internal/jg;->VS:Ljava/lang/String;

    #@19
    new-instance v0, Lcom/google/android/gms/internal/jz;

    #@1b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/internal/jg;->VJ:Lcom/google/android/gms/internal/jj;

    #@21
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/jz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/jj;)V

    #@24
    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VQ:Lcom/google/android/gms/internal/jz;

    #@26
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Lcom/google/android/gms/internal/jj;

    #@28
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/iz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/jj;)Lcom/google/android/gms/internal/iz;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VR:Lcom/google/android/gms/internal/iz;

    #@2e
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/jg;)V
    .registers 1

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->cn()V

    #@3
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "client_name"

    #@7
    iget-object v2, p0, Lcom/google/android/gms/internal/jg;->VS:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    const v1, 0x4da6e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->getContext()Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hi;->e(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/Bundle;)V

    #@1a
    return-void
.end method

.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jh;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->cn()V

    #@3
    if-eqz p1, :cond_31

    #@5
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    if-lez v0, :cond_31

    #@b
    const/4 v0, 0x1

    #@c
    :goto_c
    const-string v1, "At least one geofence must be specified."

    #@e
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@11
    const-string v0, "PendingIntent must be specified."

    #@13
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    const-string v0, "OnAddGeofencesResultListener not provided."

    #@18
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    if-nez p3, :cond_33

    #@1d
    const/4 v0, 0x0

    #@1e
    move-object v1, v0

    #@1f
    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->ft()Landroid/os/IInterface;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->getContext()Landroid/content/Context;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/je;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V

    #@30
    return-void

    #@31
    :cond_31
    const/4 v0, 0x0

    #@32
    goto :goto_c

    #@33
    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/jg$b;

    #@35
    invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/jg$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;Lcom/google/android/gms/internal/jg;)V

    #@38
    move-object v1, v0

    #@39
    goto :goto_1f
.end method

.method protected at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/je$a;->as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    #@2
    return-object v0
.end method

.method public disconnect()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->isConnected()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_13

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jf;->removeAllListeners()V

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jf;->iY()V

    #@13
    :cond_13
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->disconnect()V

    #@16
    monitor-exit v1

    #@17
    return-void

    #@18
    :catchall_18
    move-exception v0

    #@19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    #@1a
    throw v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jf;->getLastLocation()Landroid/location/Location;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->cn()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->ft()Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@c
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/je;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    #@f
    return-void
.end method

.method public removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->cn()V

    #@3
    const-string v0, "PendingIntent must be specified."

    #@5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    const-string v0, "OnRemoveGeofencesResultListener not provided."

    #@a
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    if-nez p2, :cond_23

    #@f
    const/4 v0, 0x0

    #@10
    move-object v1, v0

    #@11
    :goto_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->ft()Landroid/os/IInterface;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/je;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V

    #@22
    return-void

    #@23
    :cond_23
    new-instance v0, Lcom/google/android/gms/internal/jg$b;

    #@25
    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/jg$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/jg;)V

    #@28
    move-object v1, v0

    #@29
    goto :goto_11
.end method

.method public removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .registers 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->cn()V

    #@4
    if-eqz p1, :cond_35

    #@6
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_35

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    const-string v2, "geofenceRequestIds can\'t be null nor empty."

    #@f
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@12
    const-string v0, "OnRemoveGeofencesResultListener not provided."

    #@14
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    new-array v0, v1, [Ljava/lang/String;

    #@19
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, [Ljava/lang/String;

    #@1f
    if-nez p2, :cond_37

    #@21
    const/4 v1, 0x0

    #@22
    move-object v2, v1

    #@23
    :goto_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->ft()Landroid/os/IInterface;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/google/android/gms/internal/je;

    #@29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/je;->a([Ljava/lang/String;Lcom/google/android/gms/internal/jd;Ljava/lang/String;)V

    #@34
    return-void

    #@35
    :cond_35
    move v0, v1

    #@36
    goto :goto_d

    #@37
    :cond_37
    new-instance v1, Lcom/google/android/gms/internal/jg$b;

    #@39
    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/jg$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/jg;)V

    #@3c
    move-object v2, v1

    #@3d
    goto :goto_23
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jf;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    #@5
    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jf;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    #@5
    return-void
.end method

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->cn()V

    #@4
    invoke-static {p3}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, p1, v2

    #@b
    if-ltz v0, :cond_1d

    #@d
    move v0, v1

    #@e
    :goto_e
    const-string v2, "detectionIntervalMillis must be >= 0"

    #@10
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jg;->ft()Landroid/os/IInterface;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/internal/je;

    #@19
    invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/je;->a(JZLandroid/app/PendingIntent;)V

    #@1c
    return-void

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    goto :goto_e
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jf;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    #@5
    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/jg;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    #@4
    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jf;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jf;->setMockLocation(Landroid/location/Location;)V

    #@5
    return-void
.end method

.method public setMockMode(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VP:Lcom/google/android/gms/internal/jf;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jf;->setMockMode(Z)V

    #@5
    return-void
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jg;->at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
